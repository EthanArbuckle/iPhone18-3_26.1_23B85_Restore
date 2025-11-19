uint64_t sub_10004EAC8()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);
  *(v0 + 24) = &_swiftEmptySetSingleton;

  sub_10004C538();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_10004EBFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_10004EC38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004EC90()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(*(v0 + 24) + 16) > 1uLL)
  {
    return 10;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(v0 + 24) + 16) == 1)
  {
    return 9;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_10004EDAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10003AE84(&qword_100154C18, &qword_10010C0F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for CalculateExpression();
      sub_10004EC38(&qword_100154BF8, &type metadata accessor for CalculateExpression);

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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_10004F024(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10003AE84(&qword_100154C50, &unk_10010C3A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for SchemaV1.HistoryRecord();
      sub_10004EC38(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord);

      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_10004F2A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10003AE84(&qword_100154C60, &unk_10010C3C0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
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
      *(*(v6 + 48) + v13) = v17;
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

uint64_t sub_10004F4C4(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CalculateExpression();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_10004A3FC(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_1000498C8(v19 + 1);
    }

    sub_10004A874(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for CalculateExpression();
  v10 = *(v6 + 40);
  sub_10004EC38(&qword_100154BF8, &type metadata accessor for CalculateExpression);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_10004FB10(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_10004EC38(&qword_100154C08, &type metadata accessor for CalculateExpression);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_10004F764(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for SchemaV1.HistoryRecord();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_10004A630(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100049B5C(v19 + 1);
    }

    sub_10004A95C(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for SchemaV1.HistoryRecord();
  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  sub_10004EC38(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord);
  dispatch thunk of Hashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_10004FCF8(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_10004EC38(&qword_100154E20, type metadata accessor for SchemaV1.HistoryRecord);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_10004FA18(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10004FEF4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10004FB10(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000498C8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1000494C4();
      goto LABEL_12;
    }

    sub_10004EDAC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for CalculateExpression();
  sub_10004EC38(&qword_100154BF8, &type metadata accessor for CalculateExpression);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10004EC38(&qword_100154C08, &type metadata accessor for CalculateExpression);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
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

Swift::Int sub_10004FCF8(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100049B5C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100049634();
      goto LABEL_12;
    }

    sub_10004F024(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for SchemaV1.HistoryRecord();
  sub_10004EC38(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord);
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10004EC38(&qword_100154E20, type metadata accessor for SchemaV1.HistoryRecord);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
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

Swift::Int sub_10004FEF4(Swift::Int result, unint64_t a2, char a3)
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
    sub_100049DFC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100049788();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10004F2A4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
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
  *(*(v12 + 48) + a2) = v4;
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

unint64_t sub_100050040()
{
  result = qword_100154E30;
  if (!qword_100154E30)
  {
    sub_10003AECC(&qword_100154E28, &unk_10010C590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154E30);
  }

  return result;
}

uint64_t sub_10005012C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for SchemaV1.HistoryRecord();
  sub_10004EC38(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord);
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (!i)
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_10004F764(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000502A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100008E68(a3, v27 - v11, &qword_100154BB0, &qword_10010FAE0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000035CC(v12, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100050560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100008E68(a3, v27 - v11, &qword_100154BB0, &qword_10010FAE0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000035CC(v12, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000035CC(a3, &qword_100154BB0, &qword_10010FAE0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000035CC(a3, &qword_100154BB0, &qword_10010FAE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100050860()
{
  v0 = type metadata accessor for CalculatorCurrencyCacheProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_100051EA8();
  qword_100160888 = v3;
  return result;
}

uint64_t sub_1000508C4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_100008E68(a1, &v10[-v6], &qword_100154F60, &qword_10010C620);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000035CC(v7, &qword_100154F60, &qword_10010C620);
}

uint64_t sub_100050A28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22[-v6];
  v8 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22[-v10];
  type metadata accessor for StocksKitCurrencyCache();
  if (static StocksKitCurrencyCache.isEnabled.getter())
  {
    swift_getKeyPath();
    v24 = v1;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider___provider;
    swift_beginAccess();
    sub_100008E68(v2 + v12, v11, &qword_100154F60, &qword_10010C620);
    v13 = type metadata accessor for StocksKitCurrencyCache.Provider();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_1000035CC(v11, &qword_100154F60, &qword_10010C620);
      swift_getKeyPath();
      v23 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(v2 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__loadingProvider) & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v22[-16] = v2;
        v22[-8] = 1;
        v23 = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = v17;
        sub_1000502A0(0, 0, v7, &unk_10010C680, v18);

        sub_1000035CC(v7, &qword_100154BB0, &qword_10010FAE0);
      }

      return (*(v14 + 56))(a1, 1, 1, v13);
    }

    else
    {
      (*(v14 + 32))(a1, v11, v13);
      return (*(v14 + 56))(a1, 0, 1, v13);
    }
  }

  else
  {
    v20 = type metadata accessor for StocksKitCurrencyCache.Provider();
    v21 = *(*(v20 - 8) + 56);

    return v21(a1, 1, 1, v20);
  }
}

uint64_t sub_100050E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_10003AE84(&qword_100154BB0, &qword_10010FAE0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(sub_10003AE84(&qword_100154F60, &qword_10010C620) - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100050F98, 0, 0);
}

uint64_t sub_100050F98()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 24);
    v4 = async function pointer to StocksKitCurrencyCache.provider.getter[1];
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1000510A8;
    v6 = v0[10];

    return StocksKitCurrencyCache.provider.getter(v6);
  }

  else
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[6];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000510A8()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_1000511A4, 0, 0);
}

uint64_t sub_1000511A4()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_100008E68(v1, v3, &qword_100154F60, &qword_10010C620);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  sub_10000D5B8(v3, v11 + v10, &qword_100154F60, &qword_10010C620);

  sub_100050560(0, 0, v5, &unk_10010C6A8, v11);

  sub_1000035CC(v1, &qword_100154F60, &qword_10010C620);
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100051380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = *(*(sub_10003AE84(&qword_100154F60, &qword_10010C620) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100051450, v8, v7);
}

uint64_t sub_100051450()
{
  v1 = v0[10];
  v2 = v0[7];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[9];
    sub_100008E68(v0[8], v5, &qword_100154F60, &qword_10010C620);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v0[5] = v4;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000035CC(v5, &qword_100154F60, &qword_10010C620);
    if (*(v4 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__loadingProvider))
    {
      swift_getKeyPath();
      v7 = swift_task_alloc();
      *(v7 + 16) = v4;
      *(v7 + 24) = 0;
      v0[6] = v4;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__loadingProvider) = 0;
    }
  }

  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000516A4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *a1;
  swift_beginAccess();
  return sub_100008E68(v11 + v9, a4, a2, a3);
}

uint64_t sub_1000517A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_100008E68(v9 + v10, a5, a3, a4);
}

uint64_t sub_10005188C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_100008E68(a1, &v10 - v6, &qword_100154E10, &qword_10010C4C0);
  v8 = *a2;
  return sub_100051938(v7);
}

uint64_t sub_100051938(uint64_t a1)
{
  v3 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
  swift_beginAccess();
  sub_100008E68(v1 + v7, v6, &qword_100154E10, &qword_10010C4C0);
  v8 = sub_1000540AC(v6, a1);
  sub_1000035CC(v6, &qword_100154E10, &qword_10010C4C0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_1000543CC(a1, v1 + v7, &qword_100154E10, &qword_10010C4C0);
    swift_endAccess();
  }

  return sub_1000035CC(a1, &qword_100154E10, &qword_10010C4C0);
}

uint64_t sub_100051B34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1000543CC(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_100051BC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100051C7C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100051DA4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100051EA8()
{
  v1 = v0;
  *(v0 + 16) = [objc_opt_self() shared];
  type metadata accessor for StocksKitCurrencyCache();
  *(v0 + 24) = static StocksKitCurrencyCache.shared.getter();
  v2 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider___provider;
  v3 = type metadata accessor for StocksKitCurrencyCache.Provider();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__loadingProvider) = 0;
  v4 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded) = 0;
  *(v1 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__updatingLastRefreshDate) = 0;
  ObservationRegistrar.init()();
  sub_100051FD4();
  sub_1000521F4();
  return v1;
}

uint64_t sub_100051FD4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded;
  if ((*(v0 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded) & 1) == 0)
  {
    type metadata accessor for StocksKitCurrencyCache();
    result = static StocksKitCurrencyCache.isEnabled.getter();
    if (result)
    {
      LOBYTE(v4) = 1;
      if ((*(v1 + v3) & 1) == 0)
      {
LABEL_4:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else
    {
      if (qword_1001546C8 != -1)
      {
        swift_once();
      }

      v6 = qword_100160D28;
      swift_getKeyPath();
      sub_100054468(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = *(v6 + 16);
      if (v4 != *(v1 + v3))
      {
        goto LABEL_4;
      }
    }

    *(v1 + v3) = v4;
  }

  return result;
}

id sub_1000521F4()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100154F70, &unk_10010C6C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v46 - v4;
  v6 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v54 = &v46 - v12;
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v53 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v46 - v21;
  __chkstk_darwin(v20);
  v55 = &v46 - v23;
  v24 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v46 - v26;
  type metadata accessor for StocksKitCurrencyCache();
  if ((static StocksKitCurrencyCache.isEnabled.getter() & 1) == 0)
  {
    result = [*(v0 + 16) lastRefreshDate];
    if (!result)
    {
      return result;
    }

    v52 = v10;
    v33 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = v55;
    v47 = *(v16 + 32);
    v47(v55, v22, v15);
    v35 = *(v16 + 16);
    v51 = v16 + 16;
    v49 = v35;
    v35(v14, v34, v15);
    v36 = *(v16 + 56);
    v50 = v16 + 56;
    v48 = v36;
    v36(v14, 0, 1, v15);
    swift_getKeyPath();
    v56 = v1;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
    swift_beginAccess();
    v38 = *(v2 + 48);
    sub_100008E68(v14, v5, &qword_100154E10, &qword_10010C4C0);
    sub_100008E68(v1 + v37, &v5[v38], &qword_100154E10, &qword_10010C4C0);
    v39 = *(v16 + 48);
    if (v39(v5, 1, v15) == 1)
    {
      sub_1000035CC(v14, &qword_100154E10, &qword_10010C4C0);
      if (v39(&v5[v38], 1, v15) == 1)
      {
        sub_1000035CC(v5, &qword_100154E10, &qword_10010C4C0);
        return (*(v16 + 8))(v55, v15);
      }
    }

    else
    {
      v40 = v54;
      sub_100008E68(v5, v54, &qword_100154E10, &qword_10010C4C0);
      if (v39(&v5[v38], 1, v15) != 1)
      {
        v43 = v53;
        v47(v53, &v5[v38], v15);
        sub_100054468(&qword_100154F78, &type metadata accessor for Date);
        v44 = dispatch thunk of static Equatable.== infix(_:_:)();
        v45 = *(v16 + 8);
        v45(v43, v15);
        sub_1000035CC(v14, &qword_100154E10, &qword_10010C4C0);
        v45(v40, v15);
        sub_1000035CC(v5, &qword_100154E10, &qword_10010C4C0);
        if (v44)
        {
          return (v45)(v55, v15);
        }

LABEL_11:
        v41 = v52;
        v42 = v55;
        v49(v52, v55, v15);
        v48(v41, 0, 1, v15);
        sub_100051938(v41);
        return (*(v16 + 8))(v42, v15);
      }

      sub_1000035CC(v14, &qword_100154E10, &qword_10010C4C0);
      (*(v16 + 8))(v40, v15);
    }

    sub_1000035CC(v5, &qword_100154F70, &unk_10010C6C0);
    goto LABEL_11;
  }

  swift_getKeyPath();
  v56 = v0;
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v0 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__updatingLastRefreshDate) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v46 - 2) = v0;
    *(&v46 - 8) = 1;
    v56 = v0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    static TaskPriority.userInitiated.getter();
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v27, 0, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v31;
    sub_1000502A0(0, 0, v27, &unk_10010C728, v32);

    return sub_1000035CC(v27, &qword_100154BB0, &qword_10010FAE0);
  }

  return result;
}

uint64_t sub_100052A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_10003AE84(&qword_100154BB0, &qword_10010FAE0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(sub_10003AE84(&qword_100154E10, &qword_10010C4C0) - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100052B1C, 0, 0);
}

uint64_t sub_100052B1C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 24);
    v4 = *(&async function pointer to dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter + 1);
    v12 = (&async function pointer to dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter + async function pointer to dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_100052C44;
    v6 = v0[10];

    return v12(v6);
  }

  else
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[6];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100052C44()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_100052D40, 0, 0);
}

uint64_t sub_100052D40()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_100008E68(v1, v3, &qword_100154E10, &qword_10010C4C0);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  sub_10000D5B8(v3, v11 + v10, &qword_100154E10, &qword_10010C4C0);

  sub_100050560(0, 0, v5, &unk_10010C738, v11);

  sub_1000035CC(v1, &qword_100154E10, &qword_10010C4C0);
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100052F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_10003AE84(&qword_100154F70, &unk_10010C6C0);
  v5[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v8 = *(*(sub_10003AE84(&qword_100154E10, &qword_10010C4C0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000530B4, v13, v12);
}

uint64_t sub_1000530B4()
{
  v1 = v0[22];
  v2 = v0[10];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[17];
    sub_100008E68(v0[11], v7, &qword_100154E10, &qword_10010C4C0);
    v8 = *(v6 + 48);
    if (v8(v7, 1, v5) == 1)
    {
      sub_1000035CC(v0[17], &qword_100154E10, &qword_10010C4C0);
      goto LABEL_13;
    }

    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[12];
    v47 = v0[13];
    v44 = v11[4];
    v44(v9, v0[17], v10);
    v46 = v11[2];
    v46(v12, v9, v10);
    v45 = v11[7];
    v45(v12, 0, 1, v10);
    swift_getKeyPath();
    v0[9] = v4;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
    swift_beginAccess();
    v15 = *(v13 + 48);
    sub_100008E68(v12, v47, &qword_100154E10, &qword_10010C4C0);
    sub_100008E68(v4 + v14, v47 + v15, &qword_100154E10, &qword_10010C4C0);
    v16 = v8(v47, 1, v10);
    v17 = v0[18];
    if (v16 == 1)
    {
      sub_1000035CC(v0[16], &qword_100154E10, &qword_10010C4C0);
      if (v8(v47 + v15, 1, v17) == 1)
      {
        v18 = v0[19];
        sub_1000035CC(v0[13], &qword_100154E10, &qword_10010C4C0);
        (*(v18 + 8))(v0[21], v0[18]);
        goto LABEL_13;
      }
    }

    else
    {
      sub_100008E68(v0[13], v0[15], &qword_100154E10, &qword_10010C4C0);
      if (v8(v47 + v15, 1, v17) != 1)
      {
        v27 = v0[19];
        v26 = v0[20];
        v28 = v0[18];
        v29 = v0[15];
        v42 = v0[16];
        v43 = v0[13];
        v44(v26, v47 + v15, v28);
        sub_100054468(&qword_100154F78, &type metadata accessor for Date);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v27 + 8);
        v31(v26, v28);
        sub_1000035CC(v42, &qword_100154E10, &qword_10010C4C0);
        v31(v29, v28);
        sub_1000035CC(v43, &qword_100154E10, &qword_10010C4C0);
        if (v30)
        {
          v31(v0[21], v0[18]);
LABEL_13:
          if (*(v4 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__updatingLastRefreshDate))
          {
            swift_getKeyPath();
            v32 = swift_task_alloc();
            *(v32 + 16) = v4;
            *(v32 + 24) = 0;
            v0[8] = v4;
            sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          else
          {
            *(v4 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__updatingLastRefreshDate) = 0;
          }

          goto LABEL_16;
        }

LABEL_10:
        v22 = v0[21];
        v23 = v0[18];
        v24 = v0[19];
        v25 = v0[14];
        v46(v25, v22, v23);
        v45(v25, 0, 1, v23);
        sub_100051938(v25);
        (*(v24 + 8))(v22, v23);
        goto LABEL_13;
      }

      v19 = v0[18];
      v20 = v0[19];
      v21 = v0[15];
      sub_1000035CC(v0[16], &qword_100154E10, &qword_10010C4C0);
      (*(v20 + 8))(v21, v19);
    }

    sub_1000035CC(v0[13], &qword_100154F70, &unk_10010C6C0);
    goto LABEL_10;
  }

LABEL_16:
  v34 = v0[20];
  v33 = v0[21];
  v36 = v0[16];
  v35 = v0[17];
  v38 = v0[14];
  v37 = v0[15];
  v39 = v0[13];

  v40 = v0[1];

  return v40();
}

uint64_t sub_10005368C()
{
  sub_1000035CC(v0 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider___provider, &qword_100154F60, &qword_10010C620);
  sub_1000035CC(v0 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate, &qword_100154E10, &qword_10010C4C0);
  v1 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalculatorCurrencyCacheProvider()
{
  result = qword_100154E98;
  if (!qword_100154E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000537CC()
{
  sub_100053924(319, &unk_100154EA8, &type metadata accessor for StocksKitCurrencyCache.Provider);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100053924(319, &qword_100154D68, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for ObservationRegistrar();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100053924(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100053990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_100050E84(a1, v4, v5, v6);
}

uint64_t sub_100053A44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100054468(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_100053B14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100030DE0;

  return sub_100030330(a1, v5);
}

uint64_t sub_100053BCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100030CEC;

  return sub_100030330(a1, v5);
}

uint64_t sub_100053C84(uint64_t a1)
{
  v4 = *(sub_10003AE84(&qword_100154F60, &qword_10010C620) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100051380(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100053DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030CEC;

  return sub_100052A08(a1, v4, v5, v6);
}

uint64_t sub_100053E88(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_10003AE84(a1, a2) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v3 + 16);
  swift_unknownObjectRelease();
  v9 = *(v3 + 32);

  v10 = a3(0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v6, 1, v10))
  {
    (*(v11 + 8))(v3 + v6, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_100053FA8(uint64_t a1)
{
  v4 = *(sub_10003AE84(&qword_100154E10, &qword_10010C4C0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100052F1C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000540AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_10003AE84(&qword_100154F70, &unk_10010C6C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_100008E68(a1, &v24 - v16, &qword_100154E10, &qword_10010C4C0);
  sub_100008E68(a2, &v17[v18], &qword_100154E10, &qword_10010C4C0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_100008E68(v17, v12, &qword_100154E10, &qword_10010C4C0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_100054468(&qword_100154F78, &type metadata accessor for Date);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1000035CC(v17, &qword_100154E10, &qword_10010C4C0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1000035CC(v17, &qword_100154F70, &unk_10010C6C0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1000035CC(v17, &qword_100154E10, &qword_10010C4C0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1000543CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10003AE84(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_100054468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100054528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100054570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000545DC(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_1000546A4()
{
  type metadata accessor for CalculateExpression.Operation();
  static CalculateExpression.Operation.digit00.getter();
  sub_100055948();
  v0 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v0)
  {
    return 73;
  }

  static CalculateExpression.Operation.digit0.getter();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v2)
  {
    return 12;
  }

  static CalculateExpression.Operation.digit1.getter();
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v3)
  {
    return 13;
  }

  static CalculateExpression.Operation.digit2.getter();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v4)
  {
    return 14;
  }

  static CalculateExpression.Operation.digit3.getter();
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v5)
  {
    return 15;
  }

  static CalculateExpression.Operation.digit4.getter();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v6)
  {
    return 16;
  }

  static CalculateExpression.Operation.digit5.getter();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v7)
  {
    return 17;
  }

  static CalculateExpression.Operation.digit6.getter();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v8)
  {
    return 18;
  }

  static CalculateExpression.Operation.digit7.getter();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v9)
  {
    return 19;
  }

  static CalculateExpression.Operation.digit8.getter();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v10)
  {
    return 20;
  }

  static CalculateExpression.Operation.digit9.getter();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v11)
  {
    return 21;
  }

  static CalculateExpression.Operation.digitA.getter();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v12)
  {
    return 66;
  }

  static CalculateExpression.Operation.digitB.getter();
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v13)
  {
    return 67;
  }

  static CalculateExpression.Operation.digitC.getter();
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v14)
  {
    return 68;
  }

  static CalculateExpression.Operation.digitD.getter();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v15)
  {
    return 69;
  }

  static CalculateExpression.Operation.digitE.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v16)
  {
    return 70;
  }

  static CalculateExpression.Operation.digitF.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v17)
  {
    return 71;
  }

  static CalculateExpression.Operation.digitFF.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v18)
  {
    return 72;
  }

  static CalculateExpression.Operation.pi.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v19)
  {
    return 51;
  }

  static CalculateExpression.Operation.eulerNumber.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v20)
  {
    return 45;
  }

  static CalculateExpression.Operation.ee.getter();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v21)
  {
    return 46;
  }

  static CalculateExpression.Operation.random.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v22)
  {
    return 52;
  }

  static CalculateExpression.Operation.equals.getter();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v23)
  {
    return 9;
  }

  static CalculateExpression.Operation.delete.getter();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v24)
  {
    return 53;
  }

  static CalculateExpression.Operation.clear.getter();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v25)
  {
    return 1;
  }

  static CalculateExpression.Operation.allClear.getter();
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v26)
  {
    return 1;
  }

  static CalculateExpression.Operation.negate.getter();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v27)
  {
    return 3;
  }

  static CalculateExpression.Operation.add.getter();
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v28)
  {
    return 8;
  }

  static CalculateExpression.Operation.subtract.getter();
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v29)
  {
    return 7;
  }

  static CalculateExpression.Operation.multiply.getter();
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v30)
  {
    return 6;
  }

  static CalculateExpression.Operation.divide.getter();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v31)
  {
    return 5;
  }

  static CalculateExpression.Operation.decimal.getter();
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v32)
  {
    return 10;
  }

  static CalculateExpression.Operation.openParenthesis.getter();
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v33)
  {
    return 22;
  }

  static CalculateExpression.Operation.closeParenthesis.getter();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v34)
  {
    return 23;
  }

  static CalculateExpression.Operation.factorial.getter();
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v35)
  {
    return 41;
  }

  static CalculateExpression.Operation.percent.getter();
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v36)
  {
    return 4;
  }

  static CalculateExpression.Operation.reciprocal.getter();
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v37)
  {
    return 34;
  }

  static CalculateExpression.Operation.square.getter();
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v38)
  {
    return 29;
  }

  static CalculateExpression.Operation.cube.getter();
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v39)
  {
    return 30;
  }

  static CalculateExpression.Operation.power.getter();
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v40)
  {
    return 31;
  }

  static CalculateExpression.Operation.root.getter();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v41)
  {
    return 37;
  }

  static CalculateExpression.Operation.reverseRoot.getter();
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v42)
  {
    return 38;
  }

  static CalculateExpression.Operation.squareRoot.getter();
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v43)
  {
    return 35;
  }

  static CalculateExpression.Operation.cubeRoot.getter();
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v44)
  {
    return 36;
  }

  static CalculateExpression.Operation.logarithmBase10.getter();
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v45)
  {
    return 40;
  }

  static CalculateExpression.Operation.logarithmBase2.getter();
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v46)
  {
    return 59;
  }

  static CalculateExpression.Operation.logarithmBaseCustom.getter();
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v47)
  {
    return 58;
  }

  static CalculateExpression.Operation.logarithmNatural.getter();
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v48)
  {
    return 39;
  }

  static CalculateExpression.Operation.exponentialBase10.getter();
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v49)
  {
    return 33;
  }

  static CalculateExpression.Operation.exponentialBase2.getter();
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v50)
  {
    return 57;
  }

  static CalculateExpression.Operation.exponentialBaseEuler.getter();
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v51)
  {
    return 32;
  }

  static CalculateExpression.Operation.exponentialBaseCustom.getter();
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v52)
  {
    return 56;
  }

  static CalculateExpression.Operation.sine.getter();
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v53)
  {
    return 42;
  }

  static CalculateExpression.Operation.cosine.getter();
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v54)
  {
    return 43;
  }

  static CalculateExpression.Operation.tangent.getter();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v55)
  {
    return 44;
  }

  static CalculateExpression.Operation.hyperbolicSine.getter();
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v56)
  {
    return 48;
  }

  static CalculateExpression.Operation.hyperbolicCosine.getter();
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v57)
  {
    return 49;
  }

  static CalculateExpression.Operation.hyperbolicTangent.getter();
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v58)
  {
    return 50;
  }

  static CalculateExpression.Operation.inverseSine.getter();
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v59)
  {
    return 60;
  }

  static CalculateExpression.Operation.inverseCosine.getter();
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v60)
  {
    return 61;
  }

  static CalculateExpression.Operation.inverseTangent.getter();
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v61)
  {
    return 62;
  }

  static CalculateExpression.Operation.inverseHyperbolicSine.getter();
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v62)
  {
    return 63;
  }

  static CalculateExpression.Operation.inverseHyperbolicCosine.getter();
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v63)
  {
    return 64;
  }

  static CalculateExpression.Operation.inverseHyperbolicTangent.getter();
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v64)
  {
    return 65;
  }

  static CalculateExpression.Operation.and.getter();
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v65)
  {
    return 74;
  }

  static CalculateExpression.Operation.or.getter();
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v66)
  {
    return 75;
  }

  static CalculateExpression.Operation.nor.getter();
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v67)
  {
    return 76;
  }

  static CalculateExpression.Operation.xor.getter();
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v68)
  {
    return 77;
  }

  static CalculateExpression.Operation.leftShift.getter();
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v69)
  {
    return 79;
  }

  static CalculateExpression.Operation.rightShift.getter();
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v70)
  {
    return 78;
  }

  static CalculateExpression.Operation.leftShiftCustom.getter();
  v71 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v71)
  {
    return 81;
  }

  static CalculateExpression.Operation.rightShiftCustom.getter();
  v72 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v72)
  {
    return 80;
  }

  static CalculateExpression.Operation.leftRotate.getter();
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v73)
  {
    return 83;
  }

  static CalculateExpression.Operation.rightRotate.getter();
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v74)
  {
    return 82;
  }

  static CalculateExpression.Operation.byteFlip.getter();
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v75)
  {
    return 84;
  }

  static CalculateExpression.Operation.wordFlip.getter();
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v76)
  {
    return 85;
  }

  static CalculateExpression.Operation.not.getter();
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v77)
  {
    return 87;
  }

  static CalculateExpression.Operation.neg.getter();
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v78)
  {
    return 86;
  }

  static CalculateExpression.Operation.mod.getter();
  v79 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v79)
  {
    return 88;
  }

  static CalculateExpression.Operation.drop.getter();
  v80 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v80)
  {
    return 89;
  }

  static CalculateExpression.Operation.swap.getter();
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v81)
  {
    return 90;
  }

  static CalculateExpression.Operation.rollOut.getter();
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v82)
  {
    return 91;
  }

  static CalculateExpression.Operation.rollIn.getter();
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v83)
  {
    return 92;
  }

  static CalculateExpression.Operation.enter.getter();
  v84 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v84)
  {
    return 93;
  }

  else
  {
    return 94;
  }
}

