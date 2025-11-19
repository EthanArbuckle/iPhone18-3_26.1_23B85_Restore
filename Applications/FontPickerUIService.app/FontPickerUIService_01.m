void *sub_100010F94()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F638);
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

uint64_t sub_1000110D4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000130DC(&qword_10009F618);
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

uint64_t sub_1000112F4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000130DC(&qword_10009F5B0);
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

uint64_t sub_10001152C()
{
  v1 = v0;
  v2 = *v0;
  sub_1000130DC(&qword_10009F620);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v17 = v16;
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_100011780()
{
  v1 = v0;
  v2 = *v0;
  sub_1000130DC(&qword_10009F638);
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

    *v1 = v4;
  }

  return result;
}

void *sub_100011994(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100011A94(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 56) + 16 * v14);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v14);
      *(a2 + 8) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_100011BF8(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (&_swiftEmptyArrayStorage + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = _CocoaArrayWrapper.endIndex.getter();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1000130DC(&qword_10009F820);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100011DE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ComponentSize(0);
  sub_100014E0C(&qword_10009F610, type metadata accessor for ComponentSize);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000F770(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100011E94(uint64_t a1)
{
  if ((a1 - 4) > 8)
  {
    return 6;
  }

  else
  {
    return byte_100078068[a1 - 4];
  }
}

uint64_t sub_100011EB8(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    sub_1000132E4(0, &qword_10009F580);

    v6 = 0;
    do
    {
      v7 = v6 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v6);
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

unint64_t sub_100012014(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *v4;

    result = sub_10000C53C(v8, v7);
    v12 = v10[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      sub_10000D010(v15, a2 & 1);
      result = sub_10000C53C(v8, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v18 = *v4;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v28 = result;
    sub_10000CA64();
    result = v28;
    v4 = a3;
    v18 = *a3;
    if ((v16 & 1) == 0)
    {
LABEL_25:
      v18[(result >> 6) + 8] |= 1 << result;
      v29 = (v18[6] + 16 * result);
      *v29 = v8;
      v29[1] = v7;
      *(v18[7] + 8 * result) = v9;
      v30 = v18[2];
      v14 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v14)
      {
        goto LABEL_30;
      }

      v18[2] = v31;
      goto LABEL_5;
    }

LABEL_12:
    v19 = *(v18[7] + 8 * result);
    v20 = *(v9 + 16);
    v21 = *(v19 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    v33 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v24 = *(v19 + 3) >> 1, v24 < v22))
    {
      if (v21 <= v22)
      {
        v25 = v21 + v20;
      }

      else
      {
        v25 = v21;
      }

      v19 = sub_10000BDBC(isUniquelyReferenced_nonNull_native, v25, 1, v19);
      v24 = *(v19 + 3) >> 1;
    }

    v4 = a3;
    if (*(v9 + 16))
    {
      if (v24 - *(v19 + 2) < v20)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v26 = *(v19 + 2);
        v14 = __OFADD__(v26, v20);
        v27 = v26 + v20;
        if (v14)
        {
          goto LABEL_33;
        }

        *(v19 + 2) = v27;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_31;
      }
    }

    *(v18[7] + 8 * v33) = v19;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001227C@<X0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v13 = sub_10006864C(a3, a4, a1);
  v175 = v15;
  v176 = v14;
  v174 = v16;
  v189 = a3;
  v192 = a4;
  sub_10006864C(a3, a4, a1);
  v19 = v17 + v18;
  v195 = a1;
  sub_100068F00(a1);
  v21 = v20 + v19;
  if (v21 < a8)
  {
    v22 = a8;
  }

  else
  {
    v22 = v21;
  }

  v23 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 >> 62)
  {
LABEL_155:
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v22 - v19;
  if (v24)
  {
    v25 = 0;
    v194 = _swiftEmptyArrayStorage;
    while (2)
    {
      v26 = v25;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v23 + 2))
          {
            goto LABEL_153;
          }

          v27 = *(a2 + 8 * v26 + 32);
        }

        v28 = v27;
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        v29 = [v27 components];
        sub_1000132E4(0, &qword_10009F580);
        v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = v30 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v31)
        {
          break;
        }

        ++v26;
        if (v25 == v24)
        {
          goto LABEL_27;
        }
      }

      v32 = [v28 identifier];
      v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_100002C2C(v195, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_10000BB70(0, *(v194 + 2) + 1, 1, v194);
      }

      v37 = *(v194 + 2);
      v36 = *(v194 + 3);
      if (v37 >= v36 >> 1)
      {
        v194 = sub_10000BB70((v36 > 1), v37 + 1, 1, v194);
      }

      *(v194 + 2) = v37 + 1;
      v38 = &v194[3 * v37];
      *(v38 + 4) = v193;
      *(v38 + 5) = v34;
      *(v38 + 6) = v35;
      if (v25 != v24)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v194 = _swiftEmptyArrayStorage;
  }

LABEL_27:
  if (*(v194 + 2))
  {
    sub_1000130DC(&qword_10009F598);
    v39 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v39 = &_swiftEmptyDictionarySingleton;
  }

  v196 = v39;
  sub_100012014(v194, 1, &v196);

  v40 = v196;
  v196 = &_swiftEmptySetSingleton;

  v41 = sub_100003D98(a2);

  v42 = *(v41 + 2);
  v178 = v41 + 32;

  v43 = 0;
  v44 = 0;
  v182 = v41;
  v45 = v41 + 40;
  v23 = _swiftEmptyArrayStorage;
  v181 = v42;
LABEL_31:
  if (v43 != v42)
  {
    a2 = &v45[16 * v43];
    do
    {
      if (v43 >= *(v182 + 2))
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      if (v40[2])
      {
        v47 = *(a2 - 8);
        v46 = *a2;

        v48 = sub_10000C53C(v47, v46);
        if (v49)
        {
          v50 = *(v40[7] + 8 * v48);

          v51 = *(v50 + 16);

          ++v43;
          v52 = __OFADD__(v44, v51);
          v44 += v51;
          v42 = v181;
          if (!v52)
          {
            goto LABEL_31;
          }

          __break(1u);
          break;
        }
      }

      ++v43;
      a2 += 16;
    }

    while (v181 != v43);
  }

  v53 = sub_100068C8C(v192 & 1, v195);
  if (__OFSUB__(v44, 1))
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v22 = v53;
  v172 = v44 - 1;
  v173 = v13;
  if (!v181)
  {
    v168 = v182;

    v13 = 0.0;
    goto LABEL_149;
  }

  v170 = v53;
  v171 = v19;
  v54 = 0;
  v188 = a5;
  if (v195 == 4)
  {
    v55 = 2.0;
  }

  else
  {
    v55 = 4.0;
  }

  v56 = 12.0;
  if (v192)
  {
    v56 = 8.0;
  }

  v183 = v56;
  v57 = 6.0;
  if ((v192 & 1) == 0)
  {
    v57 = 8.0;
  }

  v179 = v57;
  v19 = 30.0;
  v13 = 0.0;
  v184 = v40;
  while (1)
  {
    if (v54 >= *(v182 + 2))
    {
      goto LABEL_154;
    }

    v180 = v54;
    if (v40[2] && (v58 = &v178[16 * v54], v59 = *v58, v60 = v58[1], , v61 = sub_10000C53C(v59, v60), v63 = v62, , (v63 & 1) != 0))
    {
      v64 = *(v40[7] + 8 * v61);
    }

    else
    {
      v64 = _swiftEmptyArrayStorage;
    }

    v187 = *(v64 + 2);
    if (v187)
    {
      break;
    }

LABEL_51:

    v54 = v180 + 1;
    if (v180 + 1 == v181)
    {
      goto LABEL_147;
    }
  }

  v65 = 0.0;
  v185 = v64;
  v186 = v64 + 32;
  do
  {
    a5 = v65;
    v66 = *&v186[16 * *&v65 + 8];
    if (!(v66 >> 62))
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_136;
      }

LABEL_61:

      sub_10000DE34(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        __break(1u);
        goto LABEL_151;
      }

      v68 = 0;
      while (1)
      {
        v69 = (v66 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v66 + 8 * v68 + 32);
        a2 = v69;
        v70 = [v69 componentKey];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;
        if (v71 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v73 == v74)
        {
          break;
        }

        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v76)
        {
          goto LABEL_76;
        }

        if (v195 - 2 >= 3)
        {
          if (v195)
          {
            goto LABEL_98;
          }

          if (qword_10009F368 != -1)
          {
            swift_once();
          }

          if (byte_1000A51D8 != 1)
          {
LABEL_99:
            if (qword_10009F370 != -1)
            {
              swift_once();
            }

            if (byte_1000A51D9 == 1)
            {
              v101 = _UISolariumEnabled();

              if (v101)
              {
                v22 = 24.0;
              }

              else
              {
                v22 = 22.0;
              }
            }

            else
            {

              v22 = 45.0;
            }

            goto LABEL_129;
          }

          goto LABEL_97;
        }

        if ((a6 & 1) == 0)
        {
          v102 = sub_10006864C(v189 & 1, v192 & 1, v195);
          if (qword_10009F368 != -1)
          {
            v161 = v102;
            v162 = v103;
            swift_once();
            v103 = v162;
            v102 = v161;
          }

          v104 = v188 - (v102 + v103);
          if (byte_1000A51D8 == 1)
          {
            if (v195 == 3)
            {
              v105 = v104 + -50.0;
              goto LABEL_121;
            }

            v119 = [objc_opt_self() mainScreen];
            [v119 _referenceBounds];
            v121 = v120;
            v123 = v122;
            v125 = v124;
            v127 = v126;

            v199.origin.x = v121;
            v199.origin.y = v123;
            v199.size.width = v125;
            v199.size.height = v127;
            v128 = CGRectGetHeight(v199) > 667.0;
            v129 = 50.0;
            if (!v128)
            {
              v129 = 45.0;
            }

            v105 = v104 - v129;
LABEL_126:
            v139 = [objc_opt_self() mainScreen];
            [v139 _referenceBounds];
            v141 = v140;
            v143 = v142;
            v145 = v144;
            v147 = v146;

            v200.origin.x = v141;
            v200.origin.y = v143;
            v200.size.width = v145;
            v200.size.height = v147;
            Height = CGRectGetHeight(v200);

            v118 = 8.0;
            if (Height > 667.0)
            {
              v118 = v183;
            }
          }

          else
          {
            v107 = [objc_opt_self() mainScreen];
            [v107 _referenceBounds];
            v109 = v108;
            v111 = v110;
            v113 = v112;
            v115 = v114;

            v198.origin.x = v109;
            v198.origin.y = v111;
            v198.size.width = v113;
            v198.size.height = v115;
            v116 = CGRectGetHeight(v198) <= 667.0;
            v117 = 34.0;
            if (v116 | v192 & 1 | (v195 == 3))
            {
              v117 = 30.0;
            }

            v105 = v104 - v117;
            if (v195 != 3)
            {
              goto LABEL_126;
            }

            if (byte_1000A51D8)
            {
LABEL_121:

              v118 = 16.0;
            }

            else
            {
              v151 = [objc_opt_self() mainScreen];
              [v151 _referenceBounds];
              v153 = v152;
              v155 = v154;
              v157 = v156;
              v159 = v158;

              v201.origin.x = v153;
              v201.origin.y = v155;
              v201.size.width = v157;
              v201.size.height = v159;
              v160 = CGRectGetHeight(v201);

              v118 = 6.0;
              if (v160 > 667.0)
              {
                v118 = v179;
              }
            }
          }

          v22 = (v105 - v55 * v118) / v55;
          goto LABEL_129;
        }

        if ((v192 & 1) == 0)
        {
          if (v195 == 3)
          {
            if (qword_10009F368 != -1)
            {
              swift_once();
            }

            v106 = byte_1000A51D8;

            if (v106)
            {
              v22 = 50.0;
            }

            else
            {
              v22 = 44.0;
            }

            goto LABEL_129;
          }

          v130 = [objc_opt_self() mainScreen];
          [v130 _referenceBounds];
          v132 = v131;
          v134 = v133;
          v136 = v135;
          v138 = v137;

          v86 = v132;
          v87 = v134;
          v88 = v136;
          v89 = v138;
          goto LABEL_82;
        }

        v22 = 34.0;
LABEL_129:
        v150 = *&_swiftEmptyArrayStorage[2];
        v149 = *&_swiftEmptyArrayStorage[3];
        if (v150 >= v149 >> 1)
        {
          sub_10000DE34((v149 > 1), v150 + 1, 1);
        }

        ++v68;
        *&_swiftEmptyArrayStorage[2] = v150 + 1;
        _swiftEmptyArrayStorage[v150 + 4] = v22;
        if (v67 == v68)
        {

          v23 = _swiftEmptyArrayStorage;
          v40 = v184;
          v64 = v185;
          goto LABEL_136;
        }
      }

