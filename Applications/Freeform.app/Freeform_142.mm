uint64_t sub_1010F3F24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_101A21D90);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v36 = a4;
  v37 = (v8 + 8);
  v14 = result + 56;
  v34 = a2;
  v35 = a1;
  v38 = result;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v41 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(*(a4 + 48) + 8 * (v15 | (v13 << 6)));
    Hasher.init(_seed:)();
    v19 = *(v18 + 24);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 32);

    v22 = v39;
    v21(ObjectType, v19);
    sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID);
    v23 = v40;
    dispatch thunk of Hashable.hash(into:)();
    (*v37)(v22, v23);
    result = Hasher._finalize()();
    v10 = v38;
    v24 = -1 << *(v38 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v10 + 48) + 8 * v27) = v18;
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v35;
    a4 = v36;
    a2 = v34;
    v12 = v41;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v41 = (v17 - 1) & v17;
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

uint64_t sub_1010F4288(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_1019F37B8);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_1010F45B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1005B981C(&qword_1019F3488);
  result = static _SetStorage.allocate(capacity:)();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (v9[6] + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t sub_1010F47E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v30 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&unk_1019F3350);
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
  v29 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v31 = *(v30 + 72);
    sub_10005006C(v19 + v31 * (v16 | (v14 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v29;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v29;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_100025738(v10, *(v11 + 48) + v23 * v31, type metadata accessor for CRLBoardIdentifier);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

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
      v13 = (v18 - 1) & v18;
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

uint64_t sub_1010F4B24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1005B981C(&qword_1019F37C8);
  result = static _SetStorage.allocate(capacity:)();
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
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(v9[6] + 8 * v20) = v16;
    ++v9[2];
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

uint64_t sub_1010F4D2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_101A21E68);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
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
LABEL_16:
    sub_10063FD8C(*(a4 + 48) + 48 * (v13 | (v11 << 6)), v28);
    Hasher.init(_seed:)();
    AnyHashable.hash(into:)();
    Hasher._combine(_:)(*(&v29 + 1));
    result = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = (*(v6 + 48) + 48 * v19);
    v25 = v28[0];
    v26 = v29;
    v24[1] = v28[1];
    v24[2] = v26;
    *v24 = v25;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
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

uint64_t sub_1010F4F80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = __chkstk_darwin(v10);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_101A21FD0);
  result = static _SetStorage.allocate(capacity:)();
  v15 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v19 = result + 56;
  v38 = v14;
  v39 = a4;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_16:
    v23 = *(a4 + 48);
    v44 = *(v42 + 72);
    sub_10005006C(v23 + v44 * (v20 | (v18 << 6)), v14, type metadata accessor for CRLSpotlightManager.ChangeType);
    Hasher.init(_seed:)();
    v24 = v14;
    v25 = v41;
    sub_10005006C(v24, v41, type metadata accessor for CRLSpotlightManager.ChangeType);
    v26 = swift_getEnumCaseMultiPayload() == 1;
    v27 = v25;
    v28 = v40;
    sub_100025738(v27, v40, type metadata accessor for CRLBoardIdentifier);
    Hasher._combine(_:)(v26);
    type metadata accessor for UUID();
    sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    sub_10003D87C(v28, type metadata accessor for CRLBoardIdentifier);
    result = Hasher._finalize()();
    v29 = -1 << *(v15 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v14 = v38;
      a4 = v39;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v19 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v14 = v38;
    a4 = v39;
LABEL_26:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_100025738(v14, *(v15 + 48) + v32 * v44, type metadata accessor for CRLSpotlightManager.ChangeType);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v15;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      goto LABEL_28;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v17 = (v22 - 1) & v22;
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

uint64_t sub_1010F53A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_101A21E98);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_101104B20(&unk_101A23C60, &type metadata accessor for IndexPath);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_1010F56E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_1019F3610);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
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
LABEL_16:
    sub_100064110(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
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

uint64_t sub_1010F5918(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1007C7FB8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA3A24();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 16 * v5);
  sub_100BCCC28(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1010F59C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10003E994(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA4CB8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_100BCD86C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = type metadata accessor for UUID();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1010F5BAC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1007C8150(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA53BC();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_100BDBBA8(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_1010F5C40@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1007C8514(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA5694();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_10000BF3C((*(v9 + 56) + 32 * v7), a2);
    sub_100BCE08C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1010F5DC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1000486F0(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for CRLBoardIdentifier(0);
    v20 = v15;
    sub_10003D87C(v18 + *(*(v19 - 8) + 72) * v15, type metadata accessor for CRLBoardIdentifier);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_100025738(v21 + *(v29 + 72) * v20, a6, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1010F5FD4(Swift::UInt *a1)
{
  v2 = v1;
  v3 = sub_1007C89DC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA7184();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_100BCE388(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1010F6070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000BE7C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA88EC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100BCF924(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1010F6108(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1007C8EE4(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100BCFF74(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100AA94AC();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_100E8D950(v4, v7);

  v9 = sub_1007C8EE4(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100BCFF74(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1010F6254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1007C8A78(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA9EFC();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for CRLZoneSyncResultScenarios();
    v18 = *(v11 - 8);
    sub_100025738(v10 + *(v18 + 72) * v7, a2, type metadata accessor for CRLZoneSyncResultScenarios);
    sub_100BD0748(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for CRLZoneSyncResultScenarios();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1010F63BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1007C8A78(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AAA138();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_100BCFF74(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1010F64A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_10003E994(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_100025738(v21 + *(v29 + 72) * v20, a6, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1010F6664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000486F0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AAB390();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CRLBoardIdentifier(0);
    sub_10003D87C(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for CRLBoardIdentifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Date();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_100BD0928(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1010F6800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1007C9460(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AAC1D8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CRLAssetReferrerIdentifier(0);
    sub_10003D87C(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for CRLAssetReferrerIdentifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for CRLBoardIdentifier(0);
    v20 = *(v13 - 8);
    sub_100025738(v12 + *(v20 + 72) * v7, a2, type metadata accessor for CRLBoardIdentifier);
    sub_100BD14F4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for CRLBoardIdentifier(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1010F6998@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10006E4C8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AACC34();
      v9 = v11;
    }

    sub_10000BF3C((*(v9 + 56) + 32 * v7), a2);
    sub_100BD1DC0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

Swift::Int sub_1010F6A38(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s5BoardVMa(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(_s5BoardVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1010F6DF4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1010F6B64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1010F6B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = _s5BoardVMa(0);
  v8 = __chkstk_darwin(v43);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v38 = *a4;
    v32 = v18;
    v22 = v38 + v18 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    v23 = v43;
    while (1)
    {
      sub_10005006C(v22, v17, _s5BoardVMa);
      sub_10005006C(v19, v13, _s5BoardVMa);
      v24 = *(v23 + 24);
      v25 = *&v17[v24 + 8];
      v41 = *&v17[v24];
      v42 = v25;
      v26 = &v13[v24];
      v28 = *v26;
      v27 = *(v26 + 1);
      v39 = v28;
      v40 = v27;
      sub_100017CD8();
      v29 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
      sub_10003D87C(v13, _s5BoardVMa);
      v23 = v43;
      result = sub_10003D87C(v17, _s5BoardVMa);
      if (v29 != -1)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      sub_100025738(v22, v10, _s5BoardVMa);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100025738(v10, v19, _s5BoardVMa);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1010F6DF4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v118 = a1;
  v8 = _s5BoardVMa(0);
  v124 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v119 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v129 = &v115 - v12;
  v13 = __chkstk_darwin(v11);
  v130 = &v115 - v14;
  result = __chkstk_darwin(v13);
  v17 = &v115 - v16;
  v127 = a3;
  v18 = *(a3 + 8);
  if (v18 >= 1)
  {
    v115 = a4;
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    v131 = v8;
    while (1)
    {
      v21 = v19;
      v22 = v19 + 1;
      v125 = v20;
      if (v19 + 1 >= v18)
      {
        ++v19;
      }

      else
      {
        v128 = v18;
        v117 = v5;
        v23 = v8;
        v24 = *(v124 + 72);
        a3 = *v127 + v24 * v22;
        v122 = *v127;
        v25 = v122;
        sub_10005006C(v122 + v24 * v22, v17, _s5BoardVMa);
        v26 = v25 + v24 * v19;
        v27 = v130;
        sub_10005006C(v26, v130, _s5BoardVMa);
        v28 = *(v23 + 24);
        v29 = *&v17[v28 + 8];
        v134 = *&v17[v28];
        v135 = v29;
        v30 = (v27 + v28);
        v32 = *v30;
        v31 = v30[1];
        v132 = v32;
        v133 = v31;
        sub_100017CD8();
        v123 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        sub_10003D87C(v27, _s5BoardVMa);
        result = sub_10003D87C(v17, _s5BoardVMa);
        v116 = v19;
        v33 = v19 + 2;
        v126 = v24;
        v34 = v122 + v24 * (v19 + 2);
        while (1)
        {
          v19 = v128;
          if (v128 == v33)
          {
            break;
          }

          v35 = v123 == -1;
          sub_10005006C(v34, v17, _s5BoardVMa);
          v36 = v130;
          sub_10005006C(a3, v130, _s5BoardVMa);
          v37 = *(v131 + 24);
          v38 = *&v17[v37 + 8];
          v134 = *&v17[v37];
          v135 = v38;
          v39 = (v36 + v37);
          v41 = *v39;
          v40 = v39[1];
          v132 = v41;
          v133 = v40;
          v42 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
          sub_10003D87C(v36, _s5BoardVMa);
          result = sub_10003D87C(v17, _s5BoardVMa);
          v43 = v35 ^ (v42 != -1);
          v20 = v125;
          ++v33;
          v34 += v126;
          a3 += v126;
          if ((v43 & 1) == 0)
          {
            v19 = v33 - 1;
            break;
          }
        }

        v21 = v116;
        v5 = v117;
        v8 = v131;
        if (v123 == -1)
        {
          if (v19 < v116)
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            return result;
          }

          if (v116 < v19)
          {
            v44 = v126 * (v19 - 1);
            v45 = v19 * v126;
            v46 = v19;
            v47 = v116;
            v48 = v116 * v126;
            do
            {
              if (v47 != --v46)
              {
                v49 = *v127;
                if (!*v127)
                {
                  goto LABEL_129;
                }

                a3 = v49 + v48;
                sub_100025738(v49 + v48, v119, _s5BoardVMa);
                if (v48 < v44 || a3 >= v49 + v45)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v48 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_100025738(v119, v49 + v44, _s5BoardVMa);
                v20 = v125;
              }

              ++v47;
              v44 -= v126;
              v45 -= v126;
              v48 += v126;
            }

            while (v47 < v46);
            v21 = v116;
            v5 = v117;
            v8 = v131;
          }
        }
      }

      v50 = v127[1];
      if (v19 < v50)
      {
        if (__OFSUB__(v19, v21))
        {
          goto LABEL_121;
        }

        if (v19 - v21 < v115)
        {
          if (__OFADD__(v21, v115))
          {
            goto LABEL_122;
          }

          if (v21 + v115 < v50)
          {
            v50 = v21 + v115;
          }

          if (v50 < v21)
          {
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v121 = v50;
          if (v19 != v50)
          {
            v116 = v21;
            v117 = v5;
            v51 = *v127;
            v52 = *(v124 + 72);
            v53 = *v127 + v52 * (v19 - 1);
            v54 = -v52;
            v55 = v21 - v19;
            v120 = v52;
            a3 = v51 + v19 * v52;
            do
            {
              v128 = v19;
              v122 = a3;
              v123 = v55;
              v126 = v53;
              v56 = v53;
              while (1)
              {
                sub_10005006C(a3, v17, _s5BoardVMa);
                v57 = v130;
                sub_10005006C(v56, v130, _s5BoardVMa);
                v58 = *(v8 + 24);
                v59 = *&v17[v58 + 8];
                v134 = *&v17[v58];
                v135 = v59;
                v60 = (v57 + v58);
                v62 = *v60;
                v61 = v60[1];
                v132 = v62;
                v133 = v61;
                sub_100017CD8();
                v63 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
                sub_10003D87C(v57, _s5BoardVMa);
                result = sub_10003D87C(v17, _s5BoardVMa);
                if (v63 != -1)
                {
                  break;
                }

                if (!v51)
                {
                  goto LABEL_126;
                }

                v64 = v129;
                sub_100025738(a3, v129, _s5BoardVMa);
                v8 = v131;
                swift_arrayInitWithTakeFrontToBack();
                sub_100025738(v64, v56, _s5BoardVMa);
                v56 += v54;
                a3 += v54;
                if (__CFADD__(v55++, 1))
                {
                  goto LABEL_33;
                }
              }

              v8 = v131;
LABEL_33:
              v19 = v128 + 1;
              v53 = v126 + v120;
              v55 = v123 - 1;
              a3 = v122 + v120;
            }

            while (v128 + 1 != v121);
            v21 = v116;
            v5 = v117;
            v20 = v125;
            v19 = v121;
          }
        }
      }

      if (v19 < v21)
      {
        goto LABEL_120;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100B355CC(0, *(v20 + 2) + 1, 1, v20);
        v20 = result;
      }

      a3 = *(v20 + 2);
      v66 = *(v20 + 3);
      v67 = a3 + 1;
      if (a3 >= v66 >> 1)
      {
        result = sub_100B355CC((v66 > 1), a3 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 2) = v67;
      v68 = &v20[16 * a3];
      *(v68 + 4) = v21;
      *(v68 + 5) = v19;
      v69 = *v118;
      if (!*v118)
      {
        goto LABEL_130;
      }

      if (a3)
      {
        while (1)
        {
          a3 = v67 - 1;
          if (v67 >= 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v70 = *(v20 + 4);
            v71 = *(v20 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
LABEL_61:
            if (v73)
            {
              goto LABEL_109;
            }

            v86 = &v20[16 * v67];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_112;
            }

            v92 = &v20[16 * a3 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_116;
            }

            if (v90 + v95 >= v72)
            {
              if (v72 < v95)
              {
                a3 = v67 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v96 = &v20[16 * v67];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_75:
          if (v91)
          {
            goto LABEL_111;
          }

          v99 = &v20[16 * a3];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_114;
          }

          if (v102 < v90)
          {
            goto LABEL_3;
          }

LABEL_82:
          v107 = a3 - 1;
          if (a3 - 1 >= v67)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*v127)
          {
            goto LABEL_127;
          }

          v108 = *&v20[16 * v107 + 32];
          v109 = *&v20[16 * a3 + 40];
          sub_1010F7E14(*v127 + *(v124 + 72) * v108, *v127 + *(v124 + 72) * *&v20[16 * a3 + 32], *v127 + *(v124 + 72) * v109, v69);
          if (v5)
          {
          }

          if (v109 < v108)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_10113DE48(v20);
          }

          if (v107 >= *(v20 + 2))
          {
            goto LABEL_106;
          }

          v110 = &v20[16 * v107];
          *(v110 + 4) = v108;
          *(v110 + 5) = v109;
          v136 = v20;
          result = sub_10113DDBC(a3);
          v20 = v136;
          v67 = *(v136 + 2);
          v8 = v131;
          if (v67 <= 1)
          {
            goto LABEL_3;
          }
        }

        v74 = &v20[16 * v67 + 32];
        v75 = *(v74 - 64);
        v76 = *(v74 - 56);
        v80 = __OFSUB__(v76, v75);
        v77 = v76 - v75;
        if (v80)
        {
          goto LABEL_107;
        }

        v79 = *(v74 - 48);
        v78 = *(v74 - 40);
        v80 = __OFSUB__(v78, v79);
        v72 = v78 - v79;
        v73 = v80;
        if (v80)
        {
          goto LABEL_108;
        }

        v81 = &v20[16 * v67];
        v83 = *v81;
        v82 = *(v81 + 1);
        v80 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v80)
        {
          goto LABEL_110;
        }

        v80 = __OFADD__(v72, v84);
        v85 = v72 + v84;
        if (v80)
        {
          goto LABEL_113;
        }

        if (v85 >= v77)
        {
          v103 = &v20[16 * a3 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v80 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v80)
          {
            goto LABEL_117;
          }

          if (v72 < v106)
          {
            a3 = v67 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_3:
      v18 = v127[1];
      if (v19 >= v18)
      {
        goto LABEL_93;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_93:
  a3 = *v118;
  if (!*v118)
  {
    goto LABEL_131;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_124:
    result = sub_10113DE48(v20);
    v20 = result;
  }

  v136 = v20;
  v111 = *(v20 + 2);
  if (v111 >= 2)
  {
    while (*v127)
    {
      v112 = *&v20[16 * v111];
      v113 = *&v20[16 * v111 + 24];
      sub_1010F7E14(*v127 + *(v124 + 72) * v112, *v127 + *(v124 + 72) * *&v20[16 * v111 + 16], *v127 + *(v124 + 72) * v113, a3);
      if (v5)
      {
      }

      if (v113 < v112)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10113DE48(v20);
      }

      if (v111 - 2 >= *(v20 + 2))
      {
        goto LABEL_119;
      }

      v114 = &v20[16 * v111];
      *v114 = v112;
      *(v114 + 1) = v113;
      v136 = v20;
      result = sub_10113DDBC(v111 - 1);
      v20 = v136;
      v111 = *(v136 + 2);
      if (v111 <= 1)
      {
      }
    }

    goto LABEL_128;
  }
}

uint64_t sub_1010F77D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v62 = a5;
  v61 = _s4NodeVMa(0);
  v11 = __chkstk_darwin(v61);
  v12 = __chkstk_darwin(v11);
  v14 = &v52 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v52 - v16;
  result = __chkstk_darwin(v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v27;
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = a4 + v27;
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = v39 + v38;
          sub_10005006C(v39 + v38, v40, _s4NodeVMa);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_10005006C(v42, v59, _s4NodeVMa);
          v49 = sub_1010EE72C(v47, v48, v62);
          if (v46)
          {
            sub_10003D87C(v48, _s4NodeVMa);
            sub_10003D87C(v47, _s4NodeVMa);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = v44 + v38;
          sub_10003D87C(v48, _s4NodeVMa);
          sub_10003D87C(v47, _s4NodeVMa);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = v44 + v38;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v44 + v38;
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_10005006C(a2, v21, _s4NodeVMa);
        sub_10005006C(a4, v17, _s4NodeVMa);
        v31 = sub_1010EE72C(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_10003D87C(v33, _s4NodeVMa);
        sub_10003D87C(v21, _s4NodeVMa);
        if (v32)
        {
          v36 = a2 + v29;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v34 + v29;
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10003D87C(v17, _s4NodeVMa);
      sub_10003D87C(v21, _s4NodeVMa);
    }
  }

LABEL_62:
  sub_10063F7AC(&v66, &v65, &v64);

  return 1;
}

uint64_t sub_1010F7E14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = _s5BoardVMa(0);
  v8 = __chkstk_darwin(v52);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v50 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a2;
    v27 = a4 + v17;
    if (v17 >= 1)
    {
      v28 = -v13;
      v29 = a4 + v17;
      v46 = -v13;
      v47 = a1;
      while (2)
      {
        while (1)
        {
          v44 = v27;
          v30 = v49;
          v48 = v49;
          v49 += v28;
          while (1)
          {
            if (v30 <= a1)
            {
              v59 = v30;
              v57 = v44;
              goto LABEL_60;
            }

            v32 = a3;
            v45 = v27;
            v33 = a4;
            v34 = a3 + v28;
            v35 = v29 + v28;
            v36 = v50;
            sub_10005006C(v35, v50, _s5BoardVMa);
            v37 = v51;
            sub_10005006C(v49, v51, _s5BoardVMa);
            v38 = *(v52 + 24);
            v39 = *(v36 + v38 + 8);
            v55 = *(v36 + v38);
            v56 = v39;
            v40 = (v37 + v38);
            v42 = *v40;
            v41 = v40[1];
            v53 = v42;
            v54 = v41;
            sub_100017CD8();
            v43 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
            sub_10003D87C(v37, _s5BoardVMa);
            sub_10003D87C(v36, _s5BoardVMa);
            if (v43 == -1)
            {
              break;
            }

            v27 = v35;
            a3 = v34;
            a4 = v33;
            if (v32 < v29 || v34 >= v29)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v47;
            }

            else
            {
              a1 = v47;
              if (v32 != v29)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v29 = v35;
            v31 = v35 > a4;
            v28 = v46;
            v30 = v48;
            if (!v31)
            {
              v49 = v48;
              goto LABEL_59;
            }
          }

          a3 = v34;
          a4 = v33;
          if (v32 < v48 || v34 >= v48)
          {
            break;
          }

          v28 = v46;
          a1 = v47;
          v27 = v45;
          if (v32 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v29 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v28 = v46;
        a1 = v47;
        v27 = v45;
        if (v29 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v59 = v49;
    v57 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v16;
    v57 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = v51;
      do
      {
        v20 = v50;
        sub_10005006C(a2, v50, _s5BoardVMa);
        sub_10005006C(a4, v19, _s5BoardVMa);
        v21 = *(v52 + 24);
        v22 = *(v20 + v21 + 8);
        v55 = *(v20 + v21);
        v56 = v22;
        v23 = (v19 + v21);
        v25 = *v23;
        v24 = v23[1];
        v53 = v25;
        v54 = v24;
        sub_100017CD8();
        v26 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        sub_10003D87C(v19, _s5BoardVMa);
        sub_10003D87C(v20, _s5BoardVMa);
        if (v26 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
          }

          else
          {
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v59 = a1;
      }

      while (a4 < v49 && a2 < a3);
    }
  }

LABEL_60:
  sub_10063F7C4(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_1010F83A4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v53 = v10;
  v54 = v9;
  v52 = &v47 - v8;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v11 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = &off_1018A75D0;
  swift_beginAccess();
  v13 = a1;

  sub_100E6B218(v57, v12);
  swift_endAccess();

  if (v11)
  {
    swift_beginAccess();

    sub_100E6B218(v57, v12);
    swift_endAccess();
  }

  v14 = *&v13[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
  v15 = v13;
  v16 = v14;
  sub_1010F92B4(v16, a2, a3);

  v17 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer];
  sub_1010F92B4(v17, a2, a3);
  v56 = v15;

  v18 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v19 = *(a3 + v18);

  LOBYTE(v15) = sub_10079C5CC(v12, v19);

  v55 = v6;
  if (v15)
  {
    v51 = objc_opt_self();
    LODWORD(a1) = [v51 _atomicIncrementAssertCount];
    v57[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v57);
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v23;
    v49 = v22;

    if (qword_1019F20A0 == -1)
    {
LABEL_11:
      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = a1;
      v26 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v26;
      v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v27;
      v28 = v50;
      *(inited + 72) = v50;
      *(inited + 136) = &type metadata for String;
      v29 = sub_1000053B0();
      v30 = v48;
      *(inited + 112) = v49;
      *(inited + 120) = v30;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v29;
      *(inited + 152) = 308;
      v31 = v57[0];
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v31;
      v32 = v28;
      v33 = v31;
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v35 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v35, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v36 = swift_allocObject();
      v36[2] = 8;
      v36[3] = 0;
      v36[4] = 0;
      v36[5] = 0;
      v37 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v39 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v40 = String._bridgeToObjectiveC()();

      [v51 handleFailureInFunction:v38 file:v39 lineNumber:308 isFatal:0 format:v40 args:v37];

      goto LABEL_12;
    }

LABEL_16:
    swift_once();
    goto LABEL_11;
  }

LABEL_12:
  v41 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v43 = *(v41 + 24);
  swift_unknownObjectRetain();
  v43(v56, &off_1018A75D0, ObjectType, v41);
  swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    type metadata accessor for CRLBoard(0);
    v44 = v53;
    sub_100ECADE0();
    swift_beginAccess();
    v45 = v52;
    sub_100E6AF38(v52, v44);
    (*(v54 + 8))(v45, v55);
    swift_endAccess();
  }
}

void *sub_1010F8AD4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = type metadata accessor for UUID();
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v65 = v13;
  v66 = v11;
  v63 = &v57 - v12;
  v64 = v14;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v15 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v15 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &off_10188FE10;
  swift_beginAccess();
  v5 = a1;

  sub_100E6B218(v67, v4);
  swift_endAccess();

  if (v15)
  {
    swift_beginAccess();

    sub_100E6B218(v67, v4);
    swift_endAccess();
  }

  type metadata accessor for CRLContainerItem(0);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v19 = *(v16 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  result = v5;
  v3 = result;
  if (!v19)
  {
    result = sub_10096C7D4();
    v19 = *(v17 + v18);
  }

  if (v19)
  {
    a1 = v19;
  }

  else
  {
    a1 = _swiftEmptyArrayStorage;
  }

  if (a1 >> 62)
  {
LABEL_24:
    result = _CocoaArrayWrapper.endIndex.getter();
    v21 = result;
    v62 = v4;
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v62 = v4;
  if (v21)
  {
LABEL_17:
    if (v21 < 1)
    {
      __break(1u);
      return result;
    }

    v22 = v5;

    for (i = 0; i != v21; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(a1 + 8 * i + 32);
      }

      v25 = v24;
      sub_1010F8AD4(v24, a2, a3);
    }

    goto LABEL_26;
  }

LABEL_25:
  v22 = v5;

LABEL_26:

  v5 = v22;
  v4 = v62;
LABEL_27:
  v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v27 = *(a3 + v26);

  v28 = sub_10079C5CC(v4, v27);

  if (v28)
  {
    v61 = v5;
    v60 = objc_opt_self();
    v29 = [v60 _atomicIncrementAssertCount];
    v67[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v67);
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v33;
    v58 = v32;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v29;
    v36 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v36;
    v37 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v37;
    v38 = v59;
    *(inited + 72) = v59;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    v40 = v57;
    *(inited + 112) = v58;
    *(inited + 120) = v40;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 308;
    v41 = v67[0];
    *(inited + 216) = v36;
    *(inited + 224) = v37;
    *(inited + 192) = v41;
    v42 = v38;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v45, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v48 file:v49 lineNumber:308 isFatal:0 format:v50 args:v47];

    v5 = v61;
  }

  v51 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v53 = *(v51 + 24);
  swift_unknownObjectRetain();
  v53(v5, &off_10188FE10, ObjectType, v51);
  v54 = swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v55 = v64;
    (*((swift_isaMask & *v5) + 0x88))(v54);
    swift_beginAccess();
    v56 = v63;
    sub_100E6AF38(v63, v55);
    (*(v65 + 8))(v56, v66);
    swift_endAccess();
  }
}

uint64_t sub_1010F92B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v58 = &v52 - v10;
  v59 = v11;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v12 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = &off_10188FE10;
  swift_beginAccess();
  v13 = a1;

  sub_100E6B218(v62, v3);
  swift_endAccess();

  if (v12)
  {
    swift_beginAccess();

    sub_100E6B218(v62, v3);
    swift_endAccess();
  }

  v14 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v15 = *(v13 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  v61 = v13;
  if (!v15)
  {
    sub_10096C7D4();
    v15 = *(v13 + v14);
  }

  if (v15)
  {
    a1 = v15;
  }

  else
  {
    a1 = _swiftEmptyArrayStorage;
  }

  if (a1 >> 62)
  {
LABEL_23:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v60 = v8;
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_24:

    goto LABEL_25;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v60 = v8;
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v16 < 1)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_27;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(a1 + 8 * i + 32);
    }

    v19 = v18;
    sub_1010F8AD4(v18, a2, a3);
  }

LABEL_25:
  v20 = v61;

  v21 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v22 = *(a3 + v21);

  v23 = sub_10079C5CC(v3, v22);

  if ((v23 & 1) == 0)
  {
    goto LABEL_28;
  }

  v57 = v7;
  v56 = objc_opt_self();
  LODWORD(a1) = [v56 _atomicIncrementAssertCount];
  v62[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v62);
  StaticString.description.getter();
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v24 lastPathComponent];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v27;
  v54 = v26;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_32;
  }

LABEL_27:
  v28 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = a1;
  v30 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v30;
  v31 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v31;
  v32 = v55;
  *(inited + 72) = v55;
  *(inited + 136) = &type metadata for String;
  v33 = sub_1000053B0();
  v34 = v53;
  *(inited + 112) = v54;
  *(inited + 120) = v34;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v33;
  *(inited + 152) = 308;
  v35 = v62[0];
  *(inited + 216) = v30;
  *(inited + 224) = v31;
  *(inited + 192) = v35;
  v36 = v32;
  v37 = v35;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v39, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v56 handleFailureInFunction:v42 file:v43 lineNumber:308 isFatal:0 format:v44 args:v41];

  v7 = v57;
  v20 = v61;
LABEL_28:
  v45 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v47 = *(v45 + 24);
  swift_unknownObjectRetain();
  v47(v20, &off_10188FE10, ObjectType, v45);
  v48 = swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v49 = v59;
    (*(**&v20[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v48);
    swift_beginAccess();
    v50 = v58;
    sub_100E6AF38(v58, v49);
    (*(v60 + 8))(v50, v7);
    swift_endAccess();
  }
}

void *sub_1010F9A7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v65 = v13;
  v66 = v11;
  v63 = &v57 - v12;
  v64 = v14;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v15 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v15 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &off_10188FE10;
  swift_beginAccess();
  v5 = a1;

  sub_100E6B218(v67, v4);
  swift_endAccess();

  if (v15)
  {
    swift_beginAccess();

    sub_100E6B218(v67, v4);
    swift_endAccess();
  }

  type metadata accessor for CRLContainerItem(0);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v19 = *(v16 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  result = v5;
  v3 = result;
  if (!v19)
  {
    result = sub_10096C7D4();
    v19 = *(v17 + v18);
  }

  if (v19)
  {
    a1 = v19;
  }

  else
  {
    a1 = _swiftEmptyArrayStorage;
  }

  if (a1 >> 62)
  {
LABEL_24:
    result = _CocoaArrayWrapper.endIndex.getter();
    v21 = result;
    v62 = v4;
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v62 = v4;
  if (v21)
  {
LABEL_17:
    if (v21 < 1)
    {
      __break(1u);
      return result;
    }

    v22 = v5;

    for (i = 0; i != v21; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(a1 + 8 * i + 32);
      }

      v25 = v24;
      sub_1010F8AD4(v24, a2, a3);
    }

    goto LABEL_26;
  }

LABEL_25:
  v22 = v5;

LABEL_26:

  v5 = v22;
  v4 = v62;
LABEL_27:
  v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v27 = *(a3 + v26);

  v28 = sub_10079C5CC(v4, v27);

  if (v28)
  {
    v61 = v5;
    v60 = objc_opt_self();
    v29 = [v60 _atomicIncrementAssertCount];
    v67[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v67);
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v33;
    v58 = v32;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v29;
    v36 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v36;
    v37 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v37;
    v38 = v59;
    *(inited + 72) = v59;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    v40 = v57;
    *(inited + 112) = v58;
    *(inited + 120) = v40;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 308;
    v41 = v67[0];
    *(inited + 216) = v36;
    *(inited + 224) = v37;
    *(inited + 192) = v41;
    v42 = v38;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v45, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v48 file:v49 lineNumber:308 isFatal:0 format:v50 args:v47];

    v5 = v61;
  }

  v51 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v53 = *(v51 + 24);
  swift_unknownObjectRetain();
  v53(v5, &off_10188FE10, ObjectType, v51);
  v54 = swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v55 = v64;
    (*(**(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v54);
    swift_beginAccess();
    v56 = v63;
    sub_100E6AF38(v63, v55);
    (*(v65 + 8))(v56, v66);
    swift_endAccess();
  }
}

uint64_t sub_1010FA260(char a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v18[3] = &type metadata for CRLBoardAuxiliaryRealTimeChange;
  v18[4] = &off_1018834F0;
  v10 = swift_allocObject();
  v18[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = *(a5 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  sub_10000630C(v18, v17);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  sub_100050F74(v17, v12 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_101107CC0;
  *(v13 + 24) = v12;
  v16[4] = sub_10002AAE0;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = *"";
  v16[2] = sub_10002AAB8;
  v16[3] = &unk_1018B1558;
  v14 = _Block_copy(v16);
  sub_100024E98(a2, a3);

  dispatch_sync(v11, v14);
  _Block_release(v14);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if ((a5 & 1) == 0)
  {
    return sub_100005070(v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010FA43C(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v17 = &type metadata for CRLBoardAuxiliaryRealTimeChangeLegacy;
  v18 = &off_1018AD498;
  v14[0] = a1;
  v15 = a2;
  v16 = a3;
  v7 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  sub_10000630C(v14, v13);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  sub_100050F74(v13, v8 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1011068CC;
  *(v9 + 24) = v8;
  v12[4] = sub_10002AAE0;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_10002AAB8;
  v12[3] = &unk_1018B1170;
  v10 = _Block_copy(v12);
  sub_100024E98(a2, a3);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return sub_100005070(v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010FA5F4(uint64_t a1, char a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(a3 + 112) = a1;
  *(a3 + 120) = &off_1018AFD10;
  *(a3 + 144) = a2;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v8 = sub_1000053B0();
  v9 = 0x64656C6261736964;
  if (a2)
  {
    v9 = 0x656C62616E65;
  }

  v10 = 0xE800000000000000;
  if (a2)
  {
    v10 = 0xE600000000000000;
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v8;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v11, "Board real-time sync additional message encryption (CloudKit share encryption) state: %{public}@", 96, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  *(a3 + 128) = PropertyListEncoder.init()();

  dispatch thunk of PropertyListEncoder.outputFormat.setter();

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  *(a3 + 136) = PropertyListDecoder.init()();
  return a3;
}

uint64_t sub_1010FA790(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = *(*(*(a1 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v14 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v13 + v14, v5, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v5, type metadata accessor for CRLBoardCRDTData);
  v15 = *(*(*(v20 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v15 + v16, v5, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v5, type metadata accessor for CRLBoardCRDTData);
  LOBYTE(v5) = static UUID.== infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v17(v12, v6);
  return v5 & 1;
}

uint64_t sub_1010FAA00(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v6) = a4;
  v132 = a2;
  v9 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v131 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v141 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for UUID();
  v13 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v126 - v16);
  __chkstk_darwin(v18);
  v133 = &v126 - v19;
  v20 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v20 - 8);
  v134 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  v22 = a5 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache;
  *v22 = 0;
  *(v22 + 8) = _swiftEmptySetSingleton;
  *(v22 + 16) = 0;
  *(v22 + 24) = 1;
  *(a5 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask) = 0;
  *(a5 + 136) = v6;
  v139 = a1;
  v140 = a5;
  v137 = a3;
  v129 = v17;
  v130 = v13;
  if ((v6 & 1) == 0)
  {
    LODWORD(v128) = v6;
    v127 = objc_opt_self();
    LODWORD(v138) = [v127 _atomicIncrementAssertCount];
    v143[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v143);
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v138;
    v31 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v31;
    v32 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v32;
    *(inited + 72) = v23;
    *(inited + 136) = &type metadata for String;
    v33 = sub_1000053B0();
    *(inited + 112) = v26;
    *(inited + 120) = v28;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 144) = v33;
    *(inited + 152) = 201;
    v34 = v143[0];
    *(inited + 216) = v31;
    *(inited + 224) = v32;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v38, "enforceParticipantCKShareWritePermission must always be true on iOS and macOS", 77, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
    v40 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    [v127 handleFailureInFunction:v41 file:v6 lineNumber:201 isFatal:0 format:v42 args:v40];

    a3 = v137;
    v17 = v129;
    v13 = v130;
    LOBYTE(v6) = v128;
  }

  v43 = a3;
  if (qword_1019F2288 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v44 = static OS_os_log.realTimeSync;
    v138 = sub_1005B981C(&qword_1019F54E0);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_10146BDE0;
    v46 = sub_1000053B0();
    v47 = v46;
    v48 = 1702195828;
    if ((v6 & 1) == 0)
    {
      v48 = 0x65736C6166;
    }

    v49 = 0xE500000000000000;
    if (v6)
    {
      v49 = 0xE400000000000000;
    }

    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v46;
    *(v45 + 32) = v48;
    *(v45 + 40) = v49;
    v50 = UUID.uuidString.getter();
    *(v45 + 96) = &type metadata for String;
    *(v45 + 104) = v47;
    v127 = v47;
    *(v45 + 72) = v50;
    *(v45 + 80) = v51;
    v52 = static os_log_type_t.default.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "CRLBoardRealTimeChangeCoordinator was instantiated with enforceParticipantCKShareWritePermission = %{public}@ for boardUUID: %{public}@", 135, 2, v45);
    swift_setDeallocating();
    v128 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v54 = v139;
    v53 = v140;
    swift_unknownObjectWeakAssign();
    v55 = *(v54 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    *(v53 + 120) = v55;
    v56 = (v53 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_suspendResumeCoordinatorState);
    *v56 = v132;
    v56[1] = &off_101888A48;
    sub_10005006C(v43, v53 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_globallyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v57 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v58 = *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v59 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v60 = v58 + v59;
    v61 = v141;
    sub_10005006C(v60, v141, type metadata accessor for CRLBoardCRDTData);
    v62 = v55;
    sub_1005B981C(&unk_1019F5250);
    v63 = v133;
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v61, type metadata accessor for CRLBoardCRDTData);
    v64 = (*&v55[v57] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v65 = *v64;
    v66 = v64[1];

    v67 = v134;
    sub_10084BD4C(v63, v65, v66, v134);

    v68 = v13[2];
    v69 = v136;
    v68(v17, v67, v136);
    sub_10003D87C(v67, type metadata accessor for CRLBoardIdentifier);
    v70 = v135;
    v68(v135, v43, v69);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_10146C6B0;
    v143[0] = v69;
    sub_1005B981C(&qword_101A2AD78);
    String.init<A>(describing:)();
    v72 = String._bridgeToObjectiveC()();

    v134 = sub_100006370(0, &qword_1019F4D30);
    *(v71 + 56) = v134;
    v73 = v17;
    v74 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v71 + 32) = v72;
    *(v71 + 64) = v74;
    sub_101104B20(&qword_1019F37C0, &type metadata accessor for UUID);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      swift_setDeallocating();
      sub_100005070(v71 + 32);
      v75 = v13[1];
      v75(v70, v69);
      v75(v73, v69);
      goto LABEL_40;
    }

    v141 = v71 + 32;
    v133 = objc_opt_self();
    v76 = [v133 _atomicIncrementAssertCount];
    v143[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v71, v143);
    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = v71;
    v79 = String._bridgeToObjectiveC()();

    v80 = [v79 lastPathComponent];

    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v84 = static OS_os_log.crlAssert;
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_10146CA70;
    *(v85 + 56) = &type metadata for Int32;
    *(v85 + 64) = &protocol witness table for Int32;
    *(v85 + 72) = v77;
    *(v85 + 32) = v76;
    v86 = v134;
    *(v85 + 96) = v134;
    *(v85 + 104) = v74;
    v87 = v127;
    *(v85 + 136) = &type metadata for String;
    *(v85 + 144) = v87;
    *(v85 + 112) = v81;
    *(v85 + 120) = v83;
    *(v85 + 176) = &type metadata for UInt;
    *(v85 + 152) = 210;
    v88 = v143[0];
    *(v85 + 216) = v86;
    *(v85 + 224) = v74;
    *(v85 + 184) = &protocol witness table for UInt;
    *(v85 + 192) = v88;
    v89 = v77;
    v90 = v88;
    v91 = static os_log_type_t.error.getter();
    sub_100005404(v84, &_mh_execute_header, v91, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    v92 = static os_log_type_t.error.getter();
    sub_100005404(v84, &_mh_execute_header, v92, "expected equality between two values of type %{public}@", 55, 2, v78);

    type metadata accessor for __VaListBuilder();
    v93 = swift_allocObject();
    v93[2] = 8;
    v93[3] = 0;
    v17 = v93 + 3;
    v93[4] = 0;
    v93[5] = 0;
    v138 = v78;
    v94 = *(v78 + 16);
    v6 = v141;
    if (!v94)
    {
      break;
    }

    v43 = 0;
    while (1)
    {
      v95 = (v6 + 40 * v43);
      v13 = v95[4];
      sub_100020E58(v95, v95[3]);
      v96 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v97 = *v17;
      v98 = *(v96 + 16);
      v99 = __OFADD__(*v17, v98);
      v100 = *v17 + v98;
      if (v99)
      {
        break;
      }

      v101 = v93[4];
      if (v101 >= v100)
      {
        goto LABEL_31;
      }

      if (v101 + 0x4000000000000000 < 0)
      {
        goto LABEL_49;
      }

      v13 = v93[5];
      if (2 * v101 > v100)
      {
        v100 = 2 * v101;
      }

      v93[4] = v100;
      if ((v100 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_50;
      }

      v102 = v96;
      v103 = swift_slowAlloc();
      v104 = v103;
      v93[5] = v103;
      if (v13)
      {
        if (v103 != v13 || v103 >= &v13[v97])
        {
          memmove(v103, v13, 8 * v97);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v96 = v102;
        v6 = v141;
LABEL_31:
        v104 = v93[5];
        if (!v104)
        {
          goto LABEL_38;
        }

        goto LABEL_32;
      }

      v96 = v102;
      v6 = v141;
      if (!v104)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_32:
      v106 = *(v96 + 16);
      if (v106)
      {
        v107 = (v96 + 32);
        v108 = *v17;
        while (1)
        {
          v109 = *v107++;
          v104[v108] = v109;
          v108 = *v17 + 1;
          if (__OFADD__(*v17, 1))
          {
            break;
          }

          *v17 = v108;
          if (!--v106)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:

      if (++v43 == v94)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }

LABEL_39:
  v110 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v111 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v112 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v113 = String._bridgeToObjectiveC()();

  [v133 handleFailureInFunction:v111 file:v112 lineNumber:210 isFatal:0 format:v113 args:v110];

  swift_setDeallocating();
  swift_arrayDestroy();
  v114 = v130[1];
  v115 = v136;
  v114(v135, v136);
  v114(v129, v115);
LABEL_40:
  v117 = v139;
  v116 = v140;
  v118 = v137;
  v119 = *(*(*(v140 + 120) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v119)
  {

    v120 = v119;
    [v120 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();

    sub_100006370(0, &qword_1019F52C0);
    if (swift_dynamicCast())
    {
      v119 = v142;
    }

    else
    {
      v119 = 0;
    }
  }

  type metadata accessor for CRLChangeCoordinatorCachedShareState();
  v121 = swift_allocObject();
  v121[4] = _swiftEmptySetSingleton;
  v121[2] = v119;
  v121[3] = sub_100BD5850(_swiftEmptyArrayStorage);
  *(v116 + 128) = v121;
  v122 = *(v117 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers);

  if (([v122 containsObject:v121] & 1) == 0)
  {
    [v122 addObject:v121];
  }

  *(v116 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_queuedIncomingUpdates) = _swiftEmptyArrayStorage;
  v123 = v131;
  sub_10005006C(v118, v131, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  type metadata accessor for CRLBoardRealTimeChangeCoordinator.CRLRealTimeChangeProcessor(0);
  v124 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10003D87C(v118, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  sub_100025738(v123, v124 + OBJC_IVAR____TtCC8Freeform33CRLBoardRealTimeChangeCoordinator26CRLRealTimeChangeProcessor_globallyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  *(v116 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_processor) = v124;
  return v116;
}

uint64_t sub_1010FBA80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v5;
  v3[11] = v4;

  return _swift_task_switch(sub_1010FBB80, v5, v4);
}

uint64_t sub_1010FBB80()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  if (v2)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    *(v0 + 16) = _swiftEmptyArrayStorage;
    v5 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store;
    *(v0 + 104) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store;
    v6 = *(v3 + 80);
    *(v0 + 200) = v6;
    v7 = *(v3 + 72);
    *(v0 + 120) = _swiftEmptyArrayStorage;
    *(v0 + 128) = 0;
    *(v0 + 112) = v7;
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    sub_10005006C(v1 + ((v6 + 32) & ~v6), v9, type metadata accessor for CRLBoardIdentifier);
    sub_10005006C(v9, v8, type metadata accessor for CRLBoardIdentifier);
    v10 = *(v4 + v5);
    type metadata accessor for CRLBoardActor();
    v11 = swift_allocObject();
    *(v0 + 136) = v11;
    v12 = v10;
    swift_defaultActor_initialize();
    sub_100025738(v8, v11 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    *(v11 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store) = v12;

    return _swift_task_switch(sub_1010FBD38, v11, 0);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1010FBD38()
{
  v1 = *(v0 + 136);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1010FBE00;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_1010FBE00(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[17];
    v5 = sub_1010FC174;
    v6 = 0;
  }

  else
  {
    v4 = v3[10];
    v6 = v3[11];
    v5 = sub_1010FBF1C;
  }

  return _swift_task_switch(v5, v4, v6);
}

uint64_t sub_1010FBF1C()
{
  v1 = *(v0 + 152);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 128) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_10003D87C(v4, type metadata accessor for CRLBoardIdentifier);
  v6 = *(v0 + 16);
  *(v0 + 168) = v6;
  if (v5 == v3)
  {
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_1010FC274;
    v8 = *(v0 + 32);

    return sub_1010CA9B8(v6, v8, 1, 0);
  }

  else
  {
    v10 = *(v0 + 128) + 1;
    *(v0 + 120) = v6;
    *(v0 + 128) = v10;
    v11 = *(v0 + 104);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 40);
    sub_10005006C(*(v0 + 24) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 112) * v10, v12, type metadata accessor for CRLBoardIdentifier);
    sub_10005006C(v12, v13, type metadata accessor for CRLBoardIdentifier);
    v15 = *(v14 + v11);
    type metadata accessor for CRLBoardActor();
    v16 = swift_allocObject();
    *(v0 + 136) = v16;
    v17 = v15;
    swift_defaultActor_initialize();
    sub_100025738(v13, v16 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    *(v16 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store) = v17;

    return _swift_task_switch(sub_1010FBD38, v16, 0);
  }
}

uint64_t sub_1010FC174()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1010FC1D8, v1, v2);
}

uint64_t sub_1010FC1D8()
{
  v1 = *(v0 + 64);

  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010FC274(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1010FC420;
  }

  else
  {

    v4[24] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1010FC3A4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010FC3A4()
{

  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1010FC420()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1010FC4A0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5)
{
  v201 = a1;
  v8 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v8 - 8);
  v222 = &v195 - v9;
  v10 = sub_1005B981C(&unk_1019FA3E0);
  v11 = __chkstk_darwin(v10 - 8);
  v221 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v214 = &v195 - v14;
  __chkstk_darwin(v13);
  v229 = &v195 - v15;
  v237 = type metadata accessor for Date();
  v16 = *(v237 - 8);
  v17 = __chkstk_darwin(v237);
  v211 = &v195 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v210 = &v195 - v20;
  v21 = __chkstk_darwin(v19);
  v213 = &v195 - v22;
  __chkstk_darwin(v21);
  v225 = &v195 - v23;
  v233 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v24 = __chkstk_darwin(v233);
  v231 = &v195 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v232 = &v195 - v26;
  v27 = _s5BoardVMa(0);
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v243 = &v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v244 = &v195 - v31;
  v230 = _s4NodeVMa(0);
  v215 = *(v230 - 8);
  v32 = __chkstk_darwin(v230);
  v202 = &v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v228 = &v195 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v195 - v37;
  v39 = __chkstk_darwin(v36);
  v242 = &v195 - v40;
  v41 = __chkstk_darwin(v39);
  v197 = &v195 - v42;
  v43 = __chkstk_darwin(v41);
  v209 = &v195 - v44;
  v45 = __chkstk_darwin(v43);
  v198 = &v195 - v46;
  __chkstk_darwin(v45);
  v217 = a3;
  v48 = a3[1];
  if (v48 < 1)
  {
    v176 = a5;
    v50 = _swiftEmptyArrayStorage;
    v51 = a5;
LABEL_121:
    v243 = *v201;
    if (v243)
    {
      v244 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_123;
    }

    goto LABEL_164;
  }

  v195 = &v195 - v47;
  v240 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  v241 = (v28 + 56);
  v220 = v28;
  v239 = (v28 + 48);
  v235 = (v16 + 16);
  v219 = (v16 + 56);
  v224 = (v16 + 32);
  v212 = (v16 + 8);
  v218 = a5;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  v51 = a5;
  v216 = a5;
  v200 = a4;
  v236 = v27;
  v238 = v38;
  v52 = v209;
  while (1)
  {
    if (v49 + 1 >= v48)
    {
      v48 = v49 + 1;
      goto LABEL_25;
    }

    v199 = v50;
    v53 = *v217;
    v54 = *(v215 + 72);
    v55 = *v217 + v54 * (v49 + 1);
    v56 = v195;
    sub_10005006C(v55, v195, _s4NodeVMa);
    v226 = v53;
    v57 = v53 + v54 * v49;
    v58 = v198;
    sub_10005006C(v57, v198, _s4NodeVMa);
    v59 = v234;
    LODWORD(v227) = sub_1010EE72C(v56, v58, v218);
    v234 = v59;
    if (v59)
    {
      sub_10003D87C(v58, _s4NodeVMa);
      v189 = v56;
      goto LABEL_134;
    }

    sub_10003D87C(v58, _s4NodeVMa);
    sub_10003D87C(v56, _s4NodeVMa);
    v196 = v49;
    v60 = v49 + 2;
    v61 = v226 + v54 * (v49 + 2);
    v62 = v197;
    do
    {
      if (v48 == v60)
      {
        goto LABEL_11;
      }

      sub_10005006C(v61, v52, _s4NodeVMa);
      sub_10005006C(v55, v62, _s4NodeVMa);
      v63 = v234;
      v64 = sub_1010EE72C(v52, v62, v218);
      v234 = v63;
      if (v63)
      {
        sub_10003D87C(v62, _s4NodeVMa);
        v189 = v52;
LABEL_134:
        sub_10003D87C(v189, _s4NodeVMa);
        v190 = v218;

        return;
      }

      v65 = v64;
      sub_10003D87C(v62, _s4NodeVMa);
      v38 = v238;
      sub_10003D87C(v52, _s4NodeVMa);
      ++v60;
      v61 += v54;
      v55 += v54;
    }

    while (((v227 ^ v65) & 1) == 0);
    v48 = v60 - 1;
LABEL_11:
    v51 = v216;
    a4 = v200;
    v50 = v199;
    v49 = v196;
    if (v227)
    {
      if (v48 >= v196)
      {
        if (v196 < v48)
        {
          v66 = v54 * (v48 - 1);
          v51 = v48;
          v67 = v48 * v54;
          v208 = v48;
          v68 = v196;
          v69 = v196 * v54;
          do
          {
            if (v68 != --v51)
            {
              v70 = *v217;
              if (!*v217)
              {
                goto LABEL_162;
              }

              sub_100025738(v70 + v69, v202, _s4NodeVMa);
              if (v69 < v66 || v70 + v69 >= v70 + v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v69 != v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100025738(v202, v70 + v66, _s4NodeVMa);
              v38 = v238;
            }

            ++v68;
            v66 -= v54;
            v67 -= v54;
            v69 += v54;
          }

          while (v68 < v51);
          v51 = v216;
          a4 = v200;
          v50 = v199;
          v48 = v208;
          v49 = v196;
        }

        goto LABEL_25;
      }

LABEL_158:
      __break(1u);
LABEL_159:
      v191 = v218;

      __break(1u);
LABEL_160:
      v192 = v218;

      __break(1u);
LABEL_161:

      __break(1u);
LABEL_162:
      v193 = v218;

      __break(1u);
LABEL_163:
      v194 = v218;

      __break(1u);
LABEL_164:

      __break(1u);
      return;
    }

LABEL_25:
    v71 = v217[1];
    if (v48 >= v71)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v48, v49))
    {
      goto LABEL_154;
    }

    if (v48 - v49 >= a4)
    {
LABEL_34:
      v74 = v48;
      if (v48 < v49)
      {
        goto LABEL_153;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v49, a4))
    {
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if (v49 + a4 >= v71)
    {
      v72 = v217[1];
    }

    else
    {
      v72 = v49 + a4;
    }

    v73 = v229;
    if (v72 < v49)
    {
      goto LABEL_157;
    }

    if (v48 == v72)
    {
      goto LABEL_34;
    }

    v199 = v50;
    v126 = *v217;
    v127 = *(v215 + 72);
    v128 = *v217 + v127 * (v48 - 1);
    v226 = -v127;
    v196 = v49;
    v129 = v49 - v48;
    v227 = v126;
    v203 = v127;
    v130 = v126 + v48 * v127;
    v204 = v72;
    while (2)
    {
      v208 = v48;
      v205 = v130;
      v206 = v129;
      v131 = v129;
      v207 = v128;
      v132 = v128;
      while (2)
      {
        v133 = v242;
        sub_10005006C(v130, v242, _s4NodeVMa);
        sub_10005006C(v132, v38, _s4NodeVMa);
        v134 = v232;
        sub_10005006C(v133, v232, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_86;
        }

        sub_100025738(v134, v244, _s5BoardVMa);
        v134 = v231;
        sub_10005006C(v38, v231, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10003D87C(v244, _s5BoardVMa);
LABEL_86:
          sub_10003D87C(v134, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_87;
        }

        sub_100025738(v134, v243, _s5BoardVMa);
        v135 = v240;
        swift_beginAccess();
        v136 = *(v51 + v135);
        v137 = v236;
        if (*(v136 + 16) && (v138 = sub_1000486F0(v244), (v139 & 1) != 0))
        {
          sub_10005006C(*(v136 + 56) + *(v220 + 72) * v138, v73, _s5BoardVMa);
          v140 = 0;
        }

        else
        {
          v140 = 1;
        }

        v141 = *v241;
        (*v241)(v73, v140, 1, v137);
        v142 = *v239;
        if ((*v239)(v73, 1, v137))
        {
          sub_10000CAAC(v73, &unk_1019FA3E0);
          swift_endAccess();
          v143 = v240;
          swift_beginAccess();
          v144 = *(v51 + v143);
          if (*(v144 + 16) && (v145 = sub_1000486F0(v243), (v146 & 1) != 0))
          {
            v147 = *(v144 + 56) + *(v220 + 72) * v145;
            v148 = v221;
            sub_10005006C(v147, v221, _s5BoardVMa);
            v149 = 0;
          }

          else
          {
            v149 = 1;
            v148 = v221;
          }

          v141(v148, v149, 1, v137);
          if (v142(v148, 1, v137))
          {
            sub_10000CAAC(v148, &unk_1019FA3E0);
            swift_endAccess();
            sub_10003D87C(v243, _s5BoardVMa);
            sub_10003D87C(v244, _s5BoardVMa);
            v175 = v222;
            (*v219)(v222, 1, 1, v237);
            sub_10000CAAC(v175, &qword_101A0A320);
            goto LABEL_115;
          }

          v150 = v148 + *(v137 + 32);
          v151 = v222;
          v152 = v237;
          (*v235)(v222, v150, v237);
          sub_10000CAAC(v148, &unk_1019FA3E0);
          swift_endAccess();
          sub_10003D87C(v243, _s5BoardVMa);
          sub_10003D87C(v244, _s5BoardVMa);
          (*v219)(v151, 0, 1, v152);
          sub_10000CAAC(v151, &qword_101A0A320);
          v38 = v238;
          sub_10003D87C(v238, _s4NodeVMa);
          sub_10003D87C(v242, _s4NodeVMa);
LABEL_109:
          if (!v227)
          {
            goto LABEL_159;
          }

          v173 = v228;
          sub_100025738(v130, v228, _s4NodeVMa);
          swift_arrayInitWithTakeFrontToBack();
          sub_100025738(v173, v132, _s4NodeVMa);
          v132 += v226;
          v130 += v226;
          v174 = __CFADD__(v131++, 1);
          v73 = v229;
          if (v174)
          {
            goto LABEL_88;
          }

          continue;
        }

        break;
      }

      v153 = v51;
      v154 = v73 + *(v137 + 32);
      v155 = v213;
      v156 = v237;
      v223 = *v235;
      v223(v213, v154, v237);
      sub_10000CAAC(v73, &unk_1019FA3E0);
      swift_endAccess();
      v157 = *v224;
      (*v224)(v225, v155, v156);
      v158 = v240;
      swift_beginAccess();
      v159 = *(v153 + v158);
      if (*(v159 + 16) && (v160 = sub_1000486F0(v243), (v161 & 1) != 0))
      {
        v162 = *(v159 + 56) + *(v220 + 72) * v160;
        v163 = v214;
        sub_10005006C(v162, v214, _s5BoardVMa);
        v164 = 0;
      }

      else
      {
        v164 = 1;
        v163 = v214;
      }

      v165 = v236;
      v141(v163, v164, 1, v236);
      if (v142(v163, 1, v165))
      {
        sub_10000CAAC(v163, &unk_1019FA3E0);
        swift_endAccess();
        (*v212)(v225, v237);
        sub_10003D87C(v243, _s5BoardVMa);
        sub_10003D87C(v244, _s5BoardVMa);
        v51 = v216;
        v73 = v229;
LABEL_115:
        v38 = v238;
LABEL_87:
        sub_10003D87C(v38, _s4NodeVMa);
        sub_10003D87C(v242, _s4NodeVMa);
        goto LABEL_88;
      }

      v166 = v163 + *(v165 + 32);
      v167 = v211;
      v168 = v237;
      v223(v211, v166, v237);
      sub_10000CAAC(v163, &unk_1019FA3E0);
      swift_endAccess();
      v169 = v210;
      v157(v210, v167, v168);
      v170 = v225;
      v171 = static Date.> infix(_:_:)();
      v172 = *v212;
      (*v212)(v169, v168);
      v172(v170, v168);
      sub_10003D87C(v243, _s5BoardVMa);
      sub_10003D87C(v244, _s5BoardVMa);
      v38 = v238;
      sub_10003D87C(v238, _s4NodeVMa);
      sub_10003D87C(v242, _s4NodeVMa);
      v51 = v216;
      if (v171)
      {
        goto LABEL_109;
      }

      v73 = v229;
LABEL_88:
      v48 = v208 + 1;
      v128 = v207 + v203;
      v129 = v206 - 1;
      v130 = v205 + v203;
      v74 = v204;
      if (v208 + 1 != v204)
      {
        continue;
      }

      break;
    }

    v50 = v199;
    v52 = v209;
    v49 = v196;
    if (v204 < v196)
    {
      goto LABEL_153;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_100B355CC(0, *(v50 + 2) + 1, 1, v50);
    }

    v51 = *(v50 + 2);
    v75 = *(v50 + 3);
    v76 = v51 + 1;
    if (v51 >= v75 >> 1)
    {
      v50 = sub_100B355CC((v75 > 1), v51 + 1, 1, v50);
    }

    *(v50 + 2) = v76;
    v77 = &v50[16 * v51];
    *(v77 + 4) = v49;
    *(v77 + 5) = v74;
    v204 = v74;
    v227 = *v201;
    if (!v227)
    {
      goto LABEL_163;
    }

    if (v51)
    {
      break;
    }

LABEL_3:
    v48 = v217[1];
    v49 = v204;
    v51 = v216;
    a4 = v200;
    if (v204 >= v48)
    {
      goto LABEL_121;
    }
  }

  while (2)
  {
    v78 = v76 - 1;
    if (v76 >= 4)
    {
      v83 = &v50[16 * v76 + 32];
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_140;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_141;
      }

      v90 = &v50[16 * v76];
      v92 = *v90;
      v91 = *(v90 + 1);
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_143;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_146;
      }

      if (v94 >= v86)
      {
        v112 = &v50[16 * v78 + 32];
        v114 = *v112;
        v113 = *(v112 + 1);
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_152;
        }

        if (v81 < v115)
        {
          v78 = v76 - 2;
        }
      }

      else
      {
LABEL_54:
        if (v82)
        {
          goto LABEL_142;
        }

        v95 = &v50[16 * v76];
        v97 = *v95;
        v96 = *(v95 + 1);
        v98 = __OFSUB__(v96, v97);
        v99 = v96 - v97;
        v100 = v98;
        if (v98)
        {
          goto LABEL_145;
        }

        v101 = &v50[16 * v78 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v89 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v89)
        {
          goto LABEL_148;
        }

        if (__OFADD__(v99, v104))
        {
          goto LABEL_149;
        }

        if (v99 + v104 < v81)
        {
          goto LABEL_68;
        }

        if (v81 < v104)
        {
          v78 = v76 - 2;
        }
      }
    }

    else
    {
      if (v76 == 3)
      {
        v79 = *(v50 + 4);
        v80 = *(v50 + 5);
        v89 = __OFSUB__(v80, v79);
        v81 = v80 - v79;
        v82 = v89;
        goto LABEL_54;
      }

      v105 = &v50[16 * v76];
      v107 = *v105;
      v106 = *(v105 + 1);
      v89 = __OFSUB__(v106, v107);
      v99 = v106 - v107;
      v100 = v89;
LABEL_68:
      if (v100)
      {
        goto LABEL_144;
      }

      v108 = &v50[16 * v78];
      v110 = *(v108 + 4);
      v109 = *(v108 + 5);
      v89 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v89)
      {
        goto LABEL_147;
      }

      if (v111 < v99)
      {
        goto LABEL_3;
      }
    }

    v51 = v78 - 1;
    if (v78 - 1 < v76)
    {
      v116 = *v217;
      if (!*v217)
      {
        goto LABEL_160;
      }

      v117 = v50;
      v118 = *&v50[16 * v51 + 32];
      v119 = *&v50[16 * v78 + 40];
      v120 = *(v215 + 72);
      v121 = v116 + v120 * v118;
      v50 = (v116 + v120 * *&v50[16 * v78 + 32]);
      v122 = v116 + v120 * v119;
      v123 = v218;
      v124 = v234;
      sub_1010F77D0(v121, v50, v122, v227, v123);
      v234 = v124;
      if (v124)
      {

        return;
      }

      if (v119 < v118)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = sub_10113DE48(v117);
      }

      v38 = v238;
      if (v51 >= *(v117 + 2))
      {
        goto LABEL_139;
      }

      v125 = &v117[16 * v51];
      *(v125 + 4) = v118;
      *(v125 + 5) = v119;
      v245 = v117;
      sub_10113DDBC(v78);
      v50 = v245;
      v76 = *(v245 + 2);
      v52 = v209;
      if (v76 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  v50 = sub_10113DE48(v50);
LABEL_123:
  v245 = v50;
  v51 = *(v50 + 2);
  if (v51 >= 2)
  {
    do
    {
      v177 = *v217;
      if (!*v217)
      {
        goto LABEL_161;
      }

      v178 = *&v50[16 * v51];
      v179 = v50;
      v180 = *&v50[16 * v51 + 16];
      v181 = *&v50[16 * v51 + 24];
      v182 = *(v215 + 72);
      v50 = (v177 + v182 * v178);
      v183 = v177 + v182 * v180;
      v184 = v177 + v182 * v181;
      v185 = v244;
      v186 = v234;
      sub_1010F77D0(v50, v183, v184, v243, v185);
      v234 = v186;
      if (v186)
      {

        return;
      }

      if (v181 < v178)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v179 = sub_10113DE48(v179);
      }

      if (v51 - 2 >= *(v179 + 2))
      {
        goto LABEL_151;
      }

      v187 = &v179[16 * v51];
      *v187 = v178;
      *(v187 + 1) = v181;
      v245 = v179;
      sub_10113DDBC(v51 - 1);
      v50 = v245;
      v51 = *(v245 + 2);
    }

    while (v51 > 1);
  }

  v188 = v244;
}

uint64_t sub_1010FDB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v38 = a5;
  v37 = _s4NodeVMa(0);
  v10 = __chkstk_darwin(v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = *a4;
    v29 = v19;
    v23 = v35 + v19 * a3;
LABEL_4:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v20;
    while (1)
    {
      sub_10005006C(v23, v18, _s4NodeVMa);
      sub_10005006C(v24, v14, _s4NodeVMa);
      v25 = sub_1010EE72C(v18, v14, v38);
      sub_10003D87C(v14, _s4NodeVMa);
      result = sub_10003D87C(v18, _s4NodeVMa);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_100025738(v23, v36, _s4NodeVMa);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100025738(v26, v24, _s4NodeVMa);
        v24 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1010FDDF8(unint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s4NodeVMa(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9 = *(_s4NodeVMa(0) - 8);
      v11[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11[1] = v7;
      v10 = v4;
      sub_1010FC4A0(v11, v12, a1, v6, v10);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1010FDB8C(0, v3, 1, a1, v4);
  }
}

void sub_1010FDF64(void **a1, void *a2)
{
  v4 = *(_s4NodeVMa(0) - 8);
  v5 = *a1;
  v6 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10113DF9C(v5);
  }

  v7 = v5[2];
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  v8 = v6;
  sub_1010FDDF8(v9, v8);

  *a1 = v5;
}

uint64_t sub_1010FE044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v56 = a3;
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  v5 = __chkstk_darwin(v4 - 8);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v51 - v7;
  v57 = _s4NodeVMa(0);
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A2AD10);
  __chkstk_darwin(v9);
  v58 = &v51 - v10;
  v11 = sub_1005B981C(&unk_1019FB770);
  v12 = __chkstk_darwin(v11 - 8);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v51 - v15;
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v26 - 8);
  v60 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005006C(a2, v25, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    goto LABEL_5;
  }

  v28 = sub_1005B981C(&qword_1019F3480);
  if (!(*(*(v28 - 8) + 48))(v25, 5, v28))
  {
    sub_100025738(v25, v60, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_100F87E04(v22);
    v33 = v56;
    if (*(v56 + 16) && (v34 = sub_10003E994(v22), (v35 & 1) != 0))
    {
      sub_10005006C(*(v33 + 56) + *(v59 + 72) * v34, v18, _s4NodeVMa);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    (*(v20 + 8))(v22, v19);
    v37 = v59;
    v38 = *(v59 + 56);
    v39 = v57;
    v38(v18, v36, 1, v57);
    sub_10005006C(a2, v16, _s4NodeVMa);
    v38(v16, 0, 1, v39);
    v40 = *(v9 + 48);
    v41 = v58;
    sub_10000BE14(v18, v58, &unk_1019FB770);
    sub_10000BE14(v16, v41 + v40, &unk_1019FB770);
    v42 = *(v37 + 48);
    if (v42(v41, 1, v39) == 1)
    {
      sub_10000CAAC(v16, &unk_1019FB770);
      sub_10000CAAC(v18, &unk_1019FB770);
      if (v42(v41 + v40, 1, v39) == 1)
      {
        sub_10000CAAC(v41, &unk_1019FB770);
LABEL_14:
        v30 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
        v31 = v60;
        return sub_10003D87C(v31, v30);
      }
    }

    else
    {
      v43 = v52;
      sub_10000BE14(v41, v52, &unk_1019FB770);
      if (v42(v41 + v40, 1, v39) != 1)
      {
        v49 = v51;
        sub_100025738(v41 + v40, v51, _s4NodeVMa);
        if (sub_100F91CB8(v43, v49))
        {
          v50 = sub_10066F2C0(*(v43 + *(v39 + 20)), *(v49 + *(v39 + 20)));
          sub_10000CAAC(v16, &unk_1019FB770);
          sub_10000CAAC(v18, &unk_1019FB770);
          sub_10003D87C(v49, _s4NodeVMa);
          sub_10003D87C(v43, _s4NodeVMa);
          sub_10000CAAC(v41, &unk_1019FB770);
          if (v50)
          {
            goto LABEL_14;
          }

LABEL_19:
          v46 = v60;
          v47 = v53;
          sub_10005006C(v60, v53, type metadata accessor for CRLFolderIdentifier);
          v48 = v54;
          sub_100E70750(v54, v47);
          sub_10003D87C(v48, type metadata accessor for CRLFolderIdentifier);
          v30 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
          v31 = v46;
          return sub_10003D87C(v31, v30);
        }

        sub_10000CAAC(v16, &unk_1019FB770);
        sub_10000CAAC(v18, &unk_1019FB770);
        sub_10003D87C(v49, _s4NodeVMa);
        sub_10003D87C(v43, _s4NodeVMa);
        v45 = v41;
        v44 = &unk_1019FB770;
LABEL_18:
        sub_10000CAAC(v45, v44);
        goto LABEL_19;
      }

      sub_10000CAAC(v16, &unk_1019FB770);
      sub_10000CAAC(v18, &unk_1019FB770);
      sub_10003D87C(v43, _s4NodeVMa);
    }

    v44 = &qword_101A2AD10;
    v45 = v41;
    goto LABEL_18;
  }

  v29 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_5:
  v30 = v29;
  v31 = v25;
  return sub_10003D87C(v31, v30);
}

uint64_t sub_1010FE83C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v12 = a2;
  v13 = v12;
  if (v9 > 0xD)
  {
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v26 = swift_slowAlloc();
      v27 = v13;
      v24 = sub_1010F3C90(v26, v10, a1, v27);

      return v24;
    }
  }

  v29 = v10;
  v30 = v3;
  v28 = &v28;
  __chkstk_darwin(v12);
  v31 = &v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v31, v11);
  v34 = v13;
  v35 = a1;
  v3 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  a1 = v15 & *(a1 + 56);
  v16 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v17 = 0;
  v10 = 0;
  v18 = (v14 + 63) >> 6;
  while (2)
  {
    v32 = v17;
    while (1)
    {
      if (!a1)
      {
        v20 = v10;
        while (1)
        {
          v10 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v10 >= v18)
          {
            goto LABEL_20;
          }

          v21 = *(v3 + 8 * v10);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            a1 = (v21 - 1) & v21;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      v19 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
LABEL_13:
      v13 = v19 | (v10 << 6);
      sub_10005006C(*(v35 + 48) + *(v33 + 72) * v13, v8, type metadata accessor for CRLBoardIdentifier);
      v11 = *&v34[v16];
      if (!*(v11 + 16))
      {
        break;
      }

      sub_1000486F0(v8);
      v23 = v22;

      sub_10003D87C(v8, type metadata accessor for CRLBoardIdentifier);
      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_10003D87C(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_17:
    *&v31[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v17 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_20:
  v24 = sub_1010F47E8(v31, v29, v32, v35);

  return v24;
}

uint64_t sub_1010FEBBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v27 = a4;
  v23 = a2;
  v24 = a1;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v26 = *(v7 - 8);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v11 = 0;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v11 << 6);
    sub_10005006C(*(a3 + 48) + *(v26 + 72) * v19, v10, type metadata accessor for CRLBoardIdentifier);
    v20 = sub_1010EF07C(v10, v27, v28);
    result = sub_10003D87C(v10, type metadata accessor for CRLBoardIdentifier);
    if (v5)
    {
      return result;
    }

    if (v20)
    {
      *(v24 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1010F47E8(v24, v23, v25, a3);
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

    if (v11 >= v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 56 + 8 * v11);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010FEDCC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v31 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v27 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v27;
  v33 = a2;

  v12 = a3;
  v32 = v12;
  if (v10 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29 = &v27;
    __chkstk_darwin(v12);
    v28 = &v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v11);
    v30 = 0;
    v11 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v20 = v17 | (v11 << 6);
      sub_10005006C(*(a1 + 48) + *(v31 + 72) * v20, v9, type metadata accessor for CRLBoardIdentifier);
      v21 = sub_1010EF07C(v9, v33, v32);
      sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
      if (v3)
      {

        swift_willThrow();

        return v21;
      }

      if (v21)
      {
        *&v28[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_17:
          v21 = sub_1010F47E8(v28, v27, v30, a1);

          return v21;
        }
      }
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
        goto LABEL_17;
      }

      v19 = *(a1 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v33;

  v26 = v32;
  v21 = sub_1010F3BDC(v24, v27, a1, v25, v26);

  return v21;
}

uint64_t sub_1010FF154(uint64_t a1)
{
  v2[82] = v1;
  v2[81] = a1;
  sub_1005B981C(&qword_1019F6268);
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[86] = swift_task_alloc();
  v2[87] = *(_s5BoardVMa(0) - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0);
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v2[109] = *(_s4NodeVMa(0) - 8);
  v2[110] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[111] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[112] = v5;
  v2[113] = v4;

  return _swift_task_switch(sub_1010FF46C, v5, v4);
}

uint64_t sub_1010FF46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[81];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v3[109];
    v7 = v3[96];
    v8 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v30 = (v7 + 56);
    v31 = *(v6 + 72);
    v29 = v7;
    v9 = (v7 + 48);
    v10 = _swiftEmptyArrayStorage;
    v11 = &unk_1019F52D0;
    do
    {
      v12 = v11;
      v13 = v3[110];
      v14 = v3[86];
      sub_10005006C(v8, v13, _s4NodeVMa);
      sub_10005006C(v13, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003D87C(v13, _s4NodeVMa);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v15 = v3[93];
        v16 = v3[92];
        sub_100025738(v3[86], v16, _s5BoardVMa);
        sub_10005006C(v16, v15, type metadata accessor for CRLBoardIdentifier);
        sub_10003D87C(v16, _s5BoardVMa);
        v17 = 0;
      }

      else
      {
        sub_10003D87C(v3[86], type metadata accessor for CRLBoardLibraryViewModel.Item);
        v17 = 1;
      }

      v18 = v3[95];
      v19 = v3[94];
      v20 = v3[93];
      (*v30)(v20, v17, 1, v18);
      v21 = v20;
      v11 = v12;
      sub_10003DFF8(v21, v19, v12);
      if ((*v9)(v19, 1, v18) == 1)
      {
        a1 = sub_10000CAAC(v3[94], v12);
      }

      else
      {
        sub_100025738(v3[94], v3[108], type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B36BE4(0, v10[2] + 1, 1, v10);
        }

        v23 = v10[2];
        v22 = v10[3];
        if (v23 >= v22 >> 1)
        {
          v10 = sub_100B36BE4(v22 > 1, v23 + 1, 1, v10);
        }

        v24 = v3[108];
        v10[2] = v23 + 1;
        a1 = sub_100025738(v24, v10 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, type metadata accessor for CRLBoardIdentifier);
      }

      v8 += v31;
      --v5;
    }

    while (v5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v3[114] = v10;
  v25 = v3[82];
  v26 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore;
  v3[115] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore;
  v27 = *(v25 + v26);
  v3[116] = v27;
  if (v27)
  {

    a1 = sub_1010FF7C8;
    a2 = v27;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1010FF7C8()
{
  v1 = v0[116];
  swift_beginAccess();
  v0[117] = *(v1 + 120);
  v2 = v0[113];
  v3 = v0[112];

  return _swift_task_switch(sub_1010FF860, v3, v2);
}

uint64_t sub_1010FF860()
{
  v1 = *(v0 + 912);

  v92 = v1;
  v96 = *(v1 + 16);
  if (v96)
  {
    v2 = 0;
    v93 = *(v0 + 936);
    v3 = *(v0 + 768);
    do
    {
      if (v2 >= *(v1 + 16))
      {
        goto LABEL_84;
      }

      v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v5 = *(v3 + 72);
      sub_10005006C(*(v0 + 912) + v4 + v5 * v2, *(v0 + 856), type metadata accessor for CRLBoardIdentifier);
      if (*(v93 + 16) && (v6 = *(v0 + 856), , sub_1000486F0(v6), LOBYTE(v6) = v7, , (v6 & 1) != 0))
      {
        sub_10003D87C(*(v0 + 856), type metadata accessor for CRLBoardIdentifier);
      }

      else
      {
        sub_100025738(*(v0 + 856), *(v0 + 848), type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10004B394(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_10004B394(v8 > 1, v9 + 1, 1);
        }

        v10 = *(v0 + 848);
        _swiftEmptyArrayStorage[2] = v9 + 1;
        sub_100025738(v10, _swiftEmptyArrayStorage + v4 + v9 * v5, type metadata accessor for CRLBoardIdentifier);
      }

      ++v2;
    }

    while (v96 != v2);
    v11 = 0;
    v94 = *(v0 + 936);
    v12 = *(v0 + 768);
    while (v11 < *(v1 + 16))
    {
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = *(v12 + 72);
      sub_10005006C(*(v0 + 912) + v13 + v14 * v11, *(v0 + 840), type metadata accessor for CRLBoardIdentifier);
      if (*(v94 + 16) && (v15 = *(v0 + 840), , sub_1000486F0(v15), LOBYTE(v15) = v16, , (v15 & 1) != 0))
      {
        sub_100025738(*(v0 + 840), *(v0 + 832), type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10004B394(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_10004B394(v17 > 1, v18 + 1, 1);
        }

        v19 = *(v0 + 832);
        _swiftEmptyArrayStorage[2] = v18 + 1;
        sub_100025738(v19, _swiftEmptyArrayStorage + v13 + v18 * v14, type metadata accessor for CRLBoardIdentifier);
        v1 = v92;
      }

      else
      {
        sub_10003D87C(*(v0 + 840), type metadata accessor for CRLBoardIdentifier);
      }

      if (v96 == ++v11)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_85;
  }

LABEL_24:
  *(v0 + 952) = _swiftEmptyArrayStorage;
  *(v0 + 944) = _swiftEmptyArrayStorage;
  v20 = *(v0 + 936);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v97 = *(v0 + 768);
  v24 = -1;
  v25 = -1 << *(*(v0 + 936) + 32);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & v21;
  v27 = (63 - v25) >> 6;
  v91 = *(v0 + 936);

  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v90 = v22;
  *(v0 + 960) = _swiftEmptyArrayStorage;
  if (!v26)
  {
    goto LABEL_30;
  }

  do
  {
    while (1)
    {
      v95 = v29;
LABEL_35:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = *(v97 + 72);
      sub_10005006C(*(v91 + 48) + v32 * (v31 | (v28 << 6)), *(v0 + 824), type metadata accessor for CRLBoardIdentifier);
      v33 = *(v1 + 16);
      if (v33)
      {
        break;
      }

LABEL_46:
      sub_100025738(*(v0 + 824), *(v0 + 808), type metadata accessor for CRLBoardIdentifier);
      v29 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004B394(0, v95[2] + 1, 1);
        v29 = v95;
      }

      v22 = v90;
      v44 = v29[2];
      v43 = v29[3];
      if (v44 >= v43 >> 1)
      {
        sub_10004B394(v43 > 1, v44 + 1, 1);
        v29 = v95;
      }

      v45 = *(v0 + 808);
      v29[2] = v44 + 1;
      sub_100025738(v45, v29 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v44 * v32, type metadata accessor for CRLBoardIdentifier);
      v1 = v92;
      *(v0 + 960) = v29;
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    v34 = *(v0 + 912) + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    while (1)
    {
      sub_10005006C(v34, *(v0 + 816), type metadata accessor for CRLBoardIdentifier);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        sub_10003D87C(*(v0 + 816), type metadata accessor for CRLBoardIdentifier);
        goto LABEL_38;
      }

      v35 = *(v0 + 824);
      v36 = *(v0 + 816);
      v37 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v38 = *(v36 + v37);
      v39 = *(v36 + v37 + 8);
      v40 = (v35 + v37);
      if (v38 == *v40 && v39 == v40[1])
      {
        break;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10003D87C(v36, type metadata accessor for CRLBoardIdentifier);
      if (v42)
      {
        goto LABEL_29;
      }

LABEL_38:
      v34 += v32;
      if (!--v33)
      {
        goto LABEL_46;
      }
    }

    sub_10003D87C(v36, type metadata accessor for CRLBoardIdentifier);
LABEL_29:
    sub_10003D87C(*(v0 + 824), type metadata accessor for CRLBoardIdentifier);
    v1 = v92;
    v29 = v95;
    v22 = v90;
    *(v0 + 960) = v95;
  }

  while (v26);
LABEL_30:
  while (2)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v30 < v27)
    {
      v26 = *(v22 + 8 * v30);
      ++v28;
      if (!v26)
      {
        continue;
      }

      v95 = v29;
      v28 = v30;
      goto LABEL_35;
    }

    break;
  }

  v46 = _swiftEmptyArrayStorage[2];
  *(v0 + 968) = v46;
  if (!v46)
  {
LABEL_60:
    v56 = *(v0 + 952);
    v57 = *(v56 + 16);
    *(v0 + 1016) = v57;
    if (v57)
    {
      v58 = *(v0 + 768);
      *(v0 + 1024) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
      *(v0 + 1140) = *(v58 + 80);
      *(v0 + 1032) = 0u;
      if (*(v56 + 16))
      {
        v59 = 0;
        while (1)
        {
          v60 = *(v0 + 1024);
          v61 = *(v0 + 656);
          sub_10005006C(v56 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v59, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          v62 = *(v61 + v60);
          if (*(v62 + 16))
          {
            v63 = sub_1000486F0(*(v0 + 792));
            if (v64)
            {
              break;
            }
          }

          swift_endAccess();
          v65 = *(v0 + 1016);
          v66 = *(v0 + 1040) + 1;
          sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
          if (v66 == v65)
          {
            goto LABEL_68;
          }

          v59 = *(v0 + 1040) + 1;
          *(v0 + 1040) = v59;
          *(v0 + 1032) = 0;
          v56 = *(v0 + 952);
          if (v59 >= *(v56 + 16))
          {
            goto LABEL_67;
          }
        }

        v84 = *(v0 + 920);
        v85 = *(v0 + 712);
        v86 = *(v0 + 704);
        v87 = *(v0 + 656);
        sub_10005006C(*(v62 + 56) + *(*(v0 + 696) + 72) * v63, v86, _s5BoardVMa);
        sub_100025738(v86, v85, _s5BoardVMa);
        inited = swift_endAccess();
        v76 = *(v87 + v84);
        *(v0 + 1048) = v76;
        if (!v76)
        {
          goto LABEL_91;
        }

        v77 = sub_101100F30;
LABEL_79:
        v88 = v77;

        inited = v88;
        goto LABEL_80;
      }

LABEL_67:
      __break(1u);
    }

LABEL_68:
    v67 = *(v0 + 960);
    v68 = *(v67 + 16);
    *(v0 + 1064) = v68;
    if (!v68)
    {
      if (qword_1019F2238 == -1)
      {
LABEL_75:
        v82 = *(v0 + 920);
        v83 = *(v0 + 656);
        *(v0 + 1096) = static OS_os_log.appIntents;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(v0 + 1104) = inited;
        *(inited + 16) = xmmword_10146C6B0;
        v76 = *(v83 + v82);
        *(v0 + 1112) = v76;
        if (!v76)
        {
          goto LABEL_90;
        }

        inited = sub_101101928;
LABEL_80:
        v74 = v76;
        v75 = 0;

        return _swift_task_switch(inited, v74, v75);
      }

LABEL_87:
      swift_once();
      goto LABEL_75;
    }

    *(v0 + 1072) = 0;
    if (*(v67 + 16))
    {
      v69 = *(v0 + 920);
      v70 = *(v0 + 784);
      v71 = *(v0 + 768);
      v72 = *(v0 + 656);
      *(v0 + 1080) = *(v71 + 72);
      inited = sub_10005006C(v67 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v70, type metadata accessor for CRLBoardIdentifier);
      v76 = *(v72 + v69);
      *(v0 + 1088) = v76;
      if (v76)
      {
        v77 = sub_101101310;
        goto LABEL_79;
      }

      __break(1u);
      goto LABEL_89;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  *(v0 + 976) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  *(v0 + 1136) = *(v97 + 80);
  *(v0 + 984) = 0u;
  v47 = *(v0 + 944);
  if (!*(v47 + 16))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v48 = 0;
  while (1)
  {
    v49 = *(v0 + 976);
    v50 = *(v0 + 656);
    sub_10005006C(v47 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 768) + 72) * v48, *(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v51 = *(v50 + v49);
    if (*(v51 + 16))
    {
      v52 = sub_1000486F0(*(v0 + 800));
      if (v53)
      {
        break;
      }
    }

    swift_endAccess();
    v54 = *(v0 + 968);
    v55 = *(v0 + 992) + 1;
    sub_10003D87C(*(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    if (v55 == v54)
    {
      goto LABEL_60;
    }

    v48 = *(v0 + 992) + 1;
    *(v0 + 992) = v48;
    *(v0 + 984) = 0;
    v47 = *(v0 + 944);
    if (v48 >= *(v47 + 16))
    {
      goto LABEL_59;
    }
  }

  v78 = *(v0 + 920);
  v79 = *(v0 + 728);
  v80 = *(v0 + 720);
  v81 = *(v0 + 656);
  sub_10005006C(*(v51 + 56) + *(*(v0 + 696) + 72) * v52, v80, _s5BoardVMa);
  sub_100025738(v80, v79, _s5BoardVMa);
  inited = swift_endAccess();
  v76 = *(v81 + v78);
  *(v0 + 1000) = v76;
  if (v76)
  {
    v77 = sub_101100330;
    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return _swift_task_switch(inited, v74, v75);
}

uint64_t sub_101100330()
{
  v1 = v0[123];
  sub_1012818E0(v0[91]);
  v0[126] = v1;
  if (v1)
  {
    v2 = v0[113];
    v3 = v0[112];
    v4 = sub_101100890;
  }

  else
  {

    v2 = v0[113];
    v3 = v0[112];
    v4 = sub_1011003D0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1011003D0()
{
  v1 = *(v0 + 1008);
  sub_10003D87C(*(v0 + 728), _s5BoardVMa);
  while (1)
  {
    v2 = *(v0 + 968);
    v3 = *(v0 + 992) + 1;
    sub_10003D87C(*(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(v0 + 992) + 1;
    *(v0 + 992) = v4;
    *(v0 + 984) = v1;
    v5 = *(v0 + 944);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
LABEL_22:
      v37 = *(v0 + 920);
      v38 = *(v0 + 656);
      *(v0 + 1096) = static OS_os_log.appIntents;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(v0 + 1104) = inited;
      *(inited + 16) = xmmword_10146C6B0;
      v18 = *(v38 + v37);
      *(v0 + 1112) = v18;
      if (v18)
      {

        inited = sub_101101928;
        goto LABEL_27;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v6 = *(v0 + 976);
    v7 = *(v0 + 656);
    sub_10005006C(v5 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 768) + 72) * v4, *(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v8 = *(v7 + v6);
    if (*(v8 + 16))
    {
      v9 = sub_1000486F0(*(v0 + 800));
      if (v10)
      {
        v11 = *(v0 + 920);
        v12 = *(v0 + 728);
        v13 = *(v0 + 720);
        v14 = *(v0 + 656);
        sub_10005006C(*(v8 + 56) + *(*(v0 + 696) + 72) * v9, v13, _s5BoardVMa);
        sub_100025738(v13, v12, _s5BoardVMa);
        inited = swift_endAccess();
        v18 = *(v14 + v11);
        *(v0 + 1000) = v18;
        if (v18)
        {
          v19 = sub_101100330;
          goto LABEL_26;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return _swift_task_switch(inited, v16, v17);
      }
    }

    swift_endAccess();
  }

  v20 = *(v0 + 952);
  v21 = *(v20 + 16);
  *(v0 + 1016) = v21;
  if (v21)
  {
    v22 = *(v0 + 768);
    *(v0 + 1024) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
    *(v0 + 1140) = *(v22 + 80);
    *(v0 + 1040) = 0;
    *(v0 + 1032) = v1;
    if (*(v20 + 16))
    {
      v23 = 0;
      while (1)
      {
        v24 = *(v0 + 1024);
        v25 = *(v0 + 656);
        sub_10005006C(v20 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v23, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        v26 = *(v25 + v24);
        if (*(v26 + 16))
        {
          v27 = sub_1000486F0(*(v0 + 792));
          if (v28)
          {
            break;
          }
        }

        swift_endAccess();
        v29 = *(v0 + 1016);
        v30 = *(v0 + 1040) + 1;
        sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
        if (v30 == v29)
        {
          goto LABEL_17;
        }

        v23 = *(v0 + 1040) + 1;
        *(v0 + 1040) = v23;
        *(v0 + 1032) = v1;
        v20 = *(v0 + 952);
        if (v23 >= *(v20 + 16))
        {
          goto LABEL_16;
        }
      }

      v39 = *(v0 + 920);
      v40 = *(v0 + 712);
      v41 = *(v0 + 704);
      v42 = *(v0 + 656);
      sub_10005006C(*(v26 + 56) + *(*(v0 + 696) + 72) * v27, v41, _s5BoardVMa);
      sub_100025738(v41, v40, _s5BoardVMa);
      inited = swift_endAccess();
      v18 = *(v42 + v39);
      *(v0 + 1048) = v18;
      if (!v18)
      {
        goto LABEL_36;
      }

      v19 = sub_101100F30;
      goto LABEL_26;
    }

LABEL_16:
    __break(1u);
  }

LABEL_17:
  v31 = *(v0 + 960);
  v32 = *(v31 + 16);
  *(v0 + 1064) = v32;
  if (!v32)
  {
    if (qword_1019F2238 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  *(v0 + 1072) = 0;
  if (!*(v31 + 16))
  {
    goto LABEL_31;
  }

  v33 = *(v0 + 920);
  v34 = *(v0 + 784);
  v35 = *(v0 + 768);
  v36 = *(v0 + 656);
  *(v0 + 1080) = *(v35 + 72);
  inited = sub_10005006C(v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v34, type metadata accessor for CRLBoardIdentifier);
  v18 = *(v36 + v33);
  *(v0 + 1088) = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_34;
  }

  v19 = sub_101101310;
LABEL_26:
  v43 = v19;

  inited = v43;
LABEL_27:
  v16 = v18;
  v17 = 0;

  return _swift_task_switch(inited, v16, v17);
}

uint64_t sub_101100890()
{

  if (qword_1019F2238 != -1)
  {
LABEL_39:
    swift_once();
  }

  v1 = *(v0 + 800);
  v2 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0xE000000000000000;
  }

  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000010155E590;
  }

  else
  {
  }

  v8 = *(v0 + 1008);
  *(v0 + 600) = UUID.uuidString.getter();
  *(v0 + 608) = v9;
  v10._countAndFlagsBits = 15418;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v5;
  v11._object = v6;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = *(v0 + 600);
  v14 = *(v0 + 608);
  *(inited + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(inited + 64) = v15;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  *(v0 + 640) = v8;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v16 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v18, "Could not create new entity for board identifier %@: %@", 55, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_10003D87C(*(v0 + 728), _s5BoardVMa);
  while (1)
  {
    v19 = *(v0 + 968);
    v20 = *(v0 + 992) + 1;
    sub_10003D87C(*(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    if (v20 == v19)
    {
      break;
    }

    v21 = *(v0 + 992) + 1;
    *(v0 + 992) = v21;
    *(v0 + 984) = 0;
    v22 = *(v0 + 944);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v23 = *(v0 + 976);
    v24 = *(v0 + 656);
    sub_10005006C(v22 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 768) + 72) * v21, *(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v25 = *(v24 + v23);
    if (*(v25 + 16))
    {
      v26 = sub_1000486F0(*(v0 + 800));
      if (v27)
      {
        v28 = *(v0 + 920);
        v29 = *(v0 + 728);
        v30 = *(v0 + 720);
        v31 = *(v0 + 656);
        sub_10005006C(*(v25 + 56) + *(*(v0 + 696) + 72) * v26, v30, _s5BoardVMa);
        sub_100025738(v30, v29, _s5BoardVMa);
        v32 = swift_endAccess();
        v35 = *(v31 + v28);
        *(v0 + 1000) = v35;
        if (v35)
        {
          v36 = sub_101100330;
          goto LABEL_34;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return _swift_task_switch(v32, v33, v34);
      }
    }

    swift_endAccess();
  }

  v37 = *(v0 + 952);
  v38 = *(v37 + 16);
  *(v0 + 1016) = v38;
  if (v38)
  {
    v39 = *(v0 + 768);
    *(v0 + 1024) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
    *(v0 + 1140) = *(v39 + 80);
    *(v0 + 1032) = 0u;
    if (*(v37 + 16))
    {
      v40 = 0;
      while (1)
      {
        v41 = *(v0 + 1024);
        v42 = *(v0 + 656);
        sub_10005006C(v37 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v40, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        v43 = *(v42 + v41);
        if (*(v43 + 16))
        {
          v44 = sub_1000486F0(*(v0 + 792));
          if (v45)
          {
            break;
          }
        }

        swift_endAccess();
        v46 = *(v0 + 1016);
        v47 = *(v0 + 1040) + 1;
        sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
        if (v47 == v46)
        {
          goto LABEL_25;
        }

        v40 = *(v0 + 1040) + 1;
        *(v0 + 1040) = v40;
        *(v0 + 1032) = 0;
        v37 = *(v0 + 952);
        if (v40 >= *(v37 + 16))
        {
          goto LABEL_24;
        }
      }

      v56 = *(v0 + 920);
      v57 = *(v0 + 712);
      v58 = *(v0 + 704);
      v59 = *(v0 + 656);
      sub_10005006C(*(v43 + 56) + *(*(v0 + 696) + 72) * v44, v58, _s5BoardVMa);
      sub_100025738(v58, v57, _s5BoardVMa);
      v32 = swift_endAccess();
      v35 = *(v59 + v56);
      *(v0 + 1048) = v35;
      if (!v35)
      {
        goto LABEL_45;
      }

      v36 = sub_101100F30;
      goto LABEL_34;
    }

LABEL_24:
    __break(1u);
  }

LABEL_25:
  v48 = *(v0 + 960);
  v49 = *(v48 + 16);
  *(v0 + 1064) = v49;
  if (!v49)
  {
    if (qword_1019F2238 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *(v0 + 1072) = 0;
  if (!*(v48 + 16))
  {
    __break(1u);
LABEL_41:
    swift_once();
LABEL_30:
    v54 = *(v0 + 920);
    v55 = *(v0 + 656);
    *(v0 + 1096) = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    v32 = swift_initStackObject();
    *(v0 + 1104) = v32;
    *(v32 + 16) = xmmword_10146C6B0;
    v35 = *(v55 + v54);
    *(v0 + 1112) = v35;
    if (v35)
    {

      v32 = sub_101101928;
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v50 = *(v0 + 920);
  v51 = *(v0 + 784);
  v52 = *(v0 + 768);
  v53 = *(v0 + 656);
  *(v0 + 1080) = *(v52 + 72);
  v32 = sub_10005006C(v48 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v51, type metadata accessor for CRLBoardIdentifier);
  v35 = *(v53 + v50);
  *(v0 + 1088) = v35;
  if (!v35)
  {
    __break(1u);
    goto LABEL_43;
  }

  v36 = sub_101101310;
LABEL_34:
  v60 = v36;

  v32 = v60;
LABEL_35:
  v33 = v35;
  v34 = 0;

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_101100F30()
{
  v1 = v0[129];
  sub_1012813BC(v0[89], 0, 0xF000000000000000);
  v0[132] = v1;
  if (v1)
  {
    v2 = v0[113];
    v3 = v0[112];
    v4 = sub_101101C24;
  }

  else
  {

    v2 = v0[113];
    v3 = v0[112];
    v4 = sub_101100FD8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_101100FD8()
{
  v1 = *(v0 + 1056);
  sub_10003D87C(*(v0 + 712), _s5BoardVMa);
  while (1)
  {
    v2 = *(v0 + 1016);
    v3 = *(v0 + 1040) + 1;
    sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(v0 + 1040) + 1;
    *(v0 + 1040) = v4;
    *(v0 + 1032) = v1;
    v5 = *(v0 + 952);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
LABEL_15:
      v27 = *(v0 + 920);
      v28 = *(v0 + 656);
      *(v0 + 1096) = static OS_os_log.appIntents;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(v0 + 1104) = inited;
      *(inited + 16) = xmmword_10146C6B0;
      v18 = *(v28 + v27);
      *(v0 + 1112) = v18;
      if (v18)
      {

        inited = sub_101101928;
        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v6 = *(v0 + 1024);
    v7 = *(v0 + 656);
    sub_10005006C(v5 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v4, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v8 = *(v7 + v6);
    if (*(v8 + 16))
    {
      v9 = sub_1000486F0(*(v0 + 792));
      if (v10)
      {
        v11 = *(v0 + 920);
        v12 = *(v0 + 712);
        v13 = *(v0 + 704);
        v14 = *(v0 + 656);
        sub_10005006C(*(v8 + 56) + *(*(v0 + 696) + 72) * v9, v13, _s5BoardVMa);
        sub_100025738(v13, v12, _s5BoardVMa);
        inited = swift_endAccess();
        v18 = *(v14 + v11);
        *(v0 + 1048) = v18;
        if (v18)
        {
          v19 = sub_101100F30;
          goto LABEL_13;
        }

LABEL_25:
        __break(1u);
        return _swift_task_switch(inited, v16, v17);
      }
    }

    swift_endAccess();
  }

  v20 = *(v0 + 960);
  v21 = *(v20 + 16);
  *(v0 + 1064) = v21;
  if (!v21)
  {
    if (qword_1019F2238 != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  *(v0 + 1072) = 0;
  if (!*(v20 + 16))
  {
    goto LABEL_21;
  }

  v22 = *(v0 + 920);
  v23 = *(v0 + 784);
  v24 = *(v0 + 768);
  v25 = *(v0 + 656);
  *(v0 + 1080) = *(v24 + 72);
  inited = sub_10005006C(v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23, type metadata accessor for CRLBoardIdentifier);
  v18 = *(v25 + v22);
  *(v0 + 1088) = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = sub_101101310;
LABEL_13:
  v26 = v19;

  inited = v26;
LABEL_17:
  v16 = v18;
  v17 = 0;

  return _swift_task_switch(inited, v16, v17);
}

uint64_t sub_101101310()
{
  v1 = v0[136];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = sub_1000486F0(v0[98]);
    v4 = v0[84];
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = type metadata accessor for CRLBoardEntity();
      v9 = *(v8 - 8);
      sub_10005006C(v7 + *(v9 + 72) * v6, v4, type metadata accessor for CRLBoardEntity);
      (*(v9 + 56))(v4, 0, 1, v8);
    }

    else
    {
      v8 = type metadata accessor for CRLBoardEntity();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    }
  }

  else
  {
    v10 = v0[84];
    v8 = type metadata accessor for CRLBoardEntity();
    (*(*(v8 - 8) + 56))(v10, 1, 1, v8);
  }

  v11 = v0[84];
  swift_endAccess();
  type metadata accessor for CRLBoardEntity();
  v12 = *(v8 - 8);
  v13 = (*(v12 + 48))(v11, 1, v8);
  sub_10000CAAC(v11, &qword_1019F6268);
  if (v13 == 1)
  {
    v14 = v0[98];
    type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError();
    sub_101104B20(&qword_101A2ACE8, type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError);
    v0[141] = swift_allocError();
    sub_10005006C(v14, v15, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = v0[113];
    v17 = v0[112];
    v18 = sub_101102138;
  }

  else
  {
    v19 = v0[98];
    swift_beginAccess();
    v20 = sub_1000486F0(v19);
    if (v21)
    {
      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v1 + 120);
      v0[78] = v24;
      *(v1 + 120) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA6E7C();
        v24 = v0[78];
      }

      v25 = v0[83];
      sub_10003D87C(*(v24 + 48) + v0[135] * v22, type metadata accessor for CRLBoardIdentifier);
      sub_100025738(*(v24 + 56) + *(v12 + 72) * v22, v25, type metadata accessor for CRLBoardEntity);
      sub_100BCE370(v22, v24);
      *(v1 + 120) = v24;

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v0[83];
    (*(v12 + 56))(v27, v26, 1, v8);
    sub_10000CAAC(v27, &qword_1019F6268);
    swift_endAccess();

    v16 = v0[113];
    v17 = v0[112];
    v18 = sub_10110172C;
  }

  return _swift_task_switch(v18, v17, v16);
}

uint64_t sub_10110172C()
{
  v1 = v0[133];
  v2 = v0[134] + 1;
  inited = sub_10003D87C(v0[98], type metadata accessor for CRLBoardIdentifier);
  if (v2 == v1)
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v6 = v0[115];
    v7 = v0[82];
    v0[137] = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v0[138] = inited;
    *(inited + 1) = xmmword_10146C6B0;
    v8 = *(v7 + v6);
    v0[139] = v8;
    if (v8)
    {

      inited = sub_101101928;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v9 = v0[134] + 1;
  v0[134] = v9;
  v10 = v0[120];
  if (v9 >= *(v10 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v0[115];
  v12 = v0[98];
  v13 = v0[96];
  v14 = v0[82];
  v15 = *(v13 + 72);
  v0[135] = v15;
  inited = sub_10005006C(v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v15 * v9, v12, type metadata accessor for CRLBoardIdentifier);
  v8 = *(v14 + v11);
  v0[136] = v8;
  if (!v8)
  {
LABEL_14:
    __break(1u);
    return _swift_task_switch(inited, v4, v5);
  }

  inited = sub_101101310;
LABEL_9:
  v4 = v8;
  v5 = 0;

  return _swift_task_switch(inited, v4, v5);
}

uint64_t sub_101101928()
{
  v1 = v0[139];
  swift_beginAccess();
  v0[140] = *(v1 + 120);
  v2 = v0[113];
  v3 = v0[112];

  return _swift_task_switch(sub_1011019C0, v3, v2);
}

uint64_t sub_1011019C0()
{
  v1 = v0[140];
  v2 = v0[138];
  v3 = v0[137];

  v2[7] = sub_1005B981C(&qword_101A2ACF0);
  v2[8] = sub_10001A2F8(&qword_101A2ACF8, &qword_101A2ACF0);
  v2[4] = v1;
  v4 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "Updated entities in store: %@", 29, 2, v2);
  swift_setDeallocating();
  sub_100005070((v2 + 4));

  v5 = v0[1];

  return v5();
}

uint64_t sub_101101C24()
{

  if (qword_1019F2238 != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = *(v0 + 792);
  v2 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0xE000000000000000;
  }

  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000010155E590;
  }

  else
  {
  }

  v8 = *(v0 + 1056);
  *(v0 + 584) = UUID.uuidString.getter();
  *(v0 + 592) = v9;
  v10._countAndFlagsBits = 15418;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v5;
  v11._object = v6;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = *(v0 + 584);
  v14 = *(v0 + 592);
  *(inited + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(inited + 64) = v15;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  *(v0 + 632) = v8;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v16 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v18, "Could not update entity for board identifier %@: %@", 51, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_10003D87C(*(v0 + 712), _s5BoardVMa);
  while (1)
  {
    v19 = *(v0 + 1016);
    v20 = *(v0 + 1040) + 1;
    sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
    if (v20 == v19)
    {
      break;
    }

    v21 = *(v0 + 1040) + 1;
    *(v0 + 1040) = v21;
    *(v0 + 1032) = 0;
    v22 = *(v0 + 952);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v23 = *(v0 + 1024);
    v24 = *(v0 + 656);
    sub_10005006C(v22 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v21, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v25 = *(v24 + v23);
    if (*(v25 + 16))
    {
      v26 = sub_1000486F0(*(v0 + 792));
      if (v27)
      {
        v28 = *(v0 + 920);
        v29 = *(v0 + 712);
        v30 = *(v0 + 704);
        v31 = *(v0 + 656);
        sub_10005006C(*(v25 + 56) + *(*(v0 + 696) + 72) * v26, v30, _s5BoardVMa);
        sub_100025738(v30, v29, _s5BoardVMa);
        v32 = swift_endAccess();
        v35 = *(v31 + v28);
        *(v0 + 1048) = v35;
        if (v35)
        {
          v36 = sub_101100F30;
          goto LABEL_21;
        }

LABEL_34:
        __break(1u);
        return _swift_task_switch(v32, v33, v34);
      }
    }

    swift_endAccess();
  }

  v37 = *(v0 + 960);
  v38 = *(v37 + 16);
  *(v0 + 1064) = v38;
  if (!v38)
  {
    if (qword_1019F2238 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  *(v0 + 1072) = 0;
  if (!*(v37 + 16))
  {
    __break(1u);
LABEL_31:
    swift_once();
LABEL_23:
    v44 = *(v0 + 920);
    v45 = *(v0 + 656);
    *(v0 + 1096) = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    v32 = swift_initStackObject();
    *(v0 + 1104) = v32;
    *(v32 + 16) = xmmword_10146C6B0;
    v35 = *(v45 + v44);
    *(v0 + 1112) = v35;
    if (v35)
    {

      v32 = sub_101101928;
      goto LABEL_25;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v39 = *(v0 + 920);
  v40 = *(v0 + 784);
  v41 = *(v0 + 768);
  v42 = *(v0 + 656);
  *(v0 + 1080) = *(v41 + 72);
  v32 = sub_10005006C(v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v40, type metadata accessor for CRLBoardIdentifier);
  v35 = *(v42 + v39);
  *(v0 + 1088) = v35;
  if (!v35)
  {
    __break(1u);
    goto LABEL_33;
  }

  v36 = sub_101101310;
LABEL_21:
  v43 = v36;

  v32 = v43;
LABEL_25:
  v33 = v35;
  v34 = 0;

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_101102138()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[98];
  v2 = v0[97];
  v3 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  sub_10005006C(v1, v2, type metadata accessor for CRLBoardIdentifier);
  v5 = (v2 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  if (*v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == 0xE000000000000000;
  }

  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = 0xD000000000000012;
    v7 = 0x800000010155E590;
  }

  else
  {
  }

  v9 = v0[141];
  v10 = v0[97];
  v0[71] = UUID.uuidString.getter();
  v0[72] = v11;
  v12._countAndFlagsBits = 15418;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v6;
  v13._object = v7;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = v0[71];
  v16 = v0[72];
  sub_10003D87C(v10, type metadata accessor for CRLBoardIdentifier);
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 64) = v17;
  *(inited + 32) = v15;
  *(inited + 40) = v16;
  v0[77] = v9;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v18 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v20, "Could not remove entity for board identifier %@: %@", 51, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v21 = v0[133];
  v22 = v0[134] + 1;
  v23 = sub_10003D87C(v0[98], type metadata accessor for CRLBoardIdentifier);
  if (v22 == v21)
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v26 = v0[115];
    v27 = v0[82];
    v0[137] = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    v23 = swift_initStackObject();
    v0[138] = v23;
    *(v23 + 1) = xmmword_10146C6B0;
    v28 = *(v27 + v26);
    v0[139] = v28;
    if (v28)
    {

      v23 = sub_101101928;
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v29 = v0[134] + 1;
  v0[134] = v29;
  v30 = v0[120];
  if (v29 >= *(v30 + 16))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v0[115];
  v32 = v0[98];
  v33 = v0[96];
  v34 = v0[82];
  v35 = *(v33 + 72);
  v0[135] = v35;
  v23 = sub_10005006C(v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + v35 * v29, v32, type metadata accessor for CRLBoardIdentifier);
  v28 = *(v34 + v31);
  v0[136] = v28;
  if (!v28)
  {
LABEL_23:
    __break(1u);
    return _swift_task_switch(v23, v24, v25);
  }

  v23 = sub_101101310;
LABEL_18:
  v24 = v28;
  v25 = 0;

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_101102548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[13] = v4;
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  v6[17] = a4;
  v6[87] = a2;

  v7 = v5[73];
  v8 = v5[72];

  return _swift_task_switch(sub_101102674, v8, v7);
}

uint64_t sub_101102674()
{
  v247 = v0;
  if (!*(v0 + 696))
  {

    v26 = *(v0 + 8);

    return v26();
  }

  v213 = *(v0 + 696);
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v3 = *(v0 + 592);
  v4 = *(v0 + 272);
  *(v0 + 704) = *(v0 + 136);
  v208 = v2;
  *(v0 + 712) = v2;
  v211 = v1;
  *(v0 + 720) = v1;
  v209 = v3 != 0;
  v5 = *(*(v4 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
  v246[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_60;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 400);
    v228 = *(v0 + 392);
    v9 = (v8 + 56);
    v222 = v8;
    v10 = (v8 + 48);
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v11 = *(v5 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v14 = *(v0 + 600);
      v15 = *(v0 + 272);
      swift_beginAccess();
      v16 = *(v15 + v14);
      if (*(v16 + 16) && (v17 = sub_1000486F0(&v12[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier]), (v18 & 1) != 0))
      {
        sub_10005006C(*(v16 + 56) + *(v222 + 72) * v17, *(v0 + 560), _s5BoardVMa);
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = *(v0 + 560);
      v21 = *(v0 + 392);
      (*v9)(v20, v19, 1, v21);
      v22 = (*v10)(v20, 1, v21);
      v23 = *(v0 + 560);
      if (v22)
      {
        sub_10000CAAC(v23, &unk_1019FA3E0);
        swift_endAccess();
      }

      else
      {
        v24 = *(v23 + *(v228 + 60));
        sub_10000CAAC(v23, &unk_1019FA3E0);
        swift_endAccess();
        if ((v24 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if ((v12[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted] & 1) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      ++v7;
      if (v13 == v6)
      {
        v25 = v246[0];
        goto LABEL_27;
      }
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_27:

  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
LABEL_30:
      v245 = _swiftEmptyArrayStorage;
      result = sub_100776804(0, v28 & ~(v28 >> 63), 0);
      if (v28 < 0)
      {
        goto LABEL_168;
      }

      v29 = 0;
      v215 = *(v0 + 464);
      v216 = *(v0 + 472);
      v229 = *(v0 + 400);
      v214 = *(v0 + 376);
      v30 = v25;
      v234 = v25 & 0xC000000000000001;
      v5 = v245;
      v219 = v28;
      v223 = v25;
      while (!__OFADD__(v29, 1))
      {
        v239 = v29 + 1;
        if (v234)
        {
          v31 = v5;
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *(v30 + 16))
          {
            goto LABEL_59;
          }

          v31 = v5;
          v32 = *(v30 + 8 * v29 + 32);
        }

        v33 = v32;
        v5 = *(v0 + 600);
        v35 = *(v0 + 448);
        v34 = *(v0 + 456);
        v36 = *(v0 + 384);
        v37 = *(v0 + 272);
        sub_1010EE0E8(v32, v34);
        sub_10005006C(v33 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier, v36, type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        sub_10005006C(v34, v35, _s5BoardVMa);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v246[0] = *(v37 + v5);
        v39 = v246[0];
        *(v37 + v5) = 0x8000000000000000;
        v40 = sub_1000486F0(v36);
        v42 = v39[2];
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          goto LABEL_57;
        }

        v46 = v41;
        if (v39[3] >= v45)
        {
          v5 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v59 = v40;
            sub_100AA62F0();
            v40 = v59;
            v39 = v246[0];
          }
        }

        else
        {
          v47 = *(v0 + 384);
          sub_100A8CC60(v45, isUniquelyReferenced_nonNull_native);
          v39 = v246[0];
          v40 = sub_1000486F0(v47);
          if ((v46 & 1) != (v48 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v5 = v31;
        }

        v49 = *(v0 + 448);
        v50 = *(v0 + 384);
        if (v46)
        {
          sub_101107A14(*(v0 + 448), v39[7] + *(v229 + 72) * v40, _s5BoardVMa);
          sub_10003D87C(v50, type metadata accessor for CRLBoardIdentifier);
        }

        else
        {
          v39[(v40 >> 6) + 8] |= 1 << v40;
          v51 = v40;
          sub_10005006C(v50, v39[6] + *(v214 + 72) * v40, type metadata accessor for CRLBoardIdentifier);
          sub_100025738(v49, v39[7] + *(v229 + 72) * v51, _s5BoardVMa);
          sub_10003D87C(v50, type metadata accessor for CRLBoardIdentifier);
          v52 = v39[2];
          v44 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v44)
          {
            goto LABEL_58;
          }

          v39[2] = v53;
        }

        v54 = *(v0 + 544);
        v55 = *(v0 + 456);
        *(*(v0 + 272) + *(v0 + 600)) = v39;

        swift_endAccess();
        sub_10005006C(v55, v54, _s5BoardVMa);
        swift_storeEnumTagMultiPayload();

        *(v54 + *(v215 + 20)) = _swiftEmptyArrayStorage;
        sub_10003D87C(v55, _s5BoardVMa);
        v245 = v5;
        v57 = *(v5 + 16);
        v56 = *(v5 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_100776804(v56 > 1, v57 + 1, 1);
          v5 = v245;
        }

        v58 = *(v0 + 544);
        *(v5 + 16) = v57 + 1;
        sub_100025738(v58, v5 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v57, _s4NodeVMa);
        ++v29;
        v30 = v223;
        if (v239 == v219)
        {

          goto LABEL_63;
        }
      }

      goto LABEL_56;
    }
  }

  else
  {
    v28 = *(v25 + 16);
    if (v28)
    {
      goto LABEL_30;
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_63:
  v60 = *(v0 + 272);
  v61 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_allBoardNodes;
  *&v60[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_allBoardNodes] = v213;

  v246[0] = *&v60[v61];
  swift_bridgeObjectRetain_n();
  sub_1010FDF64(v246, v60);
  v62 = *(v0 + 272);

  v217 = v5;

  *&v62[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentBoardNodes] = v246[0];

  v224 = v61;
  v230 = v60;
  v63 = *&v60[v61];
  v64 = *(v63 + 16);

  v240 = v64;
  if (v64)
  {
    v65 = 0;
    v66 = *(v0 + 472);
    v235 = *(v0 + 392);
    v67 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v65 >= *(v63 + 16))
      {
        goto LABEL_164;
      }

      v68 = *(v0 + 536);
      v69 = *(v0 + 360);
      v70 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v71 = *(v66 + 72);
      sub_10005006C(v63 + v70 + v71 * v65, v68, _s4NodeVMa);
      sub_10005006C(v68, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v72 = *(v0 + 440);
        sub_100025738(*(v0 + 360), v72, _s5BoardVMa);
        v73 = *(v72 + *(v235 + 56));
        sub_10003D87C(v72, _s5BoardVMa);
        if (v73)
        {
          sub_100025738(*(v0 + 536), *(v0 + 528), _s4NodeVMa);
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v246[0] = v67;
          if ((v74 & 1) == 0)
          {
            sub_100776804(0, v67[2] + 1, 1);
            v67 = v246[0];
          }

          v76 = v67[2];
          v75 = v67[3];
          if (v76 >= v75 >> 1)
          {
            sub_100776804(v75 > 1, v76 + 1, 1);
            v67 = v246[0];
          }

          v77 = *(v0 + 528);
          v67[2] = v76 + 1;
          result = sub_100025738(v77, v67 + v70 + v76 * v71, _s4NodeVMa);
          goto LABEL_67;
        }
      }

      else
      {
        sub_10003D87C(*(v0 + 360), type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      result = sub_10003D87C(*(v0 + 536), _s4NodeVMa);
LABEL_67:
      if (v240 == ++v65)
      {
        goto LABEL_77;
      }
    }
  }

  v67 = _swiftEmptyArrayStorage;
LABEL_77:
  v78 = *(v0 + 272);

  *(v78 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_favoriteBoardNodes) = v67;

  v79 = *&v230[v224];
  v80 = *(v79 + 16);

  v241 = v80;
  if (v80)
  {
    v81 = 0;
    v82 = *(v0 + 472);
    v231 = *(v0 + 392);
    v83 = _swiftEmptyArrayStorage;
    v225 = v82;
    v236 = v79;
    while (v81 < *(v79 + 16))
    {
      v84 = *(v0 + 520);
      v85 = *(v0 + 352);
      v86 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v87 = *(v82 + 72);
      sub_10005006C(v79 + v86 + v87 * v81, v84, _s4NodeVMa);
      sub_10005006C(v84, v85, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v89 = *(v0 + 352);
      if (EnumCaseMultiPayload == 2)
      {
        v90 = *(v0 + 432);
        v91 = *(v0 + 336);
        sub_100025738(*(v0 + 352), v90, _s5BoardVMa);
        sub_10000BE14(v90 + *(v231 + 80), v91, &qword_1019F33D0);
        sub_10003D87C(v90, _s5BoardVMa);
        v92 = _s5BoardV13ShareMetadataVMa(0);
        v93 = (*(*(v92 - 8) + 48))(v91, 1, v92);
        sub_10000CAAC(v91, &qword_1019F33D0);
        v94 = *(v0 + 520);
        if (v93 == 1)
        {
          result = sub_10003D87C(v94, _s4NodeVMa);
          v79 = v236;
          v82 = v225;
        }

        else
        {
          sub_100025738(v94, *(v0 + 512), _s4NodeVMa);
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v246[0] = v83;
          if ((v95 & 1) == 0)
          {
            sub_100776804(0, v83[2] + 1, 1);
            v83 = v246[0];
          }

          v79 = v236;
          v97 = v83[2];
          v96 = v83[3];
          v82 = v225;
          if (v97 >= v96 >> 1)
          {
            sub_100776804(v96 > 1, v97 + 1, 1);
            v83 = v246[0];
          }

          v98 = *(v0 + 512);
          v83[2] = v97 + 1;
          result = sub_100025738(v98, v83 + v86 + v97 * v87, _s4NodeVMa);
        }
      }

      else
      {
        sub_10003D87C(*(v0 + 520), _s4NodeVMa);
        result = sub_10003D87C(v89, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      if (v241 == ++v81)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_165;
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_91:
  v210 = v211 | v209;
  v99 = *(v0 + 600);
  v220 = *(v0 + 312);
  v226 = *(v0 + 376);
  v100 = *(v0 + 272);
  v101 = *(v0 + 400);

  v246[0] = v217;
  sub_10003F1A0(v83);
  *(v100 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedBoardAndInvitationNodes) = v246[0];

  v102 = *(v100 + v99);
  v105 = *(v102 + 64);
  v104 = v102 + 64;
  v103 = v105;
  v106 = -1;
  v107 = -1 << *(*(v100 + v99) + 32);
  if (-v107 < 64)
  {
    v106 = ~(-1 << -v107);
  }

  v108 = v106 & v103;
  v109 = (63 - v107) >> 6;
  v237 = *(v100 + v99);
  result = swift_bridgeObjectRetain_n();
  v110 = 0;
  v111 = _swiftEmptyArrayStorage;
  v232 = v101;
  v218 = v104;
  while (1)
  {
    v242 = v111;
    if (!v108)
    {
      break;
    }

    v112 = v110;
LABEL_99:
    v113 = *(v0 + 552);
    v114 = *(v0 + 392);
    v115 = *(v0 + 320);
    v116 = *(v0 + 328);
    v117 = __clz(__rbit64(v108));
    v108 &= v108 - 1;
    v118 = v117 | (v112 << 6);
    sub_10005006C(*(v237 + 48) + *(v226 + 72) * v118, v116, type metadata accessor for CRLBoardIdentifier);
    v212 = *(v232 + 72);
    v119 = *(v237 + 56) + v212 * v118;
    v101 = v232;
    sub_10005006C(v119, v116 + *(v220 + 48), _s5BoardVMa);
    sub_10003DFF8(v116, v115, &qword_101A11B20);
    sub_100025738(v115 + *(v220 + 48), v113, _s5BoardVMa);
    (*(v232 + 56))(v113, 0, 1, v114);
    sub_10003D87C(v115, type metadata accessor for CRLBoardIdentifier);
    v120 = (*(v232 + 48))(v113, 1, v114);
    v121 = *(v0 + 552);
    if (v120 == 1)
    {
      result = sub_10000CAAC(v121, &unk_1019FA3E0);
      v110 = v112;
      v111 = v242;
      v104 = v218;
    }

    else
    {
      sub_100025738(v121, *(v0 + 424), _s5BoardVMa);
      v111 = v242;
      v104 = v218;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_100B36CD4(0, v242[2] + 1, 1, v242);
      }

      v123 = v111[2];
      v122 = v111[3];
      if (v123 >= v122 >> 1)
      {
        v111 = sub_100B36CD4(v122 > 1, v123 + 1, 1, v111);
      }

      v124 = *(v0 + 424);
      v111[2] = v123 + 1;
      result = sub_100025738(v124, v111 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + v123 * v212, _s5BoardVMa);
      v110 = v112;
    }
  }

  while (1)
  {
    v112 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (v112 >= v109)
    {
      break;
    }

    v108 = *(v104 + 8 * v112);
    ++v110;
    if (v108)
    {
      goto LABEL_99;
    }
  }

  v125 = v111[2];
  v126 = _swiftEmptyArrayStorage;
  if (v125)
  {
    v127 = 0;
    v128 = *(v0 + 392);
    while (v127 < v111[2])
    {
      v129 = *(v0 + 416);
      v130 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v131 = *(v101 + 72);
      sub_10005006C(v111 + v130 + v131 * v127, v129, _s5BoardVMa);
      v132 = *(v0 + 416);
      if (*(v129 + *(v128 + 68)) != 1 || (*(v132 + *(v128 + 52)) & 1) != 0)
      {
        result = sub_10003D87C(v132, _s5BoardVMa);
      }

      else
      {
        sub_100025738(v132, *(v0 + 408), _s5BoardVMa);
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v246[0] = v126;
        if ((v133 & 1) == 0)
        {
          sub_1007768E4(0, v126[2] + 1, 1);
          v126 = v246[0];
        }

        v135 = v126[2];
        v134 = v126[3];
        if (v135 >= v134 >> 1)
        {
          sub_1007768E4(v134 > 1, v135 + 1, 1);
          v126 = v246[0];
        }

        v136 = *(v0 + 408);
        v126[2] = v135 + 1;
        result = sub_100025738(v136, v126 + v130 + v135 * v131, _s5BoardVMa);
        v111 = v242;
      }

      if (v125 == ++v127)
      {
        goto LABEL_118;
      }
    }

LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

LABEL_118:

  v246[0] = v126;

  sub_1010AE8B0(v246);

  v137 = v246[0];
  v138 = v246[0][2];
  if (v138)
  {
    v139 = *(v0 + 472);
    v243 = *(v0 + 464);
    v246[0] = _swiftEmptyArrayStorage;
    sub_100776804(0, v138, 0);
    v140 = v246[0];
    v141 = v137 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
    v142 = *(v232 + 72);
    do
    {
      v143 = *(v0 + 504);
      v144 = *(v0 + 440);
      sub_10005006C(v141, v144, _s5BoardVMa);
      sub_10005006C(v144, v143, _s5BoardVMa);
      swift_storeEnumTagMultiPayload();
      sub_10003D87C(v144, _s5BoardVMa);
      *(v143 + *(v243 + 20)) = _swiftEmptyArrayStorage;
      v246[0] = v140;
      v146 = v140[2];
      v145 = v140[3];
      if (v146 >= v145 >> 1)
      {
        sub_100776804(v145 > 1, v146 + 1, 1);
        v140 = v246[0];
      }

      v147 = *(v0 + 504);
      v140[2] = v146 + 1;
      sub_100025738(v147, v140 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v146, _s4NodeVMa);
      v141 += v142;
      --v138;
    }

    while (v138);
  }

  else
  {

    v140 = _swiftEmptyArrayStorage;
  }

  v148 = *(v0 + 272);
  *(v148 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentlyDeletedBoardNodes) = v140;

  v149 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_topLevelUserFolderNodes;
  *(v148 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_topLevelUserFolderNodes) = v208;

  v150 = *(v148 + v149);
  v151 = _swiftEmptySetSingleton;
  v245 = _swiftEmptySetSingleton;
  v152 = v150[2];
  swift_bridgeObjectRetain_n();
  if (v152)
  {
    v153 = *(v0 + 472);
    v154 = (*(v153 + 80) + 32) & ~*(v153 + 80);
    v155 = v150;
    do
    {
      sub_10005006C(v155 + v154, *(v0 + 480), _s4NodeVMa);
      v156 = swift_isUniquelyReferenced_nonNull_native();
      if (!v156 || (v152 - 1) > v155[3] >> 1)
      {
        v155 = sub_10003DFD0(v156, v152, 1, v155);
      }

      sub_10003D87C(v155 + v154, _s4NodeVMa);
      v157 = *(v153 + 72);
      if (v157 > 0 || v155 + v154 >= v155 + v154 + v157 + (v155[2] - 1) * v157)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v157)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v158 = *(v0 + 664);
      v160 = *(v0 + 488);
      v159 = *(v0 + 496);
      v161 = *(v0 + 480);
      --v155[2];
      v246[0] = v155;

      sub_10003F1A0(v162);
      sub_100025738(v161, v160, _s4NodeVMa);
      sub_100025738(v160, v159, _s4NodeVMa);
      sub_1010FE044(&v245, v159, v158);
      sub_10003D87C(*(v0 + 496), _s4NodeVMa);
      v155 = v246[0];
      v152 = v246[0][2];
    }

    while (v152);
    v151 = v245;
  }

  *(v0 + 728) = v151;
  v163 = *(v0 + 624);
  v244 = *(v0 + 288);

  v164 = 0;
  v165 = v163 + 64;
  v166 = -1;
  v167 = -1 << *(v163 + 32);
  if (-v167 < 64)
  {
    v166 = ~(-1 << -v167);
  }

  v168 = v166 & *(v163 + 64);
  v169 = (63 - v167) >> 6;
  v221 = _swiftEmptyArrayStorage;
  v227 = v163;
  while (2)
  {
    if (v168)
    {
      v170 = v164;
LABEL_145:
      v171 = *(v0 + 616);
      v172 = *(v0 + 272);
      v173 = *(v244 + 72);
      sub_10005006C(*(v163 + 48) + v173 * (__clz(__rbit64(v168)) | (v170 << 6)), *(v0 + 304), type metadata accessor for CRLFolderIdentifier);
      swift_beginAccess();
      v174 = *(v172 + v171);
      v238 = v173;
      if (*(v174 + 16))
      {
        v175 = sub_1007C88C4(*(v0 + 304));
        v176 = *(v0 + 280);
        if (v177)
        {
          v178 = v175;
          v233 = *(v174 + 56);
          v179 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
          v180 = *(v179 - 8);
          sub_10005006C(v233 + *(v180 + 72) * v178, v176, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          (*(v180 + 56))(v176, 0, 1, v179);
          v163 = v227;
          goto LABEL_150;
        }
      }

      else
      {
        v176 = *(v0 + 280);
      }

      v179 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
      (*(*(v179 - 8) + 56))(v176, 1, 1, v179);
LABEL_150:
      v168 &= v168 - 1;
      v181 = *(v0 + 280);
      swift_endAccess();
      type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
      if ((*(*(v179 - 8) + 48))(v181, 1, v179) == 1)
      {
        v183 = *(v0 + 296);
        v184 = *(v0 + 304);
        sub_10000CAAC(*(v0 + 280), &qword_101A03A00);
        sub_100025738(v184, v183, type metadata accessor for CRLFolderIdentifier);
        v185 = v221;
        v186 = swift_isUniquelyReferenced_nonNull_native();
        v246[0] = v221;
        if ((v186 & 1) == 0)
        {
          sub_1007768C4(0, v221[2] + 1, 1);
          v185 = v246[0];
        }

        v188 = v185[2];
        v187 = v185[3];
        if (v188 >= v187 >> 1)
        {
          sub_1007768C4(v187 > 1, v188 + 1, 1);
          v185 = v246[0];
        }

        v189 = *(v0 + 296);
        v185[2] = v188 + 1;
        v221 = v185;
        result = sub_100025738(v189, v185 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + v188 * v238, type metadata accessor for CRLFolderIdentifier);
        v164 = v170;
      }

      else
      {
        v182 = *(v0 + 280);
        sub_10003D87C(*(v0 + 304), type metadata accessor for CRLFolderIdentifier);
        result = sub_10000CAAC(v182, &qword_101A03A00);
        v164 = v170;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v170 = v164 + 1;
    if (__OFADD__(v164, 1))
    {
      break;
    }

    if (v170 >= v169)
    {

      *(v0 + 736) = sub_100E94314(v221);

      v190 = sub_10003B15C();

      v192 = sub_10066F2C0(v191, v190);

      if (v192)
      {
        v193 = v210;
      }

      else
      {
        v194 = (*(v0 + 272) + *(v0 + 632));
        sub_100035FBC(v190, (v0 + 16));
        v196 = *(v0 + 32);
        v195 = *(v0 + 48);
        *v194 = *(v0 + 16);
        v194[1] = v196;
        v194[2] = v195;

        v193 = 1;
      }

      *(v0 + 776) = v193 & 1;
      v197 = *(v0 + 608);
      v198 = *(v0 + 272);

      v200 = sub_100049B74(v199);
      v201 = v198;
      *(v0 + 744) = sub_1010FE83C(v200, v201);

      v203 = sub_100049B74(v202);
      v204 = v201;
      v205 = sub_1010FEDCC(v203, v197, v204);
      *(v0 + 752) = v205;

      *(v0 + 760) = *(sub_1010ACDC4(v206, v205) + 16);

      v207 = swift_task_alloc();
      *(v0 + 768) = v207;
      *v207 = v0;
      v207[1] = sub_1011042B8;

      return sub_1010FF154(v213);
    }

    v168 = *(v165 + 8 * v170);
    ++v164;
    if (v168)
    {
      goto LABEL_145;
    }
  }

LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_1011042B8()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return _swift_task_switch(sub_1011043D8, v3, v2);
}

uint64_t sub_1011043D8()
{
  v19 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 776);
  v3 = *(v0 + 272);

  if (v1 || (v2 & 1) != 0)
  {
    *(v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) = 1;
    sub_100E70650(&v18, 0);
  }

  else
  {
    if (*(v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating))
    {

      goto LABEL_12;
    }

    *(v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) = 1;
  }

  v4 = *(v0 + 720);

  if ((v4 & 0x100) != 0)
  {
    sub_100E70650(&v17, 1);
  }

  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 264);

  v16 = *(v0 + 728);
  v8 = sub_1010ACDC4(v5, v7);
  *(v0 + 64) = _swiftEmptySetSingleton;
  *(v0 + 72) = v8;
  *(v0 + 80) = v6;
  *(v0 + 88) = v16;
  v9 = [objc_opt_self() defaultCenter];
  if (qword_1019F2748 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 272);
  v11 = qword_101AD8948;
  v12 = sub_100F7CA60();

  sub_10007941C(v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v11 object:v10 userInfo:isa];

LABEL_12:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1011047E4(void *a1)
{
  v2 = [a1 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [a1 message];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v14;
  *(inited + 64) = v14;
  *(inited + 72) = v9;
  *(inited + 80) = v11;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v12, &_mh_execute_header, v15, "Alert: %@ - %@", 14, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  return swift_arrayDestroy();
}

uint64_t sub_101104990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010E8EF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_101104A58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010E8C1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_101104B20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101104B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_101104BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest() - 8;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v16 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_10005006C(v12, v6, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      sub_100E70A6C(v10, v6);
      sub_10003D87C(v10, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      v12 += v13;
      --v11;
    }

    while (v11);
    return v16;
  }

  return a2;
}

uint64_t sub_101104CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_100E6AF38(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

size_t sub_101104E5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v6 = type metadata accessor for CRLFolder();
  v63 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - v11;
  v13 = __chkstk_darwin(v10);
  v51 = &v48 - v14;
  __chkstk_darwin(v13);
  v52 = &v48 - v15;
  v60 = sub_1005B981C(&qword_101A2ADE0);
  v16 = __chkstk_darwin(v60);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v50 = &v48 - v19;
  __chkstk_darwin(v18);
  v49 = &v48 - v20;
  v64 = a1;
  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  if (v22 >= v21)
  {
    v23 = *(a1 + 16);
  }

  else
  {
    v23 = *(a2 + 16);
  }

  v65 = _swiftEmptyArrayStorage;
  result = sub_1007769C4(0, v23, 0);
  v25 = v65;
  v58 = v22;
  v59 = v21;
  v57 = v23;
  if (v23)
  {
    v26 = 0;
    v53 = a2 + 32;
    v54 = v12;
    v55 = a2;
    while (v21 != v26)
    {
      v27 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v28 = *(v63 + 72);
      result = sub_10005006C(v64 + v27 + v28 * v26, v9, type metadata accessor for CRLFolder);
      if (v22 == v26)
      {
        goto LABEL_24;
      }

      v29 = *(v53 + 8 * v26);
      v30 = *(v60 + 48);
      v31 = v56;
      sub_100025738(v9, v56, type metadata accessor for CRLFolder);
      *(v31 + v30) = v29;

      v32 = v54;
      v61(v31, v29);
      sub_10000CAAC(v31, &qword_101A2ADE0);
      v65 = v25;
      v34 = v25[2];
      v33 = v25[3];
      if (v34 >= v33 >> 1)
      {
        sub_1007769C4(v33 > 1, v34 + 1, 1);
        v25 = v65;
      }

      ++v26;
      v25[2] = v34 + 1;
      result = sub_100025738(v32, v25 + v27 + v34 * v28, type metadata accessor for CRLFolder);
      v22 = v58;
      v21 = v59;
      a2 = v55;
      if (v57 == v26)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v21 <= v22)
    {
      return v25;
    }

    v56 = a2 + 32;
    v35 = v57;
    while (v35 < v21)
    {
      v36 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v37 = *(v63 + 72);
      result = sub_10005006C(v64 + v36 + v37 * v35, v52, type metadata accessor for CRLFolder);
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_26;
      }

      if (v22 == v35)
      {
        sub_10003D87C(v52, type metadata accessor for CRLFolder);
        return v25;
      }

      if (v35 >= v22)
      {
        goto LABEL_27;
      }

      v39 = *(v56 + 8 * v35);
      v40 = v60;
      v41 = *(v60 + 48);
      v42 = v50;
      sub_100025738(v52, v50, type metadata accessor for CRLFolder);
      *(v42 + v41) = v39;
      v43 = v49;
      sub_10003DFF8(v42, v49, &qword_101A2ADE0);
      v44 = *(v43 + *(v40 + 48));

      v45 = v51;
      v61(v43, v44);
      sub_10000CAAC(v43, &qword_101A2ADE0);
      v65 = v25;
      v47 = v25[2];
      v46 = v25[3];
      if (v47 >= v46 >> 1)
      {
        sub_1007769C4(v46 > 1, v47 + 1, 1);
        v25 = v65;
      }

      v25[2] = v47 + 1;
      result = sub_100025738(v45, v25 + v36 + v47 * v37, type metadata accessor for CRLFolder);
      ++v35;
      v22 = v58;
      v21 = v59;
      if (v38 == v59)
      {
        return v25;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *sub_10110536C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardToParentFolderMapping] = &_swiftEmptyDictionarySingleton;
  v9 = &v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot];
  sub_100035FBC(_swiftEmptyArrayStorage, v38);
  v10 = v38[1];
  *v9 = v38[0];
  v9[1] = v10;
  v9[2] = v38[2];
  v11 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  *&v4[v11] = sub_100039400(_swiftEmptyArrayStorage);
  v12 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folderViewModels;
  *&v4[v12] = sub_100039618(_swiftEmptyArrayStorage);
  v13 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folders;
  *&v4[v13] = sub_100039830(_swiftEmptyArrayStorage);
  v14 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_collaborationOwners;
  *&v4[v14] = sub_10003A1AC(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore] = 0;
  v15 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for CRLSharedHighlightController()) init];
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_cloudKitObserver] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_userDataDeletionRequestObserver] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_databaseSyncObserver] = 0;
  v16 = &v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_networkReachabilityListener];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_networkReachabilityListenerSubscriptionSet] = _swiftEmptySetSingleton;
  v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_isNetworkReachable] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pendingUpdateOptions] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pendingChangedBoards] = _swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_snapshotUpdateInterval] = 0x4000000000000000;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_realTimeCollaborationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating] = 0;
  v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didCallStartUpdating] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_snapshot] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_maxRecentlyDeleted] = -1;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_maxRecents] = 30;
  v17 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  *&v4[v17] = sub_10003AA28(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_allBoardNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentBoardNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_favoriteBoardNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedBoardAndInvitationNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentlyDeletedBoardNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_topLevelUserFolderNodes] = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers;
  *&v4[v18] = [objc_opt_self() weakObjectsHashTable];
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store] = a1;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardShareController] = a2;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_syncPriorityProvider] = a3;
  type metadata accessor for CRLOpportunisticGroupSessionManager(0);
  v19 = swift_allocObject();
  v19[8] = &_swiftEmptyDictionarySingleton;
  sub_1005B981C(&qword_101A2ADD8);
  swift_allocObject();
  v20 = a1;

  v19[9] = PassthroughSubject.init()();
  v19[10] = &_swiftEmptyDictionarySingleton;
  v19[11] = &_swiftEmptyDictionarySingleton;
  v19[2] = _swiftEmptySetSingleton;
  v19[4] = 0;
  swift_unknownObjectWeakInit();
  v19[5] = &_swiftEmptyDictionarySingleton;
  v19[6] = &_swiftEmptyDictionarySingleton;
  v19[7] = &_swiftEmptyDictionarySingleton;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.realTimeSync;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v21, &_mh_execute_header, v22, "CRLGroupSessionManager: init.", 29, 2, _swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_opportunisticGroupSessionManager] = v19;
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, "init");
  v24 = sub_10003B15C();
  sub_100035FBC(v24, v39);
  v25 = &v23[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot];
  v26 = v39[1];
  *v25 = v39[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v39[2];

  type metadata accessor for CRLBoardEntityStore();
  v27 = swift_allocObject();
  v28 = v23;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v27 + 120) = sub_10003F7E4(_swiftEmptyArrayStorage);
  swift_unknownObjectWeakAssign();

  *&v28[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore] = v27;

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.crlBoardLibrary;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v29, &_mh_execute_header, v30, "CRLBoardLibrary: Initializing and registering synced app model.", 63, 2, _swiftEmptyArrayStorage);
  *(*&v28[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_opportunisticGroupSessionManager] + 32) = &off_1018B0A88;
  swift_unknownObjectWeakAssign();

  v35 = &type metadata for CRLFeatureFlags;
  v36 = sub_100004D60();
  v34[0] = 13;
  LOBYTE(v29) = isFeatureEnabled(_:)();
  sub_100005070(v34);
  if (v29)
  {
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlFollow;
    v32 = static os_log_type_t.default.getter();
    sub_100005404(v31, &_mh_execute_header, v32, "Follow feature flag is enabled.", 31, 2, _swiftEmptyArrayStorage);
  }

  return v28;
}

uint64_t sub_101105948(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1011059C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002D4C8;

  return sub_1010C7B44(a1, a2, v7, v6);
}

uint64_t sub_101105A74(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010C8798(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101105B6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_10002C9A4(a1, v4);
}

uint64_t sub_101105C24(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010F1D48(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101105D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 41);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1010BD5D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_101105DF8(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010D7E70(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101105F54(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = sub_1005B981C(&qword_101A2ADA8);
  *(inited + 64) = sub_10001A2F8(&qword_101A2ADB0, &qword_101A2ADA8);
  *(inited + 32) = a1;

  v8 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v8, "Updating store snapshot for new highlights. %@", 46, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_10064191C(0, 0, v5, &unk_1014C6020, v12);
}

uint64_t sub_101106190(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_10000BE14(a1, v4, &qword_101A0A320);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  [v5 setObject:isa forKey:@"CRLCloudQuotaExceededAlertLastShownDate"];

  swift_unknownObjectRelease();
  return sub_10000CAAC(a1, &qword_101A0A320);
}

uint64_t sub_101106314()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  *&v6 = 0xD000000000000010;
  *(&v6 + 1) = 0x800000010155F8A0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000640CC(v5), (v3 & 1) == 0))
  {

    sub_100064234(v5);
LABEL_9:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_10;
  }

  sub_100064288(*(v1 + 56) + 32 * v2, &v6);
  sub_100064234(v5);

  if (!*(&v7 + 1))
  {
LABEL_10:
    sub_10000CAAC(&v6, &unk_1019F4D00);
    return 0;
  }

  sub_1005B981C(&unk_101A22E80);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101106434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010F1BA0(a1, v4, v5, v7, v6);
}

uint64_t sub_1011064F4(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1010F2A24(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1011065F8(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010D7048(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1011066F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_101106750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010E648C(a1, v4, v5, v7, v6);
}

uint64_t sub_101106818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_101077C34(a1, v4, v5, v6);
}

uint64_t sub_1011068F0(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_101106958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010E4A28(a1, v4, v5, v7, v6);
}

uint64_t sub_101106A18(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010E030C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101106B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010DFE50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_101106BE4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010DF47C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101106CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1010DE9B8(a1, v4, v5, v6);
}

uint64_t sub_101106E14()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_101106F24(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_101106FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1010DB3F8(a1, v4, v5, v7, v6);
}

uint64_t sub_10110706C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1010DBC08(a1, v4, v5, v6);
}

uint64_t sub_101107120()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_100FF3754();
}

uint64_t sub_1011071E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_1010D5910();
}

uint64_t sub_10110729C()
{

  sub_100005070(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1011072F4()
{
  result = qword_101A2ADB8;
  if (!qword_101A2ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ADB8);
  }

  return result;
}

uint64_t sub_1011073C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1010C2AA0(a1, v4, v5, v6);
}

uint64_t sub_101107544(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_101107550(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010C7288(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101107648(void (*a1)(void, void))
{

  a1(*(v1 + 24), *(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1011076D4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_1010C68C0(a1, v6, v7, v8, v1 + v5, v9);
}