unint64_t sub_100055948()
{
  result = qword_100154FC8;
  if (!qword_100154FC8)
  {
    type metadata accessor for CalculateExpression.Operation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154FC8);
  }

  return result;
}

uint64_t sub_1000559D4()
{
  v0 = type metadata accessor for Text.TruncationMode();
  sub_100004078(v0, qword_100160890);
  v1 = sub_1000048C8(v0, qword_100160890);
  v2 = enum case for Text.TruncationMode.middle(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100055A5C()
{
  v0 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  sub_100004078(v0, qword_1001608A8);
  sub_1000048C8(v0, qword_1001608A8);
  return URL.init(string:)();
}

uint64_t sub_100055ACC()
{
  v0 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  sub_100004078(v0, qword_1001608C0);
  sub_1000048C8(v0, qword_1001608C0);
  return URL.init(string:)();
}

unint64_t sub_100055B48(uint64_t a1, int a2, unint64_t a3)
{
  v4 = a2;
  v6 = a2 & 0xFFFFFF;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = sub_100076F10(&_swiftEmptyArrayStorage);
  }

  Date.init()();
  v16 = OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_lastEventUpdatedTime;
  swift_beginAccess();
  (*(v8 + 16))(v12, a1 + v16, v7);
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v12, v7);
  v19(v14, v7);
  v20 = [objc_allocWithZone(NSNumber) initWithDouble:v18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v15;
  sub_1000768A4(v20, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v22 = v34;
  v23 = v6 & 0xFF00;
  v24 = 2;
  v25 = 3;
  if ((v6 & 0x100) == 0)
  {
    v25 = 1;
  }

  if ((v6 & 0x10000) == 0)
  {
    v24 = v25;
  }

  if (v23 == 512)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = [objc_allocWithZone(NSNumber) initWithInteger:v26];
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v22;
  sub_1000768A4(v27, 0x7475706E69, 0xE500000000000000, v28);
  v29 = v34;
  if (v23 == 512)
  {
    v30 = 1;
  }

  else
  {
    v30 = qword_10010CA70[v4];
  }

  v31 = [objc_allocWithZone(NSNumber) initWithInteger:v30];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v29;
  sub_1000768A4(v31, 1701080941, 0xE400000000000000, v32);
  return v34;
}

unint64_t sub_100055E20(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = sub_100076F10(&_swiftEmptyArrayStorage);
  }

  Date.init()();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v8;
  sub_1000768A4(v11, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v13 = v18;
  v14 = [objc_allocWithZone(NSNumber) initWithBool:1];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v18 = v13;
  sub_1000768A4(v14, 0xD000000000000011, 0x8000000100105C30, v15);
  return v18;
}

uint64_t sub_100055FE4(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100056040(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

void sub_1000560A8(uint64_t a1)
{
  swift_getKeyPath();
  v11 = v1;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (sub_100006CE8(*(v1 + 48), a1))
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000048C8(v3, qword_100160D38);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = String.init<A>(describing:)();
      v10 = sub_100006E5C(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "No change to current calculator mode: %{public}s", v6, 0xCu);
      sub_100003F80(v7);
    }
  }

  else
  {
    sub_1000055C8(a1, 0);
  }
}

uint64_t sub_10005628C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id sub_100056380()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);

  return v1;
}

id sub_100056430@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_100056514(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  type metadata accessor for CalculatorMDMRestrictionsManager();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100056670@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_100056740(unsigned __int8 a1)
{
  result = sub_100006CE8(*(v1 + 48), a1);
  if (result)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100056858()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

uint64_t sub_1000568F8()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 49);
}

uint64_t sub_100056998(uint64_t result)
{
  if (*(v1 + 49) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100056AA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 50);
  return result;
}

uint64_t sub_100056B78(uint64_t result)
{
  if (*(v1 + 50) == (result & 1))
  {
    *(v1 + 50) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100056C8C()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 50);
}

uint64_t sub_100056D2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5, char a6)
{
  v10 = *(v6 + 16);
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v10 + 40) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v6 + 50) == 1)
  {
    v12 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *(v10 + 24);

      CalculateExpression.expression.setter();
    }

    if (a4)
    {
      v14 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v14 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {

        sub_1000DBEAC();

        CalculateExpression.expression.setter();
      }
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v10 + 42) != (a5 & 1))
    {
      v16 = swift_getKeyPath();
      __chkstk_darwin(v16);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    if (a4)
    {
      v17 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v17 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {

        sub_1000DBEAC();

        CalculateExpression.expression.setter();
      }

      v18 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v18 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v19 = *(v10 + 24);

        CalculateExpression.expression.setter();
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(v10 + 41) & 1) == 0)
      {
        v20 = swift_getKeyPath();
        __chkstk_darwin(v20);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = *(v10 + 24);

      CalculateExpression.inlineEvaluate()();

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v10 + 24);

      sub_1000DBEAC();

      CalculateExpression.setRepeatableOperation(from:)();
    }

    else
    {
      v23 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v23 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = *(v10 + 24);

        CalculateExpression.expression.setter();
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v10 + 41) == 1)
      {
        v25 = swift_getKeyPath();
        __chkstk_darwin(v25);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    if (a6)
    {
      sub_10001B0D8();

      CalculateExpression.rich.getter();
      v26 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

      if ((v26 & 1) == 0)
      {
        CalculateExpression.rich.getter();
        v27 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

        if (v27)
        {
          return result;
        }

        sub_1000D6098(0);
        v28 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v28 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {

          sub_1000DBEAC();

          CalculateExpression.expression.setter();
        }

        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v29 = *(v10 + 24);

        sub_1000DBEAC();

        CalculateExpression.setRepeatableOperation(from:)();
      }
    }
  }

  return result;
}

