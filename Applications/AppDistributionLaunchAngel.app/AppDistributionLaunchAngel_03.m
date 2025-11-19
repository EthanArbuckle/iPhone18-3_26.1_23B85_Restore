unint64_t sub_100057F0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for MetricsEventType();
  sub_10005A5C0(&qword_10008A818);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100058110(a1, v5);
}

unint64_t sub_100057F90(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100058048(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10005A49C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001E2FC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100058110(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MetricsEventType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10005A5C0(&qword_10008A820);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_1000582BC()
{
  v1 = v0;
  sub_1000047BC(&qword_100089028, &qword_1000663B8);
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

void *sub_100058434()
{
  v1 = v0;
  sub_1000047BC(&qword_10008A7D0, &qword_100067890);
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
        sub_100010538(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100028608(v25, (*(v4 + 56) + v22));
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

void *sub_1000585D8()
{
  v1 = v0;
  sub_1000047BC(&qword_10008A7C8, &unk_100067880);
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
        sub_10005A49C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100010538(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100028608(v22, (*(v4 + 56) + v17));
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

uint64_t sub_10005877C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000047BC(&qword_100089028, &qword_1000663B8);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
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

uint64_t sub_100058A3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000047BC(&qword_10008A7D0, &qword_100067890);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100028608(v25, v37);
      }

      else
      {
        sub_100010538(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100028608(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100058CF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000047BC(&qword_10008A7C8, &unk_100067880);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100028608((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_10005A49C(v24, &v37);
        sub_100010538(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100028608(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t *sub_100058FAC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100059DD4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100059048(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000047BC(&qword_10008A7D0, &qword_100067890);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_100010538(v17 + 32 * v16, v34);
    sub_100028608(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_100028608(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

uint64_t sub_100059298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_100010538((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

_OWORD *sub_1000592E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057E50(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100058434();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100058A3C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100057E50(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10001059C(v23);

    return sub_100028608(a1, v23);
  }

  else
  {
    sub_100059580(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100059434(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100057EC8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000585D8();
      goto LABEL_7;
    }

    sub_100058CF4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100057EC8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10005A49C(a2, v22);
      return sub_1000595EC(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10001059C(v17);

  return sub_100028608(a1, v17);
}

_OWORD *sub_100059580(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100028608(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_1000595EC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100028608(a3, (a4[7] + 32 * a1));
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

uint64_t sub_100059668(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100059714@<X0>(_OWORD *a1@<X8>)
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
    sub_100010538(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_100028608(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_100011C14(v22, &qword_10008A7D8, &qword_100067898);
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
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
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

unint64_t sub_100059874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000047BC(&qword_100089028, &qword_1000663B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100057E50(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100059988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000047BC(&qword_10008A7C8, &unk_100067880);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010668(v4, v13, &qword_100089010, &qword_1000663A0);
      result = sub_100057EC8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100028608(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100059AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000047BC(&qword_10008A7D0, &qword_100067890);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010668(v4, &v13, &qword_100089508, &qword_100066638);
      v5 = v13;
      v6 = v14;
      result = sub_100057E50(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100028608(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100059BF4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_1000047BC(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_1000047BC(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_100010668(v17, v13, a2, v28);
      result = sub_100057F0C(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for MetricsEventType();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t *sub_100059DD4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a4;
  v30 = a3;
  v25 = a2;
  v26 = result;
  v27 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v35 = v5;
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v17 = v14 | (v6 << 6);
    v18 = *(v30 + 56);
    v19 = (*(v30 + 48) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    v28 = v17;
    sub_100010538(v18 + 32 * v17, v34);
    v32[0] = v20;
    v32[1] = v21;
    sub_100010538(v34, &v33);
    type metadata accessor for MainActor();
    swift_bridgeObjectRetain_n();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v31[0] = v20;
    v31[1] = v21;
    __chkstk_darwin(isCurrentExecutor);
    v24[2] = v31;
    v12 = v35;
    v13 = sub_100059668(sub_10005A568, v24, v29);
    v5 = v12;

    sub_100011C14(v32, &qword_10008A7D8, &qword_100067898);
    sub_10001059C(v34);

    if (v13)
    {
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_100059048(v26, v25, v27, v30);
      }
    }
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_100059048(v26, v25, v27, v30);
    }

    v16 = *(v7 + 8 * v6);
    ++v15;
    if (v16)
    {
      v35 = v5;
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10005A030(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_100058FAC(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100059DD4((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10005A1F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v46 = a6;
  v8 = -1 << *(a1 + 32);
  v9 = ~v8;
  v10 = *(a1 + 64);
  v11 = -v8;
  v39 = a1;
  v40 = a1 + 64;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v41 = v9;
  v42 = 0;
  v43 = v12 & v10;
  v44 = a2;
  v45 = a3;

  sub_100059714(&v37);
  v13 = *(&v37 + 1);
  if (!*(&v37 + 1))
  {
LABEL_19:
    sub_10005A4F8();
  }

  while (1)
  {
    v15 = v37;
    sub_100028608(&v38, v36);
    v16 = *a5;
    v17 = sub_100057E50(v15, v13);
    v19 = *(v16 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (*(v16 + 24) < v22)
    {
      sub_100058A3C(v22, a4 & 1);
      v24 = *a5;
      v17 = sub_100057E50(v15, v13);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v23)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v28 = v17;
    sub_100058434();
    v17 = v28;
    if (v23)
    {
LABEL_14:
      v26 = *a5;
      v27 = v17;
      sub_100010538(*(*a5 + 56) + 32 * v17, v34);
      type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_100010538(v34, v35);

      sub_10001059C(v34);
      sub_10001059C(v36);

      v14 = (*(v26 + 56) + 32 * v27);
      sub_10001059C(v14);
      sub_100028608(v35, v14);
      goto LABEL_7;
    }

LABEL_17:
    v29 = *a5;
    *(*a5 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v30 = (v29[6] + 16 * v17);
    *v30 = v15;
    v30[1] = v13;
    sub_100028608(v36, (v29[7] + 32 * v17));
    v31 = v29[2];
    v21 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v29[2] = v32;
LABEL_7:
    sub_100059714(&v37);
    v13 = *(&v37 + 1);
    a4 = 1;
    if (!*(&v37 + 1))
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10005A500()
{
  result = qword_10008A7E0;
  if (!qword_10008A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A7E0);
  }

  return result;
}

uint64_t sub_10005A554(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100015A54(a1, a2);
  }

  return a1;
}

uint64_t sub_10005A568(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10005A5C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MetricsEventType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_10005A614()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10005A688()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005A6DC@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10007E510, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_10005A764()
{
  result = qword_10008A838;
  if (!qword_10008A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A838);
  }

  return result;
}

uint64_t sub_10005A7B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_10005A49C(*(a2 + 48) + 40 * v5, v9);
      v7 = static AnyHashable.== infix(_:_:)();
      sub_10001E2FC(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_10005A890(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1000047BC(&qword_100089590, &unk_100067A90);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000047BC(&qword_100089590, &unk_100067A90);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10005AA10(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for InstallSheetConfirmationView(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for InstallConfirmationViewController();
  v37.receiver = v2;
  v37.super_class = v8;
  objc_msgSendSuper2(&v37, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationHostingController;
  if (*&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationHostingController])
  {
    return;
  }

  sub_10005F5D4(&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent], v7 + *(v4 + 20));
  v10 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationViewModel];
  *v7 = swift_getKeyPath();
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  swift_storeEnumTagMultiPayload();
  v11 = v7 + *(v4 + 24);
  *v11 = sub_10005F640;
  *(v11 + 1) = v10;
  v11[16] = 0;
  v12 = objc_allocWithZone(sub_1000047BC(&qword_10008A8B8, &qword_100067B20));

  v13 = UIHostingController.init(rootView:)();
  v14 = *(v10 + 16);
  *(v10 + 16) = v13;
  v15 = v13;

  *(v10 + 32) = &off_10007FC28;
  swift_unknownObjectWeakAssign();
  v16 = [v2 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 window];

  Height = 0.0;
  if (v18)
  {
    v20 = [v18 windowScene];

    if (v20)
    {
      v18 = [v20 screen];

      if (v18)
      {
        [v18 bounds];
        Width = CGRectGetWidth(v38);
        [v18 bounds];
        Height = CGRectGetHeight(v39);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  Width = 0.0;
LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = Height < Width;

  static Published.subscript.setter();
  v22 = [v2 view];
  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = [v22 window];

  if (v24)
  {
    v25 = [v24 _rootSheetPresentationController];

    if (v25)
    {
      [v25 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  v26 = [objc_opt_self() blackColor];
  v27 = v26;
  v28 = 0.8;
  if (v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_isIPad])
  {
    v28 = 0.4;
  }

  v29 = [v26 colorWithAlphaComponent:v28];

  v30 = objc_opt_self();
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = v29;
  aBlock[4] = sub_10005F9D8;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005F9E8;
  aBlock[3] = &unk_10007FD68;
  v32 = _Block_copy(aBlock);
  v33 = v2;
  v34 = v29;

  [v30 animateWithDuration:v32 animations:0.3];
  _Block_release(v32);

  [v15 setModalPresentationStyle:2];
  [v33 presentViewController:v15 animated:1 completion:0];

  v35 = *&v2[v9];
  *&v2[v9] = v13;
}

uint64_t sub_10005B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 226) = a5;
  *(v5 + 16) = a4;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v9 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  *(v5 + 48) = v9;
  v10 = *(v9 - 8);
  *(v5 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v12 = type metadata accessor for InstallSheetContext.Source();
  *(v5 + 72) = v12;
  v13 = *(v12 - 8);
  *(v5 + 80) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v15 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v16 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  *(v5 + 104) = v16;
  v17 = *(v16 - 8);
  *(v5 + 112) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 128) = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 136) = v20;
  *(v5 + 144) = v19;

  return _swift_task_switch(sub_10005B3C4, v20, v19);
}

uint64_t sub_10005B3C4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_100010668(*(v0 + 16) + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100011C14(*(v0 + 96), &qword_100089388, &qword_100067A70);
    v4 = *(v0 + 16) + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent;
    if (sub_100053F24())
    {
      v6 = *(v0 + 80);
      v5 = *(v0 + 88);
      v7 = *(v0 + 72);
      v8 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
      InstallSheetContext.source.getter();
      v9 = (*(v6 + 88))(v5, v7);
      if (v9 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
      {
        v10 = *(v0 + 88);
        v11 = *(v0 + 64);
        v12 = *(v0 + 48);
        v13 = *(v0 + 56);
        (*(*(v0 + 80) + 96))(v10, *(v0 + 72));
        (*(v13 + 32))(v11, v10, v12);
        LOBYTE(v10) = InstallSheetContext.Source.AppStoreSheetContext.showBiometrics.getter();
        (*(v13 + 8))(v11, v12);
        if (v10)
        {
          goto LABEL_16;
        }

LABEL_14:
        v40 = *(v0 + 226);
LABEL_21:
        v43 = *(v0 + 128);
        v44 = *(v0 + 16);

        sub_10005D158(v40);
        v45 = *(v0 + 120);
        v46 = *(v0 + 88);
        v47 = *(v0 + 96);
        v48 = *(v0 + 64);
        v49 = *(v0 + 40);

        v50 = *(v0 + 8);

        return v50();
      }

      if (v9 == enum case for InstallSheetContext.Source.appStore(_:))
      {
        if ((InstallSheetContext.showBiometricsForAppStoreInstall.getter() & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      }
    }

LABEL_16:
    if (*(v0 + 226) == 1)
    {
      v41 = swift_task_alloc();
      *(v0 + 208) = v41;
      *v41 = v0;
      v41[1] = sub_10005BDC4;
      v42 = *(v0 + 16);

      return sub_10005D5C0(v4);
    }

    v40 = 0;
    goto LABEL_21;
  }

  v14 = *(v0 + 226);
  v15 = *(v0 + 16);
  sub_100022268(*(v0 + 96), *(v0 + 120));
  v16 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  v17 = InstallSheetContext.itemID.getter();
  v19 = v18;
  *(v0 + 152) = v18;
  if (v14 == 1)
  {
    v20 = *(v0 + 120);
    v21 = *(v0 + 104);
    v22 = InstallSheetContext.itemID.getter();
    v24 = v23;
    *(v0 + 160) = v23;
    v25 = v20 + *(v21 + 24);
    v26 = InstallSheetContext.Source.AppStoreSheetContext.installType.getter();
    v28 = v27;
    *(v0 + 168) = v27;
    *(v0 + 176) = sub_100059AC4(&_swiftEmptyArrayStorage);
    v29 = swift_task_alloc();
    *(v0 + 184) = v29;
    *v29 = v0;
    v29[1] = sub_10005B860;
    v30 = *(v0 + 120);
    v31 = v17;
    v32 = v19;
    v33 = v22;
    v34 = v24;
    v35 = v26;
    v36 = v28;
  }

  else
  {
    *(v0 + 192) = sub_100059AC4(&_swiftEmptyArrayStorage);
    v37 = swift_task_alloc();
    *(v0 + 200) = v37;
    *v37 = v0;
    v37[1] = sub_10005BC64;
    v38 = *(v0 + 120);
    v35 = 0x7373696D736964;
    v31 = 0x6C65636E6143;
    v32 = 0xE600000000000000;
    v33 = v17;
    v34 = v19;
    v36 = 0xE700000000000000;
  }

  return sub_100056B2C(v31, v32, v33, v34, v35, v36, 0x6E6F74747562, 0xE600000000000000);
}

uint64_t sub_10005B860()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  v6 = *(*v0 + 152);
  v10 = *v0;

  v7 = *(v1 + 144);
  v8 = *(v1 + 136);

  return _swift_task_switch(sub_10005BA00, v8, v7);
}

uint64_t sub_10005BA00()
{
  sub_10005F95C(*(v0 + 120), type metadata accessor for InstallConfirmationAppStoreMetrics);
  v1 = *(v0 + 16) + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent;
  if ((sub_100053F24() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  InstallSheetContext.source.getter();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    (*(*(v0 + 80) + 96))(v7, *(v0 + 72));
    (*(v10 + 32))(v8, v7, v9);
    LOBYTE(v7) = InstallSheetContext.Source.AppStoreSheetContext.showBiometrics.getter();
    (*(v10 + 8))(v8, v9);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_7:
    v11 = *(v0 + 226);
    goto LABEL_14;
  }

  if (v6 == enum case for InstallSheetContext.Source.appStore(_:))
  {
    if ((InstallSheetContext.showBiometricsForAppStoreInstall.getter() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

LABEL_9:
  if (*(v0 + 226) == 1)
  {
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_10005BDC4;
    v13 = *(v0 + 16);

    return sub_10005D5C0(v1);
  }

  v11 = 0;
LABEL_14:
  v15 = *(v0 + 128);
  v16 = *(v0 + 16);

  sub_10005D158(v11);
  v17 = *(v0 + 120);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  v20 = *(v0 + 64);
  v21 = *(v0 + 40);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10005BC64()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 152);
  v8 = *v0;

  v5 = *(v1 + 144);
  v6 = *(v1 + 136);

  return _swift_task_switch(sub_10005F9D4, v6, v5);
}

uint64_t sub_10005BDC4(__int16 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 224) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return _swift_task_switch(sub_10005BEEC, v5, v4);
}

uint64_t sub_10005BEEC()
{
  if ((*(v0 + 224) & 1) == 0)
  {
    v3 = *(v0 + 128);

    goto LABEL_5;
  }

  if ((*(v0 + 224) & 0x100) == 0)
  {
    v1 = *(v0 + 128);

    v2 = *(v0 + 16);
    sub_10005D158(1);
LABEL_5:
    v4 = *(v0 + 120);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 64);
    v8 = *(v0 + 40);

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_10005C05C;
  v13 = *(v0 + 40);

  return (sub_100055358)(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10005C05C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 216);
  v5 = *v1;

  v6 = v2[5];
  v7 = v2[4];
  v8 = v2[3];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[17];
    v10 = v3[18];
    v11 = sub_10005F9D0;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[17];
    v10 = v3[18];
    v11 = sub_10005C1F0;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10005C1F0()
{
  v1 = v0[16];

  v2 = v0[2];
  sub_10005D158(1);
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10005C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[19] = v11;
  v5[20] = v10;

  return _swift_task_switch(sub_10005C3C4, v11, v10);
}

uint64_t sub_10005C3C4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_100010668(v0[12] + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    v5 = v0[14];

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);
    v6 = v0[17];
    v7 = v0[14];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[13];
    v11 = v0[12];
    sub_100022268(v0[14], v0[17]);
    v12 = v11 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent;
    v13 = v12 + *(type metadata accessor for LocalizedInstallSheetContent() + 72);
    v14 = InstallSheetContext.itemID.getter();
    v16 = v15;
    v0[21] = v15;
    sub_1000047BC(&qword_100089500, &qword_100066630);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065650;
    *(inited + 32) = 0x72556E6F69746361;
    *(inited + 40) = 0xE90000000000006CLL;
    v18 = URL.absoluteString.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    v0[22] = sub_100059AC4(inited);
    swift_setDeallocating();
    sub_100011C14(inited + 32, &qword_100089508, &qword_100066638);
    v20 = swift_task_alloc();
    v0[23] = v20;
    *v20 = v0;
    v20[1] = sub_10005C64C;
    v21 = v0[17];

    return sub_100056B2C(0x726F4D6E7261654CLL, 0xE900000000000065, v14, v16, 0x657461676976616ELL, 0xE800000000000000, 1802398060, 0xE400000000000000);
  }
}

uint64_t sub_10005C64C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v8 = *v0;

  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return _swift_task_switch(sub_10005C7AC, v6, v5);
}

uint64_t sub_10005C7AC()
{
  v2 = v0[17];
  v1 = v0[18];

  sub_10005F95C(v2, type metadata accessor for InstallConfirmationAppStoreMetrics);
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005C83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v10;
  v4[9] = v9;

  return _swift_task_switch(sub_10005C968, v10, v9);
}

uint64_t sub_10005C968()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100010668(v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[3];
  if (v4 == 1)
  {
    v6 = v0[7];

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);
    v7 = v0[6];
    v8 = v0[3];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[2];
    sub_100022268(v0[3], v0[6]);
    v12 = v11 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent;
    v13 = v12 + *(type metadata accessor for LocalizedInstallSheetContent() + 72);
    v14 = InstallSheetContext.itemID.getter();
    v16 = v15;
    v0[10] = v15;
    v0[11] = sub_100059AC4(&_swiftEmptyArrayStorage);
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_10005CB48;
    v18 = v0[6];

    return sub_100056B2C(1701998413, 0xE400000000000000, v14, v16, 1701998445, 0xE400000000000000, 0x6E6F74747562, 0xE600000000000000);
  }
}

uint64_t sub_10005CB48()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return _swift_task_switch(sub_10005F9CC, v6, v5);
}

uint64_t sub_10005CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v10;
  v4[9] = v9;

  return _swift_task_switch(sub_10005CDD4, v10, v9);
}

uint64_t sub_10005CDD4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100010668(v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[3];
  if (v4 == 1)
  {
    v6 = v0[7];

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);
    v7 = v0[6];
    v8 = v0[3];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[2];
    sub_100022268(v0[3], v0[6]);
    v12 = v11 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent;
    v13 = v12 + *(type metadata accessor for LocalizedInstallSheetContent() + 72);
    v14 = InstallSheetContext.itemID.getter();
    v16 = v15;
    v0[10] = v15;
    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_10005CF84;
    v18 = v0[6];

    return sub_100057420(v14, v16, 0x6174736E49707041, 0xEA00000000006C6CLL);
  }
}

uint64_t sub_10005CF84()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_10005D0C8, v5, v4);
}

uint64_t sub_10005D0C8()
{
  v2 = v0[6];
  v1 = v0[7];

  sub_10005F95C(v2, type metadata accessor for InstallConfirmationAppStoreMetrics);
  v3 = v0[6];
  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

void sub_10005D158(char a1)
{
  v2 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_response;
  v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_response] = a1;
  v3 = *&v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_responseAction];
  if (v3)
  {
    v4 = v3;
    if ([v4 canSendResponse])
    {
      v5 = [objc_allocWithZone(BSMutableSettings) init];
      v6 = [objc_allocWithZone(NSNumber) initWithBool:v1[v2]];
      [v5 setObject:v6 forSetting:1];

      v7 = [objc_opt_self() responseWithInfo:v5];
      [v4 sendResponse:v7];

      v4 = v7;
    }
  }

  v8 = [objc_opt_self() clearColor];
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v8;
  v21 = sub_10005F56C;
  v22 = v10;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10005F9E8;
  v20 = &unk_10007FCC8;
  v11 = _Block_copy(&v17);
  v12 = v1;
  v13 = v8;

  [v9 animateWithDuration:v11 animations:0.3];
  _Block_release(v11);

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v21 = sub_10005F5C4;
  v22 = v14;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10005F9E8;
  v20 = &unk_10007FD18;
  v15 = _Block_copy(&v17);
  v16 = v12;

  [v16 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_10005D410(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction;
  v3 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction);
  if (v3)
  {
    v4 = *(v2 + 8);

    v3(v5);
    sub_10001369C(v3);
  }
}

void sub_10005D4DC(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005D5C0(uint64_t a1)
{
  v2[77] = v1;
  v2[76] = a1;
  v3 = sub_1000047BC(&qword_10008A8B0, &unk_100067A80);
  v2[78] = v3;
  v4 = *(v3 - 8);
  v2[79] = v4;
  v5 = *(v4 + 64) + 15;
  v2[80] = swift_task_alloc();
  v6 = *(*(sub_1000047BC(&qword_1000893C0, &unk_1000663F0) - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v7 = sub_1000047BC(&qword_100089590, &unk_100067A90);
  v2[82] = v7;
  v8 = *(v7 - 8);
  v2[83] = v8;
  v9 = *(v8 + 64) + 15;
  v2[84] = swift_task_alloc();
  v10 = type metadata accessor for FeatureFlag();
  v2[85] = v10;
  v11 = *(v10 - 8);
  v2[86] = v11;
  v12 = *(v11 + 64) + 15;
  v2[87] = swift_task_alloc();

  return _swift_task_switch(sub_10005D7B8, 0, 0);
}

uint64_t sub_10005D7B8()
{
  v84 = v0;
  v1 = *(v0 + 608);
  v2 = type metadata accessor for LocalizedInstallSheetContent();
  *(v0 + 704) = v2;
  v3 = v1 + *(v2 + 72);
  v4 = InstallSheetContext.authenticationContextData.getter();
  v6 = &_swift_stdlib_bridgeErrorToNSError_ptr;
  if (v5 >> 60 != 15)
  {
    v7 = v4;
    v8 = v5;
    v9 = objc_allocWithZone(LAContext);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v9 initWithExternalizedContext:isa];

    v12 = 0x64696C6156;
    if (!v11)
    {
      v12 = 0x64696C61766E49;
    }

    v79 = v12;
    v81 = v11;
    if (v11)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 616);
    v15 = type metadata accessor for Logger();
    sub_1000105E8(v15, qword_10008C4C0);
    v16 = v14;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 616);
      v20 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v20 = 136446466;
      v21 = v19 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent + *(v2 + 72);
      v22 = InstallSheetContext.logKey.getter();
      v24 = sub_10000F78C(v22, v23, &v83);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_10000F78C(v79, v13, &v83);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s] Received authentication context, is valid: %s", v20, 0x16u);
      swift_arrayDestroy();

      v6 = &_swift_stdlib_bridgeErrorToNSError_ptr;

      sub_10005A554(v7, v8);

      v26 = v81;
      if (v81)
      {
LABEL_11:
        v27 = v26;
        v28 = v27;
        goto LABEL_14;
      }
    }

    else
    {
      sub_10005A554(v7, v8);

      v26 = v11;
      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  v27 = [objc_allocWithZone(v6[149]) init];
  v28 = 0;
LABEL_14:
  *(v0 + 720) = v28;
  *(v0 + 712) = v27;
  sub_10001E778(0, &qword_100089378, NSNumber_ptr);
  v29 = NSNumber.init(integerLiteral:)(60).super.super.isa;
  [v27 setOptionMaxCredentialAge:v29];

  *(v0 + 576) = 0;
  v30 = [v27 canEvaluatePolicy:2 error:v0 + 576];
  v31 = *(v0 + 576);
  *(v0 + 728) = v31;
  if (v30)
  {
    v32 = *(v0 + 696);
    v33 = *(v0 + 688);
    v34 = *(v0 + 680);
    (*(v33 + 104))(v32, enum case for FeatureFlag.newInstallSheetFlow(_:), v34);
    v35 = v31;
    v36 = isFeatureEnabled(_:)();
    (*(v33 + 8))(v32, v34);
    if (v36)
    {
      v37 = v0 + 80;
      v80 = *(v0 + 672);
      v38 = *(v0 + 664);
      v39 = *(v0 + 656);
      sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100065650;
      *(v0 + 852) = 1000;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      sub_100059988(inited);
      swift_setDeallocating();
      sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
      v41 = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v0 + 736) = v41;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 600;
      *(v0 + 88) = sub_10005E204;
      swift_continuation_init();
      *(v0 + 368) = v39;
      v42 = sub_1000104C4((v0 + 344));
      sub_1000047BC(&qword_100089598, &unk_100066740);
      sub_1000047BC(&qword_100088B60, &qword_100065F80);
      CheckedContinuation.init(continuation:function:)();
      (*(v38 + 32))(v42, v80, v39);
      *(v0 + 312) = _NSConcreteStackBlock;
      *(v0 + 320) = 1107296256;
      *(v0 + 328) = sub_10005A890;
      *(v0 + 336) = &unk_10007FC78;
      [v27 evaluatePolicy:2 options:v41 reply:?];
      (*(v38 + 8))(v42, v39);
LABEL_27:

      return _swift_continuation_await(v37);
    }

    v46 = *(v0 + 608);
    v47 = *(v46 + 128);
    v48 = *(v46 + 136);
    *(v0 + 592) = 0;

    v49 = [v27 evaluationMechanismsForPolicy:2 error:v0 + 592];
    v50 = *(v0 + 592);
    if (v49)
    {
      v51 = v49;
      v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v50;

      *(v0 + 848) = 1;
      AnyHashable.init<A>(_:)();
      v54 = sub_10005A7B8(v0 + 376, v52);

      sub_10001E2FC(v0 + 376);
      if (v54)
      {
        v55 = *(v0 + 608);

        v56 = v55[18];
        v57 = v55[19];
        v58 = String._bridgeToObjectiveC()();
        [v27 setOptionAuthenticationTitle:v58];

        v60 = v55[20];
        v59 = v55[21];
      }
    }

    else
    {
      v61 = v50;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v62 = *(v0 + 608);
    v63 = *(v62 + 112);
    v64 = *(v62 + 120);
    v65 = String._bridgeToObjectiveC()();
    [v27 setOptionPasscodeTitle:v65];

    v66 = String._bridgeToObjectiveC()();
    [v27 setOptionPasswordAuthenticationReason:v66];

    v67 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 0x40000001uLL, 0);
    *(v0 + 824) = v67;
    if (v67)
    {
      v68 = v67;
      v37 = v0 + 16;
      v69 = *(v0 + 640);
      v70 = *(v0 + 632);
      v71 = *(v0 + 624);
      v82 = String._bridgeToObjectiveC()();
      *(v0 + 832) = v82;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 864;
      *(v0 + 24) = sub_10005EBFC;
      swift_continuation_init();
      *(v0 + 304) = v71;
      v72 = sub_1000104C4((v0 + 280));
      sub_1000047BC(&qword_100088B60, &qword_100065F80);
      CheckedContinuation.init(continuation:function:)();
      (*(v70 + 32))(v72, v69, v71);
      *(v0 + 248) = _NSConcreteStackBlock;
      *(v0 + 256) = 1107296256;
      *(v0 + 264) = sub_10005F1B8;
      *(v0 + 272) = &unk_10007FC50;
      [v27 evaluateAccessControl:v68 operation:3 localizedReason:v82 reply:?];
      (*(v70 + 8))(v72, v71);
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (!v31)
  {

    goto LABEL_31;
  }

  type metadata accessor for Code(0);
  *(v0 + 584) = -5;
  sub_100029638();
  v43 = v31;
  v44 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v44 & 1) == 0)
  {
LABEL_31:
    v45 = 0;
    goto LABEL_32;
  }

  v45 = 1;
LABEL_32:
  v73 = *(v0 + 696);
  v74 = *(v0 + 672);
  v75 = *(v0 + 648);
  v76 = *(v0 + 640);

  v77 = *(v0 + 8);

  return v77(v45);
}

uint64_t sub_10005E204()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 744) = v2;
  if (v2)
  {
    v3 = sub_10005EE34;
  }

  else
  {
    v3 = sub_10005E340;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005E340()
{
  v35 = v0;
  v1 = *(v0 + 600);

  if (v1)
  {
    *(v0 + 856) = 3;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_100057EC8(v0 + 416), (v3 & 1) != 0))
    {
      sub_100010538(*(v1 + 56) + 32 * v2, v0 + 496);
      sub_10001E2FC(v0 + 416);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 866))
      {
LABEL_12:
        v6 = *(v0 + 728);
        v7 = *(v0 + 720);

        v8 = *(v0 + 696);
        v9 = *(v0 + 672);
        v10 = *(v0 + 648);
        v11 = *(v0 + 640);

        v12 = *(v0 + 8);

        return v12(1);
      }
    }

    else
    {
      sub_10001E2FC(v0 + 416);
    }

    *(v0 + 860) = 1;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v4 = sub_100057EC8(v0 + 456), (v5 & 1) != 0))
    {
      sub_100010538(*(v1 + 56) + 32 * v4, v0 + 528);
      sub_10001E2FC(v0 + 456);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 865))
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10001E2FC(v0 + 456);
    }

    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 616);
    v15 = type metadata accessor for Logger();
    sub_1000105E8(v15, qword_10008C4C0);
    v16 = v14;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 704);
      v20 = *(v0 + 616);
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v21 = 136446466;
      v22 = v20 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent + *(v19 + 72);
      v23 = InstallSheetContext.logKey.getter();
      v25 = sub_10000F78C(v23, v24, &v34);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = Dictionary.description.getter();
      v28 = v27;

      v29 = sub_10000F78C(v26, v28, &v34);

      *(v21 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s] Failed evaluation with results: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v30 = *(v0 + 648);
  v31 = *(v0 + 608);
  *(v0 + 752) = v31[22];
  *(v0 + 760) = v31[23];
  *(v0 + 768) = v31[24];
  *(v0 + 776) = v31[25];
  *(v0 + 784) = v31[26];
  *(v0 + 792) = v31[27];

  sub_100054164(v30);
  type metadata accessor for MainActor();
  *(v0 + 800) = static MainActor.shared.getter();
  v33 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005E800, v33, v32);
}

uint64_t sub_10005E800()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v13 = *(v0 + 752);
  v14 = *(v0 + 768);
  v4 = *(v0 + 648);

  v5 = type metadata accessor for OsloAuthenticationTask(0);
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
  v8 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  v6[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 0;
  v9 = &v6[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent];
  v10 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  sub_100010668(v4, &v9[*(v10 + 28)], &qword_1000893C0, &unk_1000663F0);
  *v9 = v13;
  *(v9 + 1) = v14;
  *(v9 + 4) = v3;
  *(v9 + 5) = v2;
  *(v0 + 560) = v6;
  *(v0 + 568) = v5;
  *(v0 + 808) = objc_msgSendSuper2((v0 + 560), "init");
  sub_100011C14(v4, &qword_1000893C0, &unk_1000663F0);
  v11 = swift_task_alloc();
  *(v0 + 816) = v11;
  *v11 = v0;
  v11[1] = sub_10005E9E8;

  return sub_10002EACC();
}

uint64_t sub_10005E9E8(char a1)
{
  v2 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 867) = a1;

  return _swift_task_switch(sub_10005EB14, 0, 0);
}

uint64_t sub_10005EB14()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);

  v4 = *(v0 + 867);
  v5 = *(v0 + 696);
  v6 = *(v0 + 672);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);

  v9 = *(v0 + 8);

  return v9(v4);
}

uint64_t sub_10005EBFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 840) = v2;
  if (v2)
  {
    v3 = sub_10005F0B0;
  }

  else
  {
    v3 = sub_10005ED38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005ED38()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);

  LOBYTE(v2) = *(v0 + 864);
  v5 = v2 & 1;
  if (v2)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 696);
  v8 = *(v0 + 672);
  v9 = *(v0 + 648);
  v10 = *(v0 + 640);

  v11 = *(v0 + 8);

  return v11(v6 | v5);
}

uint64_t sub_10005EE34()
{
  v24 = v0;
  v1 = v0[93];
  v2 = v0[92];
  swift_willThrow();

  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v3 = v0[77];
  v4 = type metadata accessor for Logger();
  sub_1000105E8(v4, qword_10008C4C0);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[93];
  if (v8)
  {
    v10 = v0[88];
    v11 = v0[77];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    v14 = v11 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent + *(v10 + 72);
    v15 = InstallSheetContext.logKey.getter();
    v17 = sub_10000F78C(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] Error evaluating context non-interactively, performing interactive auth", v12, 0xCu);
    sub_10001059C(v13);
  }

  v18 = v0[81];
  v19 = v0[76];
  v0[94] = v19[22];
  v0[95] = v19[23];
  v0[96] = v19[24];
  v0[97] = v19[25];
  v0[98] = v19[26];
  v0[99] = v19[27];

  sub_100054164(v18);
  type metadata accessor for MainActor();
  v0[100] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005E800, v21, v20);
}

uint64_t sub_10005F0B0()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  swift_willThrow();

  v7 = v0[87];
  v8 = v0[84];
  v9 = v0[81];
  v10 = v0[80];

  v11 = v0[1];

  return v11(0);
}

void sub_10005F1B8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1000047BC(&qword_10008A8B0, &unk_100067A80);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000047BC(&qword_10008A8B0, &unk_100067A80);
    CheckedContinuation.resume(returning:)();
  }
}

id sub_10005F2E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallConfirmationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InstallConfirmationViewController()
{
  result = qword_10008A8A0;
  if (!qword_10008A8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005F41C()
{
  v0 = type metadata accessor for LocalizedInstallSheetContent();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10002207C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10005F52C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005F58C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedInstallSheetContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10005F648(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationHostingController] = 0;
  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationViewModel;
  v10 = type metadata accessor for InstallSheetConfirmationViewModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v3[v9] = sub_100005FA4();
  v13 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_responseAction;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_responseAction] = 0;
  v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_response] = 0;
  v14 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_isIPad;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  v4[v14] = v16 == 1;
  v17 = [a1 actions];
  if (v17)
  {
    sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
    sub_10001E294();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = sub_10005FA2C(v18);
  }

  v19 = *&v4[v13];
  *&v4[v13] = v17;

  sub_10005F5D4(a2, &v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_localizedContent]);
  sub_100010668(a3, &v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_appStoreMetrics], &qword_100089388, &qword_100067A70);
  v22.receiver = v4;
  v22.super_class = type metadata accessor for InstallConfirmationViewController();
  v20 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
  sub_100011C14(a3, &qword_100089388, &qword_100067A70);
  sub_10005F95C(a2, type metadata accessor for LocalizedInstallSheetContent);
  return v20;
}

void sub_10005F84C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationHostingController) = 0;
  v3 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationViewModel;
  v4 = type metadata accessor for InstallSheetConfirmationViewModel(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + v3) = sub_100005FA4();
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_responseAction) = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_response) = 0;
  v7 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_isIPad;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  *(v1 + v7) = v9 == 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005F95C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005F9E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10005FA2C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100060C58(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100060C58(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100060C64(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_100060C58(v3, v5, v2 != 0);
  return v13;
}

id sub_10005FB48(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_isIPad;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v2[v6] = v8 == 1;
  *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_configurationContext] = a1;
  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_context;
  v10 = type metadata accessor for ConfirmationSheetContext();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v2[v9], a2, v10);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ConfirmationSheetContainerViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  (*(v11 + 8))(a2, v10);
  return v12;
}

void sub_10005FEC8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConfirmationSheetContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = aBlock - v10;
  v12 = type metadata accessor for ConfirmationSheetContainerViewController();
  v37.receiver = v2;
  v37.super_class = v12;
  objc_msgSendSuper2(&v37, "viewDidAppear:", a1 & 1);
  v13 = *(v5 + 16);
  v13(v11, &v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_context], v4);
  v13(v9, v11, v4);
  v14 = objc_allocWithZone(type metadata accessor for ConfirmationSheetViewController());
  v15 = sub_10002254C(v9, 0);
  (*(v5 + 8))(v11, v4);
  [v15 setModalPresentationStyle:2];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = &v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction];
  v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction];
  v20 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8];
  *v18 = sub_100060BAC;
  v18[1] = v17;

  v21 = v15;
  sub_10001E7C4(v19);

  v22 = [v2 view];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 window];

    if (v24)
    {
      v25 = [v24 _rootSheetPresentationController];
      if (v25)
      {
        v26 = v25;
        [v25 _setShouldScaleDownBehindDescendantSheets:0];
      }
    }

    v27 = [objc_opt_self() blackColor];
    v28 = v27;
    v29 = 0.8;
    if (v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_isIPad])
    {
      v29 = 0.4;
    }

    v30 = [v27 colorWithAlphaComponent:v29];

    v31 = objc_opt_self();
    v32 = swift_allocObject();
    *(v32 + 16) = v2;
    *(v32 + 24) = v30;
    aBlock[4] = sub_100060BF4;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005F9E8;
    aBlock[3] = &unk_10007FE08;
    v33 = _Block_copy(aBlock);
    v34 = v2;
    v35 = v30;

    [v31 animateWithDuration:v33 animations:0.3];
    _Block_release(v33);

    [v34 presentViewController:v21 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000602AC(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_configurationContext);

    v9 = [v8 actions];
    if (v9)
    {
      sub_10001596C();
      sub_10001E294();
      v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = sub_10005FA2C(v10);

      if (v11)
      {
        if ([v11 canSendResponse])
        {
          v12 = [objc_allocWithZone(BSMutableSettings) init];
          v13 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
          [v12 setObject:v13 forSetting:1];

          v14 = [objc_opt_self() responseWithInfo:v12];
          [v11 sendResponse:v14];

          v11 = v14;
        }
      }
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() clearColor];
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v17;
    v29 = sub_100060E7C;
    v30 = v19;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10005F9E8;
    v28 = &unk_10007FE58;
    v20 = _Block_copy(&v25);
    v21 = v16;
    v22 = v17;

    [v18 animateWithDuration:v20 animations:0.3];
    _Block_release(v20);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a1 & 1;
  v29 = sub_100060C4C;
  v30 = v23;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10005F9E8;
  v28 = &unk_10007FEA8;
  v24 = _Block_copy(&v25);

  [a3 dismissViewControllerAnimated:1 completion:v24];
  _Block_release(v24);
}

uint64_t sub_100060628(uint64_t a1, char a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction);
    v5 = Strong;
    sub_100060E64(v4);

    if (v4)
    {
      v4(a2 & 1);
      sub_10001E7C4(v4);
    }
  }
}

void sub_1000607F4(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

id sub_100060964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmationSheetContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfirmationSheetContainerViewController()
{
  result = qword_10008A900;
  if (!qword_10008A900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100060A80()
{
  result = type metadata accessor for ConfirmationSheetContext();
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

uint64_t sub_100060B34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060B6C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060BB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100060C14()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100060C58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_100060C64(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10001596C();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10001596C();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100060E64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100060E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100060EFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_10006103C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_10006125C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657070617277 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000612D4(void *a1, void *a2)
{
  v3 = a2[3];
  v12 = a2[2];
  v4 = a2[4];
  type metadata accessor for XPCValue.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100010624(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100061448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v30 = *(a2 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(a1);
  v32 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCValue.CodingKeys();
  swift_getWitnessTable();
  v33 = type metadata accessor for KeyedDecodingContainer();
  v28 = *(v33 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v33);
  v11 = &v24 - v10;
  v29 = a2;
  v31 = a3;
  v12 = type metadata accessor for XPCValue();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = a1[4];
  sub_100010624(a1, a1[3]);
  v17 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v25 = v15;
    v34 = v12;
    v19 = v28;
    v18 = v29;
    v20 = v30;
    v21 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v11, v33);
    v22 = v25;
    (*(v20 + 32))(v25, v21, v18);
    (*(v26 + 32))(v27, v22, v34);
  }

  return sub_10001059C(a1);
}

uint64_t sub_100061748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_10006125C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_100061780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000617D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

id sub_100061910(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = objc_allocWithZone(UIColor);
  if (v9 == 2)
  {
    v11 = a2;
    v12 = a2;
    v13 = a3;
  }

  else
  {
    v11 = a4;
    v12 = a4;
    v13 = a5;
  }

  return [v10 initWithRed:v11 green:v12 blue:v13 alpha:1.0];
}

uint64_t sub_1000619BC()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1000619E0(v0, v1, v2);
}

void sub_1000619E0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@] Mini product page failed with error: %{public}@", &v4, 0x16u);
}

void sub_100061A6C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Mini product page content size did invalidate", &v3, 0xCu);
}

void sub_100061AE8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Mini product page did present description", &v3, 0xCu);
}