LABEL_76:
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D8 != 1)
      {
        if (v195 - 2 < 3)
        {
          v91 = [objc_opt_self() mainScreen];
          [v91 _referenceBounds];
          v93 = v92;
          v95 = v94;
          v97 = v96;
          v99 = v98;

          v197.origin.x = v93;
          v197.origin.y = v95;
          v197.size.width = v97;
          v197.size.height = v99;
          v100 = CGRectGetHeight(v197);

          if ((v100 <= 667.0) | v192 & 1 | (v195 == 3))
          {
            v22 = 30.0;
          }

          else
          {
            v22 = 34.0;
          }

          goto LABEL_129;
        }

        if (!v195)
        {
          goto LABEL_99;
        }

LABEL_98:

        v22 = 44.0;
        goto LABEL_129;
      }

      if (v195 <= 1u)
      {
        if (v195)
        {
          goto LABEL_98;
        }
      }

      else if (v195 != 3)
      {
        v77 = [objc_opt_self() mainScreen];
        [v77 _referenceBounds];
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;

        v86 = v79;
        v87 = v81;
        v88 = v83;
        v89 = v85;
LABEL_82:
        v90 = CGRectGetHeight(*&v86);

        if (v90 > 667.0)
        {
          v22 = 50.0;
        }

        else
        {
          v22 = 45.0;
        }

        goto LABEL_129;
      }

LABEL_97:

      v22 = 50.0;
      goto LABEL_129;
    }

    v67 = _CocoaArrayWrapper.endIndex.getter();
    if (v67)
    {
      goto LABEL_61;
    }

LABEL_136:
    *&v65 = *&a5 + 1;
    v163 = _swiftEmptyArrayStorage[2];
    if (v163 == 0.0)
    {

      v13 = v13 + 0.0;
    }

    else
    {
      v22 = _swiftEmptyArrayStorage[4];
      v164 = *&v163 - 1;
      if (v164)
      {
        v165 = &_swiftEmptyArrayStorage[5];
        do
        {
          v166 = *v165++;
          v167 = v166;
          if (v22 < v166)
          {
            v22 = v167;
          }

          --v164;
        }

        while (v164);
      }

      v13 = v13 + v22;
    }

    if (*&v65 == v187)
    {
      goto LABEL_51;
    }
  }

  while (*&v65 < *(v64 + 2));
  __break(1u);
LABEL_147:
  v168 = v182;

  v22 = v170;
  v19 = v171;
LABEL_149:

  *a7 = v40;
  *(a7 + 8) = v168;
  *(a7 + 16) = v173;
  *(a7 + 24) = v176;
  *(a7 + 32) = v175;
  *(a7 + 40) = v174;
  *(a7 + 48) = v192 & 1;
  *(a7 + 56) = round(v19);
  *(a7 + 64) = round(v175 + v173 + v22 * v172 + v13);
  return result;
}

uint64_t sub_1000130DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100013130(unsigned __int8 a1, double a2)
{
  if (sub_1000054A0(a1, 2) > a2)
  {
    return 1;
  }

  if (sub_1000054A0(a1, 3) > a2)
  {
    return 2;
  }

  if (sub_1000054A0(a1, 4) > a2)
  {
    return 3;
  }

  if (sub_1000054A0(a1, 5) > a2)
  {
    return 4;
  }

  if (sub_1000054A0(a1, 5) > a2)
  {
    return 1;
  }

  return 5;
}

uint64_t sub_10001321C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100013290();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000FB64(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_100013290()
{
  result = qword_10009F630;
  if (!qword_10009F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F630);
  }

  return result;
}

uint64_t sub_1000132E4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s7ColumnsOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7ColumnsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_10001349C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000134C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_100013508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100013570(uint64_t a1, int a2)
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

uint64_t sub_1000135B8(uint64_t result, int a2, int a3)
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

unint64_t sub_100013608()
{
  result = qword_10009F650;
  if (!qword_10009F650)
  {
    sub_100013694(&qword_10009F658);
    sub_1000136DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F650);
  }

  return result;
}

uint64_t sub_100013694(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000136DC()
{
  result = qword_10009F660;
  if (!qword_10009F660)
  {
    sub_100013694(&qword_10009F668);
    sub_100013768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F660);
  }

  return result;
}

unint64_t sub_100013768()
{
  result = qword_10009F670;
  if (!qword_10009F670)
  {
    sub_100013694(&qword_10009F678);
    sub_1000137F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F670);
  }

  return result;
}

unint64_t sub_1000137F4()
{
  result = qword_10009F680;
  if (!qword_10009F680)
  {
    sub_100013694(&qword_10009F688);
    sub_1000138AC();
    sub_100015A00(&qword_10009F6C0, &qword_10009F6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F680);
  }

  return result;
}

unint64_t sub_1000138AC()
{
  result = qword_10009F690;
  if (!qword_10009F690)
  {
    sub_100013694(&qword_10009F698);
    sub_100015A00(&qword_10009F6A0, &qword_10009F6A8);
    sub_100015A00(&qword_10009F6B0, &qword_10009F6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F690);
  }

  return result;
}

unint64_t sub_100013A00()
{
  result = qword_10009F6E0;
  if (!qword_10009F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F6E0);
  }

  return result;
}

uint64_t sub_100013A58(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100013AA4()
{

  sub_100013A58(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

unint64_t sub_100013AF8()
{
  result = qword_10009F730;
  if (!qword_10009F730)
  {
    sub_100013694(&qword_10009F720);
    sub_100013B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F730);
  }

  return result;
}

unint64_t sub_100013B84()
{
  result = qword_10009F738;
  if (!qword_10009F738)
  {
    sub_100013694(&qword_10009F740);
    sub_100015A00(&qword_10009F748, &qword_10009F750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F738);
  }

  return result;
}

unint64_t sub_100013C3C()
{
  result = qword_10009F758;
  if (!qword_10009F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F758);
  }

  return result;
}

uint64_t sub_100013C90()
{

  sub_100013A58(*(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 107, 7);
}

unint64_t sub_100013CF0()
{
  result = qword_10009F788;
  if (!qword_10009F788)
  {
    sub_100013694(&qword_10009F790);
    sub_100013DA8();
    sub_100015A00(&unk_1000A1710, &qword_10009F7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F788);
  }

  return result;
}

unint64_t sub_100013DA8()
{
  result = qword_10009F798;
  if (!qword_10009F798)
  {
    sub_100013694(&qword_10009F7A0);
    sub_100013E60();
    sub_100015A00(&qword_10009F7E8, &qword_10009F7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F798);
  }

  return result;
}

unint64_t sub_100013E60()
{
  result = qword_10009F7A8;
  if (!qword_10009F7A8)
  {
    sub_100013694(&qword_10009F7B0);
    sub_100013F18();
    sub_100015A00(&qword_10009F7E8, &qword_10009F7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F7A8);
  }

  return result;
}

unint64_t sub_100013F18()
{
  result = qword_10009F7B8;
  if (!qword_10009F7B8)
  {
    sub_100013694(&qword_10009F7C0);
    sub_100015A00(&qword_10009F7C8, &qword_10009F7D0);
    sub_100015A00(&qword_10009F7D8, &qword_10009F7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F7B8);
  }

  return result;
}

uint64_t sub_100013FFC@<X0>(uint64_t a1@<X8>)
{
  sub_100014390();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_100014108@<D0>(void (*a1)(void)@<X3>, double *a2@<X8>)
{
  a1();
  EnvironmentValues.subscript.getter();
  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000141D4@<X0>(_BYTE *a1@<X8>)
{
  sub_100014294();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

double sub_100014270(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_100014294()
{
  result = qword_10009F800;
  if (!qword_10009F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F800);
  }

  return result;
}

unint64_t sub_1000142E8()
{
  result = qword_10009F808;
  if (!qword_10009F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F808);
  }

  return result;
}

unint64_t sub_10001433C()
{
  result = qword_10009F810;
  if (!qword_10009F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F810);
  }

  return result;
}

unint64_t sub_100014390()
{
  result = qword_10009F818;
  if (!qword_10009F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F818);
  }

  return result;
}

uint64_t sub_1000143E4(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 sub_100014448(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100014464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000144AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001454C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100013694(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000145C8()
{
  result = qword_10009F838;
  if (!qword_10009F838)
  {
    sub_100013694(&qword_10009F6E8);
    sub_100015A00(&qword_10009F708, &qword_10009F6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F838);
  }

  return result;
}

uint64_t sub_10001469C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001471C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000130DC(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100014784()
{
  result = qword_10009F8A8;
  if (!qword_10009F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F8A8);
  }

  return result;
}

unint64_t sub_1000147D8()
{
  result = qword_10009F8C0;
  if (!qword_10009F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F8C0);
  }

  return result;
}

unint64_t sub_10001482C()
{
  result = qword_10009F8C8;
  if (!qword_10009F8C8)
  {
    sub_100013694(&qword_10009F8B8);
    sub_100014784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F8C8);
  }

  return result;
}

unint64_t sub_1000148B8()
{
  result = qword_10009F8D8;
  if (!qword_10009F8D8)
  {
    sub_100013694(&qword_10009F8A0);
    sub_100014944();
    sub_100014F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F8D8);
  }

  return result;
}

unint64_t sub_100014944()
{
  result = qword_10009F8E0;
  if (!qword_10009F8E0)
  {
    sub_100013694(&qword_10009F898);
    sub_1000149D0();
    sub_100014CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F8E0);
  }

  return result;
}

unint64_t sub_1000149D0()
{
  result = qword_10009F8E8;
  if (!qword_10009F8E8)
  {
    sub_100013694(&qword_10009F8F0);
    sub_100014A5C();
    sub_100014B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F8E8);
  }

  return result;
}

unint64_t sub_100014A5C()
{
  result = qword_10009F8F8;
  if (!qword_10009F8F8)
  {
    sub_100013694(&qword_10009F900);
    sub_100014AE8();
    sub_100014B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F8F8);
  }

  return result;
}

unint64_t sub_100014AE8()
{
  result = qword_10009F908;
  if (!qword_10009F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F908);
  }

  return result;
}

unint64_t sub_100014B3C()
{
  result = qword_10009F910;
  if (!qword_10009F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F910);
  }

  return result;
}

unint64_t sub_100014B90()
{
  result = qword_10009F918;
  if (!qword_10009F918)
  {
    sub_100013694(&qword_10009F920);
    sub_100014C1C();
    sub_100014C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F918);
  }

  return result;
}

unint64_t sub_100014C1C()
{
  result = qword_10009F928;
  if (!qword_10009F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F928);
  }

  return result;
}

unint64_t sub_100014C70()
{
  result = qword_10009F930;
  if (!qword_10009F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F930);
  }

  return result;
}

unint64_t sub_100014CC4()
{
  result = qword_10009F938;
  if (!qword_10009F938)
  {
    sub_100013694(&qword_10009F878);
    sub_100014D50();
    sub_100014E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F938);
  }

  return result;
}

unint64_t sub_100014D50()
{
  result = qword_10009F940;
  if (!qword_10009F940)
  {
    sub_100013694(&qword_10009F870);
    sub_100014C70();
    sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F940);
  }

  return result;
}

uint64_t sub_100014E0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100014E54()
{
  result = qword_10009F950;
  if (!qword_10009F950)
  {
    sub_100013694(&qword_10009F858);
    sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl);
    sub_100014F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F950);
  }

  return result;
}

unint64_t sub_100014F10()
{
  result = qword_10009F958;
  if (!qword_10009F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F958);
  }

  return result;
}

unint64_t sub_100014F64()
{
  result = qword_10009F960;
  if (!qword_10009F960)
  {
    sub_100013694(&qword_10009F968);
    sub_100014FF0();
    sub_100015290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F960);
  }

  return result;
}

unint64_t sub_100014FF0()
{
  result = qword_10009F970;
  if (!qword_10009F970)
  {
    sub_100013694(&qword_10009F978);
    sub_10001507C();
    sub_1000151B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F970);
  }

  return result;
}

unint64_t sub_10001507C()
{
  result = qword_10009F980;
  if (!qword_10009F980)
  {
    sub_100013694(&qword_10009F988);
    sub_100015108();
    sub_10001515C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F980);
  }

  return result;
}

unint64_t sub_100015108()
{
  result = qword_10009F990;
  if (!qword_10009F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F990);
  }

  return result;
}

unint64_t sub_10001515C()
{
  result = qword_10009F998;
  if (!qword_10009F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F998);
  }

  return result;
}

unint64_t sub_1000151B0()
{
  result = qword_10009F9A0;
  if (!qword_10009F9A0)
  {
    sub_100013694(&qword_10009F9A8);
    sub_10001515C();
    sub_10001523C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F9A0);
  }

  return result;
}

unint64_t sub_10001523C()
{
  result = qword_10009F9B0;
  if (!qword_10009F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F9B0);
  }

  return result;
}