void sub_1000574F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10003AE84(&qword_1001551D0, &qword_10010CDF0);
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_10007519C(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
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

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1000576D8(uint64_t result)
{
  if (*(v1 + 51) == (result & 1))
  {
    *(v1 + 51) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000577E8(uint64_t result)
{
  if (*(v1 + 52) == (result & 1))
  {
    *(v1 + 52) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000578F8(uint64_t result)
{
  if (*(v1 + 53) == (result & 1))
  {
    *(v1 + 53) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100057A08(char a1)
{
  v3 = 12337;
  if (*(v1 + 55) != 1)
  {
    v3 = 13873;
  }

  if (*(v1 + 55))
  {
    v4 = v3;
  }

  else
  {
    v4 = 56;
  }

  if (*(v1 + 55))
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 12337;
    }

    else
    {
      v6 = 13873;
    }

    v7 = 0xE200000000000000;
    if (v4 != v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = 0xE100000000000000;
    if (v4 != 56)
    {
      goto LABEL_18;
    }
  }

  if (v5 == v7)
  {

LABEL_19:
    *(v1 + 55) = a1;
    return result;
  }

LABEL_18:
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_19;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100057BC4(char a1)
{
  v3 = 0xE500000000000000;
  v4 = 0x4949435341;
  if (*(v1 + 56) != 1)
  {
    v4 = 0x65646F63696E55;
    v3 = 0xE700000000000000;
  }

  if (*(v1 + 56))
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*(v1 + 56))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x4949435341;
    }

    else
    {
      v7 = 0x65646F63696E55;
    }

    if (a1 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0xE400000000000000;
    if (v5 != 1701736302)
    {
      goto LABEL_21;
    }
  }

  if (v6 == v8)
  {

LABEL_22:
    *(v1 + 56) = a1;
    return result;
  }

LABEL_21:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_22;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100057DA8(uint64_t a1)
{
  if (*(v1 + 64) == a1)
  {

    sub_100058B18();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100057ED4(uint64_t a1)
{
  swift_beginAccess();
  result = *(v1 + 72);
  v4 = *(result + 16);
  if (v4 == *(a1 + 16))
  {
    if (v4)
    {
      v5 = result == a1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
LABEL_10:
      *(v1 + 72) = a1;
    }

    else
    {
      v6 = (result + 32);
      v7 = (a1 + 32);
      while (v4)
      {
        if (*v6 != *v7)
        {
          goto LABEL_11;
        }

        ++v6;
        ++v7;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100058044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000055C8(*(v5 + 48), 0);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v5 + 50) == 1)
    {
      swift_getKeyPath();
      sub_100006530(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(a3 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed) & 1) == 0)
      {
        sub_100009774(0);
      }
    }

    v6 = *(v5 + 16);
    swift_getKeyPath();
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v6 + 24);

    v8 = CalculateExpression.format.getter();

    if (v8 == 2)
    {
      swift_getKeyPath();
      sub_100006530(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(a3 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeRPNAllowed) & 1) == 0)
      {
        sub_100007648(0);
      }
    }
  }

  return result;
}

uint64_t sub_100058308()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 51);
}

uint64_t sub_1000583B0()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 52);
}

uint64_t sub_100058450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 52);
  return result;
}

uint64_t sub_100058528()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 53);
}

uint64_t sub_1000585C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 53);
  return result;
}

uint64_t sub_1000586A0()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 54);
}

uint64_t sub_100058740(uint64_t result)
{
  v2 = *(v1 + 54);
  if (v2 == 11)
  {
    if (result != 11)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 54) = result;
  return result;
}

uint64_t sub_100058860()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 55);
}

uint64_t sub_100058900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 55);
  return result;
}

uint64_t sub_1000589A8()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

uint64_t sub_100058A48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
  return result;
}

void sub_100058B18()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  v15 = v1;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 24);
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + 64);
  CalculateExpression.engine.setter();

  swift_getKeyPath();
  v15 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 32);
  swift_getKeyPath();
  v15 = v0;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v0 + 64);
  CalculateExpression.engine.setter();

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000048C8(v6, qword_100160D38);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v0 + 64);
    type metadata accessor for CalculateEngine(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_100006E5C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "current engine: %{public}s", v9, 0xCu);
    sub_100003F80(v10);
  }
}

uint64_t sub_100058E44()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_100058EE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return result;
}

void sub_100058F8C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v184 = type metadata accessor for Locale();
  v190 = *(v184 - 8);
  v8 = *(v190 + 64);
  __chkstk_darwin(v184);
  v185 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessibilityNotification.Announcement();
  v197 = *(v10 - 8);
  v11 = *(v197 + 64);
  __chkstk_darwin(v10);
  v13 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10003AE84(&qword_100155208, &unk_10010CF10);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v193 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v195 = &v173 - v18;
  v189 = type metadata accessor for AttributedString.FormattingOptions();
  v19 = *(*(v189 - 8) + 64);
  __chkstk_darwin(v189);
  v188 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v187 = &v173 - v23;
  v24 = type metadata accessor for String.LocalizationValue();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v191 = &v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v186 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AttributedString();
  v194 = *(v30 - 8);
  v31 = *(v194 + 64);
  v32 = __chkstk_darwin(v30);
  v192 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v198 = &v173 - v34;
  v35 = [objc_opt_self() defaultCenter];
  if (qword_1001544C0 != -1)
  {
    swift_once();
  }

  [v35 postNotificationName:qword_100160AE8 object:0];

  v36 = &unk_100155000;
  v199 = a3;
  v200 = v3;
  v196 = v13;
  if (a1 > 0x1Bu)
  {
    if (a1 != 55 && a1 != 47)
    {
      v37 = v10;
      if (a1 == 28)
      {
        swift_getKeyPath();
        *&v208[0] = v200;
        sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *&v208[0] = v200;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        *(v200 + 52) = (*(v200 + 52) & 1) == 0;
        *&v208[0] = v200;
        swift_getKeyPath();
        a3 = v199;
        v4 = v200;
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
        v36 = &unk_100155000;

        goto LABEL_60;
      }

LABEL_10:
      v38 = *(v3 + 16);
      sub_1000D6B08(a1, a2 & 1);
      goto LABEL_60;
    }

    v39 = *(v3 + 16);
    swift_getKeyPath();
    *&v208[0] = v39;
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v39 + 41) == 1)
    {
      KeyPath = swift_getKeyPath();
      v183 = v30;
      __chkstk_darwin(KeyPath);
      *&v208[0] = v39;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v30 = v183;
    }

    v37 = v10;
    sub_10001B0D8();

    v41 = CalculateExpression.assumeDegrees.getter();

    v4 = v200;
    sub_100009584((v41 & 1) == 0);
    goto LABEL_58;
  }

  if (a1 != 9)
  {
    v37 = v10;
    if (a1 == 11)
    {
      goto LABEL_60;
    }

    goto LABEL_10;
  }

  swift_getKeyPath();
  v42 = OBJC_IVAR____TtC10Calculator19CalculatorViewModel___observationRegistrar;
  *&v208[0] = v3;
  v179 = sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v3 + 50);
  v44 = *(v3 + 16);
  sub_10001B0D8();

  CalculateExpression.repeatOperation()();

  if (v43 == 1)
  {
    v178 = v42;
    sub_1000D6098(1);
    if (a3)
    {

      sub_1000D62AC(v45);
    }

    v181 = sub_10001B0D8();

    v46 = sub_1000DBEAC();
    swift_getKeyPath();
    *&v208[0] = v44;
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    v182 = v46;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v44 + 40) == 1)
    {
      v47 = v199;
      if (v199)
      {
        v48 = sub_100072148();
        v174 = CalculateUnit.id.getter();
        v176 = v49;

        v50 = sub_100072328();
LABEL_25:
        v56 = v50;
        v175 = CalculateUnit.id.getter();
        v177 = v57;

LABEL_27:
        v53 = v181;
        goto LABEL_28;
      }
    }

    else
    {
      v47 = v199;
      if (v199)
      {
        v54 = sub_100072328();
        v174 = CalculateUnit.id.getter();
        v176 = v55;

        v50 = sub_100072148();
        goto LABEL_25;
      }
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    goto LABEL_27;
  }

  sub_10001B0D8();

  v51 = CalculateExpression.result.getter();

  if (v51)
  {
    v52 = [v51 isTrivial];

    if (v52)
    {
      return;
    }
  }

  v178 = v42;
  sub_1000D6098(0);
  swift_getKeyPath();
  *&v208[0] = v44;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v44 + 32);
  swift_getKeyPath();
  *&v208[0] = v44;

  v47 = v199;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v182 = *(v44 + 24);

  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
LABEL_28:
  swift_getKeyPath();
  v58 = v200;
  *&v208[0] = v200;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v59 = *(v58 + 50);
  v181 = v53;
  if (v59 == 1 && v47)
  {

    if (sub_100072508())
    {

      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_1000048C8(v60, qword_100160D38);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "User attempting to tap on equal while in unit conversion mode for currency and currency conversion being unavailable. Skipping saving current conversion to history.", v63, 2u);
      }

      swift_getKeyPath();
      v64 = v200;
      *&v208[0] = v200;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = v10;
      if ((*(v64 + 53) & 1) == 0)
      {
        v73 = swift_getKeyPath();
        __chkstk_darwin(v73);
        *&v208[0] = v64;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_1000DBEAC();

      CalculateExpression.clearAll()();

      swift_getKeyPath();
      *&v208[0] = v44;
      sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v44 + 41) == 1)
      {
        v74 = swift_getKeyPath();
        v179 = &v173;
        __chkstk_darwin(v74);
        *&v208[0] = v44;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      a3 = v199;

      v4 = v200;
      goto LABEL_59;
    }
  }

  if (CalculateExpression.activeError.getter() || CalculateExpression.activeError.getter())
  {

    v4 = v200;
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000048C8(v65, qword_100160D38);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v66, v67))
    {
      v37 = v10;

LABEL_55:
      if (qword_1001546F8 != -1)
      {
        swift_once();
      }

      v82 = qword_100160D68;
      v83 = String._bridgeToObjectiveC()();
      [v82 setObject:0 forKey:v83];

      v84 = String._bridgeToObjectiveC()();
      [v82 setObject:0 forKey:v84];

LABEL_58:
      a3 = v199;
LABEL_59:
      v36 = &unk_100155000;
      goto LABEL_60;
    }

    LODWORD(v179) = v67;
    v68 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    *&v208[0] = v178;
    *v68 = 136315394;
    v69 = CalculateExpression.debugDescription.getter();
    v71 = sub_100006E5C(v69, v70, v208);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2080;
    if (CalculateExpression.activeError.getter())
    {
      v72 = &v201;
    }

    else
    {
      if (!CalculateExpression.activeError.getter())
      {
        v78 = 0;
        v80 = 0xE000000000000000;
        goto LABEL_54;
      }

      v72 = &v202;
    }

    swift_getErrorValue();
    v76 = *v72;
    v75 = v72[1];
    v77 = v72[2];
    v78 = Error.localizedDescription.getter();
    v80 = v79;

LABEL_54:
    v37 = v10;
    v81 = sub_100006E5C(v78, v80, v208);

    *(v68 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v66, v179, "Could not solve expression: %s = %s", v68, 0x16u);
    swift_arrayDestroy();

    v4 = v200;
    goto LABEL_55;
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v152 = type metadata accessor for Logger();
  sub_1000048C8(v152, qword_100160D38);

  v153 = Logger.logObject.getter();
  v154 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    *&v208[0] = v179;
    *v155 = 136315394;
    LODWORD(v178) = v154;
    v156 = CalculateExpression.debugDescription.getter();
    v158 = sub_100006E5C(v156, v157, v208);

    *(v155 + 4) = v158;
    *(v155 + 12) = 2080;
    v159 = CalculateExpression.debugDescription.getter();
    v161 = sub_100006E5C(v159, v160, v208);

    *(v155 + 14) = v161;
    _os_log_impl(&_mh_execute_header, v153, v178, "Solved expression: %s = %s", v155, 0x16u);
    swift_arrayDestroy();
  }

  v37 = v10;
  v162 = CalculateExpression.expression.getter();
  v179 = v163;
  v164 = CalculateExpression.expression.getter();
  v178 = v165;
  sub_10001B0D8();

  v166 = CalculateExpression.assumeDegrees.getter();

  v167 = v199;
  if (v199)
  {
    swift_getKeyPath();
    *&v208[0] = v167;
    sub_100006530(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v168 = [*(v167 + 32) unitType] == 16;
  }

  else
  {
    v168 = 0;
  }

  v36 = &unk_100155000;
  *&v203 = v162;
  *(&v203 + 1) = v179;
  *&v204 = v164;
  *(&v204 + 1) = v178;
  v169 = v175;
  v170 = v177;
  *&v205 = v174;
  *(&v205 + 1) = v176;
  *&v206 = v175;
  *(&v206 + 1) = v177;
  LOBYTE(v207) = v166 & 1;
  HIBYTE(v207) = v168;
  v208[2] = v205;
  v208[3] = v206;
  v208[0] = v203;
  v208[1] = v204;
  v209 = v207;

  v4 = v200;
  sub_10005AED8(v208);
  sub_100063218(&v203);
  v171 = CalculateExpression.expression.getter();
  sub_100080C2C(v171, v172, v169, v170);

  a3 = v199;
LABEL_60:
  swift_getKeyPath();
  v85 = v36[16];
  *&v203 = v4;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v4 + 50) != 1)
  {
    goto LABEL_70;
  }

  if (a3)
  {

    if ((sub_100072508() & 1) == 0)
    {
      v90 = *(v200 + 16);
      sub_1000D62AC(a3);

      goto LABEL_70;
    }
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  sub_1000048C8(v86, qword_100160D38);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "Unable to recompute unit conversion due to currency conversion being unavailable.", v89, 2u);
  }

LABEL_70:
  if (a1 > 8u)
  {
    if (a1 == 53)
    {
      goto LABEL_80;
    }

    if (a1 != 9)
    {
      return;
    }

    swift_getKeyPath();
    v91 = v200;
    *&v203 = v200;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v92 = *(v91 + 50);
    v180 = v37;
    v183 = v30;
    if (v92 != 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v103 = *(v91 + 16);
      swift_getKeyPath();
      *&v203 = v103;
      sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v104 = *(v103 + 24);

      v105 = CalculateExpression.activeError.getter();

      if (v105)
      {
        swift_getErrorValue();
        Error.localizedDescription.getter();
        v106 = objc_allocWithZone(NSAttributedString);
        v107 = String._bridgeToObjectiveC()();

        v108 = [v106 initWithString:v107];

        v109 = v198;
      }

      else
      {
        sub_1000050A0(0, &qword_100155218, NSAttributedString_ptr);
        swift_getKeyPath();
        *&v203 = v103;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v111 = *(v103 + 24);

        v109 = v198;
        CalculateExpression.accessibilityMathEquationDescription.getter();

        v108 = NSAttributedString.init(_:)();
      }

      v112 = objc_allocWithZone(NSMutableAttributedString);
      v113 = v108;
      v114 = String._bridgeToObjectiveC()();
      v115 = [v112 initWithString:v114];

      v116 = objc_allocWithZone(NSString);
      v117 = String._bridgeToObjectiveC()();

      v118 = [v116 initWithString:v117];

      v119 = String._bridgeToObjectiveC()();
      v120 = [v118 rangeOfString:v119];
      v122 = v121;

      [v115 replaceCharactersInRange:v120 withAttributedString:{v122, v113}];
      v123 = v115;
      AttributedString.init(_:)();
      v124 = enum case for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.high(_:);
      v125 = type metadata accessor for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority();
      v126 = *(v125 - 8);
      v127 = v195;
      (*(v126 + 104))(v195, v124, v125);
      (*(v126 + 56))(v127, 0, 1, v125);
      sub_100008E68(v127, v193, &qword_100155208, &unk_10010CF10);
      sub_1000631C4();
      AttributedString.subscript.setter();
      sub_1000035CC(v127, &qword_100155208, &unk_10010CF10);
      v128 = v194;
      v129 = v183;
      (*(v194 + 16))(v192, v109, v183);
      v130 = v196;
      AccessibilityNotification.Announcement.init(_:)();
      v131 = v180;
      _AccessibilityNotifications.post()();

      goto LABEL_106;
    }

    v93 = *(v91 + 16);
    swift_getKeyPath();
    *&v203 = v93;
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v93 + 40) == 1)
    {
      if (v199)
      {
        v94 = sub_100072148();
LABEL_94:
        v110 = v94;
        goto LABEL_98;
      }
    }

    else if (v199)
    {
      v94 = sub_100072328();
      goto LABEL_94;
    }

    v110 = 0;
LABEL_98:
    swift_getKeyPath();
    *&v203 = v93;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v93 + 40) == 1)
    {
      if (v199)
      {
        v132 = sub_100072328();
LABEL_103:
        v133 = v132;
LABEL_105:
        v134 = v184;
        sub_10001B0D8();

        v136 = sub_10005B934(v135, v110);
        v138 = v137;

        sub_1000DBEAC();

        v140 = sub_10005B934(v139, v133);
        v142 = v141;

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v143._countAndFlagsBits = 0x202C7475706E49;
        v143._object = 0xE700000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v143);
        v144._countAndFlagsBits = v136;
        v144._object = v138;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v144);

        v145._object = 0x8000000100106010;
        v145._countAndFlagsBits = 0xD000000000000015;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v145);
        v146._countAndFlagsBits = v140;
        v146._object = v142;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v146);

        v147._countAndFlagsBits = 0;
        v147._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v147);
        String.LocalizationValue.init(stringInterpolation:)();
        (*(v190 + 56))(v187, 1, 1, v134);
        *&v203 = &_swiftEmptyArrayStorage;
        sub_100006530(&qword_100155228, &type metadata accessor for AttributedString.FormattingOptions);
        sub_10003AE84(&qword_100155230, &qword_10010CF20);
        sub_100004880(&qword_100155238, &qword_100155230, &qword_10010CF20);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v109 = v198;
        AttributedString.init(localized:options:table:bundle:locale:comment:)();
        v148 = enum case for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.high(_:);
        v149 = type metadata accessor for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority();
        v150 = *(v149 - 8);
        v151 = v195;
        (*(v150 + 104))(v195, v148, v149);
        (*(v150 + 56))(v151, 0, 1, v149);
        sub_100008E68(v151, v193, &qword_100155208, &unk_10010CF10);
        sub_1000631C4();
        AttributedString.subscript.setter();
        sub_1000035CC(v151, &qword_100155208, &unk_10010CF10);
        v128 = v194;
        v129 = v183;
        (*(v194 + 16))(v192, v109, v183);
        v130 = v196;
        AccessibilityNotification.Announcement.init(_:)();
        v131 = v180;
        _AccessibilityNotifications.post()();

LABEL_106:
        (*(v197 + 8))(v130, v131);
        (*(v128 + 8))(v109, v129);
        return;
      }
    }

    else if (v199)
    {
      v132 = sub_100072148();
      goto LABEL_103;
    }

    v133 = 0;
    goto LABEL_105;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      return;
    }

LABEL_80:
    v95 = *(v200 + 16);
    sub_10001B0D8();

    CalculateExpression.rich.getter();
    v96 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

    if (v96)
    {
    }

    else
    {
      CalculateExpression.rich.getter();
      v97 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

      if ((v97 & 1) == 0)
      {
        return;
      }
    }
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v98 = qword_100160D98;
  swift_getKeyPath();
  *&v203 = v98;
  sub_100006530(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v98 + 72) & 1) == 0)
  {
    sub_100080D98();
  }

  sub_100080254(48);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v99 = qword_100160D68;
  v100 = String._bridgeToObjectiveC()();

  v101 = String._bridgeToObjectiveC()();
  [v99 setObject:v100 forKey:v101];

  v102 = String._bridgeToObjectiveC()();
  [v99 setObject:0 forKey:v102];
}

void sub_10005AED8(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  isa = v4[-1].isa;
  v6 = *(isa + 8);
  __chkstk_darwin(v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenericRecord();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000AA04())
  {
    v62 = v9;
    v63 = v8;
    v64 = isa;
    v65 = v4;
    if (qword_100154370 != -1)
    {
      swift_once();
    }

    v61 = qword_100160878;
    v13 = sub_100045480();
    if (!v13)
    {
LABEL_38:
      swift_getKeyPath();
      *&v70 = v2;
      sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + 48) > 1u)
      {
        if (*(v2 + 48) == 2)
        {
          v60 = 0xE900000000000072;
          v36 = 0x657061506874616DLL;
        }

        else
        {
          v60 = 0xEA00000000007265;
          v36 = 0x6D6D6172676F7270;
        }
      }

      else
      {
        if (*(v2 + 48))
        {
          v59 = 0x6669746E65696373;
          v36 = 0xEA00000000006369;
          v37 = &v72;
LABEL_46:
          *(v37 - 32) = v36;
          v38 = *(v2 + 16);
          swift_getKeyPath();
          *&v70 = v38;
          sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v39 = *(v38 + 24);

          v40 = CalculateExpression.format.getter();

          v41 = v40 == 2;
          v42 = *(a1 + 65);
          swift_getKeyPath();
          *&v70 = v38;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v43 = *(v38 + 24);

          v44 = CalculateExpression.assumeDegrees.getter();

          v45 = *a1;
          v69 = a1[1];
          v70 = v45;
          v46 = a1[2];
          v67 = a1[3];
          v68 = v46;
          sub_100063268(&v70, v66);
          sub_100063268(&v69, v66);
          sub_100008E68(&v68, v66, &qword_100154C40, &qword_10010CFA0);
          sub_100008E68(&v67, v66, &qword_100154C40, &qword_10010CFA0);
          v47 = v63;
          UUID.init()();
          v48 = UUID.uuidString.getter();
          v50 = v49;
          (*(v64 + 1))(v47, v65);
          v51 = &v12[*(v62 + 52)];
          static Date.now.getter();
          *v12 = v48;
          *(v12 + 1) = v50;
          v52 = v60;
          *(v12 + 2) = v59;
          *(v12 + 3) = v52;
          v12[32] = v41;
          v12[33] = v42;
          v12[34] = v44 & 1;
          v53 = v69;
          *(v12 + 40) = v70;
          *(v12 + 56) = v53;
          v54 = v67;
          *(v12 + 72) = v68;
          *(v12 + 88) = v54;
          sub_100042024(v12);
          sub_10003AE84(&qword_100155248, &qword_10010CFA8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10010BDE0;
          strcpy((inited + 32), "insertElement");
          *(inited + 46) = -4864;
          *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
          v56 = sub_100076F10(inited);
          swift_setDeallocating();
          sub_1000035CC(inited + 32, &qword_100155250, &qword_10010CFB0);
          sub_100062CB8(v56);

          sub_10004B55C(v12);
          return;
        }

        v60 = 0xE500000000000000;
        v36 = 0x6369736162;
      }

      v37 = &v71;
      goto LABEL_46;
    }

    v14 = v13;
    v15 = *a1;
    v16 = *(a1 + 1);
    v17 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
    *&v70 = v13;
    swift_getKeyPath();
    v18 = sub_100006530(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
    v60 = v17;
    v59 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100006530(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
    PersistentModel.getValue<A>(forKey:)();

    if (__PAIR128__(v16, v15) == v70)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v24 = *(a1 + 2);
    v25 = *(a1 + 3);
    *&v70 = v14;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    if (__PAIR128__(v25, v24) == v70)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v28 = *(a1 + 4);
    v27 = *(a1 + 5);
    *&v70 = v14;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_10004B3E8();
    PersistentModel.getValue<A>(forKey:)();

    if (!v27)
    {
      if (*(&v70 + 1))
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    if (*(&v70 + 1))
    {
      if (__PAIR128__(v27, v28) == v70)
      {

LABEL_25:
        v30 = *(a1 + 7);
        v58 = *(a1 + 6);
        *&v70 = v14;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        PersistentModel.getValue<A>(forKey:)();

        if (v30)
        {
          if (*(&v70 + 1))
          {
            if (__PAIR128__(v30, v58) == v70)
            {

LABEL_32:
              if (qword_1001546E8 != -1)
              {
                swift_once();
              }

              v32 = type metadata accessor for Logger();
              sub_1000048C8(v32, qword_100160D38);
              v33 = Logger.logObject.getter();
              v34 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                *v35 = 0;
                _os_log_impl(&_mh_execute_header, v33, v34, "Duplicate calculation performed, skipping adding existing entry to history list", v35, 2u);
              }

              return;
            }

            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v31)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_37;
        }

        if (!*(&v70 + 1))
        {
          goto LABEL_32;
        }

LABEL_30:

        goto LABEL_38;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_25;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000048C8(v19, qword_100160D38);
  v65 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v65, v20, "History not supported for current app settings", v21, 2u);
  }

  v22 = v65;
}

uint64_t sub_10005BB60()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_10005BC18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_10005BCD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100057ED4(v4);
}

uint64_t sub_10005BD04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 72);
  *(a1 + 72) = a2;
}

uint64_t sub_10005BD6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 72);

  v4 = OBJC_IVAR____TtC10Calculator19CalculatorViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10005BE30()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 48);
}

uint64_t sub_10005BED0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 50);
}

BOOL sub_10005BF70()
{
  v1 = *(*v0 + 16);
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 24);

  v3 = CalculateExpression.format.getter();

  return v3 == 2;
}

uint64_t sub_10005C034(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = v2;
  v4 = result;
  v35 = result;
  swift_getKeyPath();
  sub_100006530(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006530(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10004B3E8();
  PersistentModel.getValue<A>(forKey:)();

  v34 = v4;
  if (!v36)
  {
    goto LABEL_8;
  }

  v35 = v4;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  if (!a2)
  {

LABEL_8:
    swift_getKeyPath();
    v35 = v2;
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + 50) == 1)
    {
      sub_100009774(0);
    }

    goto LABEL_15;
  }

  v5 = *(a2 + 16);
  swift_getKeyPath();
  v35 = v5;
  sub_100006530(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + 16);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 findUnitWithName:v7];

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();

    v10 = [v6 findUnitWithName:v9];

    if (v10)
    {
      sub_1000726F8(v8);
      sub_1000733A8(v10);
    }

    else
    {
    }
  }

  else
  {
  }

  swift_getKeyPath();
  v35 = v3;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v3 + 50) & 1) == 0)
  {
    sub_100009774(1);
  }

  v4 = v34;
LABEL_15:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v11 = sub_100008E44(&_swiftEmptyArrayStorage);
  sub_100080868(v4, v36, v11);

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v12 = sub_100008E44(&_swiftEmptyArrayStorage);
  sub_100080868(v4, v36, v12);

  v32 = CalculateExpression.expression.getter();
  v14 = v13;
  v15 = CalculateExpression.expression.getter();
  v17 = v16;
  v35 = v4;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v18 = sub_10007BF50();
  sub_100056D2C(v32, v14, v15, v17, v4, (v18 & 1) == 0);

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000048C8(v19, qword_100160D38);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = CalculateExpression.debugDescription.getter();
    v25 = sub_100006E5C(v23, v24, &v35);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = CalculateExpression.debugDescription.getter();
    v28 = sub_100006E5C(v26, v27, &v35);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Restored expression from history: %s = %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v35 = v34;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  sub_100009584(v35);
  swift_getKeyPath();
  v35 = v3;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 50) == 1 && a2)
  {
    swift_getKeyPath();
    v35 = a2;
    sub_100006530(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ([*(a2 + 32) unitType] == 16)
    {
      v29 = *(v3 + 16);
      sub_1000D62AC(a2);
    }
  }

  sub_10003AE84(&qword_100155248, &qword_10010CFA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010BDE0;
  *(inited + 32) = 0x656D656C45706174;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v31 = sub_100076F10(inited);
  swift_setDeallocating();
  sub_1000035CC(inited + 32, &qword_100155250, &qword_10010CFB0);
  sub_100062CB8(v31);
}

void sub_10005CA30()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_10001B0D8();

  v3 = CalculateExpression.activeError.getter();

  if (v3)
  {

    v34 = 0;
    v4 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v2 + 24);

    v34 = CalculateExpression.expression.getter();
    v4 = v6;
  }

  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + 50) & 1) != 0 || (swift_getKeyPath(), sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v2 + 41) == 1))
  {
    swift_getKeyPath();
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v2 + 32);

    v33 = CalculateExpression.expression.getter();
    v9 = v8;
  }

  else
  {
    v33 = 0;
    v9 = 0;
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v10 = qword_100160D68;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = [v10 stringForKey:v16];

  if (v17)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v32 = 0;
    v19 = 0;
  }

  if (v15)
  {
    if (!v4)
    {

      v21 = String._bridgeToObjectiveC()();
      [v10 setValue:0 forKey:v21];

      goto LABEL_24;
    }

    if (v13 == v34 && v15 == v4)
    {

LABEL_24:
      v20 = v9;
      goto LABEL_28;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v9;
    if (v22)
    {

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v20 = v9;
  if (v4)
  {
LABEL_27:
    sub_100080254(v34);

    v23 = String._bridgeToObjectiveC()();

    v24 = String._bridgeToObjectiveC()();
    [v10 setValue:v23 forKey:v24];
  }

LABEL_28:
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_39;
    }

    v25 = v33;
LABEL_38:
    sub_100080254(v25);

    v28 = String._bridgeToObjectiveC()();

    v29 = String._bridgeToObjectiveC()();
    [v10 setValue:v28 forKey:v29];

    goto LABEL_39;
  }

  if (!v20)
  {

    v26 = String._bridgeToObjectiveC()();
    [v10 setValue:0 forKey:v26];

    goto LABEL_39;
  }

  v25 = v33;
  if (v32 != v33 || v19 != v20)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {

      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_39:
  sub_10001B0D8();

  CalculateExpression.assumeDegrees.getter();

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v31 = String._bridgeToObjectiveC()();
  [v10 setValue:isa forKey:v31];
}

uint64_t sub_10005D098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v276 = a2;
  v287 = type metadata accessor for CalculateExpression.TokenType();
  v5 = *(v287 - 8);
  v6 = *(v5 + 8);
  v7 = __chkstk_darwin(v287);
  v286 = &v264 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v285 = &v264 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v280 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for CalculateExpression.Base();
  v277 = *(v278 - 8);
  v13 = *(v277 + 64);
  __chkstk_darwin(v278);
  v279 = &v264 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003AE84(&qword_100155258, &qword_10010D100);
  v282 = *(v15 - 1);
  v283 = v15;
  isa = v282[8].isa;
  __chkstk_darwin(v15);
  v281 = &v264 - v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v288 = (&v264 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v24 = &v264 - v23;
  v25 = sub_10003AE84(&qword_100155260, &unk_10010D108);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v264 - v27;
  v29 = type metadata accessor for URLComponents();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v264 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = a1;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v34 = &off_100154000;
  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    v284 = v3;
    v275 = v30;
    v36 = *(v30 + 32);
    v274 = v29;
    v36(v33, v28, v29);
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    v38 = sub_1000048C8(v37, qword_100160D38);
    (*(v19 + 16))(v24, v289, v18);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = os_log_type_enabled(v39, v40);
    v272 = v5;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v273 = v38;
      v43 = v42;
      v44 = swift_slowAlloc();
      *&v292 = v44;
      *v43 = 136380675;
      sub_100006530(&qword_100155268, &type metadata accessor for URL);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v33;
      v48 = v47;
      (*(v19 + 8))(v24, v18);
      v49 = sub_100006E5C(v45, v48, &v292);
      v33 = v46;
      v34 = &off_100154000;

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "Restoring calculator from url: %{private}s", v43, 0xCu);
      sub_100003F80(v44);

      v38 = v273;
    }

    else
    {

      (*(v19 + 8))(v24, v18);
    }

    v50 = URLComponents.queryItems.getter();
    v3 = v284;
    v35 = v288;
    if (v50)
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v271 = v33;
        v55 = v54;
        *&v292 = v54;
        *v53 = 136380675;
        type metadata accessor for URLQueryItem();
        v56 = Array.description.getter();
        v58 = v57;

        v59 = v56;
        v3 = v284;
        v60 = sub_100006E5C(v59, v58, &v292);
        v35 = v288;

        *(v53 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v51, v52, "query: %{private}s", v53, 0xCu);
        sub_100003F80(v55);

        (*(v275 + 8))(v271, v274);
        goto LABEL_17;
      }

LABEL_16:
      (*(v275 + 8))(v33, v274);
      goto LABEL_17;
    }

    v61 = URLComponents.host.getter();
    if (!v62)
    {
      goto LABEL_16;
    }

    v273 = v38;
    v63 = v61;
    v294 = v61;
    v295 = v62;
    v64 = v62;
    swift_getKeyPath();
    v65 = OBJC_IVAR____TtC10Calculator19CalculatorViewModel___observationRegistrar;
    *&v292 = v3;
    v289 = sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v3[48] <= 1u && !v3[48])
    {
      goto LABEL_29;
    }

    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v78)
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    *&v292 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v3[48] <= 1u && v3[48])
    {
LABEL_29:
    }

    else
    {
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v79 & 1) == 0)
      {
        sub_1000560A8(0);
      }
    }