unint64_t sub_100015290()
{
  result = qword_10009F9B8;
  if (!qword_10009F9B8)
  {
    sub_100013694(&qword_10009F9C0);
    sub_10001531C();
    sub_100015450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F9B8);
  }

  return result;
}

unint64_t sub_10001531C()
{
  result = qword_10009F9C8;
  if (!qword_10009F9C8)
  {
    sub_100013694(&qword_10009F9D0);
    sub_1000153A8();
    sub_1000153FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F9C8);
  }

  return result;
}

unint64_t sub_1000153A8()
{
  result = qword_10009F9D8;
  if (!qword_10009F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F9D8);
  }

  return result;
}

unint64_t sub_1000153FC()
{
  result = qword_10009F9E0;
  if (!qword_10009F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F9E0);
  }

  return result;
}

unint64_t sub_100015450()
{
  result = qword_10009F9E8;
  if (!qword_10009F9E8)
  {
    sub_100013694(&qword_10009F9F0);
    sub_1000147D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F9E8);
  }

  return result;
}

unint64_t sub_1000154D4()
{
  result = qword_10009F9F8;
  if (!qword_10009F9F8)
  {
    sub_100013694(&qword_10009F8D0);
    sub_1000147D8();
    sub_10001482C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F9F8);
  }

  return result;
}

uint64_t sub_100015638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TFTextAlignmentControl();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001569C(uint64_t a1)
{
  v2 = type metadata accessor for TFTextAlignmentControl();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000156F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000130DC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000158BC()
{
  result = qword_10009FA08;
  if (!qword_10009FA08)
  {
    sub_100013694(&qword_10009F848);
    sub_100015974();
    sub_100015A00(&qword_10009FA18, &qword_10009FA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FA08);
  }

  return result;
}

unint64_t sub_100015974()
{
  result = qword_10009FA10;
  if (!qword_10009FA10)
  {
    sub_100013694(&qword_10009F840);
    sub_1000148B8();
    sub_1000154D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FA10);
  }

  return result;
}

uint64_t sub_100015A00(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100013694(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015A48(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100015A54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100015AB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100015AC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000130DC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for _UITextFormattingServiceViewController()
{
  result = qword_10009FA58;
  if (!qword_10009FA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015C14()
{
  v1 = qword_10009FA50;
  v2 = *&v0[qword_10009FA50];
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [v0 parentViewController];
    if (v4)
    {
      v5 = v4;
      v3 = swift_dynamicCastObjCProtocolConditional();
      if (!v3)
      {
      }
    }

    else
    {
      v3 = 0;
    }

    v6 = *&v0[v1];
    *&v0[v1] = v3;
    swift_unknownObjectRetain();
    sub_1000179B8(v6);
  }

  sub_1000179C8(v2);
  return v3;
}

void sub_100015CD0(uint64_t a1)
{
  v2 = qword_10009FA40;
  type metadata accessor for TextFormattingState();
  swift_allocObject();
  *(a1 + v2) = sub_10001EAAC();
  v3 = qword_10009FA48;
  *(a1 + v3) = [objc_allocWithZone(UITextFormattingViewControllerConfiguration) init];
  *(a1 + qword_10009FA50) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100015D94()
{
  v1 = v0;
  v2 = qword_10009FA40;
  type metadata accessor for TextFormattingState();
  swift_allocObject();
  *(v0 + v2) = sub_10001EAAC();
  v3 = qword_10009FA48;
  *(v1 + v3) = [objc_allocWithZone(UITextFormattingViewControllerConfiguration) init];
  *(v1 + qword_10009FA50) = 1;
  sub_100018B94(&qword_10009F588, type metadata accessor for TextFormattingState);

  ObservedObject.init(wrappedValue:)();

  v4 = UIHostingController.init(rootView:)();
  v5 = qword_10009FA40;
  *(*&v4[qword_10009FA40] + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInRemotePresentation) = 1;
  v6 = v4;

  sub_10001CDD4();

  v7 = *&v4[v5];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = (v7 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
  *v9 = sub_100018220;
  v9[1] = v8;

  v10 = *&v4[v5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_contentSizeDidUpdate);
  *v12 = sub_100018228;
  v12[1] = v11;

  v13 = *&v4[v5];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = (v13 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_pickFont);
  *v15 = sub_100018258;
  v15[1] = v14;

  v16 = *&v4[v5];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = (v16 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_pickColor);
  *v18 = sub_100018288;
  v18[1] = v17;

  v19 = *&v4[v5];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = (v19 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_showTypographySettings);
  *v21 = sub_100018290;
  v21[1] = v20;

  return v6;
}

void sub_100016094(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = UITextFormattingViewController.ChangeValue._bridgeToObjectiveC()();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_100018840(a2);
      v10 = v9;

      v11 = sub_100015C14();
      if (v11)
      {
        v12 = v11;
        if (v10 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v14 = sub_100015C14();
      v10 = 0xF000000000000000;
      if (v14)
      {
        v12 = v14;
        v8 = 0;
        isa = 0;
LABEL_9:
        [v12 _textFormattingDidChangeValue:v5 textAttributesData:isa];

        sub_1000179D8(v8, v10);
        swift_unknownObjectRelease();
LABEL_12:

        return;
      }

      v8 = 0;
    }

    sub_1000179D8(v8, v10);
    goto LABEL_12;
  }
}

id sub_1000161DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18[2] = v15;
  v18[3] = v16;
  v19 = v17;
  v18[0] = v13;
  v18[1] = v14;
  sub_10000C824(v18);
  v1 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v13;
  if (v13 <= 1u)
  {
    if (v13)
    {
      v3 = 12;
    }

    else
    {
      v3 = 6;
    }
  }

  else if (v13 == 2)
  {
    v3 = 4;
  }

  else if (v13 == 4)
  {
    v3 = 8;
  }

  else
  {
    v3 = 5;
    v2 = 3;
  }

  v4 = sub_10006A530(v3, v2);
  v5 = ceil(v1);
  if (v5 <= 500.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 500.0;
  }

  v7 = sub_100015C14();
  if (!v7 || ([v7 preferredContentSize], v9 = v8, v11 = v10, result = swift_unknownObjectRelease(), v4 != v9) || v6 != v11)
  {
    result = *(v0 + qword_10009FA50);
    if (result)
    {
      return [result setPreferredContentSize:{v4, v6}];
    }
  }

  return result;
}

void sub_10001639C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1000163F8()
{
  v4 = [objc_allocWithZone(UIFontPickerViewControllerConfiguration) init];
  [v4 setIncludeFaces:1];
  [v4 setDisplayUsingSystemFont:1];
  [v4 set_includeDefaultFont:{objc_msgSend(*(v0 + qword_10009FA48), "_includeDefaultFont")}];
  sub_10001C93C();
  v1 = sub_100015C14();
  if (v1)
  {
    v2 = v1;
    sub_1000132E4(0, &qword_10009FAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 _presentFontPickerWithConfiguration:v4 selectedFonts:isa];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100016550()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_10009FA40);
    v3 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_colorPickerRect);
    v4 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_colorPickerRect + 8);
    v5 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_colorPickerRect + 16);
    v6 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_colorPickerRect + 24);
    v7 = sub_10001CAC4();
    v8 = sub_100015C14();
    if (v8)
    {
      [v8 _presentColorPicker:v7 selectedColor:{v3, v4, v5, v6}];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100016628()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10001CCAC();
    v3 = sub_100015C14();
    if (v3)
    {
      [v3 _presentTypographySettingsForFont:v2];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000166E4(char a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  [v3 setBackgroundColor:0];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 subviews];

  sub_1000132E4(0, &unk_10009FAC0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v8 + 32);
LABEL_8:
  v10 = v9;

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    [v11 setClipsToBounds:0];
    [v12 setKeyboardDismissMode:2];
  }
}

void sub_10001688C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000166E4(a3);
}

id sub_1000168E0()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "viewWillLayoutSubviews");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = result;
  [result frame];
  v5 = v4;

  v6 = *&v1[qword_10009FA40];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v19;
  if (v19 != v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v5;

    static Published.subscript.setter();
    sub_10001CDD4();
  }

  v8 = [v1 parentViewController];
  if (!v8)
  {
    v12 = 0.0;
    goto LABEL_8;
  }

  v9 = v8;
  result = [v8 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = result;
  [result safeAreaInsets];
  v12 = v11;

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20) = v12 > 0.0;

  static Published.subscript.setter();
  if (![*&v1[qword_10009FA48] _isTextAnimationsConfiguration] || (*(v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation) & 1) != 0)
  {
LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    return sub_10001CDD4();
  }

  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result window];

  if (v14 && (v15 = [v14 windowScene], v14, v15))
  {
    v16 = [v15 interfaceOrientation];
  }

  else
  {
    v16 = 1;
  }

  if (sub_100018210(v16))
  {
    v17 = 172.0;
  }

  else
  {
    [objc_opt_self() sizeForInterfaceOrientation:v16];
    v17 = v18 - v12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v21 & 1) != 0 || v20 != v17)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_100016C78(void *a1)
{
  v1 = a1;
  sub_1000168E0();
}

void sub_100016CC0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_1000161DC();
}

id sub_100016D18(void *a1)
{
  v2 = v1;
  v3 = *(v1 + qword_10009FA48);
  *(v2 + qword_10009FA48) = a1;
  v4 = a1;

  v5 = [v4 _hasPopoverPresentation];
  v6 = *(v2 + qword_10009FA40);
  if (v5)
  {
    v7 = (v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_close);
    v8 = *(v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_close);
    *v7 = 0;
    v7[1] = 0;
    sub_1000180E8(v8);
  }

  else
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = (v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_close);
    v11 = *(v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_close);
    *v10 = sub_1000180E0;
    v10[1] = v9;

    sub_1000180E8(v11);
  }

  v12 = [v4 groups];
  sub_1000132E4(0, &qword_10009FAB8);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10001CDD4();
  sub_10001D1B8();
  v13 = UITextFormattingViewControllerConfiguration.formattingStyles.getter();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10001E2CC();
  UITextFormattingViewControllerConfiguration._emphasisStyles.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10001E89C(v14);

  [v4 _useLandscapeLayout];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10001D430();
  v15 = [v4 _includeDefaultFont];
  *(v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_includeDefaultFont) = v15;
  v16 = [v4 _hasPopoverPresentation];
  *(v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation) = v16;
  sub_10001D430();
  sub_10001CDD4();
  v17 = [v4 _hasParentViewController];
  *(v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController) = v17;
  sub_10001CDD4();
  v18 = [v4 _isTextAnimationsConfiguration];
  *(v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isTextAnimationsUI) = v18;
  sub_10001D430();
  [v4 _isTextViewConfiguration];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_1000161DC();
}