LABEL_30:
    v271 = v33;
    swift_getKeyPath();
    *&v292 = v3;
    v288 = v65;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v3[50] == 1)
    {
      sub_100009774(0);
    }

    v80 = *(v3 + 2);
    swift_getKeyPath();
    *&v292 = v80;
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v81 = *(v80 + 24);

    v82 = CalculateExpression.format.getter();

    if (v82 == 2)
    {
      sub_100007648(0);
    }

    v83 = v63;
    *&v292 = v63;
    *(&v292 + 1) = v64;

    v84 = v281;
    Regex.init(_regexString:version:)();
    sub_100063408();
    sub_100004880(&qword_100155278, &qword_100155258, &qword_10010D100);
    v85 = v283;
    v86 = BidirectionalCollection<>.contains<A>(_:)();
    (v282[1].isa)(v84, v85);

    if (v86)
    {
      *&v292 = v83;
      *(&v292 + 1) = v64;
      *&v291[0] = 808556483;
      *(&v291[0] + 1) = 0xA400000000000000;
      v290[0] = 101;
      v290[1] = 0xE100000000000000;
      sub_10006345C();
      *&v292 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      *(&v292 + 1) = v87;
      v83 = StringProtocol.decomposedStringWithCompatibilityMapping.getter();
      v89 = v88;

      v294 = v83;
      v295 = v89;
      v64 = v89;
    }

    swift_getKeyPath();
    *&v292 = v80;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v90 = *(v80 + 24);

    v91 = CalculateExpression.options.getter();

    v92 = CalculateKeyConvertTrivial;
    p_name = &stru_100152FF8.name;
    v94 = [objc_allocWithZone(NSNumber) initWithBool:1];
    v95 = sub_1000050A0(0, &qword_100155280, NSNumber_ptr);
    v293 = v95;
    *&v292 = v94;
    sub_100008F60(&v292, v291);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v290[0] = v91;
    sub_100076B80(v291, v92, isUniquelyReferenced_nonNull_native);
    v97 = v290[0];
    v98 = CalculateKeyAllowStaleCurrencyConversions;
    v99 = [objc_allocWithZone(NSNumber) initWithBool:1];
    v293 = v95;
    *&v292 = v99;
    sub_100008F60(&v292, v291);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v290[0] = v97;
    sub_100076B80(v291, v98, v100);
    v101 = v290[0];
    v102 = CalculateKeyAllowEqualSign;
    v103 = [objc_allocWithZone(NSNumber) initWithBool:1];
    v293 = v95;
    *&v292 = v103;
    sub_100008F60(&v292, v291);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v290[0] = v101;
    sub_100076B80(v291, v102, v104);
    v105 = v290[0];

    v106 = evaluate(_:options:)();

    if (!v106)
    {
      goto LABEL_50;
    }

    v270 = v105;
    v107 = v106;
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "Url query is solveable, checking if any units are declared", v110, 2u);
    }

    v111 = [v107 inputValueAndUnit];
    v112 = &stru_100152FF8.name;
    v268 = v107;
    if (!v111)
    {
      goto LABEL_58;
    }

    v113 = v111;
    v114 = [v111 terms];

    sub_1000050A0(0, &qword_100155288, CalculateTerm_ptr);
    v115 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v115 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_42;
      }
    }

    else if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      if ((v115 & 0xC000000000000001) != 0)
      {
        v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        v116 = *(v115 + 32);
      }

      v117 = v116;

      v118 = [v117 units];

      sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
      v115 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v115 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_47:
          if ((v115 & 0xC000000000000001) == 0)
          {
            if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_50:

              v119 = Logger.logObject.getter();
              v120 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v119, v120))
              {
                v121 = swift_slowAlloc();
                v122 = swift_slowAlloc();
                *&v292 = v122;
                *v121 = 136380675;

                v123 = sub_100006E5C(v83, v64, &v292);

                *(v121 + 4) = v123;
                _os_log_impl(&_mh_execute_header, v119, v120, "Url query: %{private}s results in an error, clearing input", v121, 0xCu);
                sub_100003F80(v122);
              }

              v124 = v275;
              v125 = v274;
              v126 = v271;
              sub_1000D7638();
              (*(v124 + 8))(v126, v125);
            }

            goto LABEL_67;
          }

LABEL_96:
          v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_68;
        }
      }

      else if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }
    }

LABEL_58:
    v114 = [v107 terms];
    sub_1000050A0(0, &qword_100155288, CalculateTerm_ptr);
    v115 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v115 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_99;
      }
    }

    else if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_99;
    }

    if ((v115 & 0xC000000000000001) != 0)
    {
      v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:
      v114 = v127;

      v128 = [v114 units];

      sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
      v115 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v115 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_65;
        }
      }

      else if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_65:
        if ((v115 & 0xC000000000000001) != 0)
        {
          goto LABEL_96;
        }

        if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_67:
          v129 = *(v115 + 32);
LABEL_68:
          v130 = v129;
          v267 = v83;
          v269 = v64;

          v131 = CalculateUnit.id.getter();
          v133 = v132;

          if (qword_1001546A0 != -1)
          {
            swift_once();
          }

          v83 = qword_100160D00;
          swift_getKeyPath();
          *&v292 = v83;
          v107 = sub_100006530(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v134 = *(v83 + 16);
          v135 = String._bridgeToObjectiveC()();
          v136 = [v134 findUnitWithName:v135];

          if (v136)
          {

            v265 = v136;
            p_name = v136;
            v137 = v268;
            v138 = [v268 inputValueAndUnit];
            v283 = p_name;
            if (!v138)
            {

              v266 = 0;
              v107 = v284;
              v64 = v269;
              v83 = v267;
              goto LABEL_119;
            }

            v115 = v138;
            v112 = &stru_100152FF8.name;
            v139 = [v137 terms];
            sub_1000050A0(0, &qword_100155288, CalculateTerm_ptr);
            v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (!(v114 >> 62))
            {
              if (!*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_110;
              }

              goto LABEL_74;
            }

LABEL_106:
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_110;
            }

LABEL_74:
            if ((v114 & 0xC000000000000001) != 0)
            {
              v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_77:
              v141 = v140;

              v142 = [v141 units];

              sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
              v143 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v143 >> 62)
              {
                result = _CocoaArrayWrapper.endIndex.getter();
                v112 = &stru_100152FF8.name;
                if (result)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                result = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v112 = (&stru_100152FF8 + 8);
                if (result)
                {
LABEL_79:
                  if ((v143 & 0xC000000000000001) != 0)
                  {
                    goto LABEL_182;
                  }

                  if (!*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return result;
                  }

                  for (i = *(v143 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
                  {
                    v145 = i;

                    v146 = CalculateUnit.id.getter();
                    v148 = v147;

                    swift_getKeyPath();
                    *&v292 = v83;
                    ObservationRegistrar.access<A, B>(_:keyPath:)();

                    v149 = *(v83 + 16);
                    v150 = String._bridgeToObjectiveC()();
                    v151 = [v149 findUnitWithName:v150];

                    v266 = v151;
                    if (v151)
                    {
                    }

                    else
                    {
                      v158 = p_name;

                      v159 = Logger.logObject.getter();
                      v160 = static os_log_type_t.error.getter();

                      v282 = v159;
                      if (os_log_type_enabled(v159, v160))
                      {
                        v161 = swift_slowAlloc();
                        v162 = v146;
                        v163 = swift_slowAlloc();
                        v164 = swift_slowAlloc();
                        *&v292 = v164;
                        *v161 = 136315394;
                        v165 = sub_100006E5C(v162, v148, &v292);

                        *(v161 + 4) = v165;
                        *(v161 + 12) = 2112;
                        *(v161 + 14) = v158;
                        *v163 = v265;
                        v166 = v282;
                        _os_log_impl(&_mh_execute_header, v282, v160, "Unable to resolve and set unit conversion result unit to: %s, falling back to %@ preferred to unit", v161, 0x16u);
                        sub_1000035CC(v163, &qword_100154BE8, &qword_10010C010);

                        sub_100003F80(v164);
                      }

                      else
                      {
                      }

                      v266 = 0;
                    }

                    v64 = v269;
                    v112 = (&stru_100152FF8 + 8);
LABEL_111:
                    p_name = v288;
                    v177 = [v115 v112[118]];
                    v178 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    v107 = v284;
                    v83 = v267;
                    if (!(v178 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10)))
                    {
                      break;
                    }

                    if ((v178 & 0xC000000000000001) != 0)
                    {
                      goto LABEL_180;
                    }

                    if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v180 = *(v178 + 32);
                      goto LABEL_117;
                    }

                    __break(1u);
LABEL_182:
                    ;
                  }

                  v294 = v83;
                  v295 = v64;
                  goto LABEL_119;
                }
              }

LABEL_110:

              v266 = 0;
              v64 = v269;
              goto LABEL_111;
            }

            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v140 = *(v114 + 32);
              goto LABEL_77;
            }

            __break(1u);
LABEL_180:
            v180 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_117:
            v181 = v180;

            v182 = [v181 formattedValue];

            v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v184 = v183;

            v294 = v83;
            v295 = v184;
            v64 = v184;
LABEL_119:
            swift_getKeyPath();
            *&v292 = v107;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v185 = *(v107 + 5);
            swift_getKeyPath();
            *&v292 = v185;
            sub_100006530(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
            v186 = v185;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v187 = v186[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed];

            if ((v187 & 1) == 0)
            {

              v203 = Logger.logObject.getter();
              v204 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v203, v204))
              {
                v205 = swift_slowAlloc();
                *v205 = 0;
                _os_log_impl(&_mh_execute_header, v203, v204, "Unable to open url containing unit(s) in unit conversion mode due to feature being managed by a profile", v205, 2u);
              }

              v206 = v266;
              if (*(v107 + 49) != 7)
              {
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                *&v292 = v107;
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
              }

              v208 = [objc_opt_self() defaultCenter];
              v209 = v275;
              v210 = v274;
              if (qword_1001544F0 == -1)
              {
                goto LABEL_139;
              }

              goto LABEL_178;
            }

            v173 = v272;
            v174 = v279;
            v175 = v278;
            v176 = v277;
            v172 = v266;
LABEL_121:
            (*(v176 + 104))(v174, enum case for CalculateExpression.Base.base10(_:), v175);

            UUID.init()();
            v188 = type metadata accessor for CalculateExpression();
            v189 = *(v188 + 48);
            v190 = *(v188 + 52);
            swift_allocObject();
            v279 = CalculateExpression.init(_:options:base:id:)();
            CalculateExpression.plain.getter();
            v191 = dispatch thunk of CalculateExpression.PlainExpression.tokens.getter();

            v269 = v64;
            v267 = v83;
            v266 = v172;
            if (v191 >> 62)
            {
              goto LABEL_141;
            }

            v192 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v192)
            {
              while (1)
              {
                v193 = 0;
                v288 = (v191 & 0xC000000000000001);
                v283 = (v191 & 0xFFFFFFFFFFFFFF8);
                LODWORD(v282) = enum case for CalculateExpression.TokenType.unit(_:);
                v281 = v173 + 104;
                v280 = v173 + 8;
                v195 = v286;
                v194 = v287;
                v196 = (v173 + 8);
                while (v288)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v198 = v193 + 1;
                  if (__OFADD__(v193, 1))
                  {
LABEL_132:
                    __break(1u);
LABEL_133:

                    CalculateExpression.inlineEvaluate()();
                    v200 = CalculateExpression.expression.getter();
                    v202 = v201;
                    swift_beginAccess();
                    v294 = v200;
                    v295 = v202;
                    goto LABEL_143;
                  }

LABEL_127:
                  v199 = v285;
                  CalculateExpression.Token.type.getter();
                  (*v281)(v195, v282, v194);
                  LODWORD(v289) = static CalculateExpression.TokenType.== infix(_:_:)();
                  v173 = *v196;
                  (*v196)(v195, v194);
                  v173(v199, v194);

                  if (v289)
                  {
                    goto LABEL_133;
                  }

                  ++v193;
                  if (v198 == v192)
                  {
                    goto LABEL_142;
                  }
                }

                if (v193 < v283[2])
                {
                  break;
                }

                __break(1u);
LABEL_141:
                v192 = _CocoaArrayWrapper.endIndex.getter();
                if (!v192)
                {
                  goto LABEL_142;
                }
              }

              v197 = *(v191 + 8 * v193 + 32);

              v198 = v193 + 1;
              if (__OFADD__(v193, 1))
              {
                goto LABEL_132;
              }

              goto LABEL_127;
            }

LABEL_142:

            v202 = v269;
            v200 = v267;
LABEL_143:

            v211 = v266;
            v212 = v265;
            if (!v265)
            {
              v221 = Logger.logObject.getter();
              v222 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v221, v222))
              {
                v223 = swift_slowAlloc();
                v224 = swift_slowAlloc();
                *&v291[0] = v224;
                *v223 = 136380675;

                v225 = sub_100006E5C(v200, v202, v291);

                *(v223 + 4) = v225;
                _os_log_impl(&_mh_execute_header, v221, v222, "Re-evaluating the original input: %{private}s from url", v223, 0xCu);
                sub_100003F80(v224);
              }

              v226 = v275;
              v227 = v274;

              sub_100056D2C(v200, v202, 0, 0, 0, 0);

              sub_100058F8C(9, 0, 0);

              (*(v226 + 8))(v271, v227);
            }

            if (v266)
            {
              v213 = v266;
              v214 = v212;
              v215 = [v214 category];
              if (v215)
              {
                v216 = v215;
                v217 = CalculateUnit.id.getter();
                v219 = v218;
                if (v217 == CalculateUnit.id.getter() && v219 == v220)
                {
                }

                else
                {
                  v228 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v228 & 1) == 0)
                  {
                    v244 = v213;
                    v245 = v214;
                    v246 = v216;
                    v247 = Logger.logObject.getter();
                    v248 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v247, v248))
                    {
                      v249 = swift_slowAlloc();
                      v267 = v200;
                      v250 = v249;
                      v289 = swift_slowAlloc();
                      v290[0] = v289;
                      *v250 = 136315907;
                      *&v291[0] = CalculateUnitCategory.id.getter();
                      *(&v291[0] + 1) = v251;
                      sub_10006345C();
                      v252 = StringProtocol.capitalized.getter();
                      v269 = v202;
                      v254 = v253;

                      v255 = sub_100006E5C(v252, v254, v290);

                      *(v250 + 4) = v255;
                      *(v250 + 12) = 2080;
                      v256 = CalculateUnit.id.getter();
                      v258 = sub_100006E5C(v256, v257, v290);

                      *(v250 + 14) = v258;
                      *(v250 + 22) = 2080;
                      v259 = CalculateUnit.id.getter();
                      v261 = sub_100006E5C(v259, v260, v290);

                      *(v250 + 24) = v261;
                      v202 = v269;
                      *(v250 + 32) = 2081;

                      v262 = sub_100006E5C(v267, v202, v290);

                      *(v250 + 34) = v262;
                      _os_log_impl(&_mh_execute_header, v247, v248, "%s conversion resolved from url. Setting input unit to %s, result unit to %s, and re-evaluating the original input: %{private}s in unit conversion mode", v250, 0x2Au);
                      swift_arrayDestroy();

                      v200 = v267;
                    }

                    v263 = v276;
                    sub_1000726F8(v245);
                    sub_1000733A8(v244);

                    sub_100056D2C(v200, v202, 0, 0, 0, 0);

                    sub_100009774(1);
                    sub_100058F8C(9, 0, v263);

                    goto LABEL_172;
                  }
                }

                v212 = v265;
              }

              else
              {
              }
            }

            v208 = v212;
            v229 = Logger.logObject.getter();
            v206 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v229, v206))
            {
              v230 = swift_slowAlloc();
              *&v291[0] = swift_slowAlloc();
              *v230 = 136315395;
              v231 = CalculateUnit.id.getter();
              v233 = v200;
              v234 = sub_100006E5C(v231, v232, v291);

              *(v230 + 4) = v234;
              v200 = v233;
              *(v230 + 12) = 2081;

              v235 = sub_100006E5C(v233, v202, v291);

              *(v230 + 14) = v235;
              _os_log_impl(&_mh_execute_header, v229, v206, "Calculation containing unit(s) resolved from url. Setting input unit to first unit specified: %s and re-evaluating the original input: %{private}s without saving in unit conversion mode", v230, 0x16u);
              swift_arrayDestroy();
            }

            sub_1000726F8(v208);
            v210 = v268;
            v236 = [v210 convertedTo:v208];
            if (!v236)
            {

              goto LABEL_171;
            }

            v237 = v236;
            v238 = [v236 terms];

            sub_1000050A0(0, &qword_100155288, CalculateTerm_ptr);
            v209 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v209 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_161;
              }
            }

            else if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_161:
              if ((v209 & 0xC000000000000001) != 0)
              {
                v239 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                goto LABEL_164;
              }

              if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v239 = *(v209 + 32);
LABEL_164:
                v240 = v239;

                v241 = [v240 formattedValue];

                v200 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v243 = v242;

                v202 = v243;
LABEL_171:

                sub_100056D2C(v200, v202, 0, 0, 0, 0);

                sub_100009774(1);

LABEL_172:
                (*(v275 + 8))(v271, v274);
              }

              __break(1u);
LABEL_178:
              swift_once();
LABEL_139:
              [v208 postNotificationName:qword_100160B18 object:0];

              (*(v209 + 8))(v271, v210);
            }

            goto LABEL_171;
          }

          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.error.getter();

          v154 = os_log_type_enabled(v152, v153);
          v64 = v269;
          v83 = v267;
          if (v154)
          {
            v155 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            *&v292 = v156;
            *v155 = 136315138;
            v157 = sub_100006E5C(v131, v133, &v292);

            *(v155 + 4) = v157;
            _os_log_impl(&_mh_execute_header, v152, v153, "Unable to resolve and set unit conversion input unit to: %s", v155, 0xCu);
            sub_100003F80(v156);
          }

          else
          {
          }

LABEL_102:
          v172 = 0;
          v265 = 0;
          v173 = v272;
          v174 = v279;
          v175 = v278;
          v176 = v277;
          goto LABEL_121;
        }

LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_99:

      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *&v292 = v170;
        *v169 = 136380675;

        v171 = sub_100006E5C(v83, v64, &v292);

        *(v169 + 4) = v171;
        _os_log_impl(&_mh_execute_header, v167, v168, "No unit(s) defined in url query: %{private}s", v169, 0xCu);
        sub_100003F80(v170);
      }

      goto LABEL_102;
    }

    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v127 = *(v115 + 32);
      goto LABEL_63;
    }

    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  sub_1000035CC(v28, &qword_100155260, &unk_10010D108);
  v35 = v288;
LABEL_17:
  if (v34[221] != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_1000048C8(v66, qword_100160D38);
  (*(v19 + 16))(v35, v289, v18);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v292 = v70;
    *v69 = 136380675;
    sub_100006530(&qword_100155268, &type metadata accessor for URL);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    (*(v19 + 8))(v35, v18);
    v74 = sub_100006E5C(v71, v73, &v292);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v67, v68, "Unable to resolve components from url: %{private}s clearing input", v69, 0xCu);
    sub_100003F80(v70);
  }

  else
  {

    (*(v19 + 8))(v35, v18);
  }

  v75 = *(v3 + 2);
  sub_10001B0D8();

  CalculateExpression.clearAll()();

  sub_1000DBEAC();

  CalculateExpression.clearAll()();

  swift_getKeyPath();
  *&v292 = v75;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v75 + 41) == 1)
  {
    v77 = swift_getKeyPath();
    __chkstk_darwin(v77);
    *&v292 = v75;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10005FA64(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 72) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1000AC2B0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 72) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1000AC2B0((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = a1;
  *(v2 + 72) = v4;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_10005FC0C(unsigned __int8 a1)
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  v4 = *(v1 + 72);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (*(v7 + v6) != a1)
    {
      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_1000A8754(v6);
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_10005FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v10;
  *(v5 + 64) = v9;

  return _swift_task_switch(sub_10005FEB4, v10, v9);
}

uint64_t sub_10005FEB4()
{
  v1 = *(v0 + 40);
  v2 = static Duration.zero.getter();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_10005FF98;
  v6 = *(v0 + 40);

  return sub_100060F34(70000000000000000, 0, v2, v4, 0);
}

uint64_t sub_10005FF98()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_1000601B4;
  }

  else
  {
    v10 = sub_100060130;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100060130()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);

  sub_10005FC0C(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000601B4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100060220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100008E68(a3, v24 - v10, &qword_100154BB0, &qword_10010FAE0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000035CC(v11, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000035CC(a3, &qword_100154BB0, &qword_10010FAE0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000035CC(a3, &qword_100154BB0, &qword_10010FAE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_1000604CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_1000546A4();
  if (v9 != 94)
  {
    v10 = v9;
    sub_10005FA64(v9);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = v3;
    *(v13 + 40) = v10;
    sub_100060220(0, 0, v8, &unk_10010CED8, v13);
  }

  type metadata accessor for CalculateExpression.Operation();
  static CalculateExpression.Operation.equals.getter();
  v14 = static CalculateExpression.Operation.== infix(_:_:)();

  if (v14)
  {
    sub_100058F8C(9, 0, a2);
    return;
  }

  v15 = *(v3 + 16);
  swift_getKeyPath();
  v29 = v15;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + 24);

  v17 = CalculateExpression.format.getter();

  if (v17 != 2)
  {
    v18 = [objc_opt_self() defaultCenter];
    if (qword_1001544C0 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:qword_100160AE8 object:0];

    swift_getKeyPath();
    v29 = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v15 + 41) == 1)
    {
      swift_getKeyPath();
      v29 = v15;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v15 + 41) == 1)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v28 - 2) = v15;
        *(&v28 - 8) = 0;
        v29 = v15;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    if (a2)
    {

      sub_1000D62AC(v20);
    }

    static CalculateExpression.Operation.delete.getter();
    v21 = static CalculateExpression.Operation.== infix(_:_:)();

    if (v21)
    {
      sub_10001B0D8();

      CalculateExpression.rich.getter();
      v22 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

      if (v22)
      {
      }

      else
      {
        CalculateExpression.rich.getter();
        v23 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      sub_100080254(48);
      if (qword_1001546F8 != -1)
      {
        swift_once();
      }

      v24 = qword_100160D68;
      v25 = String._bridgeToObjectiveC()();

      v26 = String._bridgeToObjectiveC()();
      [v24 setObject:v25 forKey:v26];

      v27 = String._bridgeToObjectiveC()();
      [v24 setObject:0 forKey:v27];
    }
  }
}

void *sub_100060A20()
{
  v1 = v0;
  v7 = &_swiftEmptySetSingleton;
  v2 = *(v0 + 16);
  sub_10001B0D8();

  v3 = CalculateExpression.activeOperation.getter();

  if (v3)
  {
    v4 = sub_1000546A4();

    if (v4 != 94)
    {
      sub_10004FA18(&v6, v4);
    }
  }

  swift_getKeyPath();
  v6 = v2;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 48))
  {
    sub_10004FA18(&v6, 27);
  }

  swift_getKeyPath();
  v6 = v1;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 52) == 1)
  {
    sub_10004FA18(&v6, 28);
  }

  return v7;
}

Class sub_100060BCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100060CB8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100060D94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_100060E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_100060F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100061034, 0, 0);
}

uint64_t sub_100061034()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100006530(&qword_1001551F8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100006530(&qword_100155200, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000611C4;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000611C4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100061380, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100061380()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1000613EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorViewModel();
  v31[3] = v4;
  v31[4] = &off_10014A310;
  v31[0] = a1;
  sub_100062B18(v31, v29);
  v5 = v30;
  v6 = sub_100062B7C(v29, v30);
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v27 = v4;
  v28 = &off_10014A310;
  v26[0] = v11;
  sub_100017F20(v26, v4);

  v12 = sub_10005BE30();
  sub_100017F20(v26, v27);
  LOBYTE(v9) = sub_10005BED0();
  sub_100017F20(v26, v27);
  v13 = sub_10005BF70();
  sub_100003F80(v26);
  sub_100003F80(v29);
  if (v9)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 26) = v13;
  *(a2 + 24) = v14 & 0xFF00 | v12;
  if (qword_1001546F0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000048C8(v15, qword_100160D50);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_10;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v29[0] = v19;
  *v18 = 136315138;
  v20 = *(a2 + 24) | (*(a2 + 26) << 16);

  if ((v20 & 0xFF00) != 0x200)
  {
    v22 = sub_1000F4214(v20 & 0x101FF);
    v24 = sub_100006E5C(v22, v23, v29);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "updated snapshot to: %s", v18, 0xCu);
    sub_100003F80(v19);

LABEL_10:

    return sub_100003F80(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000616E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v6 = type metadata accessor for CalculatorViewModel();
  v33 = v6;
  v34 = &off_10014A310;
  v32[0] = a2;

  if (sub_100071234())
  {
    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000048C8(v7, qword_100160D50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Currently running in debug.  No events will be posted.", v10, 2u);
    }
  }

  else if ((*(a3 + 27) & 1) != 0 && (v11 = *(a3 + 24), v12 = v11 | (*(a3 + 26) << 16), (v11 & 0xFF00) != 0x200))
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = (v14 + 16);
    v16 = *(a3 + 16);

    v18 = sub_100055B48(v17, v12, a1);

    if (v18)
    {
      *v15 = v18;
    }

    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000048C8(v19, qword_100160D50);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_100006E5C(0xD000000000000020, 0x8000000100105EA0, aBlock);
      *(v22 + 12) = 2080;
      swift_beginAccess();
      if (*v15)
      {
        sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);

        v23 = Dictionary.description.getter();
        v25 = v24;
      }

      else
      {

        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_100006E5C(v23, v25, aBlock);

      *(v22 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Posting event (%s) to CoreAnalytics with payload: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v27 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100062B10;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060BCC;
    aBlock[3] = &unk_10014A418;
    v28 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v28);

    sub_100070EB8();
    v29 = sub_100017F20(v32, v33);
    sub_1000613EC(*v29, a3);
  }

  else
  {
    v13 = sub_100017F20(v32, v6);
    sub_1000613EC(*v13, a3);
  }

  sub_100062ABC(&v35);
  return sub_100003F80(v32);
}

uint64_t sub_100061B94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v6 = type metadata accessor for CalculatorViewModel();
  v31 = v6;
  v32 = &off_10014A310;
  v30[0] = a2;

  if (sub_100071234())
  {
    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000048C8(v7, qword_100160D50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Currently running in debug.  No events will be posted.", v10, 2u);
    }
  }

  else if ((*(a3 + 27) & 1) != 0 && *(a3 + 25) << 8 != 512)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 16);
    v14 = *(a3 + 16);

    v16 = sub_100055E20(v15, a1);

    if (v16)
    {
      *v13 = v16;
    }

    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000048C8(v17, qword_100160D50);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100006E5C(0xD00000000000001DLL, 0x8000000100106050, aBlock);
      *(v20 + 12) = 2080;
      swift_beginAccess();
      if (*v13)
      {
        sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);

        v21 = Dictionary.description.getter();
        v23 = v22;
      }

      else
      {

        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v24 = sub_100006E5C(v21, v23, aBlock);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Posting event (%s) to CoreAnalytics with payload: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v25 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100063510;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060BCC;
    aBlock[3] = &unk_10014A548;
    v26 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v26);

    sub_100070EB8();
    v27 = sub_100017F20(v30, v31);
    sub_1000613EC(*v27, a3);
  }

  else
  {
    v11 = sub_100017F20(v30, v6);
    sub_1000613EC(*v11, a3);
  }

  sub_1000633A4(&v33);
  return sub_100003F80(v30);
}

uint64_t sub_100062034(unint64_t a1, uint64_t a2)
{
  v26 = a1;

  if (sub_100071234())
  {
    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000048C8(v4, qword_100160D50);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Currently running in debug.  No events will be posted.", v7, 2u);
    }
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = (v8 + 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24) | (*(a2 + 26) << 16);

    v13 = sub_100055B48(v12, v11, a1);

    if (v13)
    {
      *v9 = v13;
    }

    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000048C8(v14, qword_100160D50);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_100006E5C(0xD000000000000020, 0x8000000100105EA0, aBlock);
      *(v17 + 12) = 2080;
      swift_beginAccess();
      if (*v9)
      {
        sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);

        v18 = Dictionary.description.getter();
        v20 = v19;
      }

      else
      {

        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_100006E5C(v18, v20, aBlock);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Posting event (%s) to CoreAnalytics with payload: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v22 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100062B10;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060BCC;
    aBlock[3] = &unk_10014A440;
    v23 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v23);
  }

  return sub_100062ABC(&v26);
}

void sub_10006245C()
{
  if (qword_1001546F8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v0 = qword_100160D68;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 objectForKey:v1];

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17[0] = v15;
    v17[1] = v16;
    if (*(&v16 + 1))
    {
      break;
    }

    sub_1000035CC(v17, &qword_1001551B8, &qword_10010E3E0);
LABEL_9:
    if (qword_1001546A0 != -1)
    {
      swift_once();
    }

    v3 = qword_100160D00;
    swift_getKeyPath();
    *&v17[0] = v3;
    sub_100006530(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = [*(v3 + 16) categories];
    sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (!v6)
      {
LABEL_31:

        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 unitType] == 16)
      {

        CalculateUnitCategory.id.getter();

        goto LABEL_23;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  if (qword_1001546A0 != -1)
  {
    swift_once();
  }

  v11 = qword_100160D00;
  swift_getKeyPath();
  *&v17[0] = v11;
  sub_100006530(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 16);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 findCategoryWithName:v13];

  if (v14)
  {

    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_100062844()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000035CC(v7, &qword_1001551B8, &qword_10010E3E0);
    return 0;
  }
}

uint64_t sub_100062970()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000035CC(v7, &qword_1001551B8, &qword_10010E3E0);
    return 0;
  }
}

uint64_t sub_100062B18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100062B7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_100062BCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

void sub_100062CB8(unint64_t a1)
{

  if (sub_100071234())
  {
    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000048C8(v2, qword_100160D50);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Currently running in debug.  No events will be posted.", v4, 2u);
    }
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = (v5 + 16);
    v7 = a1;
    if (!a1)
    {
      v7 = sub_100076F10(&_swiftEmptyArrayStorage);
    }

    *v6 = v7;
    v8 = qword_1001546F0;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000048C8(v9, qword_100160D50);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_100006E5C(0xD00000000000001CLL, 0x8000000100106030, aBlock);
      *(v12 + 12) = 2080;
      swift_beginAccess();
      if (*v6)
      {
        sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);

        v13 = Dictionary.description.getter();
        v15 = v14;
      }

      else
      {

        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v16 = sub_100006E5C(v13, v15, aBlock);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Posting event (%s) to CoreAnalytics with payload: %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v17 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100063510;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060BCC;
    aBlock[3] = &unk_10014A490;
    v18 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v18);
  }
}

uint64_t sub_1000630E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030CEC;

  return sub_10005FDBC(a1, v4, v5, v6, v7);
}

unint64_t sub_1000631C4()
{
  result = qword_100155220;
  if (!qword_100155220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155220);
  }

  return result;
}

__n128 sub_1000632C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000632E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_100063330(uint64_t result, int a2, int a3)
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
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100063408()
{
  result = qword_100155270;
  if (!qword_100155270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155270);
  }

  return result;
}

unint64_t sub_10006345C()
{
  result = qword_100155298;
  if (!qword_100155298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155298);
  }

  return result;
}