void sub_100017108()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100015C14();
    if (v2)
    {
      [v2 _textFormattingDidFinish];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100017178(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100016D18(v4);
}

void sub_1000171E0(void *a1)
{
  v2 = sub_1000130DC(&qword_10009FAB0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UITextFormattingViewController.FormattingDescriptor._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100017FD0(v7, v5);
  v12 = a1;

  static Published.subscript.setter();
  sub_10001D554();
  sub_100018040(v7);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000173E8()
{
  type metadata accessor for ComponentKey(0);
  sub_100018B94(&qword_10009F440, type metadata accessor for ComponentKey);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1000174BC(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = a1;
  sub_1000161DC();
  v4[2](v4);

  _Block_release(v4);
}

void sub_100017524(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    v6 = a3;
    a1;
    v7 = a4;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_100015C14();
    if (v11)
    {
      v12 = v11;
      if (v10 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v14 = a3;
    v15 = a1;
    v16 = sub_100015C14();
    v10 = 0xF000000000000000;
    if (v16)
    {
      v12 = v16;
      v8 = 0;
      isa = 0;
LABEL_8:
      [v12 _textFormattingDidChangeValue:a3 textAttributesData:isa];

      sub_1000179D8(v8, v10);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v8 = 0;
  }

  sub_1000179D8(v8, v10);
LABEL_11:
}

void sub_10001764C(void *a1)
{
  v2 = a1;
  v1 = sub_100015C14();
  if (v1)
  {
    [v1 _textFormattingDidFinish];
    swift_unknownObjectRelease();
  }
}

void sub_1000176B0(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v12 = a7;
  v14 = a1;
  v13 = sub_100015C14();
  if (v13)
  {
    [v13 _presentColorPicker:v12 selectedColor:{a2, a3, a4, a5}];
    swift_unknownObjectRelease();
  }
}

void sub_100017758(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = a1;
  v8 = sub_100015C14();
  if (v8)
  {
    [v8 _presentFontPickerWithConfiguration:v6 selectedFonts:v7];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1000177F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  v5 = sub_100015C14();
  if (v5)
  {
    [v5 _presentTypographySettingsForFont:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10001786C()
{

  v1 = *(v0 + qword_10009FA50);

  return sub_1000179B8(v1);
}

id sub_1000178BC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000178F4(uint64_t a1)
{

  v2 = *(a1 + qword_10009FA50);

  return sub_1000179B8(v2);
}

uint64_t sub_1000179B8(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000179C8(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1000179D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000179EC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000179EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100017A54()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10001D430();
}

uint64_t sub_100017ACC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100017B48(uint64_t a1)
{
  v2 = sub_1000130DC(&qword_10009FAB0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100017FD0(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100017FD0(v7, v5);

  static Published.subscript.setter();
  sub_10001D554();
  return sub_100018040(v7);
}

uint64_t sub_100017C68()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10001E89C(v1);
}

uint64_t sub_100017D80@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100017DFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100017E9C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100017F2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100017FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000130DC(&qword_10009FAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018040(uint64_t a1)
{
  v2 = sub_1000130DC(&qword_10009FAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000180A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000180E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100018298(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100018364(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100015A54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000143E4(v11);
  return v7;
}

unint64_t sub_100018364(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100018470(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100018470(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000184BC(a1, a2);
  sub_1000185EC(&off_100096730);
  return v3;
}

char *sub_1000184BC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000186D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000186D8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000185EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001874C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000186D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000130DC(&unk_10009FAE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001874C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000130DC(&unk_10009FAE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100018840(uint64_t result)
{
  if (result)
  {
    if (qword_10009F358 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100018B5C(v1, qword_1000A51A8);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v16 = v5;
      *v4 = 136315138;
      if (qword_10009F350 != -1)
      {
        swift_once();
      }

      if (byte_1000A51A0 == 1)
      {
        type metadata accessor for Key(0);
        sub_100018B94(&qword_10009F430, type metadata accessor for Key);
        v6 = Dictionary.description.getter();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = sub_100018298(v6, v8, &v16);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to update text attributes %s", v4, 0xCu);
      sub_1000143E4(v5);
    }

    v10 = objc_opt_self();
    type metadata accessor for Key(0);
    sub_100018B94(&qword_10009F430, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v16 = 0;
    v12 = [v10 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v16];

    v13 = v16;
    if (v12)
    {
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v14;
    }

    else
    {
      v15 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      return 0;
    }
  }

  return result;
}

uint64_t sub_100018B5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100018B94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100018BDC()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [objc_allocWithZone(_UIFontPickerContentViewController) init];
  [v0 pushViewController:v1 animated:0];
  [v1 setDelegate:v0];
  v2 = [objc_allocWithZone(UIFontPickerViewControllerConfiguration) init];
  [v1 _setConfiguration:v2];
  [v0 setPreferredContentSize:{480.0, 640.0}];

  v3 = *&v0[OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController];
  *&v0[OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController] = v1;
}

void sub_100018EA4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController);
  if (v2)
  {
    if (a1)
    {
      sub_100019258();
      v3 = v2;
      v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v3 = v2;
      v4.super.isa = 0;
    }

    isa = v4.super.isa;
    [v3 _setSelectedFonts:? scrollToVisible:?];
  }
}

unint64_t sub_100019258()
{
  result = qword_10009FC40;
  if (!qword_10009FC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009FC40);
  }

  return result;
}

uint64_t sub_1000192A4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100019BFC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100019BFC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10001968C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100019BFC(v3, v5, v2 != 0);
  return v12;
}

void sub_10001968C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100019B58();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100019B58();
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

void sub_10001988C(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v27 = a1;
  v7 = [a2 userActivities];
  sub_100019B58();
  sub_100019BA4();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_1000192A4(v8);

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_9;
  }

  v10 = [v9 activityType];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v13)
  {
LABEL_9:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_10;
  }

  if (v11 != v14 || v13 != v15)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_12;
    }

    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v25)
    {

LABEL_25:
      ObjCClassFromMetadata = _UIFontPickerUIServiceTextFormattingViewController;
      goto LABEL_13;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_25;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_14;
  }

LABEL_12:

  type metadata accessor for _UIFontPickerUIServiceFontPickerViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
LABEL_13:
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
LABEL_14:
  v19 = [objc_allocWithZone(type metadata accessor for _UIFontPickerUIServiceSceneDelegate.SecureWindow()) initWithWindowScene:v6];
  v20 = OBJC_IVAR____TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate_window;
  v21 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate_window);
  *(v2 + OBJC_IVAR____TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate_window) = v19;

  v22 = *(v2 + v20);
  if (v22 && ([v22 setRootViewController:v16], (v23 = *(v2 + v20)) != 0))
  {
    v24 = v23;
    [v24 makeKeyAndVisible];
  }

  else
  {
    v24 = v27;
    v27 = v16;
  }
}

unint64_t sub_100019B58()
{
  result = qword_10009FD08;
  if (!qword_10009FD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009FD08);
  }

  return result;
}

unint64_t sub_100019BA4()
{
  result = qword_10009FD10;
  if (!qword_10009FD10)
  {
    sub_100019B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FD10);
  }

  return result;
}

uint64_t sub_100019BFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_100019C0C()
{
  sub_10001BE14();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000A4E80 = result;
  return result;
}

void sub_100019C64()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4E88 = v5;
  unk_1000A4E90 = v7;
}

void sub_100019D7C()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4E98 = v5;
  unk_1000A4EA0 = v7;
}

void sub_100019E94()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4EA8 = v5;
  unk_1000A4EB0 = v7;
}

void sub_100019FB0()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4EB8 = v5;
  unk_1000A4EC0 = v7;
}

void sub_10001A0CC()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4EC8 = v5;
  unk_1000A4ED0 = v7;
}

void sub_10001A1E4()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4ED8 = v5;
  unk_1000A4EE0 = v7;
}

void sub_10001A2FC()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4EE8 = v5;
  unk_1000A4EF0 = v7;
}

void sub_10001A414()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4EF8 = v5;
  unk_1000A4F00 = v7;
}

void sub_10001A52C()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F08 = v5;
  unk_1000A4F10 = v7;
}

void sub_10001A644()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F18 = v5;
  unk_1000A4F20 = v7;
}

void sub_10001A75C()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F28 = v5;
  unk_1000A4F30 = v7;
}

void sub_10001A868()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F38 = v5;
  unk_1000A4F40 = v7;
}

void sub_10001A97C()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F48 = v5;
  unk_1000A4F50 = v7;
}

void sub_10001AA98()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F58 = v5;
  unk_1000A4F60 = v7;
}

void sub_10001ABB4()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F68 = v5;
  unk_1000A4F70 = v7;
}

void sub_10001ACCC()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F78 = v5;
  unk_1000A4F80 = v7;
}

void sub_10001ADD8()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F88 = v5;
  unk_1000A4F90 = v7;
}

void sub_10001AEF4()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4F98 = v5;
  unk_1000A4FA0 = v7;
}

void sub_10001B00C()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4FA8 = v5;
  unk_1000A4FB0 = v7;
}

void sub_10001B128()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4FB8 = v5;
  unk_1000A4FC0 = v7;
}

void sub_10001B244()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4FC8 = v5;
  unk_1000A4FD0 = v7;
}

void sub_10001B360()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4FD8 = v5;
  unk_1000A4FE0 = v7;
}

void sub_10001B478()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4FE8 = v5;
  unk_1000A4FF0 = v7;
}

void sub_10001B590()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A4FF8 = v5;
  unk_1000A5000 = v7;
}

void sub_10001B6AC()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5008 = v5;
  unk_1000A5010 = v7;
}

void sub_10001B7C8()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5018 = v5;
  unk_1000A5020 = v7;
}

void sub_10001B8E4()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5028 = v5;
  unk_1000A5030 = v7;
}

void sub_10001B9F0()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5038 = v5;
  unk_1000A5040 = v7;
}

void sub_10001BAF8()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5048 = v5;
  unk_1000A5050 = v7;
}

void sub_10001BC04()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5058 = v5;
  unk_1000A5060 = v7;
}

void sub_10001BD0C()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5068 = v5;
  unk_1000A5070 = v7;
}

unint64_t sub_10001BE14()
{
  result = qword_10009FDE0;
  if (!qword_10009FDE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009FDE0);
  }

  return result;
}

void sub_10001BE60()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5078 = v5;
  unk_1000A5080 = v7;
}

void sub_10001BF78()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5088 = v5;
  unk_1000A5090 = v7;
}

void sub_10001C090()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A5098 = v5;
  unk_1000A50A0 = v7;
}

void sub_10001C1A8()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A50A8 = v5;
  unk_1000A50B0 = v7;
}

void sub_10001C2BC()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A50B8 = v5;
  unk_1000A50C0 = v7;
}

void sub_10001C3D4()
{
  if (qword_10009F1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000A4E80;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  qword_1000A50C8 = v5;
  unk_1000A50D0 = v7;
}

uint64_t sub_10001C4EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

__n128 sub_10001C560@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_10001C600(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 56);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 48);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 56 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 64 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001C710(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1668508004;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616D69636564;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6568707968;
    }

    else
    {
      v4 = 1668508004;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6C616D69636564;
  if (a2 != 2)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6568707968;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

double sub_10001C850()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001C8C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double *sub_10001C93C()
{
  sub_1000130DC(&qword_10009FAB0);
  __chkstk_darwin();
  v1 = &v6 - v0;
  v7 = &_swiftEmptySetSingleton;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    sub_1000156F8(v1, &qword_10009FAB0);
    v3 = _swiftEmptyArrayStorage;
  }

  else
  {
    v4 = UITextFormattingViewController.FormattingDescriptor.fonts.getter();
    sub_1000156F8(v1, &qword_10009FAB0);
    v3 = sub_1000282B4(v4, &v7, &selRef_fontName);
  }

  return v3;
}

id sub_10001CAC4()
{
  v0 = sub_1000130DC(&qword_10009FAB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v6 = UITextFormattingViewController.FormattingDescriptor.textColors.getter();
    sub_1000156F8(v2, &qword_10009FAB0);
    if (v6 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_8:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v7 = *(v6 + 32);
        }

        v8 = v7;

        return v8;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_3;
  }

  sub_1000156F8(v2, &qword_10009FAB0);
LABEL_3:
  v4 = [objc_opt_self() labelColor];

  return v4;
}

double *sub_10001CCAC()
{
  result = sub_10001C93C();
  if (result >> 62)
  {
    v3 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v3;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    v5 = objc_opt_self();
    [v5 systemFontSize];
    v6 = [v5 systemFontOfSize:?];

    return v6;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 4);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

NSString sub_10001CD9C()
{
  result = String._bridgeToObjectiveC()();
  qword_10009FDE8 = result;
  return result;
}

uint64_t sub_10001CDD4()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = *(*&v21[0] + 16);

  v20 = &_swiftEmptySetSingleton;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *&v21[0];
  *&v21[0] = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v4; i = v1)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      *&v17[0] = v7;
      sub_100024434(v17, &v20, v2 != 0, &v19);

      if (v19)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = *&v21[0];
      }

      ++v5;
      if (v1 == v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_18:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v21[0];
  if (*(i + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(i + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController) ^ 1;
  }

  v11 = *(i + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = *v21;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10001227C(v9, v6, v10 & 1, v11, *v21, SBYTE8(v21[0]), v21, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  v17[2] = v21[2];
  v17[3] = v21[3];
  v18 = v22;
  v17[0] = v21[0];
  v17[1] = v21[1];

  static Published.subscript.setter();
  v13 = *(i + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_contentSizeDidUpdate);

  v13(v14);
}

uint64_t sub_10001D1B8()
{
  v1 = v0;
  v2 = sub_1000130DC(&qword_1000A00D0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v5 = sub_100028444(_swiftEmptyArrayStorage);
  swift_getKeyPath();
  swift_getKeyPath();
  v11[1] = v5;

  static Published.subscript.setter();
  v6 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_renderTask;
  if (*(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_renderTask))
  {

    Task.cancel()();
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v1;
  *(v1 + v6) = sub_100024134(0, 0, v4, &unk_100078810, v9);
}

uint64_t sub_10001D3AC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10001CDD4();
  return sub_10001D1B8();
}

uint64_t sub_10001D430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10001CDD4();
}

void sub_10001D554()
{
  if ((*(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_initialUpdateOfRecentFontsCompleted) & 1) == 0)
  {
    v73 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_initialUpdateOfRecentFontsCompleted;
    v74 = v0;
    v19 = sub_10001C93C();
    v3 = v19;
    v76 = _swiftEmptyArrayStorage;
    if (v19 >> 62)
    {
      goto LABEL_57;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

  v73 = sub_10001CCAC();
  if ([v73 isSystemFont] && *(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_includeDefaultFont) != 1)
  {

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v76;
  v74 = v0;
  if (v76 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
LABEL_6:
      v3 = 0;
      p_align = &stru_10009CFE8.align;
      while (1)
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [v5 *(p_align + 308)];
        if (v8)
        {
          v9 = v8;
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0;
        }

        v13 = p_align;
        v14 = [v73 *(p_align + 308)];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v12)
        {
          v1 = v76;
          if (v10 == v15 && v12 == v17)
          {

            return;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {

            return;
          }
        }

        else
        {

          v1 = v76;
        }

        ++v3;
        p_align = v13;
        if (v7 == v2)
        {
          goto LABEL_66;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_24:
        v21 = _swiftEmptyArrayStorage;
        if (!v20)
        {
          break;
        }

        v22 = 0;
        v23 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_includeDefaultFont;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v24 = *(v3 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if ((*(v74 + v23) & 1) != 0 || ([v24 isSystemFont] & 1) == 0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v22;
          if (v26 == v20)
          {
            v27 = v76;
            v21 = _swiftEmptyArrayStorage;
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
      }

      v27 = _swiftEmptyArrayStorage;
LABEL_38:

      if ((v27 & 0x8000000000000000) == 0 && (v27 & 0x4000000000000000) == 0)
      {
        v28 = *(v27 + 16);
        if (v28)
        {
          v76 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          goto LABEL_42;
        }

        goto LABEL_62;
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_62:

        return;
      }

      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (v33)
      {
        v28 = v33;
        v76 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v28 & 0x8000000000000000) == 0)
        {
LABEL_42:
          v29 = 0;
          do
          {
            if ((v27 & 0xC000000000000001) != 0)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v30 = *(v27 + 8 * v29 + 32);
            }

            v31 = v30;
            ++v29;
            v32 = [v30 fontDescriptor];
            [objc_allocWithZone(_UIFontPickerFontInfo) initWithFontDescriptor:v32];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v28 != v29);

          v21 = v76;
          goto LABEL_48;
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_118:

LABEL_48:
      v76 = &_swiftEmptySetSingleton;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_100027848(v75, sub_100027E44);
      sub_1000282B4(v21, &v76, &selRef_familyName);

      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
      *(v73 + v74) = 1;

      return;
    }
  }

  else
  {
    v2 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_6;
    }
  }

LABEL_66:

  v34 = [v73 fontDescriptor];
  v72 = [objc_allocWithZone(_UIFontPickerFontInfo) initWithFontDescriptor:v34];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v76 >> 62)
  {
    goto LABEL_85;
  }

  for (i = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v36 = 0;
    while (1)
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v37 = *(v76 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v40 = [v37 familyName];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = [v72 familyName];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (v41 == v45 && v43 == v47)
      {

LABEL_82:

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        sub_1000130DC(&qword_10009F5D8);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_100077630;
        *(v50 + 32) = v38;
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100077630;
        *(v51 + 32) = v72;
        v71 = v38;
        v52 = v72;
        sub_1000130DC(&qword_10009FEE8);
        sub_100015A00(&qword_1000A0160, &qword_10009FEE8);
        sub_100015A00(&qword_1000A0168, &qword_10009FEE8);
        sub_100028AD0();
        RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();

        goto LABEL_114;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v49)
      {
        goto LABEL_82;
      }

      ++v36;
      if (v39 == i)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }

LABEL_86:

  sub_1000130DC(&qword_10009F5D8);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100077630;
  v21 = v72;
  *(v53 + 32) = v72;
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v72;
  static Published.subscript.getter();

  v55 = v76;
  v76 = v53;
  sub_100027848(v55, sub_100027E44);
  v56 = v53 >> 62;
  if (!(v53 >> 62))
  {
    v57 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57 >= 7)
    {
      v58 = 7;
    }

    else
    {
      v58 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v57 >= v58)
    {
      goto LABEL_91;
    }

LABEL_128:
    __break(1u);
    return;
  }

  v69 = _CocoaArrayWrapper.endIndex.getter();
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_118;
  }

  if (v69 >= 7)
  {
    v70 = 7;
  }

  else
  {
    v70 = v69;
  }

  if (v69 >= 0)
  {
    v58 = v70;
  }

  else
  {
    v58 = 7;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v58)
  {
    goto LABEL_128;
  }

LABEL_91:
  if ((v53 & 0xC000000000000001) != 0 && v58)
  {
    sub_1000132E4(0, &qword_10009F640);

    _ArrayBuffer._typeCheckSlowPath(_:)(0);
    if (v58 != 1)
    {
      _ArrayBuffer._typeCheckSlowPath(_:)(1);
      if (v58 != 2)
      {
        _ArrayBuffer._typeCheckSlowPath(_:)(2);
        if (v58 != 3)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(3);
          if (v58 != 4)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(4);
            if (v58 != 5)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(5);
              if (v58 != 6)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(6);
              }
            }
          }
        }
      }
    }
  }

  else
  {
  }

  if (v56)
  {
    v59 = _CocoaArrayWrapper.subscript.getter();
    v60 = v62;
    v56 = v63;
    v61 = v64;

    if (v61)
    {
      goto LABEL_106;
    }

LABEL_105:
    sub_10000DC64(v59, v60, v56, v61);
    v66 = v65;
    goto LABEL_112;
  }

  v59 = v53 & 0xFFFFFFFFFFFFFF8;
  v60 = (v53 & 0xFFFFFFFFFFFFFF8) + 32;
  v61 = (2 * v58) | 1;
  if ((v61 & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_106:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v67 = swift_dynamicCastClass();
  if (!v67)
  {
    swift_unknownObjectRelease();
    v67 = _swiftEmptyArrayStorage;
  }

  v68 = *(v67 + 2);

  if (__OFSUB__(v61 >> 1, v56))
  {
    __break(1u);
    goto LABEL_120;
  }

  if (v68 != (v61 >> 1) - v56)
  {
LABEL_120:
    swift_unknownObjectRelease_n();
    goto LABEL_105;
  }

  v66 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v66)
  {
    goto LABEL_113;
  }

  v66 = _swiftEmptyArrayStorage;
LABEL_112:
  swift_unknownObjectRelease();
LABEL_113:
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = v66;

  static Published.subscript.setter();

LABEL_114:
}

uint64_t sub_10001E254()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10001E2CC()
{
  v1 = v0;
  v45 = sub_1000130DC(&qword_1000A00E8);
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v35 - v3;
  v44 = type metadata accessor for AttributeContainer();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v46[2];
  if (v10)
  {
    v35 = v46;
    v36 = v1;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v13 = v46 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v40 = (v4 + 8);
    v41 = v12;
    v39 = (v2 + 8);
    v14 = _swiftEmptyArrayStorage;
    v15 = *(v11 + 56);
    v37 = (v11 - 8);
    v38 = v15;
    v16 = v6;
    v17 = v11;
    do
    {
      v18 = v17;
      v41(v9, v13, v16);
      v19 = v42;
      UITextFormattingViewController.FormattingStyle.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.UIKitAttributes();
      sub_100028BD8(&qword_1000A00F0, &type metadata accessor for AttributeScopes.UIKitAttributes);
      v20 = v43;
      AttributeContainer.subscript.getter();

      (*v40)(v19, v44);
      swift_getKeyPath();
      sub_100028A24();
      v21 = v16;
      v22 = v45;
      ScopedAttributeContainer.subscript.getter();

      (*v39)(v20, v22);
      v23 = v46;
      if (v46)
      {
        [v46 pointSize];
        v25 = v24;

        (*v37)(v9, v21);
        v16 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_10000BEC8(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        if (v27 >= v26 >> 1)
        {
          v28 = sub_10000BEC8((v26 > 1), v27 + 1, 1, v14);
          v17 = v18;
          v14 = v28;
        }

        else
        {
          v17 = v18;
        }

        *(v14 + 2) = v27 + 1;
        v14[v27 + 4] = v25;
      }

      else
      {
        (*v37)(v9, v21);
        v16 = v21;
        v17 = v18;
      }

      v13 += v38;
      --v10;
    }

    while (v10);

    v1 = v36;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v29 = sub_10001321C(v14);

  if (*(v29 + 16))
  {
    v30 = sub_10001C600(v29);
    v32 = v31;
  }

  else
  {

    v30 = 0;
    v32 = 1;
  }

  v34 = v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_largestFontSizeInFormattingStyles;
  *v34 = v30;
  *(v34 + 8) = v32 & 1;
  return result;
}

uint64_t sub_10001E7BC@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.uiKit.getter();
  result = type metadata accessor for AttributeScopes.UIKitAttributes();
  *a1 = result;
  return result;
}

uint64_t sub_10001E81C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10001E2CC();
}

uint64_t sub_10001E89C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(a1) = sub_10000B7E8(v6, a1);

  if ((a1 & 1) == 0)
  {
    if (qword_10009F340 != -1)
    {
      swift_once();
    }

    v5 = qword_1000A5128;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_100027848(v6, sub_100027FF8);
    *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_allHighlightStyles) = v5;

    return sub_10001D1B8();
  }

  return result;
}

id sub_10001EA24()
{
  v1 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState____lazy_storage___configForRecents;
  v2 = *(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState____lazy_storage___configForRecents);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState____lazy_storage___configForRecents);
  }

  else
  {
    v4 = [objc_allocWithZone(UIFontPickerViewControllerConfiguration) init];
    [v4 setIncludeFaces:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10001EAAC()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v104 = *(v2 - 8);
  v105 = v2;
  (__chkstk_darwin)();
  v103 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000130DC(&qword_1000A0158);
  v101 = *(v4 - 8);
  v102 = v4;
  (__chkstk_darwin)();
  v100 = &v70 - v5;
  v6 = sub_1000130DC(&qword_1000A0150);
  v98 = *(v6 - 8);
  v99 = v6;
  (__chkstk_darwin)();
  v97 = &v70 - v7;
  v8 = sub_1000130DC(&qword_1000A0148);
  v95 = *(v8 - 8);
  v96 = v8;
  (__chkstk_darwin)();
  v94 = &v70 - v9;
  v93 = sub_1000130DC(&qword_1000A0140);
  v92 = *(v93 - 8);
  (__chkstk_darwin)();
  v91 = &v70 - v10;
  v90 = sub_1000130DC(&qword_1000A0138);
  v89 = *(v90 - 8);
  (__chkstk_darwin)();
  v88 = &v70 - v11;
  v87 = sub_1000130DC(&qword_1000A0130);
  v86 = *(v87 - 8);
  (__chkstk_darwin)();
  v85 = &v70 - v12;
  v84 = sub_1000130DC(&qword_1000A0128);
  v83 = *(v84 - 8);
  (__chkstk_darwin)();
  v82 = &v70 - v13;
  v81 = sub_1000130DC(&qword_1000A0120);
  v80 = *(v81 - 8);
  (__chkstk_darwin)();
  v79 = &v70 - v14;
  v78 = sub_1000130DC(&qword_1000A0118);
  v77 = *(v78 - 8);
  (__chkstk_darwin)();
  v76 = &v70 - v15;
  v75 = sub_1000130DC(&qword_10009FAB0);
  v16 = (__chkstk_darwin)();
  v74 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v70 - v18;
  v71 = sub_1000130DC(&qword_1000A0110);
  v20 = *(v71 - 8);
  __chkstk_darwin(v71);
  v22 = &v70 - v21;
  v70 = sub_1000130DC(&qword_1000A0108);
  v23 = *(v70 - 8);
  __chkstk_darwin(v70);
  v25 = &v70 - v24;
  v26 = sub_1000130DC(&qword_1000A0100);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - v28;
  v30 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__groups;
  v106 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  sub_1000130DC(&qword_10009FED0);
  Published.init(initialValue:)();
  (*(v27 + 32))(v1 + v30, v29, v26);
  v31 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__useLandscapeLayout;
  LOBYTE(v106) = 0;
  Published.init(initialValue:)();
  v32 = *(v23 + 32);
  v72 = v23 + 32;
  v73 = v32;
  v33 = v70;
  v32(v1 + v31, v25, v70);
  v34 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__recentFonts;
  v106 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  sub_1000130DC(&qword_10009FEE8);
  Published.init(initialValue:)();
  (*(v20 + 32))(v1 + v34, v22, v71);
  v35 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__formattingDescriptor;
  v36 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  (*(*(v36 - 8) + 56))(v19, 1, 1, v36);
  sub_100015AC0(v19, v74, &qword_10009FAB0);
  v37 = v76;
  Published.init(initialValue:)();
  sub_1000156F8(v19, &qword_10009FAB0);
  (*(v77 + 32))(v1 + v35, v37, v78);
  v38 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__formattingStyles;
  v106 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  sub_1000130DC(&qword_10009FF00);
  v39 = v79;
  Published.init(initialValue:)();
  (*(v80 + 32))(v1 + v38, v39, v81);
  v40 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__emphasisStyles;
  v106 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  sub_1000130DC(&qword_10009FF10);
  v41 = v82;
  Published.init(initialValue:)();
  (*(v83 + 32))(v1 + v40, v41, v84);
  v42 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__isFormattingUITextView;
  LOBYTE(v106) = 0;
  Published.init(initialValue:)();
  v43 = v73;
  v73(v1 + v42, v25, v33);
  v44 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__disabledComponents;
  v106 = COERCE_DOUBLE(&_swiftEmptySetSingleton);
  sub_1000130DC(&qword_10009FF20);
  v45 = v85;
  Published.init(initialValue:)();
  (*(v86 + 32))(v1 + v44, v45, v87);
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isTextAnimationsUI) = 0;
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInRemotePresentation) = 0;
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation) = 0;
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController) = 0;
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_includeDefaultFont) = 0;
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_initialUpdateOfRecentFontsCompleted) = 0;
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_cancellables) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState____lazy_storage___configForRecents) = 0;
  v46 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__layout;
  sub_10001227C(0, _swiftEmptyArrayStorage, 0, 0, 0.0, 1, &v106, 0.0);
  v47 = v88;
  Published.init(initialValue:)();
  (*(v89 + 32))(v1 + v46, v47, v90);
  v48 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__uiConfig;
  LOBYTE(v106) = 0;
  v49 = v91;
  Published.init(initialValue:)();
  (*(v92 + 32))(v1 + v48, v49, v93);
  v50 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__availableWidth;
  v106 = sub_10006A530(6, 0);
  v51 = v94;
  Published.init(initialValue:)();
  (*(v95 + 32))(v1 + v50, v51, v96);
  v52 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__idealHeight;
  v106 = 0.0;
  v107 = 1;
  sub_1000130DC(&qword_1000A11A0);
  v53 = v97;
  Published.init(initialValue:)();
  (*(v98 + 32))(v1 + v52, v53, v99);
  v54 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__hasParentBottomSafeAreaInset;
  LOBYTE(v106) = 0;
  Published.init(initialValue:)();
  v43(v1 + v54, v25, v33);
  v55 = (v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_colorPickerRect);
  *v55 = 0u;
  v55[1] = 0u;
  v56 = v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_largestFontSizeInFormattingStyles;
  *v56 = 0;
  *(v56 + 8) = 1;
  v57 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_allHighlightStyles;
  if (qword_10009F340 != -1)
  {
    swift_once();
  }

  *(v1 + v57) = qword_1000A5128;
  v58 = (v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
  *v58 = nullsub_1;
  v58[1] = 0;
  v59 = (v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_close);
  *v59 = 0;
  v59[1] = 0;
  v60 = (v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_contentSizeDidUpdate);
  *v60 = nullsub_1;
  v60[1] = 0;
  v61 = (v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_pickFont);
  *v61 = nullsub_1;
  v61[1] = 0;
  v62 = (v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_pickColor);
  *v62 = nullsub_1;
  v62[1] = 0;
  v63 = (v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_showTypographySettings);
  *v63 = nullsub_1;
  v63[1] = 0;
  v64 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__highlightPreviewImages;

  v106 = COERCE_DOUBLE(sub_100028444(_swiftEmptyArrayStorage));
  sub_1000130DC(&unk_10009FF50);
  v65 = v100;
  Published.init(initialValue:)();
  (*(v101 + 32))(v1 + v64, v65, v102);
  *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_renderTask) = 0;
  v66 = [objc_opt_self() defaultCenter];
  if (qword_10009F2E0 != -1)
  {
    swift_once();
  }

  v67 = v103;
  NSNotificationCenter.publisher(for:object:)();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  sub_100028BD8(&qword_1000A0180, &type metadata accessor for NSNotificationCenter.Publisher);
  v68 = v105;
  Publisher<>.sink(receiveValue:)();

  (*(v104 + 8))(v67, v68);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10001FA84();
  return v1;
}