uint64_t type metadata accessor for InputAccessoryView()
{
  result = qword_100155300;
  if (!qword_100155300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000635E0()
{
  sub_100002B70();
  if (v0 <= 0x3F)
  {
    sub_1000047DC(319, &qword_100155318);
    if (v1 <= 0x3F)
    {
      sub_1000047DC(319, &unk_100155320);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000636E4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for PopoverAttachmentAnchor();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  __chkstk_darwin(v2);
  v44 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for PlainButtonStyle();
  v42 = *(v49 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v49);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InputAccessoryView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v38 = v12;
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10003AE84(&qword_100154760, &unk_10010B5B0);
  v41 = *(v39 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v39);
  v16 = &v36 - v15;
  v43 = sub_10003AE84(&qword_100154758, &qword_10010B5A8);
  v45 = *(v43 - 8);
  v17 = *(v45 + 64);
  __chkstk_darwin(v43);
  v40 = &v36 - v18;
  v37 = v1;
  sub_100064E6C(v1, v13);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_100064ED0(v13, v20 + v19);
  v50 = v1;
  sub_10003AE84(&qword_100155378, &qword_10010D228);
  sub_100064F9C();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v36 = sub_100004880(&qword_100154768, &qword_100154760, &unk_10010B5B0);
  v21 = sub_10006535C(&qword_100154770, &type metadata accessor for PlainButtonStyle);
  v22 = v39;
  v23 = v49;
  View.buttonStyle<A>(_:)();
  (*(v42 + 8))(v7, v23);
  (*(v41 + 8))(v16, v22);
  v24 = v37;
  v25 = v37 + *(v9 + 32);
  v26 = *v25;
  v27 = *(v25 + 8);
  v55 = v26;
  v56 = v27;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  sub_100064E6C(v24, v13);
  v28 = swift_allocObject();
  sub_100064ED0(v13, v28 + v19);
  v29 = static Anchor.Source<A>.bounds.getter();
  v30 = v44;
  *v44 = v29;
  v32 = v46;
  v31 = v47;
  (*(v46 + 104))(v30, enum case for PopoverAttachmentAnchor.rect(_:), v47);
  type metadata accessor for UnitConversionPopoverView();
  v51 = v22;
  v52 = v49;
  v53 = v36;
  v54 = v21;
  swift_getOpaqueTypeConformance2();
  sub_10006535C(&qword_100154778, type metadata accessor for UnitConversionPopoverView);
  v33 = v43;
  v34 = v40;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v32 + 8))(v30, v31);
  return (*(v45 + 8))(v34, v33);
}

uint64_t sub_100063CFC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for InputAccessoryView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_100063D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = sub_10003AE84(&qword_100155410, &qword_10010D270);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v113 - v5;
  v7 = sub_10003AE84(&qword_100155418, &qword_10010D278);
  v8 = *(v7 - 8);
  v117 = v7 - 8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v113 - v10;
  v12 = sub_10003AE84(&qword_100155420, &qword_10010D280);
  v13 = *(v12 - 8);
  v116 = v12 - 8;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v113 - v15;
  v17 = sub_10003AE84(&qword_100155428, &qword_10010D288);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v113 - v20;
  v22 = sub_10003AE84(&qword_100155430, &qword_10010D290);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v115 = &v113 - v25;
  v26 = sub_10003AE84(&qword_100155438, &qword_10010D298);
  v27 = *(v26 - 8);
  v121 = v26 - 8;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26 - 8);
  v118 = &v113 - v29;
  v120 = sub_10003AE84(&qword_1001553C0, &qword_10010D248);
  v30 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v32 = &v113 - v31;
  v123 = sub_10003AE84(&qword_1001553A8, &qword_10010D240);
  v33 = *(*(v123 - 8) + 64);
  v34 = __chkstk_darwin(v123);
  v119 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v122 = &v113 - v37;
  __chkstk_darwin(v36);
  v125 = &v113 - v38;
  v39 = sub_10003AE84(&qword_100155440, &qword_10010D2A0);
  v40 = *(v39 - 8);
  v129 = v39;
  v130 = v40;
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v124 = &v113 - v42;
  v43 = sub_10003AE84(&qword_1001553A0, &qword_10010D238);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v126 = &v113 - v45;
  v46 = sub_10003AE84(&qword_100155390, &qword_10010D230);
  v47 = *(v46 - 8);
  v128 = v46 - 8;
  v48 = *(v47 + 64);
  __chkstk_darwin(v46 - 8);
  v127 = &v113 - v49;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4000000000000000;
  v6[16] = 0;
  v50 = sub_10003AE84(&qword_100155448, &qword_10010D2A8);
  sub_100064734(a1, &v6[*(v50 + 44)]);
  v51 = type metadata accessor for InputAccessoryView();
  v52 = a1 + v51[6];
  v53 = *v52;
  v54 = *(v52 + 8);
  LOBYTE(v133) = v53;
  v134 = v54;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.getter();
  if (v132)
  {
    v55 = 0.5;
  }

  else
  {
    v55 = 1.0;
  }

  v56 = v11;
  sub_10000D5B8(v6, v11, &qword_100155410, &qword_10010D270);
  *&v11[*(v117 + 44)] = v55;
  v57 = *(a1 + v51[9]);
  KeyPath = swift_getKeyPath();
  sub_10000D5B8(v56, v16, &qword_100155418, &qword_10010D278);
  v59 = &v16[*(v116 + 44)];
  *v59 = KeyPath;
  v59[1] = v57;
  v60 = swift_getKeyPath();
  sub_10000D5B8(v16, v21, &qword_100155420, &qword_10010D280);
  v61 = &v21[*(v18 + 44)];
  *v61 = v60;
  v61[1] = 0x3FE0000000000000;
  v62 = swift_getKeyPath();
  v63 = v115;
  sub_10000D5B8(v21, v115, &qword_100155428, &qword_10010D288);
  v64 = v63 + *(v23 + 44);
  *v64 = v62;
  *(v64 + 8) = 2;
  v65 = v51[7];
  v114 = a1;
  v66 = (a1 + v65);
  v68 = *v66;
  v67 = v66[1];
  v133 = v68;
  v134 = v67;

  sub_10003AE84(&qword_100155450, &qword_10010D340);
  State.wrappedValue.getter();
  v69 = v132;
  v70 = swift_getKeyPath();
  v133 = v69;
  v71 = AnyShapeStyle.init<A>(_:)();
  v72 = v118;
  sub_10000D5B8(v63, v118, &qword_100155430, &qword_10010D290);
  v73 = (v72 + *(v121 + 44));
  *v73 = v70;
  v73[1] = v71;
  v74 = (a1 + v51[8]);
  v76 = *v74;
  v75 = v74[1];
  v77 = v32;
  sub_10000D5B8(v72, v32, &qword_100155438, &qword_10010D298);
  v78 = &v32[*(v120 + 52)];
  *v78 = v76;
  *(v78 + 1) = v75;
  v79 = (a1 + v51[11]);
  v80 = *v79;
  v81 = v79[1];
  sub_100004880(&qword_1001553B8, &qword_1001553C0, &qword_10010D248);

  v82 = v119;
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v77, &qword_1001553C0, &qword_10010D248);
  v83 = v114;
  v84 = v114 + v51[12];
  v85 = *v84;
  v86 = *(v84 + 8);
  v87 = *(v84 + 16);
  v88 = *(v84 + 24);

  v89 = Text.init(_:tableName:bundle:comment:)();
  v91 = v90;
  LOBYTE(v88) = v92;
  v94 = v122;
  v93 = v123;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000C6AC(v89, v91, v88 & 1);

  sub_1000035CC(v82, &qword_1001553A8, &qword_10010D240);
  v95 = (v83 + v51[13]);
  v97 = *v95;
  v96 = v95[1];
  v133 = v97;
  v134 = v96;
  sub_10006345C();
  v98 = v125;
  ModifiedContent<>.accessibilityValue<A>(_:)();
  sub_1000035CC(v94, &qword_1001553A8, &qword_10010D240);
  v99 = (v83 + v51[14]);
  v100 = *v99;
  v101 = v99[1];
  v102 = *(v99 + 16);
  v103 = v99[3];
  v104 = sub_100065204();
  v105 = v124;
  View.help(_:)();
  sub_1000035CC(v98, &qword_1001553A8, &qword_10010D240);
  LocalizedStringKey.init(stringLiteral:)();
  v133 = v93;
  v134 = v104;
  swift_getOpaqueTypeConformance2();
  v106 = v126;
  v107 = v129;
  View.accessibilityHint(_:)();

  (*(v130 + 8))(v105, v107);
  v108 = static Color.clear.getter();
  LOBYTE(v101) = static Edge.Set.all.getter();
  v109 = v127;
  sub_10000D5B8(v106, v127, &qword_1001553A0, &qword_10010D238);
  v110 = v109 + *(v128 + 44);
  *v110 = v108;
  *(v110 + 8) = v101;
  v111 = v131;
  sub_10000D5B8(v109, v131, &qword_100155390, &qword_10010D230);
  result = sub_10003AE84(&qword_100155378, &qword_10010D228);
  *(v111 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100064734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_10003AE84(&qword_100155458, &qword_10010D378);
  v4 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v6 = &v37[-v5];
  v7 = sub_10003AE84(&qword_100155460, &qword_10010D380);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v41 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v40 = &v37[-v11];
  v12 = (a1 + *(type metadata accessor for InputAccessoryView() + 32));
  v13 = v12[1];
  v42 = *v12;
  v43 = v13;
  sub_10006345C();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  if (qword_1001545D0 != -1)
  {
    swift_once();
  }

  v19 = qword_100160BF8;
  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  v38 = v23;
  v25 = v24;
  sub_10000C6AC(v14, v16, v18 & 1);

  if (qword_100154408 != -1)
  {
    swift_once();
  }

  v26 = qword_100160940;
  v27 = (v6 + *(sub_10003AE84(&qword_100155468, &qword_10010D388) + 36));
  v28 = *(sub_10003AE84(&qword_100155470, &qword_10010D390) + 28);
  v29 = enum case for Image.Scale.small(_:);
  v30 = type metadata accessor for Image.Scale();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  *v6 = v26;
  KeyPath = swift_getKeyPath();
  v32 = (v6 + *(v39 + 36));
  *v32 = KeyPath;
  v32[1] = v19;
  sub_10006546C();

  v33 = v40;
  View.accessibilityHidden(_:)();
  sub_1000035CC(v6, &qword_100155458, &qword_10010D378);
  v34 = v41;
  sub_1000655DC(v33, v41);
  *a2 = v20;
  *(a2 + 8) = v22;
  LOBYTE(v29) = v38 & 1;
  *(a2 + 16) = v38 & 1;
  *(a2 + 24) = v25;
  v35 = sub_10003AE84(&qword_1001554A0, &qword_10010D400);
  sub_1000655DC(v34, a2 + *(v35 + 48));
  sub_10006564C(v20, v22, v29);

  sub_1000035CC(v33, &qword_100155460, &qword_10010D380);
  sub_1000035CC(v34, &qword_100155460, &qword_10010D380);
  sub_10000C6AC(v20, v22, v29);
}

uint64_t sub_100064AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InputAccessoryView();
  v5 = (a1 + v4[6]);
  v25 = *v5;
  v26 = *(v5 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  v6 = *(a1 + v4[10]);
  v7 = type metadata accessor for UnitConversionPopoverView();
  sub_10000D594(a2 + v7[9]);
  v8 = a1 + v4[5];
  sub_10000D594(a2 + v7[10]);
  type metadata accessor for CalculatorViewModel();
  sub_10006535C(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v9 & 1;
  type metadata accessor for CalculatorUnitConversionViewModelWrapper(0);
  sub_10006535C(&qword_1001553F8, type metadata accessor for CalculatorUnitConversionViewModelWrapper);
  *(a2 + 16) = Environment.init<A>(_:)();
  *(a2 + 24) = v10 & 1;
  type metadata accessor for CalculatorLayout(0);
  sub_10006535C(&qword_100154958, type metadata accessor for CalculatorLayout);
  *(a2 + 32) = Environment.init<A>(_:)();
  *(a2 + 40) = v11 & 1;
  *(a2 + 48) = v23;
  *(a2 + 64) = v24;
  *(a2 + 65) = v6;
  v12 = a2 + v7[11];
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  State.init(wrappedValue:)();
  *v12 = v23;
  *(v12 + 16) = v24;
  v13 = a2 + v7[12];
  State.init(wrappedValue:)();
  *v13 = v23;
  *(v13 + 16) = v24;
  v14 = v7[13];
  sub_10001BB68();
  FocusState.init<A>()();
  v15 = a2 + v7[14];
  State.init(wrappedValue:)();
  *v15 = v23;
  *(v15 + 16) = v24;
  v16 = v7[15];
  sub_1000103CC();
  ScaledMetric.init(wrappedValue:)();
  v17 = v7[16];
  ScaledMetric.init(wrappedValue:)();
  v18 = v7[17];
  ScaledMetric.init(wrappedValue:)();
  v19 = v7[18];
  ScaledMetric.init(wrappedValue:)();
  v20 = v7[19];
  ScaledMetric.init(wrappedValue:)();
  v21 = v7[20];
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_100064E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputAccessoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputAccessoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064F34()
{
  v1 = *(type metadata accessor for InputAccessoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100063CFC(v2);
}

unint64_t sub_100064F9C()
{
  result = qword_100155380;
  if (!qword_100155380)
  {
    sub_10003AECC(&qword_100155378, &qword_10010D228);
    sub_100065054();
    sub_100004880(&qword_1001553E0, &qword_1001553E8, &qword_10010FA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155380);
  }

  return result;
}

unint64_t sub_100065054()
{
  result = qword_100155388;
  if (!qword_100155388)
  {
    sub_10003AECC(&qword_100155390, &qword_10010D230);
    sub_10006510C();
    sub_100004880(&qword_1001553D0, &qword_1001553D8, &unk_10010D250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155388);
  }

  return result;
}

unint64_t sub_10006510C()
{
  result = qword_100155398;
  if (!qword_100155398)
  {
    sub_10003AECC(&qword_1001553A0, &qword_10010D238);
    sub_10003AECC(&qword_1001553A8, &qword_10010D240);
    sub_100065204();
    swift_getOpaqueTypeConformance2();
    sub_10006535C(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155398);
  }

  return result;
}

unint64_t sub_100065204()
{
  result = qword_1001553B0;
  if (!qword_1001553B0)
  {
    sub_10003AECC(&qword_1001553A8, &qword_10010D240);
    sub_100004880(&qword_1001553B8, &qword_1001553C0, &qword_10010D248);
    sub_10006535C(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001553B0);
  }

  return result;
}

uint64_t sub_1000652EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InputAccessoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100064AE8(v4, a1);
}

uint64_t sub_10006535C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000653A4(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_10006546C()
{
  result = qword_100155478;
  if (!qword_100155478)
  {
    sub_10003AECC(&qword_100155458, &qword_10010D378);
    sub_100065524();
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155478);
  }

  return result;
}

unint64_t sub_100065524()
{
  result = qword_100155480;
  if (!qword_100155480)
  {
    sub_10003AECC(&qword_100155468, &qword_10010D388);
    sub_100004880(&qword_100155488, &qword_100155470, &qword_10010D390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155480);
  }

  return result;
}

uint64_t sub_1000655DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100155460, &qword_10010D380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006564C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10006565C()
{
  result = Image.init(_:bundle:)();
  qword_1001608E8 = result;
  return result;
}

uint64_t sub_100065698()
{
  result = Image.init(_:bundle:)();
  qword_1001608F8 = result;
  return result;
}

uint64_t sub_1000656D8()
{
  result = Image.init(_:bundle:)();
  qword_100160908 = result;
  return result;
}

uint64_t sub_100065714()
{
  result = Image.init(_:bundle:)();
  qword_100160918 = result;
  return result;
}

uint64_t sub_100065750()
{
  result = Image.init(systemName:)();
  qword_100160920 = result;
  return result;
}

uint64_t sub_100065780()
{
  result = Image.init(systemName:)();
  qword_100160928 = result;
  return result;
}

uint64_t sub_1000657AC()
{
  result = Image.init(systemName:)();
  qword_100160930 = result;
  return result;
}

uint64_t sub_1000657E4()
{
  result = Image.init(systemName:)();
  qword_100160938 = result;
  return result;
}

uint64_t sub_100065820()
{
  result = Image.init(systemName:)();
  qword_100160940 = result;
  return result;
}

uint64_t sub_100065858()
{
  result = Image.init(_internalSystemName:)();
  qword_100160948 = result;
  return result;
}

uint64_t sub_100065898()
{
  result = Image.init(_:bundle:)();
  qword_100160950 = result;
  return result;
}

uint64_t sub_1000658DC()
{
  result = Image.init(systemName:)();
  qword_100160958 = result;
  return result;
}

uint64_t sub_10006590C()
{
  result = Image.init(systemName:)();
  qword_100160960 = result;
  return result;
}

uint64_t sub_100065944()
{
  result = Image.init(_internalSystemName:)();
  qword_100160968 = result;
  return result;
}

Swift::Int sub_10006597C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000659F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100065A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100067668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100065A74(uint64_t a1)
{
  v2 = sub_100017ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100065AB0(uint64_t a1)
{
  v2 = sub_100017ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100065AF0()
{
  v0 = type metadata accessor for CalculatorButtonSizeCacheManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100065B30();
  qword_100160980 = result;
  return result;
}

uint64_t sub_100065B30()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100155678, &qword_10010D658);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003AE84(&qword_100155680, &qword_10010D660);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = sub_10003AE84(&qword_100155688, &qword_10010D668);
  v16 = *(v15 - 8);
  v39 = v15;
  v40 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v34 = &v33 - v18;
  *(v0 + 16) = 0xD00000000000001DLL;
  *(v0 + 24) = 0x8000000100106210;
  v19 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
  v20 = type metadata accessor for CalculatorButtonSizeCache(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cacheSubject;
  v22 = sub_10003AE84(&qword_100155690, &qword_10010D670);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v1 + v21) = PassthroughSubject.init()();
  v33 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cancellable;
  *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cancellable) = 0;
  sub_100066074();
  v42 = *(v1 + v21);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_10000A84C();
  v25 = static OS_dispatch_queue.main.getter();
  v41 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  sub_100004880(&qword_100155698, &qword_100155690, &qword_10010D670);
  sub_100067550(&qword_1001556A0, sub_10000A84C);
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000035CC(v5, &qword_100155678, &qword_10010D658);

  (*(v35 + 8))(v9, v36);

  sub_100004880(&qword_1001556A8, &qword_100155680, &qword_10010D660);
  sub_100067550(&qword_1001556B0, type metadata accessor for CalculatorButtonSizeCache);
  v27 = v34;
  v28 = v37;
  Publisher<>.removeDuplicates()();
  (*(v38 + 8))(v14, v28);
  sub_100004880(&qword_1001556B8, &qword_100155688, &qword_10010D668);

  v29 = v39;
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v40 + 8))(v27, v29);
  v31 = *(v1 + v33);
  *(v1 + v33) = v30;

  return v1;
}