void sub_10001FA84()
{
  v0 = sub_10001EA24();
  v1 = _UIFontPickerLoadRecentsMatchingConfigurationForSuite();

  if (v1)
  {
    sub_1000132E4(0, &qword_10009F640);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }
}

double sub_10001FB50@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10001FBD0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10001CDD4();
}

uint64_t sub_10001FC64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001FCD0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10001FD58()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10001CDD4();
}

double *sub_10001FDE0()
{
  v14 = &_swiftEmptySetSingleton;
  v0 = sub_10001C93C();
  v1 = sub_1000282B4(v0, &v14, &selRef_familyName);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_10000DEA4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *&v1[v4 + 4];
      }

      v6 = v5;
      v7 = [v5 familyName];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (*&v12 >= *&v11 >> 1)
      {
        sub_10000DEA4((*&v11 > 1uLL), *&v12 + 1, 1);
      }

      ++v4;
      *&_swiftEmptyArrayStorage[2] = *&v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * *&v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (v2 != v4);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_10001FF80(void *a1)
{
  v3 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
  *v6 = a1;
  (*(v4 + 104))(v6, enum case for UITextFormattingViewController.ChangeValue.font(_:), v3);
  sub_1000130DC(&qword_1000A01A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000784C0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1000132E4(0, &qword_10009FAD0);
  *(inited + 40) = a1;
  v9 = a1;

  v10 = NSFontAttributeName;
  v11 = sub_100028E0C(inited);
  swift_setDeallocating();
  sub_1000156F8(inited + 32, &qword_1000A17A0);
  v7(v6, v11);

  (*(v4 + 8))(v6, v3);
  if (([v9 isSystemFont] & 1) == 0)
  {
    v12 = [v9 fontDescriptor];
    v13 = [objc_allocWithZone(_UIFontPickerFontInfo) initWithFontDescriptor:v12];

    v14 = v13;
    _UIFontPickerPersistToRecentsForSuite();
  }
}

uint64_t sub_1000201C8()
{
  v0 = sub_10001CCAC();
  v1 = [v0 fontDescriptor];
  v2 = [v1 symbolicTraits];

  return (v2 >> 1) & 1;
}

uint64_t sub_100020228(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001CCAC();
  v9 = [v8 fontDescriptor];
  v10 = [v9 symbolicTraits];

  v11 = sub_10001CCAC();
  if (((((v10 & 2) == 0) ^ a1) & 1) == 0)
  {
    v12 = sub_10006B25C(2);

    v11 = v12;
  }

  v13 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
  *v7 = a1 & 1;
  (*(v5 + 104))(v7, enum case for UITextFormattingViewController.ChangeValue.bold(_:), v4);
  sub_1000130DC(&qword_1000A01A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000784C0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1000132E4(0, &qword_10009FAD0);
  *(inited + 40) = v11;

  v15 = NSFontAttributeName;
  v16 = v11;
  v17 = sub_100028E0C(inited);
  swift_setDeallocating();
  sub_1000156F8(inited + 32, &qword_1000A17A0);
  v13(v7, v17);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100020494()
{
  v0 = sub_10001CCAC();
  v1 = [v0 fontDescriptor];
  v2 = [v1 symbolicTraits];

  return v2 & 1;
}

uint64_t sub_1000204F4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001CCAC();
  v9 = [v8 fontDescriptor];
  v10 = [v9 symbolicTraits];

  v11 = sub_10001CCAC();
  if (((((v10 & 1) == 0) ^ a1) & 1) == 0)
  {
    v12 = sub_10006B25C(1);

    v11 = v12;
  }

  v13 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
  *v7 = a1 & 1;
  (*(v5 + 104))(v7, enum case for UITextFormattingViewController.ChangeValue.italic(_:), v4);
  sub_1000130DC(&qword_1000A01A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000784C0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1000132E4(0, &qword_10009FAD0);
  *(inited + 40) = v11;

  v15 = NSFontAttributeName;
  v16 = v11;
  v17 = sub_100028E0C(inited);
  swift_setDeallocating();
  sub_1000156F8(inited + 32, &qword_1000A17A0);
  v13(v7, v17);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100020760(uint64_t (*a1)(void), void *a2)
{
  v4 = sub_1000130DC(&qword_10009FAB0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    sub_1000156F8(v6, &qword_10009FAB0);
  }

  else
  {
    v8 = a1();
    sub_1000156F8(v6, &qword_10009FAB0);
    if ((v8 & 1) == 0)
    {
      v10 = 0;
      return v10 & 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = sub_100015B54(*a2, v12[1]);

  v10 = v9 ^ 1;
  return v10 & 1;
}

uint64_t sub_100020968(uint64_t (*a1)(void))
{
  v2 = sub_1000130DC(&qword_10009FAB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = a1();
  }

  sub_1000156F8(v4, &qword_10009FAB0);
  return v6 & 1;
}

uint64_t sub_100020AB4(char a1, unsigned int *a2, void **a3)
{
  v7 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
  *v10 = a1;
  (*(v8 + 104))(v10, *a2, v7);
  sub_1000130DC(&qword_1000A01A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000784C0;
  v13 = *a3;
  *(inited + 32) = *a3;
  if (a1)
  {

    v14 = v13;
    v15 = &type metadata for Int;
    v16 = 1;
  }

  else
  {
    v17 = objc_allocWithZone(NSNull);

    v18 = v13;
    v16 = [v17 init];
    v15 = sub_1000132E4(0, &qword_1000A01A8);
  }

  *(inited + 64) = v15;
  *(inited + 40) = v16;
  v19 = sub_100028E0C(inited);
  swift_setDeallocating();
  sub_1000156F8(inited + 32, &qword_1000A17A0);
  v11(v10, v19);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100020CBC()
{
  sub_10001CAC4();

  return Color.init(uiColor:)();
}

uint64_t sub_100020CF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000130DC(&qword_10009FAB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v15 = UITextFormattingViewController.FormattingDescriptor._paragraphStyle.getter();
    sub_1000156F8(v10, &qword_10009FAB0);
    if (!v15)
    {
      goto LABEL_3;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {

      goto LABEL_3;
    }

    v17 = v16;
    (*(v5 + 16))(v7, a1, v4);
    if ((*(v5 + 88))(v7, v4) != enum case for UITextFormattingViewController.ChangeValue.textAlignment(_:))
    {
      (*(v5 + 8))(v7, v4);
LABEL_21:
      sub_1000130DC(&qword_1000A01A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000784C0;
      *(inited + 32) = NSParagraphStyleAttributeName;
      *(inited + 64) = sub_1000132E4(0, &qword_1000A01D8);
      *(inited + 40) = v17;
      v30 = NSParagraphStyleAttributeName;
      v12 = sub_100028E0C(inited);
      swift_setDeallocating();
      sub_1000156F8(inited + 32, &qword_1000A17A0);
      goto LABEL_4;
    }

    (*(v5 + 96))(v7, v4);
    v18 = *v7;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
        {

LABEL_23:
          [v17 setAlignment:1];
          goto LABEL_20;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_23;
        }

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
        if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
        {

LABEL_28:
          [v17 setAlignment:2];
          goto LABEL_20;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v36)
        {
          goto LABEL_28;
        }

        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;
        if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
        {
        }

        else
        {
          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v41 & 1) == 0)
          {
            [v17 setAlignment:4];
            goto LABEL_20;
          }
        }

        [v17 setAlignment:3];
LABEL_20:

        goto LABEL_21;
      }
    }

    [v17 setAlignment:0];
    goto LABEL_20;
  }

  sub_1000156F8(v10, &qword_10009FAB0);
LABEL_3:
  v12 = 0;
LABEL_4:
  v13 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);

  v13(a1, v12);
}

uint64_t sub_100021284(void *a1)
{
  v2 = sub_1000130DC(&qword_10009FAB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_1000156F8(v4, &qword_10009FAB0);
    v6 = 0;
  }

  else
  {
    v7 = UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
    sub_1000156F8(v4, &qword_10009FAB0);
    v6 = sub_100015B54(*a1, v7);
  }

  return v6 & 1;
}

double *sub_100021400()
{
  v0 = sub_1000130DC(&qword_10009FAB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    sub_1000156F8(v2, &qword_10009FAB0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = UITextFormattingViewController.FormattingDescriptor.textLists.getter();
    sub_1000156F8(v2, &qword_10009FAB0);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 56);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    if (!v8)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = sub_10002912C(*(*(v5 + 48) + ((v10 << 9) | (8 * v12))));
        if (v13 != 4)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_8;
        }
      }

      v15 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10000BFCC(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v17 = *(v11 + 3);
      v18 = v16 + 1;
      if (v16 >= v17 >> 1)
      {
        v24 = v9;
        v19 = v16 + 1;
        v20 = v11;
        v21 = v16;
        v22 = sub_10000BFCC((v17 > 1), v16 + 1, 1, v20);
        v16 = v21;
        v18 = v19;
        v9 = v24;
        v11 = v22;
      }

      *(v11 + 2) = v18;
      *(v11 + v16 + 32) = v15;
    }

    while (v8);
LABEL_8:
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v14 >= v9)
      {

        v25 = v11;

        sub_100026FE8(&v25);

        return v25;
      }

      v8 = *(v5 + 56 + 8 * v14);
      ++v10;
      if (v8)
      {
        v10 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000216D4(uint64_t a1)
{
  v2 = v1;
  sub_1000130DC(&qword_10009FAB0);
  v4 = __chkstk_darwin(a1);
  v6 = v31 - v5;
  if (!*(v4 + 16))
  {

    LOBYTE(v7) = 4;
    goto LABEL_8;
  }

  v7 = *(v4 + 32);

  if (v7 <= 1)
  {
    if (v7)
    {
      v8 = &NSTextListMarkerHyphen;
    }

    else
    {
      v8 = &NSTextListMarkerDisc;
    }

    v10 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:*v8 options:0];
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_8:
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  if (v7 != 2)
  {
    goto LABEL_8;
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:v9 options:0];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000130DC(&qword_10009F5D8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100077630;
  *(v11 + 32) = v10;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v12 - 8) + 48))(v6, 1, v12))
  {
    sub_1000156F8(v6, &qword_10009FAB0);
    goto LABEL_14;
  }

  v15 = UITextFormattingViewController.FormattingDescriptor._paragraphStyle.getter();
  sub_1000156F8(v6, &qword_10009FAB0);
  if (!v15)
  {
LABEL_14:
    if (v11 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_16;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      v13 = [objc_opt_self() defaultParagraphStyle];
      [v13 mutableCopy];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v14 = sub_1000132E4(0, &qword_1000A01D8);
      if (!swift_dynamicCast())
      {

        return sub_100021C88(0, v7, v2);
      }

      v15 = v31[27];
      sub_1000132E4(0, &qword_1000A01E0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 setTextLists:isa];

      sub_1000130DC(&qword_1000A01A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000784C0;
      *(inited + 32) = NSParagraphStyleAttributeName;
      v18 = inited + 32;
      *(inited + 64) = v14;
      *(inited + 40) = v15;
      v19 = NSParagraphStyleAttributeName;
      goto LABEL_21;
    }

    sub_1000130DC(&qword_1000A01A0);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1000784C0;
    *(v27 + 32) = NSParagraphStyleAttributeName;
    *(v27 + 64) = sub_1000130DC(&qword_1000A01E8);
    v28 = swift_allocObject();
    *(v27 + 40) = v28;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    v29 = NSParagraphStyleAttributeName;
    v30 = sub_100028E0C(v27);
    swift_setDeallocating();
    sub_1000156F8(v27 + 32, &qword_1000A17A0);
    sub_100021C88(v30, v7, v2);
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

    goto LABEL_14;
  }

  v21 = v20;
  sub_1000132E4(0, &qword_1000A01E0);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v21 setTextLists:v22];

  sub_1000130DC(&qword_1000A01A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000784C0;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v18 = inited + 32;
  *(inited + 64) = sub_1000132E4(0, &qword_1000A01D8);
  *(inited + 40) = v21;
  v23 = NSParagraphStyleAttributeName;
LABEL_21:
  v24 = v15;
  v25 = sub_100028E0C(inited);
  swift_setDeallocating();
  sub_1000156F8(v18, &qword_1000A17A0);
  sub_100021C88(v25, v7, v2);
}

uint64_t sub_100021C88(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2;
  if (a2 > 2u)
  {
    v11 = *(a3 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
    *v9 = 0;
    (*(v7 + 104))(v9, enum case for UITextFormattingViewController.ChangeValue.textList(_:), v6);
  }

  else
  {
    if (a2)
    {
      v11 = *(a3 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
      if (v10 == 1)
      {
        v12 = &UITextFormattingViewControllerTextListHyphen;
      }

      else
      {
        v12 = &UITextFormattingViewControllerTextListDecimal;
      }
    }

    else
    {
      v11 = *(a3 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
      v12 = &UITextFormattingViewControllerTextListDisc;
    }

    v13 = *v12;
    *v9 = *v12;
    (*(v7 + 104))(v9, enum case for UITextFormattingViewController.ChangeValue.textList(_:), v6);

    v14 = v13;
  }

  v11(v9, a1);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100021E64()
{
  v0 = sub_1000130DC(&qword_10009FAB0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v18 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6))
  {
    sub_1000156F8(v5, &qword_10009FAB0);
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v7(v3, 1, v6))
    {
      sub_1000156F8(v3, &qword_10009FAB0);
      return 0;
    }

    v15 = UITextFormattingViewController.FormattingDescriptor.lineHeight.getter();
    v17 = v16;
    sub_1000156F8(v3, &qword_10009FAB0);
    if (v17)
    {
      return 0;
    }

    else
    {
      return v15;
    }
  }

  v9 = UITextFormattingViewController.FormattingDescriptor._paragraphStyle.getter();
  sub_1000156F8(v5, &qword_10009FAB0);
  if (!v9)
  {
    goto LABEL_3;
  }

  [v9 minimumLineHeight];
  v11 = v10;
  [v9 maximumLineHeight];
  if (v11 != v12)
  {

    return 0;
  }

  [v9 minimumLineHeight];
  v14 = v13;

  return v14;
}

uint64_t sub_1000220E8(uint64_t a1, char a2)
{
  v5 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000130DC(&qword_10009FAB0);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v29[-v11];
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      sub_1000156F8(v12, &qword_10009FAB0);
    }

    else
    {
      v22 = UITextFormattingViewController.FormattingDescriptor._paragraphStyle.getter();
      sub_1000156F8(v12, &qword_10009FAB0);
      if (v22)
      {
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (v23)
        {
          v24 = v23;
          [v23 setMinimumLineHeight:*&a1];
          [v24 setMaximumLineHeight:*&a1];
          sub_1000130DC(&qword_1000A01A0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000784C0;
          *(inited + 32) = NSParagraphStyleAttributeName;
          v18 = inited + 32;
          *(inited + 64) = sub_1000132E4(0, &qword_1000A01D8);
          *(inited + 40) = v24;
          v25 = NSParagraphStyleAttributeName;
          v20 = v22;
          goto LABEL_10;
        }
      }
    }

    v14 = [objc_opt_self() defaultParagraphStyle];
    [v14 mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v15 = sub_1000132E4(0, &qword_1000A01D8);
    if (!swift_dynamicCast())
    {
      v21 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
      *v8 = a1;
      (*(v6 + 104))(v8, enum case for UITextFormattingViewController.ChangeValue.lineHeightPointSize(_:), v5);

      v21(v8, 0);
LABEL_11:

      return (*(v6 + 8))(v8, v5);
    }

    v16 = v30;
    [v30 setMinimumLineHeight:*&a1];
    [v16 setMaximumLineHeight:*&a1];
    sub_1000130DC(&qword_1000A01A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000784C0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v18 = inited + 32;
    *(inited + 64) = v15;
    *(inited + 40) = v16;
    v19 = NSParagraphStyleAttributeName;
    v20 = v16;
LABEL_10:
    v26 = v20;
    v27 = sub_100028E0C(inited);
    swift_setDeallocating();
    sub_1000156F8(v18, &qword_1000A17A0);
    v28 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
    *v8 = a1;
    (*(v6 + 104))(v8, enum case for UITextFormattingViewController.ChangeValue.lineHeightPointSize(_:), v5);

    v28(v8, v27);

    goto LABEL_11;
  }

  return result;
}

double sub_10002259C()
{
  v1 = v0;
  v2 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000130DC(&qword_10009FAB0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = *(v3 + 48);
  if (v12(v11, 1, v2))
  {
    sub_1000156F8(v11, &qword_10009FAB0);
    goto LABEL_3;
  }

  v16 = UITextFormattingViewController.FormattingDescriptor._emphasisStyleKey.getter();
  v18 = v17;
  sub_1000156F8(v11, &qword_10009FAB0);
  if (!v18)
  {
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v12(v9, 1, v2) == 1)
    {
      sub_1000156F8(v9, &qword_10009FAB0);
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      v14 = *(UITextFormattingViewController.FormattingDescriptor.highlights.getter() + 16);

      if (v14)
      {
        v15 = UITextFormattingViewController.FormattingDescriptor.highlights.getter();
        sub_100029378(v15);
      }

      (*(v3 + 8))(v5, v2);
    }

    return result;
  }

  v19 = *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_allHighlightStyles);
  if (v19 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v21 = 0;
    v32 = v19 & 0xFFFFFFFFFFFFFF8;
    v33 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v33)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v32 + 16))
        {
          goto LABEL_31;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v22 styleKey];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v26 == v16 && v18 == v28)
      {

LABEL_29:

        sub_1000130DC(&qword_10009F5D8);
        v31 = swift_allocObject();
        *&result = 1;
        *(v31 + 16) = xmmword_100077630;
        *(v31 + 32) = v23;
        return result;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {

        goto LABEL_29;
      }

      ++v21;
      if (v24 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_26:

  return result;
}

void sub_100022A04(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v10 = *(a1 + 32);
  }

  v11 = v10;
LABEL_9:
  if (qword_10009F308 != -1)
  {
    swift_once();
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_15:
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_11:
  v12 = qword_1000A50F0;
  sub_1000132E4(0, &qword_10009F648);
  v13 = v12;
  v14 = static NSObject.== infix(_:_:)();

  if (v9 && (v14 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  sub_10002259C();
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_28:

    if (!v9)
    {
      v24 = 0;
LABEL_32:
      sub_1000297C0(v24);
      if (v9)
      {
        goto LABEL_33;
      }

LABEL_24:

      v21 = 0;
LABEL_37:
      sub_1000132E4(0, &qword_10009F648);
      sub_100022DEC(v21, v8);

      v26 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);

      v26(v8, 0);

      (*(v5 + 8))(v8, v4);
      return;
    }

LABEL_29:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_41:
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:
        v21 = v25;

        goto LABEL_37;
      }

      v24 = *(a1 + 32);
    }

    goto LABEL_32;
  }

LABEL_27:
  v22 = v6;
  v23 = _CocoaArrayWrapper.endIndex.getter();
  v6 = v22;
  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_18:
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v6 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v16 = i;

      v17 = v16;
      v18 = [v17 styleKey];
      if (!v18)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = String._bridgeToObjectiveC()();
      }

      v19 = [objc_opt_self() standardUserDefaults];
      v20 = String._bridgeToObjectiveC()();
      [v19 setObject:v18 forKey:v20];

      if (!v9)
      {
        break;
      }

LABEL_33:
      if ((a1 & 0xC000000000000001) != 0)
      {
        goto LABEL_41;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(a1 + 32);
        goto LABEL_36;
      }

      __break(1u);
LABEL_43:
      ;
    }

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_100022DEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    *a2 = 0;
    a2[1] = 0;
LABEL_10:
    v15 = &enum case for UITextFormattingViewController.ChangeValue.emphasisStyle(_:);
    goto LABEL_15;
  }

  v3 = a1;
  v4 = [v3 styleKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5._object = 0x800000010007D4C0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v6 = String.hasPrefix(_:)(v5);

  v7 = [v3 styleKey];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!v6)
  {

    *a2 = v8;
    a2[1] = v10;
    goto LABEL_10;
  }

  if (qword_10009F310 != -1)
  {
    swift_once();
  }

  v11 = [qword_1000A50F8 styleKey];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == v8 && v14 == v10)
  {

LABEL_12:

    v17 = &UITextFormattingViewControllerHighlightDefault;
    goto LABEL_13;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_12;
  }

  if (qword_10009F318 != -1)
  {
    swift_once();
  }

  v23 = [qword_1000A5100 styleKey];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v24 == v8 && v26 == v10)
  {

LABEL_24:

    v17 = &UITextFormattingViewControllerHighlightPurple;
    goto LABEL_13;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_24;
  }

  if (qword_10009F320 != -1)
  {
    swift_once();
  }

  v28 = [qword_1000A5108 styleKey];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v29 == v8 && v31 == v10)
  {

LABEL_31:

    v17 = &UITextFormattingViewControllerHighlightPink;
    goto LABEL_13;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_31;
  }

  if (qword_10009F328 != -1)
  {
    swift_once();
  }

  v33 = [qword_1000A5110 styleKey];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v34 == v8 && v36 == v10)
  {

LABEL_38:

    v17 = &UITextFormattingViewControllerHighlightOrange;
    goto LABEL_13;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_38;
  }

  if (qword_10009F330 != -1)
  {
    swift_once();
  }

  v38 = [qword_1000A5118 styleKey];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (v39 == v8 && v41 == v10)
  {

LABEL_45:

    v17 = &UITextFormattingViewControllerHighlightMint;
    goto LABEL_13;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_45;
  }

  if (qword_10009F338 != -1)
  {
    swift_once();
  }

  v43 = [qword_1000A5120 styleKey];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  if (v44 == v8 && v46 == v10)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {

      *a2 = 0;
      goto LABEL_14;
    }
  }

  v17 = &UITextFormattingViewControllerHighlightBlue;