void sub_100066074()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  __chkstk_darwin(v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100155658, &qword_10010D538);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for CalculatorButtonSizeCache(0);
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  v14 = __chkstk_darwin(v12);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v77 = &v72 - v17;
  v18 = __chkstk_darwin(v16);
  v76 = &v72 - v19;
  v20 = __chkstk_darwin(v18);
  v75 = (&v72 - v21);
  __chkstk_darwin(v20);
  v82 = &v72 - v22;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v72 - v29;
  v31 = [objc_opt_self() defaultManager];
  v32 = [v31 URLsForDirectory:13 inDomains:1];

  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v33 + 16))
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v79 = v5;
  (*(v24 + 16))(v28, v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23);

  v34 = *(v1 + 16);
  v35 = *(v1 + 24);
  URL.appendingPathComponent(_:)();
  v36 = *(v24 + 8);
  v36(v28, v23);
  v37 = Data.init(contentsOf:options:)();
  v38 = v1;
  v39 = v37;
  v41 = v40;
  v73 = v38;
  v36(v30, v23);
  v42 = type metadata accessor for JSONDecoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100067550(&qword_1001556E0, type metadata accessor for CalculatorButtonSizeCache);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v45 = v41;
  v46 = v39;

  v47 = *(v83 + 56);
  v47(v11, 0, 1, v12);
  v48 = v82;
  sub_100018114(v11, v82);
  v49 = v79;
  Date.init()();
  v50 = *(v12 + 24);
  Date.timeIntervalSince(_:)();
  v52 = v51;
  (*(v80 + 8))(v49, v81);
  if (v52 < 2592000.0)
  {
    v53 = v74;
    sub_100018208(v48, v74);
    v47(v53, 0, 1, v12);
    v54 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
    v55 = v73;
    swift_beginAccess();
    sub_10006780C(v53, v55 + v54);
    swift_endAccess();
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000048C8(v56, qword_100160D38);
    v57 = v75;
    sub_100018208(v48, v75);
    v58 = v76;
    sub_100018208(v48, v76);
    v59 = v77;
    sub_100018208(v48, v77);
    v60 = v78;
    sub_100018208(v48, v78);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134218752;
      v64 = *v57;
      sub_10001826C(v57);
      *(v63 + 4) = v64;
      *(v63 + 12) = 2048;
      v65 = *(v58 + 8);
      sub_10001826C(v58);
      *(v63 + 14) = v65;
      *(v63 + 22) = 2048;
      v66 = *(v59 + 16);
      sub_10001826C(v59);
      *(v63 + 24) = v66;
      *(v63 + 32) = 2048;
      v67 = *(v60 + 24);
      sub_10001826C(v60);
      *(v63 + 34) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "Successfully loaded cached button sizes - basic: %fx%f, scientific: %fx%f", v63, 0x2Au);

      sub_1000182C8(v46, v45);
    }

    else
    {
      sub_1000182C8(v46, v45);

      sub_10001826C(v60);
      sub_10001826C(v59);
      sub_10001826C(v58);
      sub_10001826C(v57);
    }

    sub_10001826C(v48);
    return;
  }

  sub_10001826C(v48);
  sub_1000182C8(v39, v41);
  if (qword_1001546E8 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v68 = type metadata accessor for Logger();
  sub_1000048C8(v68, qword_100160D38);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "No valid cache found for button sizes", v71, 2u);
  }
}

uint64_t sub_100066888(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v25 = a1;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CalculatorButtonSizeCache(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A84C();
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.background(_:), v12);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v12);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_100018208(v25, v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  sub_100018114(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  aBlock[4] = sub_1000677A0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067348;
  aBlock[3] = &unk_10014A6B8;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100067550(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0);
  v22 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v29 + 8))(v4, v22);
  (*(v27 + 8))(v8, v28);
}

uint64_t sub_100066CF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CalculatorButtonSizeCache(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v47 - v9;
  v11 = __chkstk_darwin(v8);
  v51 = &v47 - v12;
  __chkstk_darwin(v11);
  v14 = (&v47 - v13);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v50 = v10;
    v25 = type metadata accessor for JSONEncoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_100067550(&qword_1001556D8, type metadata accessor for CalculatorButtonSizeCache);
    v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v49 = v28;
    v47 = v7;

    v29 = [objc_opt_self() defaultManager];
    v30 = [v29 URLsForDirectory:13 inDomains:1];

    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v31 + 16))
    {
      (*(v16 + 16))(v20, v31 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

      v32 = *(v24 + 16);
      v33 = *(v24 + 24);
      URL.appendingPathComponent(_:)();
      v34 = *(v16 + 8);
      v34(v20, v15);
      Data.write(to:options:)();
      v30 = v47;
      v34(v22, v15);
      if (qword_1001546E8 == -1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_6:
    v35 = type metadata accessor for Logger();
    sub_1000048C8(v35, qword_100160D38);
    v36 = a2;
    sub_100018208(a2, v14);
    v37 = a2;
    v38 = v51;
    sub_100018208(v37, v51);
    v39 = v50;
    sub_100018208(v36, v50);
    sub_100018208(v36, v30);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134218752;
      v43 = *v14;
      sub_10001826C(v14);
      *(v42 + 4) = v43;
      *(v42 + 12) = 2048;
      v44 = *(v38 + 8);
      sub_10001826C(v38);
      *(v42 + 14) = v44;
      *(v42 + 22) = 2048;
      v45 = *(v39 + 16);
      sub_10001826C(v39);
      *(v42 + 24) = v45;
      *(v42 + 32) = 2048;
      v46 = v30[3];
      sub_10001826C(v30);
      *(v42 + 34) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Successfully cached button sizes - basic: %fx%f, scientific: %fx%f", v42, 0x2Au);

      sub_1000182C8(v48, v49);
    }

    else
    {
      sub_1000182C8(v48, v49);

      sub_10001826C(v30);
      sub_10001826C(v39);
      sub_10001826C(v38);
      return sub_10001826C(v14);
    }
  }

  return result;
}

uint64_t sub_100067348(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10006738C()
{
  v1 = v0[3];

  sub_1000035CC(v0 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache, &qword_100155658, &qword_10010D538);
  v2 = *(v0 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cacheSubject);

  v3 = *(v0 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cancellable);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100067430()
{
  sub_1000674E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000674E4()
{
  if (!qword_1001554F8)
  {
    type metadata accessor for CalculatorButtonSizeCache(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001554F8);
    }
  }
}

uint64_t sub_100067550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100067598(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v8 = *(type metadata accessor for CalculatorButtonSizeCache(0) + 24);

  return static Date.== infix(_:_:)(a1 + v8, a2 + v8);
}

unint64_t sub_100067614()
{
  result = qword_100155660;
  if (!qword_100155660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155660);
  }

  return result;
}

uint64_t sub_100067668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475426369736162 && a2 == 0xEF657A69536E6F74;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001061F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000677A0()
{
  v1 = *(type metadata accessor for CalculatorButtonSizeCache(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100066CF0(v2, v3);
}

uint64_t sub_10006780C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100155658, &qword_10010D538);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006787C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000F210(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_10006794C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v137 = a1;
  v125 = a4;
  v6 = sub_10003AE84(&qword_100155720, &qword_10010D9A8);
  v126 = *(v6 - 8);
  v127 = v6;
  v7 = *(v126 + 64);
  __chkstk_darwin(v6);
  v124 = &v100 - v8;
  v9 = sub_10003AE84(&qword_100155728, &qword_10010D9B0);
  v122 = *(v9 - 8);
  v123 = v9;
  v10 = *(v122 + 64);
  __chkstk_darwin(v9);
  v121 = &v100 - v11;
  v118 = sub_10003AE84(&qword_100155730, &qword_10010D9B8);
  v117 = *(v118 - 8);
  v12 = *(v117 + 64);
  __chkstk_darwin(v118);
  v116 = &v100 - v13;
  v113 = sub_10003AE84(&qword_100155738, &qword_10010D9C0);
  v111 = *(v113 - 8);
  v14 = *(v111 + 64);
  __chkstk_darwin(v113);
  v109 = &v100 - v15;
  v108 = sub_10003AE84(&qword_100155740, &qword_10010D9C8);
  v105 = *(v108 - 8);
  v16 = *(v105 + 64);
  __chkstk_darwin(v108);
  v104 = &v100 - v17;
  v18 = type metadata accessor for PPTTestCase.Name();
  v138 = *(v18 - 8);
  v19 = *(v138 + 64);
  __chkstk_darwin(v18);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10003AE84(&qword_100155748, &qword_10010D9D0);
  v23 = *(v22 - 8);
  v135 = v22;
  v136 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v100 - v25;
  v103 = sub_10003AE84(&qword_100155750, &qword_10010D9D8);
  v102 = *(v103 - 8);
  v27 = *(v102 + 64);
  __chkstk_darwin(v103);
  v128 = &v100 - v28;
  v107 = sub_10003AE84(&qword_100155758, &qword_10010D9E0);
  v106 = *(v107 - 8);
  v29 = *(v106 + 64);
  __chkstk_darwin(v107);
  v129 = &v100 - v30;
  v112 = sub_10003AE84(&qword_100155760, &qword_10010D9E8);
  v110 = *(v112 - 8);
  v31 = *(v110 + 64);
  __chkstk_darwin(v112);
  v130 = &v100 - v32;
  v115 = sub_10003AE84(&qword_100155768, &qword_10010D9F0);
  v114 = *(v115 - 8);
  v33 = *(v114 + 64);
  __chkstk_darwin(v115);
  v131 = &v100 - v34;
  v120 = sub_10003AE84(&qword_100155770, &qword_10010D9F8);
  v119 = *(v120 - 8);
  v35 = *(v119 + 64);
  __chkstk_darwin(v120);
  v132 = &v100 - v36;
  if (qword_100154470 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v18, qword_1001609E8);
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  v133 = a3;
  LODWORD(v101) = a3 & 1;
  *(v37 + 24) = a3 & 1;

  v38 = sub_10003AE84(&qword_100155778, &unk_10010DA00);
  v39 = a2;
  v40 = sub_100004880(&qword_100155780, &qword_100155778, &unk_10010DA00);
  View.onTest(_:handler:)();
  v139 = PPTTestCase.Name.rawValue.getter();
  v140 = v41;

  v42._countAndFlagsBits = 0x70616373646E614CLL;
  v42._object = 0xE900000000000065;
  String.append(_:)(v42);

  PPTTestCase.Name.init(_:)();
  v139 = v38;
  v140 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v135;
  View.onTest(_:handler:)();

  v137 = *(v138 + 8);
  v138 += 8;
  v137(v21, v18);
  (*(v136 + 8))(v26, v44);
  if (qword_100154478 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v18, qword_100160A00);
  v45 = swift_allocObject();
  v136 = v18;
  *(v45 + 16) = v39;
  *(v45 + 24) = v101;

  v139 = v44;
  v140 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v135 = v39;
  v47 = v104;
  v48 = v103;
  v49 = v128;
  View.onTest(_:handler:)();
  v139 = PPTTestCase.Name.rawValue.getter();
  v140 = v50;

  v51._countAndFlagsBits = 0x70616373646E614CLL;
  v51._object = 0xE900000000000065;
  String.append(_:)(v51);

  PPTTestCase.Name.init(_:)();
  v139 = v48;
  v140 = v46;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v108;
  v101 = v52;
  View.onTest(_:handler:)();

  v54 = v136;
  v137(v21, v136);
  (*(v105 + 8))(v47, v53);
  (*(v102 + 8))(v49, v48);
  v134 = v21;
  if (qword_100154480 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v54, qword_100160A18);
  v55 = swift_allocObject();
  v56 = v135;
  *(v55 + 16) = v135;
  LODWORD(v128) = v133 & 1;
  *(v55 + 24) = v133 & 1;

  v139 = v53;
  v140 = v101;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v109;
  v59 = v107;
  v60 = v129;
  View.onTest(_:handler:)();
  v139 = PPTTestCase.Name.rawValue.getter();
  v140 = v61;

  v62._countAndFlagsBits = 0x70616373646E614CLL;
  v62._object = 0xE900000000000065;
  String.append(_:)(v62);

  v63 = v134;
  PPTTestCase.Name.init(_:)();
  v139 = v59;
  v140 = v57;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v113;
  View.onTest(_:handler:)();
  v66 = v136;

  v137(v63, v66);
  (*(v111 + 8))(v58, v65);
  (*(v106 + 8))(v60, v59);
  if (qword_100154488 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v66, qword_100160A30);
  v67 = swift_allocObject();
  *(v67 + 16) = v56;
  *(v67 + 24) = v128;

  v139 = v65;
  v140 = v64;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v116;
  v70 = v112;
  v71 = v130;
  View.onTest(_:handler:)();
  v139 = PPTTestCase.Name.rawValue.getter();
  v140 = v72;

  v73._countAndFlagsBits = 0x70616373646E614CLL;
  v73._object = 0xE900000000000065;
  String.append(_:)(v73);

  v74 = v134;
  PPTTestCase.Name.init(_:)();
  v139 = v70;
  v140 = v68;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v118;
  View.onTest(_:handler:)();
  v77 = v136;

  v137(v74, v77);
  (*(v117 + 8))(v69, v76);
  (*(v110 + 8))(v71, v70);
  v78 = v74;
  if (qword_100154490 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v77, qword_100160A48);
  v79 = swift_allocObject();
  *(v79 + 16) = v135;
  v133 &= 1u;
  *(v79 + 24) = v133;

  v139 = v76;
  v140 = v75;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v121;
  v82 = v115;
  v83 = v131;
  View.onTest(_:handler:)();
  v139 = PPTTestCase.Name.rawValue.getter();
  v140 = v84;

  v85._countAndFlagsBits = 0x70616373646E614CLL;
  v85._object = 0xE900000000000065;
  String.append(_:)(v85);

  PPTTestCase.Name.init(_:)();
  v139 = v82;
  v140 = v80;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v123;
  View.onTest(_:handler:)();
  v88 = v78;
  v89 = v136;

  v137(v88, v89);
  (*(v122 + 8))(v81, v87);
  (*(v114 + 8))(v83, v82);
  if (qword_100154498 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v89, qword_100160A60);
  v90 = swift_allocObject();
  *(v90 + 16) = v135;
  *(v90 + 24) = v133;

  v139 = v87;
  v140 = v86;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = v124;
  v93 = v120;
  v94 = v132;
  View.onTest(_:handler:)();
  v139 = PPTTestCase.Name.rawValue.getter();
  v140 = v95;

  v96._countAndFlagsBits = 0x70616373646E614CLL;
  v96._object = 0xE900000000000065;
  String.append(_:)(v96);

  v97 = v134;
  PPTTestCase.Name.init(_:)();
  v139 = v93;
  v140 = v91;
  swift_getOpaqueTypeConformance2();
  v98 = v127;
  View.onTest(_:handler:)();

  v137(v97, v89);
  (*(v126 + 8))(v92, v98);
  return (*(v119 + 8))(v94, v93);
}