LABEL_13:
  v18 = *v17;

  *a2 = v18;
LABEL_14:
  v15 = &enum case for UITextFormattingViewController.ChangeValue.highlight(_:);
LABEL_15:
  v19 = *v15;
  v20 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v21 = *(*(v20 - 8) + 104);

  return v21(a2, v19, v20);
}

void sub_100023394()
{
  sub_10002259C();
  if (v0 >> 62)
  {
    v2 = v0;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v0 = v2;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_100023454();
    return;
  }

  if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v0 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v0 + 32);
LABEL_6:

    return;
  }

  __break(1u);
}

id sub_100023454()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = *(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_allHighlightStyles);
    v20 = v0;
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 styleKey];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v14 == v4 && v16 == v6)
        {

          goto LABEL_26;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {

          goto LABEL_26;
        }

        ++v9;
        if (v12 == v8)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        return 0;
      }

      goto LABEL_21;
    }

LABEL_18:

    v0 = v20;
  }

  v7 = *(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_allHighlightStyles);
  if (v7 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return 0;
  }

LABEL_21:
  if ((v7 & 0xC000000000000001) != 0)
  {

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:

    return v11;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v7 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000236EC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_1000130DC(&qword_10009FAB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) || (v20 = UITextFormattingViewController.FormattingDescriptor._paragraphStyle.getter()) == 0)
  {
    sub_1000156F8(v13, &qword_10009FAB0);
  }

  else
  {
    v21 = v20;
    sub_1000156F8(v13, &qword_10009FAB0);
    [v21 mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000132E4(0, &qword_1000A01D8);
    if (swift_dynamicCast())
    {
      v17 = v36;
      if (v36)
      {
        v16 = v36;
        goto LABEL_13;
      }
    }
  }

  v15 = [objc_opt_self() defaultParagraphStyle];
  [v15 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000132E4(0, &qword_1000A01D8);
  if (swift_dynamicCast())
  {
    v16 = v36;
    if (v36)
    {
      v17 = 0;
LABEL_13:
      v35 = v17;
      [v16 firstLineHeadIndent];
      if (a1)
      {
        v23 = 28.0;
      }

      else
      {
        v23 = -28.0;
      }

      v24 = v23 + v22;
      if (a1)
      {
        v25 = &enum case for UITextFormattingViewController.ChangeValue.increaseIndentation(_:);
      }

      else
      {
        v25 = &enum case for UITextFormattingViewController.ChangeValue.decreaseIndentation(_:);
      }

      if (v24 <= 0.0)
      {
        v24 = 0.0;
      }

      [v16 setFirstLineHeadIndent:v24];
      [v16 headIndent];
      v27 = v23 + v26;
      if (v27 <= 0.0)
      {
        v27 = 0.0;
      }

      [v16 setHeadIndent:v27];
      v28 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
      (*(v5 + 104))(v10, *v25, v4);
      sub_1000130DC(&qword_1000A01A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000784C0;
      *(inited + 32) = NSParagraphStyleAttributeName;
      *(inited + 64) = sub_1000132E4(0, &qword_1000A01D8);
      *(inited + 40) = v16;

      v30 = NSParagraphStyleAttributeName;
      v31 = v16;
      v32 = sub_100028E0C(inited);
      swift_setDeallocating();
      sub_1000156F8(inited + 32, &qword_1000A17A0);
      v28(v10, v32);

      return (*(v5 + 8))(v10, v4);
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
  v19 = &enum case for UITextFormattingViewController.ChangeValue.decreaseIndentation(_:);
  if (a1)
  {
    v19 = &enum case for UITextFormattingViewController.ChangeValue.increaseIndentation(_:);
  }

  (*(v5 + 104))(v8, *v19, v4);

  v18(v8, 0);

  v10 = v8;
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_100023C08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100023C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_1000130DC(&qword_1000A00D8);
  v4[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023D44, v6, v5);
}

uint64_t sub_100023D44()
{
  v1 = *(v0 + 136);

  v2 = *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_allHighlightStyles);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v33 = v2 & 0xC000000000000001;
    v31 = v2 & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v32 = v2;
    while (1)
    {
      if (v33)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v31 + 16))
        {
          goto LABEL_20;
        }

        v4 = *(v2 + 8 * v3 + 32);
      }

      v5 = v4;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v37 = v3 + 1;
      v6 = *(v0 + 144);
      v7 = Image.init(systemName:)();
      v8 = [v5 color];
      v9 = Color.init(uiColor:)();
      KeyPath = swift_getKeyPath();
      v11 = type metadata accessor for Font.Design();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = static Font.system(size:weight:design:)();
      sub_1000156F8(v6, &qword_1000A00D8);
      v13 = swift_getKeyPath();
      v14 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      *(v0 + 16) = v7;
      *(v0 + 24) = KeyPath;
      *(v0 + 32) = v9;
      *(v0 + 40) = v13;
      *(v0 + 48) = v12;
      *(v0 + 56) = v14;
      *(v0 + 64) = v15;
      *(v0 + 72) = v16;
      *(v0 + 80) = v17;
      *(v0 + 88) = v18;
      *(v0 + 96) = 0;
      sub_1000130DC(&qword_1000A00E0);
      swift_allocObject();
      ImageRenderer.init(content:)();
      v19 = ImageRenderer.uiImage.getter();
      if (v19)
      {
        v20 = v19;
        if (static Task<>.isCancelled.getter())
        {

          goto LABEL_16;
        }

        v36 = v5;
        v21 = [v5 styleKey];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        swift_getKeyPath();
        swift_getKeyPath();
        v24 = v20;
        v25 = static Published.subscript.modify();
        v27 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *v27;
        *v27 = 0x8000000000000000;
        sub_100027B24(v24, v35, v23, isUniquelyReferenced_nonNull_native);
        v2 = v32;

        *v27 = v38;
        v25(v0 + 104, 0);

        if (v37 == i)
        {
LABEL_14:

          goto LABEL_16;
        }
      }

      else
      {

        if (v37 == i)
        {
          goto LABEL_14;
        }
      }

      ++v3;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100024134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000130DC(&qword_1000A00D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100015AC0(a3, v25 - v10, &qword_1000A00D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000156F8(v11, &qword_1000A00D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000156F8(a3, &qword_1000A00D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000156F8(a3, &qword_1000A00D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100024434(id *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  p_align = v4;
  v8 = [*a1 components];
  v9 = sub_1000132E4(0, &qword_10009F580);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v32 = v9;
    v33 = a4;
    v34 = p_align;
    v11 = 0;
    a4 = (v10 & 0xC000000000000001);
    v37 = v10 & 0xFFFFFFFFFFFFFF8;
    v36 = a2;
    p_align = (&stru_10009CFE8 + 24);
    while (1)
    {
      if (a4)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v37 + 16))
        {
          goto LABEL_27;
        }

        v12 = *(v10 + 8 * v11 + 32);
      }

      v9 = v12;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 *(p_align + 264)];
      v15 = UITextFormattingViewControllerComponentKey._parentComponentKey.getter();

      if (!v15)
      {
        v15 = [v9 *(p_align + 264)];
      }

      swift_beginAccess();
      v16 = v15;
      v17 = sub_10000F9B8(&v39, v16);
      swift_endAccess();

      if (v17)
      {
        v18 = v10;
        v19 = a4;
        v20 = [v9 componentKey];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
        if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
        {

          goto LABEL_17;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
LABEL_17:
          if ((a3 & 1) == 0)
          {

            a4 = v19;
LABEL_22:
            v10 = v18;
            a2 = v36;
            goto LABEL_5;
          }
        }

        v26 = [v9 componentKey];
        v27 = sub_1000247F0(v26);

        a4 = v19;
        if ((v27 & 1) != 0 || (objc_opt_self(), swift_dynamicCastObjCClass()))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        goto LABEL_22;
      }

LABEL_5:
      p_align = &stru_10009CFE8.align;
      ++v11;
      if (v13 == i)
      {
        v28 = v40;
        a4 = v33;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_30:

  if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_33;
    }

LABEL_35:

    v31 = 0;
    goto LABEL_36;
  }

  if (!*(v28 + 2))
  {
    goto LABEL_35;
  }

LABEL_33:
  v29 = objc_allocWithZone(UITextFormattingViewControllerComponentGroup);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v31 = [v29 initWithComponents:isa];

LABEL_36:
  *a4 = v31;
}

uint64_t sub_1000247F0(void *a1)
{
  v2 = UITextFormattingViewControllerComponentKey._parentComponentKey.getter();
  if (!v2)
  {
    v2 = a1;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    goto LABEL_16;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_8:

    return 1;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
    goto LABEL_16;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_8;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
    goto LABEL_16;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_8;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    goto LABEL_16;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_8;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {
    goto LABEL_16;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_8;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
  {
    goto LABEL_16;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_8;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {
    goto LABEL_16;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_8;
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {
    goto LABEL_16;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v46)
  {
    goto LABEL_8;
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
  {
    goto LABEL_16;
  }

  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v51)
  {
    goto LABEL_8;
  }

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
  {
    goto LABEL_16;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
    goto LABEL_8;
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;
  if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
  {
    goto LABEL_16;
  }

  v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v61)
  {
    goto LABEL_8;
  }

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
  {
    goto LABEL_16;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v66)
  {
    goto LABEL_8;
  }

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;
  if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
  {
    goto LABEL_16;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
    goto LABEL_8;
  }

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;
  if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
  {
    goto LABEL_16;
  }

  v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v76)
  {
    goto LABEL_8;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;
  if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
  {
    goto LABEL_16;
  }

  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v81)
  {
    goto LABEL_8;
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;
  if (v82 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v84 == v85)
  {
    goto LABEL_16;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v86)
  {
    goto LABEL_8;
  }

  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;
  if (v87 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v89 == v90)
  {
LABEL_16:

    return 1;
  }

  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v91 & 1;
}

uint64_t sub_100024EEC()
{
  v1 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__groups;
  v2 = sub_1000130DC(&qword_1000A0100);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__useLandscapeLayout;
  v4 = sub_1000130DC(&qword_1000A0108);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__recentFonts;
  v7 = sub_1000130DC(&qword_1000A0110);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__formattingDescriptor;
  v9 = sub_1000130DC(&qword_1000A0118);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__formattingStyles;
  v11 = sub_1000130DC(&qword_1000A0120);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__emphasisStyles;
  v13 = sub_1000130DC(&qword_1000A0128);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v5(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__isFormattingUITextView, v4);
  v14 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__disabledComponents;
  v15 = sub_1000130DC(&qword_1000A0130);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);

  v16 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__layout;
  v17 = sub_1000130DC(&qword_1000A0138);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__uiConfig;
  v19 = sub_1000130DC(&qword_1000A0140);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__availableWidth;
  v21 = sub_1000130DC(&qword_1000A0148);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__idealHeight;
  v23 = sub_1000130DC(&qword_1000A0150);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v5(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__hasParentBottomSafeAreaInset, v4);

  sub_1000180E8(*(v0 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_close));

  v24 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState__highlightPreviewImages;
  v25 = sub_1000130DC(&qword_1000A0158);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);

  return v0;
}

uint64_t sub_1000253A0()
{
  sub_100024EEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TextFormattingState()
{
  result = qword_10009FEB8;
  if (!qword_10009FEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002544C()
{
  sub_100025930(319, &qword_10009FEC8, &qword_10009FED0);
  if (v0 <= 0x3F)
  {
    sub_1000258E4(319, &qword_10009FED8);
    if (v1 <= 0x3F)
    {
      sub_100025930(319, &qword_10009FEE0, &qword_10009FEE8);
      if (v2 <= 0x3F)
      {
        sub_100025930(319, &qword_10009FEF0, &qword_10009FAB0);
        if (v3 <= 0x3F)
        {
          sub_100025930(319, &qword_10009FEF8, &qword_10009FF00);
          if (v4 <= 0x3F)
          {
            sub_100025930(319, &qword_10009FF08, &qword_10009FF10);
            if (v5 <= 0x3F)
            {
              sub_100025930(319, &qword_10009FF18, &qword_10009FF20);
              if (v6 <= 0x3F)
              {
                sub_1000258E4(319, &qword_10009FF28);
                if (v7 <= 0x3F)
                {
                  sub_1000258E4(319, &qword_10009FF30);
                  if (v8 <= 0x3F)
                  {
                    sub_1000258E4(319, &qword_10009FF38);
                    if (v9 <= 0x3F)
                    {
                      sub_100025930(319, &qword_10009FF40, &qword_1000A11A0);
                      if (v10 <= 0x3F)
                      {
                        sub_100025930(319, &qword_10009FF48, &unk_10009FF50);
                        if (v11 <= 0x3F)
                        {
                          swift_updateClassMetadata2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}