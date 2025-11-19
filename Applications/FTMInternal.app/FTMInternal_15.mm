uint64_t sub_1001F7EF8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DashboardViewModelObject();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1001A551C(&qword_100377158, &qword_1002F2308);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100204E18(v31, v45, type metadata accessor for DashboardViewModelObject);
      }

      else
      {
        sub_100204DB0(v31, v45, type metadata accessor for DashboardViewModelObject);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_100204E18(v45, *(v12 + 56) + v30 * v20, type metadata accessor for DashboardViewModelObject);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_1001F8288(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v7);
      v14 = *v13;
      result = static Hasher._hash(seed:_:)();
      v15 = result & v9;
      if (v4 >= v10)
      {
        if (v15 < v10 || v4 < v15)
        {
          goto LABEL_5;
        }
      }

      else if (v15 < v10 && v4 < v15)
      {
        goto LABEL_5;
      }

      v18 = (v12 + 8 * v4);
      if (v4 != v7 || v18 >= v13 + 1)
      {
        *v18 = *v13;
      }

      v19 = *(a2 + 56);
      v20 = *(*(a3(0) - 8) + 72);
      v21 = v20 * v4;
      result = v19 + v20 * v4;
      v22 = v20 * v7;
      v23 = v19 + v20 * v7 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F843C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_100201580(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_1002015DC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F85E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F8790(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

unint64_t sub_1001F8940(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for DashboardViewModelObject() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
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

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F8B2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1001F6730(a2);
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
      v18 = type metadata accessor for STransferMetrics();
      return sub_100204E80(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for STransferMetrics);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1001F95A0();
    goto LABEL_7;
  }

  sub_1001F6AEC(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1001F6730(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1001F9364(v10, a2, a1, v16);
}

uint64_t sub_1001F8C80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1001F6730(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1001F97D8();
      goto LABEL_7;
    }

    sub_1001F6E34(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1001F6730(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
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
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for Date();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1001F940C(v10, a2, a1, v16);
}

uint64_t sub_1001F8DE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001F66B8(a2, a3);
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
      sub_1001F7180(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1001F66B8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1001F9A40();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_1001F8F64(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1001F6774(a2);
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
      sub_1001F9BB0();
      goto LABEL_7;
    }

    sub_1001F7428(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1001F6774(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100201580(a2, v22);
      return sub_1001F94B8(v10, v22, a1, v16);
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
  sub_1001A5654(v17);

  return sub_100201570(a1, v17);
}

_OWORD *sub_1001F90B0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001F66B8(a2, a3);
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
      sub_1001F9D54();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1001F76E0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1001F66B8(a2, a3);
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
    sub_1001A5654(v23);

    return sub_100201570(a1, v23);
  }

  else
  {
    sub_1001F9534(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1001F9200(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1001F66B8(a2, a3);
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
      sub_1001F7998(v16, a4 & 1);
      v20 = *v5;
      result = sub_1001F66B8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
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
      sub_1001F9EF8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1001F9364(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for STransferMetrics();
  result = sub_100204E18(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for STransferMetrics);
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

uint64_t sub_1001F940C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Date();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
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

_OWORD *sub_1001F94B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100201570(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_1001F9534(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100201570(a4, (a5[7] + 32 * a1));
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

void *sub_1001F95A0()
{
  v1 = v0;
  v2 = type metadata accessor for STransferMetrics();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A551C(&qword_100377208, &unk_1002F23B0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_100204DB0(*(v5 + 56) + v24, v27, type metadata accessor for STransferMetrics);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        result = sub_100204E18(v23, *(v25 + 56) + v24, type metadata accessor for STransferMetrics);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1001F97D8()
{
  v1 = v0;
  v30 = type metadata accessor for Date();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A551C(&unk_1003770B0, &qword_1002F2260);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

void *sub_1001F9A40()
{
  v1 = v0;
  sub_1001A551C(&unk_100377220, &unk_1002F23C8);
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

void *sub_1001F9BB0()
{
  v1 = v0;
  sub_1001A551C(&unk_100377070, &qword_1002F2258);
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
        sub_100201580(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1001A773C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100201570(v22, (*(v4 + 56) + v17));
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

void *sub_1001F9D54()
{
  v1 = v0;
  sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
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
        sub_1001A773C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100201570(v25, (*(v4 + 56) + v22));
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

void *sub_1001F9EF8()
{
  v1 = v0;
  sub_1001A551C(&qword_1003771B0, &qword_1002F2358);
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

void *sub_1001FA060()
{
  v1 = v0;
  sub_1001A551C(&qword_1003771A0, &qword_1002F2348);
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

void *sub_1001FA1D8()
{
  v1 = v0;
  v2 = type metadata accessor for DashboardViewModelObject();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A551C(&qword_100377158, &qword_1002F2308);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_100204DB0(v22 + v28, v33, type metadata accessor for DashboardViewModelObject);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_100204E18(v27, *(v29 + 56) + v28, type metadata accessor for DashboardViewModelObject);

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

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
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

uint64_t sub_1001FA438(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
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
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1001FA4D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001FA564(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1001FA578(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_1003770D8, &qword_1002F22B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1001FA690(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1001FA7A8(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v23 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v23)
  {
    goto LABEL_72;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        if (v23)
        {
          return _CocoaArrayWrapper.endIndex.getter();
        }

        return *(v4 + 16);
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_62;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2)
      {

        goto LABEL_5;
      }

      if (*(v8 + 32) == 4543564 && *(v8 + 40) == 0xE300000000000000)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_23;
      }

LABEL_5:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_63;
      }
    }

LABEL_23:
    v12 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      while (2)
      {
        if (v3 >> 62)
        {
          if (v12 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v6;
          }
        }

        else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v6;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v13 = *(v3 + 8 * v12 + 32);
        }

        if (*(v13 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2)
        {
          if (*(v13 + 32) == 4543564 && *(v13 + 40) == 0xE300000000000000)
          {

            goto LABEL_26;
          }

          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {
LABEL_26:
            v7 = __OFADD__(v12++, 1);
            if (v7)
            {
              goto LABEL_66;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      if (v6 != v12)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v17)
          {
            goto LABEL_70;
          }

          if (v12 >= v17)
          {
            goto LABEL_71;
          }

          v14 = *(v3 + 32 + 8 * v6);
          v15 = *(v3 + 32 + 8 * v12);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001FA690(v3);
          v4 = (v3 >> 62) & 1;
        }

        else
        {
          v4 = 0;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v15;

        if ((v3 & 0x8000000000000000) != 0 || v4)
        {
          v3 = sub_1001FA690(v3);
          v18 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v12 & 0x8000000000000000) != 0)
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            continue;
          }
        }

        else if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (v12 >= *(v18 + 16))
        {
          goto LABEL_68;
        }

        v20 = v18 + 8 * v12;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;

        *a1 = v3;
      }

      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_67;
      }

      goto LABEL_26;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FAB28(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v23 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v23)
  {
    goto LABEL_72;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v23)
      {
        return _CocoaArrayWrapper.endIndex.getter();
      }

      return *(v4 + 16);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_62;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2)
    {

      goto LABEL_5;
    }

    if (*(v8 + 32) == 18229 && *(v8 + 40) == 0xE200000000000000)
    {
      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_5:
    v7 = __OFADD__(v6++, 1);
    if (v7)
    {
      goto LABEL_63;
    }
  }

LABEL_23:
  v12 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    v4 = 18229;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v12 == _CocoaArrayWrapper.endIndex.getter())
        {
          return v6;
        }
      }

      else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v6;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v13 = *(v3 + 8 * v12 + 32);
      }

      if (*(v13 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2)
      {
        if (*(v13 + 32) == 18229 && *(v13 + 40) == 0xE200000000000000)
        {

          goto LABEL_26;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      if (v6 != v12)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v17)
          {
            goto LABEL_70;
          }

          if (v12 >= v17)
          {
            goto LABEL_71;
          }

          v14 = *(v3 + 32 + 8 * v6);
          v15 = *(v3 + 32 + 8 * v12);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001FA690(v3);
          v18 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v3 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v15;

        if ((v3 & 0x8000000000000000) != 0 || v18)
        {
          v3 = sub_1001FA690(v3);
          v19 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v12 & 0x8000000000000000) != 0)
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }
        }

        else if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (v12 >= *(v19 + 16))
        {
          goto LABEL_68;
        }

        v21 = v19 + 8 * v12;
        v22 = *(v21 + 32);
        *(v21 + 32) = v14;

        *a1 = v3;
      }

      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_67;
      }

LABEL_26:
      v7 = __OFADD__(v12++, 1);
      if (v7)
      {
        goto LABEL_66;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FAE9C(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v23 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v23)
  {
LABEL_67:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v23)
      {
        return _CocoaArrayWrapper.endIndex.getter();
      }

      return *(v4 + 16);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2 && (*(v8 + 32) != 5067591 || *(v8 + 40) != 0xE300000000000000))
    {
      break;
    }

LABEL_5:
    v7 = __OFADD__(v6++, 1);
    if (v7)
    {
      goto LABEL_61;
    }
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_5;
  }

  v12 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_71;
  }

  while (2)
  {
    if (v3 >> 62)
    {
      if (v12 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v13 = *(v3 + 8 * v12 + 32);
    }

    if (*(v13 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2 || *(v13 + 32) == 5067591 && *(v13 + 40) == 0xE300000000000000)
    {

      goto LABEL_36;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_36:
    if (v6 == v12)
    {
      goto LABEL_24;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_45;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v17)
      {
        goto LABEL_69;
      }

      if (v12 >= v17)
      {
        goto LABEL_70;
      }

      v14 = *(v3 + 32 + 8 * v6);
      v15 = *(v3 + 32 + 8 * v12);

LABEL_45:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
      {
        v3 = sub_1001FA690(v3);
        v4 = (v3 >> 62) & 1;
      }

      else
      {
        v4 = 0;
      }

      v18 = v3 & 0xFFFFFFFFFFFFFF8;
      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
      *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v15;

      if ((v3 & 0x8000000000000000) != 0 || v4)
      {
        v3 = sub_1001FA690(v3);
        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v12 >= *(v18 + 16))
      {
        goto LABEL_66;
      }

      v20 = v18 + 8 * v12;
      v21 = *(v20 + 32);
      *(v20 + 32) = v14;

      *a1 = v3;
LABEL_24:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_65;
      }

LABEL_25:
      v7 = __OFADD__(v12++, 1);
      if (v7)
      {
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1001FB200(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v23 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v23)
  {
    goto LABEL_72;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        if (v23)
        {
          return _CocoaArrayWrapper.endIndex.getter();
        }

        return *(v4 + 16);
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_62;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2)
      {

        goto LABEL_5;
      }

      if (*(v8 + 32) == 5067591 && *(v8 + 40) == 0xE300000000000000)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_23;
      }

LABEL_5:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_63;
      }
    }

LABEL_23:
    v12 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      while (2)
      {
        if (v3 >> 62)
        {
          if (v12 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v6;
          }
        }

        else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v6;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v13 = *(v3 + 8 * v12 + 32);
        }

        if (*(v13 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2)
        {
          if (*(v13 + 32) == 5067591 && *(v13 + 40) == 0xE300000000000000)
          {

            goto LABEL_26;
          }

          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {
LABEL_26:
            v7 = __OFADD__(v12++, 1);
            if (v7)
            {
              goto LABEL_66;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      if (v6 != v12)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v17)
          {
            goto LABEL_70;
          }

          if (v12 >= v17)
          {
            goto LABEL_71;
          }

          v14 = *(v3 + 32 + 8 * v6);
          v15 = *(v3 + 32 + 8 * v12);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001FA690(v3);
          v4 = (v3 >> 62) & 1;
        }

        else
        {
          v4 = 0;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v15;

        if ((v3 & 0x8000000000000000) != 0 || v4)
        {
          v3 = sub_1001FA690(v3);
          v18 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v12 & 0x8000000000000000) != 0)
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            continue;
          }
        }

        else if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (v12 >= *(v18 + 16))
        {
          goto LABEL_68;
        }

        v20 = v18 + 8 * v12;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;

        *a1 = v3;
      }

      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_67;
      }

      goto LABEL_26;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FB580(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v23 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v23)
  {
LABEL_67:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v23)
      {
        return _CocoaArrayWrapper.endIndex.getter();
      }

      return *(v4 + 16);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2 && (*(v8 + 32) != 1398033749 || *(v8 + 40) != 0xE400000000000000))
    {
      break;
    }

LABEL_5:
    v7 = __OFADD__(v6++, 1);
    if (v7)
    {
      goto LABEL_61;
    }
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_5;
  }

  v12 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_71;
  }

  while (2)
  {
    if (v3 >> 62)
    {
      if (v12 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v13 = *(v3 + 8 * v12 + 32);
    }

    if (*(v13 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2 || *(v13 + 32) == 1398033749 && *(v13 + 40) == 0xE400000000000000)
    {

      goto LABEL_36;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_36:
    if (v6 == v12)
    {
      goto LABEL_24;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_45;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v17)
      {
        goto LABEL_69;
      }

      if (v12 >= v17)
      {
        goto LABEL_70;
      }

      v14 = *(v3 + 32 + 8 * v6);
      v15 = *(v3 + 32 + 8 * v12);

LABEL_45:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
      {
        v3 = sub_1001FA690(v3);
        v4 = (v3 >> 62) & 1;
      }

      else
      {
        v4 = 0;
      }

      v18 = v3 & 0xFFFFFFFFFFFFFF8;
      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
      *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v15;

      if ((v3 & 0x8000000000000000) != 0 || v4)
      {
        v3 = sub_1001FA690(v3);
        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v12 >= *(v18 + 16))
      {
        goto LABEL_66;
      }

      v20 = v18 + 8 * v12;
      v21 = *(v20 + 32);
      *(v20 + 32) = v14;

      *a1 = v3;
LABEL_24:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_65;
      }

LABEL_25:
      v7 = __OFADD__(v12++, 1);
      if (v7)
      {
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1001FB8E4(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v23 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v23)
  {
    goto LABEL_72;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        if (v23)
        {
          return _CocoaArrayWrapper.endIndex.getter();
        }

        return *(v4 + 16);
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_62;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2)
      {

        goto LABEL_5;
      }

      if (*(v8 + 32) == 1398033749 && *(v8 + 40) == 0xE400000000000000)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_23;
      }

LABEL_5:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_63;
      }
    }

LABEL_23:
    v12 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      while (2)
      {
        if (v3 >> 62)
        {
          if (v12 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v6;
          }
        }

        else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v6;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v13 = *(v3 + 8 * v12 + 32);
        }

        if (*(v13 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2)
        {
          if (*(v13 + 32) == 1398033749 && *(v13 + 40) == 0xE400000000000000)
          {

            goto LABEL_26;
          }

          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {
LABEL_26:
            v7 = __OFADD__(v12++, 1);
            if (v7)
            {
              goto LABEL_66;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      if (v6 != v12)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v17)
          {
            goto LABEL_70;
          }

          if (v12 >= v17)
          {
            goto LABEL_71;
          }

          v14 = *(v3 + 32 + 8 * v6);
          v15 = *(v3 + 32 + 8 * v12);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001FA690(v3);
          v4 = (v3 >> 62) & 1;
        }

        else
        {
          v4 = 0;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v15;

        if ((v3 & 0x8000000000000000) != 0 || v4)
        {
          v3 = sub_1001FA690(v3);
          v18 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v12 & 0x8000000000000000) != 0)
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            continue;
          }
        }

        else if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (v12 >= *(v18 + 16))
        {
          goto LABEL_68;
        }

        v20 = v18 + 8 * v12;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;

        *a1 = v3;
      }

      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_67;
      }

      goto LABEL_26;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FBC64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1001AD0C8(&qword_100377230, &qword_100375610, &qword_1002EF860);
          for (i = 0; i != v6; ++i)
          {
            sub_1001A551C(&qword_100375610, &qword_1002EF860);
            v9 = sub_1001FBFBC(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FTMAllMetricsModel();
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

uint64_t sub_1001FBE08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1001AD0C8(&qword_100377150, &qword_100377148, &qword_1002F2300);
          for (i = 0; i != v6; ++i)
          {
            sub_1001A551C(&qword_100377148, &qword_1002F2300);
            v9 = sub_1001FC0CC(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1001E1BB4(0, &qword_100377140, CellularLoggingFileInformation_ptr);
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

uint64_t (*sub_1001FBFBC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    *v3 = v5;
    return sub_1001FC03C;
  }

  __break(1u);
  return result;
}

void (*sub_1001FC044(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1001FC0C4;
  }

  __break(1u);
  return result;
}

void (*sub_1001FC0CC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
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
    return sub_1002050B4;
  }

  __break(1u);
  return result;
}

void *sub_1001FC14C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001FC2A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001FC3FC(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v25 = result;
    v26 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1001A773C(*(a4 + 56) + 32 * v16, &v28);
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v31 = v28;
      v32 = v29;
      v30 = v27;
      *v9 = v27;
      v9[1] = v22;
      v9[2] = v21;
      if (v12 == v8)
      {

        v5 = v26;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 3;

      result = v12;
      v23 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v24 = v10 + 1;
    }

    else
    {
      v24 = v11;
    }

    v10 = v24 - 1;
    v8 = result;
    v5 = v26;
LABEL_23:
    result = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1001FC59C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v36 = *(v39 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = (&v32 - v11);
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v22 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v22;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    v35 = a3;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      v23 = v21 | (v16 << 6);
      v24 = *(a4 + 56);
      v25 = a4;
      v26 = *(*(a4 + 48) + 8 * v23);
      v27 = v24 + *(*(type metadata accessor for STransferMetrics() - 8) + 72) * v23;
      v28 = v38;
      sub_100204DB0(v27, &v38[*(v39 + 48)], type metadata accessor for STransferMetrics);
      *v28 = v26;
      v29 = v28;
      a1 = v37;
      sub_100204FDC(v29, v37);
      sub_100204FDC(a1, a2);
      if (v18 == v35)
      {
        a1 = v34;
        a4 = v25;
        goto LABEL_23;
      }

      a2 += *(v36 + 72);
      v30 = __OFADD__(v18++, 1);
      a4 = v25;
      v16 = v22;
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v31 = v16 + 1;
    }

    else
    {
      v31 = v17;
    }

    v22 = v31 - 1;
    a1 = v34;
LABEL_23:
    v13 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1001FC8FC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1001FC954(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 208 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 208 * a3;
  v13 = (v7 + 32 + 208 * a2);
  v14 = 208 * v12;
  v15 = &v13[208 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001FCA80(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_10020050C(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1001FCB58(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 296 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 296 * a3;
  v13 = (v7 + 32 + 296 * a2);
  v14 = 296 * v12;
  v15 = &v13[296 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001FCC58(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1001FCD30(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100377198, &qword_1002F2340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1001A551C(&unk_1003770B0, &qword_1002F2260);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1001AC934(v10, v6, &qword_100377198, &qword_1002F2340);
      v12 = *v6;
      result = sub_1001F6730(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for Date();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_1001FCF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&qword_1003771A0, &qword_1002F2348);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1001F66B8(v5, v6);
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

unint64_t sub_1001FD020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&unk_100377070, &qword_1002F2258);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001AC934(v4, v13, &qword_100377058, &qword_1002F21F8);
      result = sub_1001F6774(v13);
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
      result = sub_100201570(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1001FD15C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&unk_100377220, &unk_1002F23C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1001F66B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1001FD260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&qword_100377218, &qword_1002F23C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1001F66B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1001FD364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&qword_100377178, &qword_1002F2328);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1001F6730(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1001FD444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001AC934(v4, &v13, &qword_100379B70, &qword_1002F2380);
      v5 = v13;
      v6 = v14;
      result = sub_1001F66B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100201570(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1001FD574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&qword_1003771B0, &qword_1002F2358);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1001F66B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1001FD670(char a1, char a2, char a3)
{
  if (a3)
  {
    if (a1)
    {
      if (a2)
      {
        v3 = 0;
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    v4 = 4;
  }

  else
  {
    if (a1)
    {
LABEL_6:
      if (a2)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      goto LABEL_14;
    }

    v4 = 5;
  }

  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = v4;
  }

LABEL_14:
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1002EED40;
  if (v3 > 2u)
  {
    if (v3 == 3)
    {
      v8 = 5459283;
      v7 = 0xE300000000000000;
    }

    else if (v3 == 4)
    {
      v7 = 0xE300000000000000;
      v8 = 5456722;
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E55;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v7 = 0xEB00000000534D53;
      v8 = 0x2026206563696F56;
    }

    else
    {
      v7 = 0xE500000000000000;
      v8 = 0x6563696F56;
    }
  }

  else
  {
    v7 = 0x80000001002B92A0;
    v8 = 0xD000000000000010;
  }

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1001A76E8();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  os_log(_:dso:log:type:_:)();

  return v3;
}

uint64_t sub_1001FD848(void *a1)
{
  v1 = [a1 legacyInfo];
  if (!v1)
  {
    return 6;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16))
  {
    goto LABEL_44;
  }

  sub_1001A773C(v3 + 32, &v14);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 6;
  }

  if (!*(v13 + 16))
  {
    goto LABEL_44;
  }

  v4 = sub_100225CF4(v13);
  v6 = v5;

  if (kCTCellMonitorRadioAccessTechnologyLTE)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v14 = 0;
      v15 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v15)
      {
        if (v14 == v4 && v15 == v6)
        {

LABEL_13:

          return 2;
        }

        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {
          goto LABEL_13;
        }
      }
    }
  }

  if (kCTCellMonitorRadioAccessTechnologyNR)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v14 = 0;
      v15 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v15)
      {
        if (v14 == v4 && v15 == v6)
        {

LABEL_21:

          return 1;
        }

        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_21;
        }
      }
    }
  }

  if (kCTCellMonitorRadioAccessTechnologyUMTS)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v14 = 0;
      v15 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v15)
      {
        if (v14 == v4 && v15 == v6)
        {

LABEL_29:

          return 3;
        }

        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v10)
        {
          goto LABEL_29;
        }
      }
    }
  }

  if (kCTCellMonitorRadioAccessTechnologyUTRAN)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v14 = 0;
      v15 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v15)
      {
        if (v14 == v4 && v15 == v6)
        {

LABEL_37:

          return 4;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v11)
        {
          goto LABEL_37;
        }
      }
    }
  }

  if (!kCTCellMonitorRadioAccessTechnologyGSM || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v14 = 0, v15 = 0, static String._conditionallyBridgeFromObjectiveC(_:result:)(), !v15))
  {
LABEL_44:

    return 6;
  }

  if (v14 == v4 && v15 == v6)
  {

    return 5;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 5;
  }

  return 6;
}

uint64_t sub_1001FDC20(void *a1)
{
  v1 = [a1 legacyInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16))
  {
    goto LABEL_6;
  }

  sub_1001A773C(v3 + 32, v12);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if (swift_dynamicCast())
  {
    if (!*(v11 + 16) || (sub_100225D00(v11), (v4 & 1) != 0))
    {
LABEL_6:

      return 0;
    }

    sub_100225D0C(v11);
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      v12[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v12[1] = v8;
      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      return v12[0];
    }
  }

  return 0;
}

uint64_t sub_1001FDD84(void *a1, uint64_t (*a2)())
{
  v3 = 0x6E776F6E6B6E55;
  v4 = [a1 legacyInfo];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v6 + 16))
    {
      goto LABEL_7;
    }

    sub_1001A773C(v6 + 32, v12);

    sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return v3;
    }

    if (!*(v11 + 16))
    {
LABEL_7:

      return v3;
    }

    v7 = a2();
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      v12[0] = v7;
      return dispatch thunk of CustomStringConvertible.description.getter();
    }
  }

  return v3;
}

uint64_t sub_1001FDEAC(void *a1, uint64_t (*a2)())
{
  v3 = [a1 legacyInfo];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  sub_1001A773C(v5 + 32, v11);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v10 + 16))
  {
LABEL_7:

    return 0;
  }

  v6 = a2();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v11[0] = v6;
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return 0;
}

uint64_t sub_1001FDFB8(void *a1)
{
  v1 = [a1 legacyInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

  sub_1001A773C(v3 + 32, v7);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v6 + 16))
  {
LABEL_10:

    return 0;
  }

  v4 = sub_100225FE8(v6);

  if (v4 <= 3)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        return 4543564;
      }

      if (v4 != 1)
      {
        return 0x6E776F6E6B6E55;
      }

      return 4281166;
    }

    if (v4 == 2)
    {
      return 16723;
    }

    return 0x41534E2B4153;
  }

  if (v4 <= 5)
  {
    return 4281166;
  }

  if (v4 == 6 || v4 == 7)
  {
    return 0x41534E2B4153;
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1001FE150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for FTMAllMetricsModel();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_1001FE268(uint64_t a1, char a2, void *a3, unint64_t a4)
{
  LOBYTE(v6) = a2;
  v109 = a1 != 1;
  if (a2 == 1)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if ((a3 != 16723 || a4 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_100375020 != -1)
  {
    goto LABEL_217;
  }

  while (1)
  {
    v8 = &unk_100382000;
    v9 = qword_100382508;
    v10 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v11 = *(v9 + v10);
    v12 = v11 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v109;

    if (!v12)
    {
      break;
    }

    v102 = a3;
    v103 = a4;
    v104 = v6;
    v14 = 0;
    a4 = v11 & 0xC000000000000001;
    a3 = (v11 & 0xFFFFFFFFFFFFFF8);
    v6 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    while (a4)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        LOBYTE(v6) = v104;
        a3 = v102;
        a4 = v103;
        v8 = &unk_100382000;
        goto LABEL_29;
      }

LABEL_18:
      if (*(v15 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v13 && (*(v15 + 32) == 4543564 ? (v17 = *(v15 + 40) == 0xE300000000000000) : (v17 = 0), v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v109;
      }

      else
      {
      }

      ++v14;
      if (v16 == v12)
      {
        goto LABEL_28;
      }
    }

    if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v11 + 8 * v14 + 32);

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    swift_once();
  }

LABEL_29:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = _swiftEmptyArrayStorage[2];
  }

  if (!v19)
  {
LABEL_38:
    if (v6 == 2)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    if (a3 == 4543564 && a4 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (qword_100375020 != -1)
      {
        swift_once();
      }

      v19 = &unk_100382000;
      v29 = qword_100382508;
      v23 = &OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
      v30 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
      swift_beginAccess();
      a4 = *(v29 + v30);
      if (a4 >> 62)
      {
        a3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v109;

      if (!a3)
      {
        goto LABEL_67;
      }

      v105 = v6;
      v32 = 0;
      LOBYTE(v6) = a4 & 0xF8;
      while (1)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v34 = (v32 + 1);
          if (__OFADD__(v32, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v32 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_212;
          }

          v33 = *(a4 + 8 * v32 + 32);

          v34 = (v32 + 1);
          if (__OFADD__(v32, 1))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            LOBYTE(v6) = v105;
            v19 = &unk_100382000;
            v23 = &OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
LABEL_67:

            if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
            {
              v37 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v37 = _swiftEmptyArrayStorage[2];
            }

            if (v37)
            {
              if (qword_100374FD8 == -1)
              {
                goto LABEL_72;
              }

              goto LABEL_226;
            }

            goto LABEL_75;
          }
        }

        if (*(v33 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v31 && (*(v33 + 32) == 18229 ? (v35 = *(v33 + 40) == 0xE200000000000000) : (v35 = 0), v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v36 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v31 = v109;
        }

        else
        {
        }

        ++v32;
        if (v34 == a3)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_75;
  }

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  [*(v8[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
  v20 = v8[161];
  v21 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  v22 = v20;
  v23 = 0;
  v24 = sub_1001FA7A8(&v20[v21], v109);
  v25 = *&v20[v21];
  if (v25 >> 62)
  {
    v23 = v24;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v23;
    if (v26 >= v23)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 >= v24)
    {
LABEL_37:
      sub_100204C40(v24, v26, sub_1001FE150);
      swift_endAccess();
      sub_10020D3C0(0);

      v27 = v8[161];
      return [*(v27 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) unlock];
    }
  }

  __break(1u);
LABEL_226:
  swift_once();
LABEL_72:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  [*(v19[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
  v38 = v19[161];
  v39 = *v23;
  swift_beginAccess();
  v6 = v38;
  v40 = sub_1001FAB28(&v38[v39], v109);
  v41 = *&v38[v39];
  if (v41 >> 62)
  {
    v97 = v40;
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v97;
    if (v42 >= v97)
    {
      goto LABEL_175;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42 >= v40)
    {
      goto LABEL_175;
    }
  }

  __break(1u);
LABEL_75:
  if (v6 == 5)
  {
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      goto LABEL_109;
    }
  }

  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v19 = &unk_100382000;
  v44 = qword_100382508;
  v45 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  a4 = *(v44 + v45);
  if (a4 >> 62)
  {
    a3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v109;

  if (!a3)
  {
    goto LABEL_100;
  }

  v106 = v6;
  v47 = 0;
  v6 = (a4 & 0xC000000000000001);
  while (2)
  {
    if (v6)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v49 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        break;
      }

      goto LABEL_89;
    }

    if (v47 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_213;
    }

    v48 = *(a4 + 8 * v47 + 32);

    v49 = (v47 + 1);
    if (!__OFADD__(v47, 1))
    {
LABEL_89:
      if (*(v48 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != v46 || (*(v48 + 32) == 5067591 ? (v50 = *(v48 + 40) == 0xE300000000000000) : (v50 = 0), v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v51 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v46 = v109;
      }

      ++v47;
      if (v49 == a3)
      {
        goto LABEL_99;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_99:
  LOBYTE(v6) = v106;
  v19 = &unk_100382000;
LABEL_100:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v52 = _swiftEmptyArrayStorage[2];
  }

  if (v52)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    [*(v19[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
    v53 = v19[161];
    v54 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v6 = v53;
    v40 = sub_1001FAE9C(&v53[v54], v109);
    v55 = *&v53[v54];
    if (v55 >> 62)
    {
      v98 = v40;
      v42 = _CocoaArrayWrapper.endIndex.getter();
      v40 = v98;
      if (v42 >= v98)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v42 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42 >= v40)
      {
        goto LABEL_175;
      }
    }

    __break(1u);
    goto LABEL_231;
  }

LABEL_109:
  if (v6 == 5)
  {

    goto LABEL_144;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
    goto LABEL_142;
  }

  if (qword_100375020 != -1)
  {
LABEL_231:
    swift_once();
  }

  v19 = &unk_100382000;
  v57 = qword_100382508;
  v58 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  a4 = *(v57 + v58);
  if (a4 >> 62)
  {
    a3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v109;

  if (!a3)
  {
    goto LABEL_133;
  }

  v107 = v6;
  v60 = 0;
  v6 = (a4 & 0xC000000000000001);
  while (2)
  {
    if (v6)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v62 = (v60 + 1);
      if (__OFADD__(v60, 1))
      {
        break;
      }

      goto LABEL_122;
    }

    if (v60 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_214;
    }

    v61 = *(a4 + 8 * v60 + 32);

    v62 = (v60 + 1);
    if (!__OFADD__(v60, 1))
    {
LABEL_122:
      if (*(v61 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v59 && (*(v61 + 32) == 5067591 ? (v63 = *(v61 + 40) == 0xE300000000000000) : (v63 = 0), v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v64 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v59 = v109;
      }

      else
      {
      }

      ++v60;
      if (v62 == a3)
      {
        goto LABEL_132;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_132:
  LOBYTE(v6) = v107;
  v19 = &unk_100382000;
LABEL_133:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v65 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v65 = _swiftEmptyArrayStorage[2];
  }

  if (v65)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    [*(v19[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
    v66 = v19[161];
    v67 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v6 = v66;
    v40 = sub_1001FB200(&v66[v67], v109);
    v68 = *&v66[v67];
    if (v68 >> 62)
    {
      v99 = v40;
      v42 = _CocoaArrayWrapper.endIndex.getter();
      v40 = v99;
      if (v42 >= v99)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v42 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42 >= v40)
      {
LABEL_175:
        sub_100204C40(v40, v42, sub_1001FE150);
        swift_endAccess();
        sub_10020D3C0(0);

        v27 = v19[161];
        return [*(v27 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) unlock];
      }
    }

    __break(1u);
  }

LABEL_142:
  if (v6 == 3)
  {

    goto LABEL_145;
  }

LABEL_144:
  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v69 & 1) == 0)
  {
    goto LABEL_178;
  }

LABEL_145:
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v19 = &unk_100382000;
  v70 = qword_100382508;
  v71 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  a4 = *(v70 + v71);
  if (a4 >> 62)
  {
    a3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v109;

  if (!a3)
  {
    goto LABEL_167;
  }

  v108 = v6;
  v73 = 0;
  v6 = (a4 & 0xC000000000000001);
  while (2)
  {
    if (v6)
    {
      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v75 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      goto LABEL_156;
    }

    if (v73 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_215;
    }

    v74 = *(a4 + 8 * v73 + 32);

    v75 = (v73 + 1);
    if (!__OFADD__(v73, 1))
    {
LABEL_156:
      if (*(v74 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != v72 || (*(v74 + 32) == 1398033749 ? (v76 = *(v74 + 40) == 0xE400000000000000) : (v76 = 0), v76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v77 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v72 = v109;
      }

      ++v73;
      if (v75 == a3)
      {
        goto LABEL_166;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_166:
  LOBYTE(v6) = v108;
  v19 = &unk_100382000;
LABEL_167:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v78 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v78 = _swiftEmptyArrayStorage[2];
  }

  if (v78)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    [*(v19[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
    v79 = v19[161];
    v80 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v6 = v79;
    v40 = sub_1001FB580(&v79[v80], v109);
    v81 = *&v79[v80];
    if (v81 >> 62)
    {
      v100 = v40;
      v42 = _CocoaArrayWrapper.endIndex.getter();
      v40 = v100;
      if (v42 >= v100)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v42 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42 >= v40)
      {
        goto LABEL_175;
      }
    }

    __break(1u);
LABEL_240:
    swift_once();
LABEL_182:
    a3 = &unk_100382000;
    v84 = qword_100382508;
    v85 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v86 = *(v84 + v85);
    if (v86 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v87 = v109;

    if (!v6)
    {
      goto LABEL_202;
    }

    a4 = 0;
    while (1)
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        a3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v88 = (a4 + 1);
        if (__OFADD__(a4, 1))
        {
          goto LABEL_200;
        }
      }

      else
      {
        if (a4 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_216;
        }

        a3 = *(v86 + 8 * a4 + 32);

        v88 = (a4 + 1);
        if (__OFADD__(a4, 1))
        {
LABEL_200:
          __break(1u);
LABEL_201:
          a3 = &unk_100382000;
LABEL_202:

          if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
          {
            v91 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v91 = _swiftEmptyArrayStorage[2];
          }

          if (!v91)
          {
            return result;
          }

          if (qword_100374FD8 != -1)
          {
            swift_once();
          }

          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();
          [*(a3[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
          v92 = a3[161];
          v93 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
          swift_beginAccess();
          v94 = v92;
          result = sub_1001FB8E4(&v92[v93], v109);
          v95 = *&v92[v93];
          if (!(v95 >> 62))
          {
            v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v96 >= result)
            {
              goto LABEL_210;
            }

LABEL_244:
            __break(1u);
            return result;
          }

          v101 = result;
          v96 = _CocoaArrayWrapper.endIndex.getter();
          result = v101;
          if (v96 < v101)
          {
            goto LABEL_244;
          }

LABEL_210:
          sub_100204C40(result, v96, sub_1001FE150);
          swift_endAccess();
          sub_10020D3C0(0);

          v27 = a3[161];
          return [*(v27 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) unlock];
        }
      }

      if (*(a3 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v87 && (a3[4] == 1398033749 ? (v89 = a3[5] == 0xE400000000000000) : (v89 = 0), v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v90 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v87 = v109;
      }

      else
      {
      }

      ++a4;
      if (v88 == v6)
      {
        goto LABEL_201;
      }
    }
  }

LABEL_178:
  if (v6 == 3)
  {
  }

  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v83 & 1) == 0)
  {
    if (qword_100375020 != -1)
    {
      goto LABEL_240;
    }

    goto LABEL_182;
  }

  return result;
}

double sub_1001FFA48(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

void *sub_1001FFA94@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [a1 legacyInfo];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v9 + 16))
  {
    goto LABEL_18;
  }

  sub_1001A773C(v9 + 32, __src);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    sub_1001FFA48(__src);
    return memcpy(a4, __src, 0x121uLL);
  }

  v10 = v141;
  if (!*(v141 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

  v12 = sub_100226314(v141);
  result = kCTCellMonitorCellTypeServing;
  if (kCTCellMonitorCellTypeServing)
  {
    v14 = v11;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {

      goto LABEL_12;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
LABEL_12:
      v52 = v12;
      v56 = v14;
      __src[0] = 1;
      LOBYTE(v71) = 1;
      __dst[0] = 1;
      LOBYTE(v69[0]) = 1;
      v141 = 0;
      v142 = 1;
      v144 = 0;
      v145 = 1;
      v147 = 0;
      v148 = 1;
      v150 = 0.0;
      v151 = 1;
      v153 = 0;
      v154 = 1;
      v156 = 0;
      v157 = 1;
      v159 = 0;
      v160 = 1;
      v162 = 0;
      v163 = 1;
      v166 = 0;
      v165 = 0;
      v167 = 6;
      v169 = 0;
      v170 = 1;
      v172 = 0;
      v173 = 1;
      v175 = 0;
      v176 = 1;
      *(&v177 + 7) = 0;
      HIBYTE(v177) = 1;
      *(&v178 + 7) = 0;
      HIBYTE(v178) = 1;
      *(&v179 + 7) = 0;
      HIBYTE(v179) = 1;
      *(&v180 + 7) = 0;
      HIBYTE(v180) = 1;
      *(&v181 + 7) = 0;
      HIBYTE(v181) = 1;
      *(&v182 + 7) = 0;
      HIBYTE(v182) = 1;
      sub_1001DFB0C(&v141);
      *(v139 + 3) = *&v143[3];
      v139[0] = *v143;
      *(v137 + 3) = *&v146[3];
      v137[0] = *v146;
      v68 = v147;
      v136 = v148;
      *(v135 + 3) = *&v149[3];
      v135[0] = *v149;
      v17 = v150;
      v134 = v151;
      *(v133 + 3) = *&v152[3];
      v133[0] = *v152;
      *(v131 + 3) = *&v155[3];
      v131[0] = *v155;
      *(v129 + 3) = *&v158[3];
      v129[0] = *v158;
      *(v127 + 3) = *&v161[3];
      v127[0] = *v161;
      *(v125 + 3) = *&v164[3];
      v125[0] = *v164;
      *(v124 + 3) = *&v168[3];
      v124[0] = *v168;
      v59 = v169;
      v60 = v170;
      v123 = v170;
      *(v122 + 3) = *&v171[3];
      v122[0] = *v171;
      v64 = v172;
      v66 = v173;
      v121 = v173;
      *(v120 + 3) = *&v174[3];
      v120[0] = *v174;
      v57 = v175;
      v58 = v176;
      v119 = v176;
      v113 = v177;
      v114 = v178;
      v117 = v181;
      v118 = v182;
      v115 = v179;
      v116 = v180;
      v140 = 0;
      v18 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a3];
      v19 = [v18 slotID];

      v62 = v19 != 1;
      v138 = 0;
      v63 = sub_100225FC4(v10);
      v132 = v20 & 1;
      v21 = sub_100225FD0(v10);
      v128 = v22 & 1;
      v54 = sub_100225FDC(v10);
      v126 = v23 & 1;
      v61 = sub_10022707C(v10);
      v130 = 0;
      v24 = sub_10022731C(v10);
      if ((v25 & 1) == 0)
      {
        v136 = 0;
        v68 = v24;
      }

      *&v26 = COERCE_DOUBLE(sub_100226854(v10));
      if (v27)
      {
        goto LABEL_37;
      }

      v28 = *&v26;
      v29 = v21;
      v30 = a3;
      if (a2 == 2)
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
LABEL_36:
          v134 = 0;
          v17 = v28;
          a3 = v30;
          v21 = v29;
LABEL_37:
          v33 = sub_100226B04(v10);
          v55 = a4;
          if (v34)
          {
            v35 = sub_100226B10(v10);
            if (v36)
            {
              v37 = sub_100227328(v10);
              v39 = v38;

              v40 = v52;
              if ((v39 & 1) == 0)
              {
                v58 = 0;
                v119 = 0;
                v57 = v37;
              }
            }

            else
            {
              v44 = v35;
              v40 = v52;

              v60 = 0;
              v123 = 0;
              v59 = v44;
            }

            v42 = v66;
            v43 = v64;
          }

          else
          {
            v41 = v33;
            v40 = v52;

            v42 = 0;
            v121 = 0;
            v43 = v41;
          }

          v65 = v43;
          v67 = v42;
          v69[0] = a3;
          v53 = v140;
          LOBYTE(v69[1]) = v140;
          *(&v69[1] + 1) = v139[0];
          HIDWORD(v69[1]) = *(v139 + 3);
          v69[2] = v62;
          v51 = v138;
          LOBYTE(v69[3]) = v138;
          *(&v69[3] + 1) = v137[0];
          HIDWORD(v69[3]) = *(v137 + 3);
          v69[4] = v68;
          v50 = v136;
          LOBYTE(v69[5]) = v136;
          HIDWORD(v69[5]) = *(v135 + 3);
          *(&v69[5] + 1) = v135[0];
          *&v69[6] = v17;
          v49 = v134;
          LOBYTE(v69[7]) = v134;
          HIDWORD(v69[7]) = *(v133 + 3);
          *(&v69[7] + 1) = v133[0];
          v69[8] = v63;
          v48 = v132;
          LOBYTE(v69[9]) = v132;
          HIDWORD(v69[9]) = *(v131 + 3);
          *(&v69[9] + 1) = v131[0];
          v69[10] = v61;
          v47 = v130;
          LOBYTE(v69[11]) = v130;
          HIDWORD(v69[11]) = *(v129 + 3);
          *(&v69[11] + 1) = v129[0];
          v69[12] = v21;
          v46 = v128;
          LOBYTE(v69[13]) = v128;
          HIDWORD(v69[13]) = *(v127 + 3);
          *(&v69[13] + 1) = v127[0];
          v69[14] = v54;
          v45 = v126;
          LOBYTE(v69[15]) = v126;
          HIDWORD(v69[15]) = *(v125 + 3);
          *(&v69[15] + 1) = v125[0];
          v69[16] = v40;
          v69[17] = v56;
          LOBYTE(v69[18]) = a2;
          HIDWORD(v69[18]) = *(v124 + 3);
          *(&v69[18] + 1) = v124[0];
          v69[19] = v59;
          LOBYTE(v69[20]) = v60;
          HIDWORD(v69[20]) = *(v122 + 3);
          *(&v69[20] + 1) = v122[0];
          v69[21] = v43;
          LOBYTE(v69[22]) = v42;
          HIDWORD(v69[22]) = *(v120 + 3);
          *(&v69[22] + 1) = v120[0];
          v69[23] = v57;
          LOBYTE(v69[24]) = v58;
          *(&v69[32] + 1) = v117;
          *(&v69[34] + 1) = v118;
          *(&v69[26] + 1) = v114;
          *(&v69[24] + 1) = v113;
          *(&v69[30] + 1) = v116;
          *(&v69[28] + 1) = v115;
          memcpy(__dst, v69, 0x121uLL);
          nullsub_1(__dst);
          v71 = a3;
          v72 = v53;
          *v73 = v139[0];
          *&v73[3] = *(v139 + 3);
          v74 = v62;
          v75 = v51;
          *v76 = v137[0];
          *&v76[3] = *(v137 + 3);
          v77 = v68;
          v78 = v50;
          *v79 = v135[0];
          *&v79[3] = *(v135 + 3);
          v80 = v17;
          v81 = v49;
          *&v82[3] = *(v133 + 3);
          *v82 = v133[0];
          v83 = v63;
          v84 = v48;
          *&v85[3] = *(v131 + 3);
          *v85 = v131[0];
          v86 = v61;
          v87 = v47;
          *&v88[3] = *(v129 + 3);
          *v88 = v129[0];
          v89 = v21;
          v90 = v46;
          *v91 = v127[0];
          *&v91[3] = *(v127 + 3);
          v92 = v54;
          v93 = v45;
          *v94 = v125[0];
          *&v94[3] = *(v125 + 3);
          v95 = v40;
          v96 = v56;
          v97 = a2;
          *&v98[3] = *(v124 + 3);
          *v98 = v124[0];
          v99 = v59;
          v100 = v60;
          *&v101[3] = *(v122 + 3);
          *v101 = v122[0];
          v102 = v65;
          v103 = v67;
          *&v104[3] = *(v120 + 3);
          *v104 = v120[0];
          v105 = v57;
          v106 = v58;
          v111 = v117;
          v112 = v118;
          v108 = v114;
          v107 = v113;
          v110 = v116;
          v109 = v115;
          sub_1001DFAB0(v69, __src);
          sub_1001DFB0C(&v71);
          memcpy(__src, __dst, 0x121uLL);
          a4 = v55;
          return memcpy(a4, __src, 0x121uLL);
        }
      }

      v32 = v28;
      if (v28 == 6.0)
      {
        v28 = 1.4;
      }

      else if (v28 == 15.0)
      {
        v28 = 3.0;
      }

      else if (v28 == 25.0)
      {
        v28 = 5.0;
      }

      else if (v28 == 50.0)
      {
        v28 = 10.0;
      }

      else if (v28 == 75.0)
      {
        v28 = 15.0;
      }

      else
      {
        if (v28 == 100.0)
        {
          v32 = 20.0;
        }

        v28 = v32;
      }

      goto LABEL_36;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002004E8(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_10020050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_100200658(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v91 = a4;
  v95 = type metadata accessor for FTMBandInfoDataModel(0);
  v97 = *(v95 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v95);
  v92 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v93 = &v91 - v11;
  v12 = __chkstk_darwin(v10);
  v94 = &v91 - v13;
  v14 = __chkstk_darwin(v12);
  v112 = &v91 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = &v91 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v91 - v19;
  __chkstk_darwin(v18);
  v22 = &v91 - v21;
  v98 = a1 != 1;
  memcpy(v125, a2, 0x121uLL);
  v23 = _swiftEmptyArrayStorage;
  if (sub_1002004E8(v125) == 1)
  {
    goto LABEL_18;
  }

  v24 = v125[4];
  v132 = *(&v125[7] + 1);
  v133 = *(&v125[5] + 1);
  v130 = *(&v125[11] + 1);
  v131 = *(&v125[9] + 1);
  v25 = LOBYTE(v125[18]);
  v128 = *(&v125[18] + 1);
  v129 = *(&v125[13] + 1);
  v126 = *(&v125[22] + 1);
  v127 = *(&v125[20] + 1);
  v23 = _swiftEmptyArrayStorage;
  if ((v125[5] & 1) != 0 || v125[4] < 1)
  {
    goto LABEL_18;
  }

  if (LOBYTE(v125[18]) == 1)
  {

    goto LABEL_9;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_9:
    v27 = a3;
    v28 = 110;
    goto LABEL_14;
  }

  if (v25 <= 2 && v25)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      v27 = a3;
      *&v114[0] = v24;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v90;
      goto LABEL_15;
    }
  }

  v27 = a3;
  v28 = 66;
LABEL_14:
  *&v114[0] = v28;
  *(&v114[0] + 1) = 0xE100000000000000;
  v113[0] = v24;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v32 = *(&v114[0] + 1);
  v31 = *&v114[0];
LABEL_15:
  v148 = *(&v133 + 7);
  v149 = HIBYTE(v133);
  v146 = *(&v132 + 7);
  v147 = HIBYTE(v132);
  v144 = *(&v127 + 7);
  v145 = HIBYTE(v127);
  v143 = HIBYTE(v128);
  v142 = *(&v128 + 7);
  v141 = HIBYTE(v126);
  v140 = *(&v126 + 7);
  v138 = *(&v131 + 7);
  v139 = HIBYTE(v131);
  v136 = *(&v130 + 7);
  v137 = HIBYTE(v130);
  v134 = *(&v129 + 7);
  v135 = HIBYTE(v129);
  v33 = *(v95 + 92);
  Date.init()();
  v34 = type metadata accessor for Date();
  (*(*(v34 - 8) + 56))(&v22[v33], 0, 1, v34);
  *v22 = v98;
  *(v22 + 4) = 0;
  *(v22 + 2) = 1;
  v22[24] = 0;
  v22[25] = v25;
  *(v22 + 4) = v31;
  *(v22 + 5) = v32;
  *(v22 + 6) = v148;
  v22[56] = v149;
  *(v22 + 8) = v146;
  v22[72] = v147;
  v22[88] = v145;
  *(v22 + 10) = v144;
  *(v22 + 12) = v142;
  v22[104] = v143;
  *(v22 + 14) = v140;
  v22[120] = v141;
  *(v22 + 16) = v138;
  v22[136] = v139;
  v22[152] = v137;
  *(v22 + 18) = v136;
  v35 = v134;
  v22[168] = v135;
  *(v22 + 20) = v35;
  *(v22 + 22) = 0;
  v22[184] = 1;
  *(v22 + 24) = 0;
  v22[200] = 1;
  *(v22 + 26) = 0;
  v22[216] = 1;
  *(v22 + 28) = 0;
  v22[232] = 1;
  *(v22 + 30) = 0;
  v22[248] = 1;
  *(v22 + 32) = 0;
  v22[264] = 1;
  v23 = sub_100224E3C(0, 1, 1, _swiftEmptyArrayStorage);
  v37 = v23[2];
  v36 = v23[3];
  if (v37 >= v36 >> 1)
  {
    v23 = sub_100224E3C(v36 > 1, v37 + 1, 1, v23);
  }

  a3 = v27;
  v23[2] = v37 + 1;
  sub_100204E18(v22, v23 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v37, type metadata accessor for FTMBandInfoDataModel);
LABEL_18:
  if (a3)
  {
    v38 = a3;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v100 = v38;
  v39 = v38[2];
  if (v39)
  {

    v99 = 1 - v39;
    v40 = 0x7FFFFFFFFFFFFFFDLL;
    v41 = 3;
    v42 = 32;
    v43 = v96;
    while (1)
    {
      v114[0] = *(v100 + v42);
      v44 = *(v100 + v42 + 16);
      v45 = *(v100 + v42 + 32);
      v46 = *(v100 + v42 + 64);
      v116 = *(v100 + v42 + 48);
      v117 = v46;
      v114[1] = v44;
      v115 = v45;
      v47 = *(v100 + v42 + 80);
      v48 = *(v100 + v42 + 96);
      v49 = *(v100 + v42 + 128);
      v120 = *(v100 + v42 + 112);
      v121 = v49;
      v118 = v47;
      v119 = v48;
      v50 = *(v100 + v42 + 144);
      v51 = *(v100 + v42 + 160);
      v52 = *(v100 + v42 + 176);
      *(v124 + 9) = *(v100 + v42 + 185);
      v123 = v51;
      v124[0] = v52;
      v122 = v50;
      v53 = *(&v115 + 1);
      if (*(&v115 + 1))
      {
        v109 = v42;
        v110 = v40;
        v54 = BYTE10(v122);
        v55 = v115;
        v56 = v116;
        v111 = v23;
        v57 = BYTE8(v116);
        v108 = v123;
        v107 = BYTE8(v123);
        v106 = *&v124[0];
        v105 = BYTE8(v124[0]);
        v104 = *&v124[1];
        v103 = BYTE8(v124[1]);
        v102 = v117;
        v101 = BYTE8(v117);
        v58 = *(v95 + 92);
        sub_100201470(v114, v113);
        Date.init()();
        v59 = type metadata accessor for Date();
        (*(*(v59 - 8) + 56))(&v20[v58], 0, 1, v59);
        *v20 = v98;
        *(v20 + 4) = 256;
        *(v20 + 2) = v41 - 1;
        v20[24] = 0;
        v20[25] = v54;
        *(v20 + 4) = v55;
        *(v20 + 5) = v53;
        *(v20 + 6) = v56;
        v20[56] = v57;
        v23 = v111;
        *(v20 + 8) = 0;
        v20[72] = 1;
        *(v20 + 10) = v108;
        v20[88] = v107;
        *(v20 + 12) = v106;
        v20[104] = v105;
        *(v20 + 14) = v104;
        v20[120] = v103;
        *(v20 + 16) = v102;
        v20[136] = v101;
        *(v20 + 18) = 0;
        v20[152] = 1;
        *(v20 + 20) = 0;
        v20[168] = 1;
        *(v20 + 22) = 0;
        v20[184] = 1;
        *(v20 + 24) = 0;
        v20[200] = 1;
        *(v20 + 26) = 0;
        v20[216] = 1;
        *(v20 + 28) = 0;
        v20[232] = 1;
        *(v20 + 30) = 0;
        v20[248] = 1;
        *(v20 + 32) = 0;
        v20[264] = 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100224E3C(0, v23[2] + 1, 1, v23);
        }

        v61 = v23[2];
        v60 = v23[3];
        v43 = v96;
        if (v61 >= v60 >> 1)
        {
          v23 = sub_100224E3C(v60 > 1, v61 + 1, 1, v23);
        }

        v23[2] = v61 + 1;
        sub_100204E18(v20, v23 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v61, type metadata accessor for FTMBandInfoDataModel);
        v42 = v109;
        v40 = v110;
      }

      if (!v40)
      {
        break;
      }

      if (v99 + v41 == 3)
      {

        goto LABEL_34;
      }

      ++v41;
      --v40;
      v42 += 208;
    }

    __break(1u);
    goto LABEL_79;
  }

  v41 = 2;
  v43 = v96;
LABEL_34:
  if (v91)
  {
    v62 = v91;
  }

  else
  {
    v62 = _swiftEmptyArrayStorage;
  }

  v63 = v62[2];
  if (v63)
  {
    v64 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v111 = v62;
    v65 = v62 + v64;
    v66 = *(v97 + 72);

    while (1)
    {
      sub_100204DB0(v65, v43, type metadata accessor for FTMBandInfoDataModel);
      *(v43 + 16) = v41;
      *(v43 + 24) = 0;
      sub_100204DB0(v43, v112, type metadata accessor for FTMBandInfoDataModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100224E3C(0, v23[2] + 1, 1, v23);
      }

      v68 = v23[2];
      v67 = v23[3];
      if (v68 >= v67 >> 1)
      {
        v23 = sub_100224E3C(v67 > 1, v68 + 1, 1, v23);
      }

      sub_1002034BC(v43, type metadata accessor for FTMBandInfoDataModel);
      v23[2] = v68 + 1;
      sub_100204E18(v112, v23 + v64 + v68 * v66, type metadata accessor for FTMBandInfoDataModel);
      if (v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v41;
      v65 += v66;
      if (!--v63)
      {
        goto LABEL_47;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
    goto LABEL_49;
  }

LABEL_47:

  if (!v23[2])
  {

    return;
  }

  v111 = v23;
  if (qword_100375020 != -1)
  {
    goto LABEL_85;
  }

LABEL_49:
  v69 = qword_100382508;
  v70 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
  swift_beginAccess();
  v112 = v70;
  v71 = *&v69[v70];
  v72 = v71 + 2;
  v73 = v71[2];
  if (!v73)
  {
    goto LABEL_59;
  }

  v74 = 0;
  v75 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v76 = *(v97 + 72);
  v77 = v75;
  while ((*(v71 + v75 + 8) & 1) != 0 || *(v71 + v75) != v98)
  {
    ++v74;
    v75 += v76;
    if (v73 == v74)
    {
      goto LABEL_59;
    }
  }

  v78 = v74 + 1;
  if (!__OFADD__(v74, 1))
  {
    v79 = v69;
    if (v78 == v73)
    {
      v78 = v73;
LABEL_57:
      v73 = v74;
      if (v78 >= v74)
      {
        goto LABEL_60;
      }

      __break(1u);
LABEL_59:
      v80 = v69;
      v78 = v73;
LABEL_60:
      sub_1001FCA80(v73, v78, sub_100224E3C, type metadata accessor for FTMBandInfoDataModel);
      swift_endAccess();
      sub_10020CF1C();

      v81 = qword_100382508;
      swift_beginAccess();
      v82 = v81;
      sub_1001E30CC(v111, sub_100224E3C, type metadata accessor for FTMBandInfoDataModel);
      swift_endAccess();
      sub_10020CF1C();

      return;
    }

    v83 = v76 + v75;
    while (1)
    {
      if (v78 >= v73)
      {
        goto LABEL_80;
      }

      v84 = v94;
      sub_100204DB0(v71 + v83, v94, type metadata accessor for FTMBandInfoDataModel);
      if (*(v84 + 8))
      {
        sub_1002034BC(v84, type metadata accessor for FTMBandInfoDataModel);
      }

      else
      {
        v85 = v84;
        v86 = *v84;
        sub_1002034BC(v85, type metadata accessor for FTMBandInfoDataModel);
        if (v86 == v98)
        {
          goto LABEL_64;
        }
      }

      if (v78 != v74)
      {
        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        v87 = *v72;
        if (v74 >= *v72)
        {
          goto LABEL_82;
        }

        sub_100204DB0(v71 + v77 + v74 * v76, v93, type metadata accessor for FTMBandInfoDataModel);
        if (v78 >= v87)
        {
          goto LABEL_83;
        }

        sub_100204DB0(v71 + v83, v92, type metadata accessor for FTMBandInfoDataModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v112;
        *&v69[v112] = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = sub_1001FA6F4(v71);
          *&v69[v89] = v71;
        }

        sub_100204E80(v92, v71 + v77 + v74 * v76, type metadata accessor for FTMBandInfoDataModel);
        *&v69[v89] = v71;
        if (v78 >= v71[2])
        {
          goto LABEL_84;
        }

        sub_100204E80(v93, v71 + v83, type metadata accessor for FTMBandInfoDataModel);
        *&v69[v89] = v71;
      }

      ++v74;
LABEL_64:
      ++v78;
      v72 = v71 + 2;
      v73 = v71[2];
      v83 += v76;
      if (v78 == v73)
      {
        goto LABEL_57;
      }
    }
  }

  __break(1u);
}

_OWORD *sub_100201570(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100201638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100201650()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10020169C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002016E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100201730()
{
  if (*(v0 + 160) != 1)
  {
  }

  return _swift_deallocObject(v0, 344, 7);
}

void sub_1002017A4(void *a1, uint64_t a2)
{
  *&v183 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v181 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Metric(0);
  v7 = *(*(v180 - 1) + 64);
  __chkstk_darwin(v180);
  v9 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v182 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v161 - v15;
  v17 = type metadata accessor for FTMBandInfoDataModel(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v21 = (&v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v179 = [a1 slotID];
  v184 = v179 != 1;
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v22 = sub_10021AF50();
  v23 = v22[2];
  if (!v23)
  {
LABEL_10:

    return;
  }

  v173 = v9;
  v174 = v4;
  v175 = v3;
  v177 = v16;
  v178 = v11;
  v176 = v10;
  v24 = 0;
  v25 = 0x79636167654CLL;
  v26 = 0x61746144205443;
  while (1)
  {
    if (v24 >= v22[2])
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v100)
      {
LABEL_83:
        v94 = 0xE400000000000000;
      }

      else
      {
LABEL_81:
        v94 = 0xE000000000000000;
      }

LABEL_84:
      if ((v94 & 0x700000000000000) != 0)
      {
        LODWORD(v171) = v179 != 1;
        v101 = v177;
        UUID.init()();
        v102 = *(v26 + 1288);
        v103 = *(v178 + 16);
        v169 = (v178 + 16);
        v170 = v103;
        v103(v182, v101, v176);
        v184 = v102;
        v168 = String._bridgeToObjectiveC()();

        v167 = String._bridgeToObjectiveC()();
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v166 = NSString.init(stringLiteral:)();
        v165 = NSString.init(stringLiteral:)();
        v104 = [v21 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v105 = String._bridgeToObjectiveC()();

        v106 = NSString.init(stringLiteral:)();
        v107 = v181;
        Date.init()();
        UUID.uuidString.getter();
        v162 = String._bridgeToObjectiveC()();

        v108 = v180;
        v109 = v180[15];
        v161 = v180[14];
        v163 = v180[16];
        v164 = v21;
        v110 = v173;
        v111 = v182;
        v112 = v176;
        v170(v173, v182, v176);
        *(v110 + v108[5]) = v168;
        *(v110 + v108[6]) = v167;
        *(v110 + v108[7]) = v166;
        *(v110 + v108[8]) = v165;
        *(v110 + v108[9]) = v105;
        *(v110 + v108[10]) = v106;
        v113 = v174;
        v114 = v175;
        (*(v174 + 16))(v110 + v108[11], v107, v175);
        *(v110 + v108[12]) = v162;
        v115 = v108[13];
        v26 = 0x100382000;
        *(v110 + v115) = v171;
        *(v110 + v161) = 0;
        *(v110 + v109) = 0;
        (*(v113 + 8))(v107, v114);
        v116 = *(v178 + 8);
        v117 = v112;
        v116(v111, v112);
        *(v163 + v110) = xmmword_1002F2090;
        v118 = v184;
        sub_100215264(v110);

        sub_1002034BC(v110, type metadata accessor for Metric);
        v116(v177, v117);
      }

      else
      {
      }

LABEL_87:
      v119 = [v183 ecn0];
      if (!v119)
      {
        return;
      }

      v21 = v119;
      v90 = Int.init(truncating:)();
      v85 = *(v26 + 1288);
      v79 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v84 = *&v85[v79];
      v91 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v85[v79] = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_131:
        v84 = sub_1001FA6F4(v84);
      }

      if (v24 >= v84[2])
      {
        __break(1u);
      }

      else
      {
        v121 = v84 + v172 + v25;
        *(v121 + 32) = v90;
        v121[264] = 0;
        *&v85[v79] = v84;
        swift_endAccess();
        sub_10020CF1C();

        if (qword_100374F98 == -1)
        {
          goto LABEL_91;
        }
      }

      swift_once();
LABEL_91:
      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v122 = swift_allocObject();
      v183 = xmmword_1002EED40;
      *(v122 + 16) = xmmword_1002EED40;
      v186 = v90;
      v123 = dispatch thunk of CustomStringConvertible.description.getter();
      v125 = v124;
      *(v122 + 56) = &type metadata for String;
      *(v122 + 64) = sub_1001A76E8();
      *(v122 + 32) = v123;
      *(v122 + 40) = v125;
      os_log(_:dso:log:type:_:)();

      v126 = *(v26 + 1288);
      v127 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v128 = *&v126[v127];
      if (v24 >= *(v128 + 16))
      {
        __break(1u);
        goto LABEL_135;
      }

      v129 = *(v128 + v172 + v25 + 25);
      if (v129 > 3)
      {
        v130 = v21;
        if (v129 > 5)
        {
          v131 = 5067591;
          if (v129 != 6)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v131 = 5067591;
          if (v129 != 4)
          {
            v132 = v26;
            v133 = 0xE300000000000000;

            v131 = 5067591;
LABEL_102:
            v135 = v178;
            goto LABEL_116;
          }
        }
      }

      else
      {
        v130 = v21;
        v131 = 5067591;
      }

      v133 = 0xE300000000000000;
      v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v134)
      {
        v132 = v26;
        goto LABEL_102;
      }

LABEL_103:
      v136 = *(v26 + 1288);
      v137 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v138 = *(v136 + v137);
      if (v24 >= *(v138 + 16))
      {
LABEL_137:
        __break(1u);
        return;
      }

      v132 = v26;
      v131 = 1398033749;
      v139 = *(v138 + v172 + v25 + 25);
      if (v139 > 3)
      {
        v135 = v178;
        if (v139 > 5 && v139 != 6)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v135 = v178;
        if (v139 > 1 && v139 != 2)
        {

          goto LABEL_115;
        }
      }

      v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v140 & 1) == 0)
      {
LABEL_113:
        v131 = 0;
        v133 = 0xE000000000000000;
        goto LABEL_116;
      }

LABEL_115:
      v133 = 0xE400000000000000;
LABEL_116:
      if ((v133 & 0x700000000000000) == 0)
      {

        return;
      }

      LODWORD(v184) = v179 != 1;
      UUID.init()();
      v141 = *(v132 + 1288);
      v169 = *(v135 + 16);
      v142 = v130;
      v143 = v182;
      v169();
      v170 = v141;
      v168 = String._bridgeToObjectiveC()();
      v167 = String._bridgeToObjectiveC()();
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v166 = NSString.init(stringLiteral:)();
      v165 = NSString.init(stringLiteral:)();
      v144 = [v142 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v179 = v142;
      v172 = v133;

      v145 = String._bridgeToObjectiveC()();

      v146 = NSString.init(stringLiteral:)();
      v171 = v131;
      v147 = v181;
      Date.init()();
      UUID.uuidString.getter();
      v163 = String._bridgeToObjectiveC()();

      v148 = v180;
      v149 = v180[15];
      v162 = v180[14];
      v164 = v180[16];
      v150 = v173;
      v151 = v176;
      (v169)(v173, v143, v176);
      v152 = v178;
      *(v150 + v148[5]) = v168;
      *(v150 + v148[6]) = v167;
      *(v150 + v148[7]) = v166;
      *(v150 + v148[8]) = v165;
      *(v150 + v148[9]) = v145;
      *(v150 + v148[10]) = v146;
      v153 = v174;
      v154 = v175;
      (*(v174 + 16))(v150 + v148[11], v147, v175);
      *(v150 + v148[12]) = v163;
      *(v150 + v148[13]) = v184;
      *(v162 + v150) = 0;
      *(v150 + v149) = 0;
      v25 = v151;
      (*(v153 + 8))(v147, v154);
      v122 = *(v152 + 8);
      (v122)(v143, v151);
      *(v164 + v150) = xmmword_1002F2090;
      v155 = v170;
      sub_100215264(v150);

      sub_1002034BC(v150, type metadata accessor for Metric);
      v126 = [objc_opt_self() defaultCenter];
      if (qword_100374FE0 == -1)
      {
LABEL_118:
        v156 = static NSNotificationName.NewABMMetric;
        sub_1001A551C(&qword_100377050, &qword_1002F21F0);
        inited = swift_initStackObject();
        *(inited + 16) = v183;
        strcpy(v185, "metricObject");
        HIBYTE(v185[6]) = 0;
        v185[7] = -5120;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for MetricNotificationObject;
        v158 = swift_allocObject();
        *(inited + 72) = v158;
        v159 = v172;
        *(v158 + 16) = v171;
        *(v158 + 24) = v159;
        *(v158 + 32) = 5521746;
        *(v158 + 40) = 0xE300000000000000;
        *(v158 + 48) = v184;
        sub_1001FD020(inited);
        swift_setDeallocating();
        sub_1001AC99C(inited + 32, &qword_100377058, &qword_1002F21F8);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v126 postNotificationName:v156 object:0 userInfo:isa];

        (v122)(v177, v25);
        return;
      }

LABEL_135:
      swift_once();
      goto LABEL_118;
    }

    if (*(v22 + v24 + 32) && *(v22 + v24 + 32) != 1)
    {
      break;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_14;
    }

    if (v23 == ++v24)
    {
      goto LABEL_10;
    }
  }

LABEL_14:

  v26 = &unk_100382000;
  v28 = qword_100382508;
  v29 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
  swift_beginAccess();
  v30 = *(v28 + v29);
  v31 = *(v30 + 16);
  if (!v31)
  {
    return;
  }

  v172 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v32 = v30 + v172;

  v24 = 0;
  while (2)
  {
    if (v24 >= *(v30 + 16))
    {
      goto LABEL_79;
    }

    v25 = *(v18 + 72) * v24;
    sub_100204DB0(v32 + v25, v21, type metadata accessor for FTMBandInfoDataModel);
    if ((v21[1] & 1) != 0 || *v21 != v184)
    {
      sub_1002034BC(v21, type metadata accessor for FTMBandInfoDataModel);
      goto LABEL_17;
    }

    v33 = *(v21 + 9);
    if (v33 > 2 || v33 == 1 || v33 == 2)
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1002034BC(v21, type metadata accessor for FTMBandInfoDataModel);
      if (v34)
      {
        goto LABEL_29;
      }

LABEL_17:
      if (v31 == ++v24)
      {

        return;
      }

      continue;
    }

    break;
  }

  sub_1002034BC(v21, type metadata accessor for FTMBandInfoDataModel);
LABEL_29:

  if (v183)
  {
    v35 = [v183 rsrp];
    if (!v35)
    {
      goto LABEL_36;
    }

    v21 = v35;
    v36 = Int.init(truncating:)();
    v37 = qword_100382508;
    v38 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
    swift_beginAccess();
    v39 = *&v37[v38];
    v40 = v37;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *&v37[v38] = v39;
    if ((v41 & 1) == 0)
    {
      v39 = sub_1001FA6F4(v39);
    }

    if (v24 >= v39[2])
    {
      __break(1u);
      goto LABEL_121;
    }

    v42 = (v39 + v172 + v25);
    v42[22] = v36;
    *(v42 + 184) = 0;
    *&v37[v38] = v39;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      goto LABEL_123;
    }

    while (1)
    {
      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1002EED40;
      v186 = v36;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = sub_1001A76E8();
      *(v43 + 32) = v44;
      *(v43 + 40) = v46;
      os_log(_:dso:log:type:_:)();

LABEL_36:
      v47 = [v183 rsrq];
      if (!v47)
      {
        goto LABEL_41;
      }

      v21 = v47;
      v36 = Int.init(truncating:)();
      v37 = qword_100382508;
      v38 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v39 = *&v37[v38];
      v40 = v37;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v37[v38] = v39;
      if ((v48 & 1) == 0)
      {
LABEL_121:
        v39 = sub_1001FA6F4(v39);
      }

      if (v24 < v39[2])
      {
        break;
      }

      __break(1u);
LABEL_123:
      swift_once();
    }

    v49 = (v39 + v172 + v25);
    v49[24] = v36;
    *(v49 + 200) = 0;
    *&v37[v38] = v39;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      goto LABEL_125;
    }

    while (1)
    {
      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1002EED40;
      v186 = v36;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = sub_1001A76E8();
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      os_log(_:dso:log:type:_:)();

LABEL_41:
      v54 = [v183 rssi];
      if (!v54)
      {
        goto LABEL_47;
      }

      v21 = v54;
      v36 = Int.init(truncating:)();
      v55 = qword_100382508;
      v56 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v57 = *&v55[v56];
      v58 = v55;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *&v55[v56] = v57;
      if ((v59 & 1) == 0)
      {
        v57 = sub_1001FA6F4(v57);
      }

      if (v24 < v57[2])
      {
        break;
      }

      __break(1u);
LABEL_125:
      swift_once();
    }

    v60 = (v57 + v172 + v25);
    v60[26] = v36;
    *(v60 + 216) = 0;
    *&v55[v56] = v57;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      goto LABEL_127;
    }

    while (1)
    {
      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1002EED40;
      v186 = v36;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      *(v61 + 56) = &type metadata for String;
      *(v61 + 64) = sub_1001A76E8();
      *(v61 + 32) = v62;
      *(v61 + 40) = v64;
      os_log(_:dso:log:type:_:)();

LABEL_47:
      v65 = [v183 snr];
      if (!v65)
      {
        goto LABEL_53;
      }

      v21 = v65;
      Double.init(truncating:)();
      v67 = v66;
      v68 = qword_100382508;
      v69 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v36 = *&v68[v69];
      v70 = v68;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      *&v68[v69] = v36;
      if ((v71 & 1) == 0)
      {
        v36 = sub_1001FA6F4(v36);
      }

      if (v24 < v36[2])
      {
        break;
      }

      __break(1u);
LABEL_127:
      swift_once();
    }

    v72 = v36 + v172 + v25;
    *(v72 + 28) = v67;
    v72[232] = 0;
    *&v68[v69] = v36;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      goto LABEL_129;
    }

    while (1)
    {
      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1002EED40;
      v186 = 0;
      v187 = 0xE000000000000000;
      Double.write<A>(to:)();
      v74 = v186;
      v75 = v187;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = sub_1001A76E8();
      *(v73 + 32) = v74;
      *(v73 + 40) = v75;
      os_log(_:dso:log:type:_:)();

LABEL_53:
      v76 = [v183 rscp];
      if (!v76)
      {
        goto LABEL_87;
      }

      v21 = v76;
      v77 = Int.init(truncating:)();
      v78 = qword_100382508;
      v79 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v80 = *&v78[v79];
      v81 = v78;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *&v78[v79] = v80;
      if ((v82 & 1) == 0)
      {
        v80 = sub_1001FA6F4(v80);
      }

      if (v24 < v80[2])
      {
        break;
      }

      __break(1u);
LABEL_129:
      swift_once();
    }

    v83 = v80 + v172 + v25;
    *(v83 + 30) = v77;
    v83[248] = 0;
    *&v78[v79] = v80;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    v84 = qword_100382480;
    v85 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1002EED40;
    v186 = v77;
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v88;
    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = sub_1001A76E8();
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    os_log(_:dso:log:type:_:)();

    v90 = qword_100382508;
    v91 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
    swift_beginAccess();
    v92 = *&v91[v90];
    if (v24 >= *(v92 + 16))
    {
      __break(1u);
      goto LABEL_131;
    }

    v93 = *(v92 + v172 + v25 + 25);
    if (v93 <= 3)
    {
      goto LABEL_67;
    }

    if (v93 <= 5)
    {
      if (v93 != 4)
      {
        v94 = 0xE300000000000000;

        goto LABEL_84;
      }

      goto LABEL_67;
    }

    if (v93 == 6)
    {
LABEL_67:
      v94 = 0xE300000000000000;
      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v95)
      {
        goto LABEL_84;
      }
    }

    v96 = qword_100382508;
    v97 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
    swift_beginAccess();
    v98 = *(v96 + v97);
    if (v24 >= *(v98 + 16))
    {
      __break(1u);
      goto LABEL_137;
    }

    v99 = *(v98 + v172 + v25 + 25);
    if (v99 > 3)
    {
      if (v99 > 5 && v99 != 6)
      {
        goto LABEL_81;
      }
    }

    else if (v99 > 1 && v99 != 2)
    {

      goto LABEL_83;
    }

    goto LABEL_80;
  }
}

uint64_t sub_10020342C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 52, 7);
}

uint64_t sub_10020346C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001E1BB4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002034BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020356C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002035C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10020369C(void *a1)
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

uint64_t sub_1002036F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100203740()
{
  if (*(v0 + 160) != 1)
  {
  }

  return _swift_deallocObject(v0, 336, 7);
}

uint64_t sub_100203798(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Metric(0);
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v82 = *(v12 - 8);
  v13 = *(v82 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v81 = &v63 - v17;
  UUID.init()();
  v18 = [a1 slotID] != 1;
  if (a2)
  {
    v19 = [a2 rsrp];
    v77 = v18;
    v76 = v4;
    v75 = v5;
    v79 = v12;
    v80 = v16;
    if (v19)
    {
      v20 = v19;
      v73 = a2;
      v21 = v12;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1002EED50;
      v74 = a1;
      v23 = [a1 slotID];
      v24 = sub_1001A76E8();
      v25 = 48;
      if (v23 != 1)
      {
        v25 = 49;
      }

      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = v24;
      *(v22 + 32) = v25;
      *(v22 + 40) = 0xE100000000000000;
      *(v22 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v22 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v22 + 72) = v20;
      v26 = v20;
      os_log(_:dso:log:type:_:)();

      if (qword_100375020 != -1)
      {
        swift_once();
      }

      v27 = qword_100382508;
      v71 = *(v82 + 16);
      v71(v16, v81, v21);
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v72 = v27;
      v69 = NSString.init(stringLiteral:)();
      v68 = NSString.init(stringLiteral:)();
      v67 = NSString.init(stringLiteral:)();
      v66 = NSString.init(stringLiteral:)();
      v28 = [v26 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v26;

      v65 = String._bridgeToObjectiveC()();

      v29 = NSString.init(stringLiteral:)();
      v30 = v78;
      Date.init()();
      UUID.uuidString.getter();
      v31 = String._bridgeToObjectiveC()();

      v33 = v8[14];
      v32 = v8[15];
      v64 = v8[16];
      v12 = v79;
      v71(v11, v80, v79);
      *&v11[v8[5]] = v69;
      *&v11[v8[6]] = v68;
      *&v11[v8[7]] = v67;
      *&v11[v8[8]] = v66;
      *&v11[v8[9]] = v65;
      *&v11[v8[10]] = v29;
      v34 = v75;
      v35 = v76;
      (*(v75 + 16))(&v11[v8[11]], v30, v76);
      *&v11[v8[12]] = v31;
      v18 = v77;
      *&v11[v8[13]] = v77;
      v11[v33] = 0;
      v11[v32] = 0;
      (*(v34 + 8))(v30, v35);
      (*(v82 + 8))(v80, v12);
      *&v11[v64] = xmmword_1002F2090;
      v36 = v72;
      sub_100215264(v11);

      sub_1002034BC(v11, type metadata accessor for Metric);
      a1 = v74;
      a2 = v73;
    }

    v37 = [a2 snr];
    if (v37)
    {
      v38 = v37;
      v39 = a1;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1002EED50;
      v41 = [v39 slotID];
      v42 = sub_1001A76E8();
      v43 = 48;
      if (v41 != 1)
      {
        v43 = 49;
      }

      *(v40 + 56) = &type metadata for String;
      *(v40 + 64) = v42;
      *(v40 + 32) = v43;
      *(v40 + 40) = 0xE100000000000000;
      *(v40 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v40 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v40 + 72) = v38;
      v44 = v38;
      os_log(_:dso:log:type:_:)();

      if (qword_100375020 != -1)
      {
        swift_once();
      }

      v45 = qword_100382508;
      v73 = *(v82 + 16);
      v73(v80, v81, v12);
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v74 = v45;
      v71 = NSString.init(stringLiteral:)();
      v70 = NSString.init(stringLiteral:)();
      v69 = NSString.init(stringLiteral:)();
      v68 = NSString.init(stringLiteral:)();
      v46 = [v44 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v44;

      v47 = String._bridgeToObjectiveC()();

      v48 = NSString.init(stringLiteral:)();
      v49 = v78;
      Date.init()();
      UUID.uuidString.getter();
      v50 = String._bridgeToObjectiveC()();

      v52 = v8[14];
      v51 = v8[15];
      v67 = v8[16];
      v53 = v80;
      v73(v11, v80, v79);
      *&v11[v8[5]] = v71;
      *&v11[v8[6]] = v70;
      *&v11[v8[7]] = v69;
      *&v11[v8[8]] = v68;
      *&v11[v8[9]] = v47;
      *&v11[v8[10]] = v48;
      v54 = v75;
      v55 = v76;
      (*(v75 + 16))(&v11[v8[11]], v49, v76);
      *&v11[v8[12]] = v50;
      v12 = v79;
      v18 = v77;
      *&v11[v8[13]] = v77;
      v11[v52] = 0;
      v11[v51] = 0;
      (*(v54 + 8))(v49, v55);
      (*(v82 + 8))(v53, v12);
      *&v11[v67] = xmmword_1002F2090;
      v56 = v74;
      sub_100215264(v11);

      sub_1002034BC(v11, type metadata accessor for Metric);
    }
  }

  v57 = [objc_opt_self() defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  v58 = static NSNotificationName.NewABMMetric;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002EED40;
  strcpy(v83, "metricObject");
  HIBYTE(v83[6]) = 0;
  v83[7] = -5120;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for MetricNotificationObject;
  v60 = swift_allocObject();
  *(inited + 72) = v60;
  *(v60 + 16) = 18229;
  *(v60 + 24) = 0xE200000000000000;
  *(v60 + 32) = 5521746;
  *(v60 + 40) = 0xE300000000000000;
  *(v60 + 48) = v18;
  sub_1001FD020(inited);
  swift_setDeallocating();
  sub_1001AC99C(inited + 32, &qword_100377058, &qword_1002F21F8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v57 postNotificationName:v58 object:0 userInfo:isa];

  return (*(v82 + 8))(v81, v12);
}

void sub_100204394(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) == 1)
  {
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002EED50;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = 0xD00000000000001DLL;
    *(v3 + 40) = 0x80000001002BC380;
    *(v3 + 88) = sub_1001E1BB4(0, &unk_100377260, CTLazuliSystemConfiguration_ptr);
    *(v3 + 64) = a1;
    v4 = a1;
    print(_:separator:terminator:)();

    v5 = *(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_100205118;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1002050F8;
    v8[3] = &unk_10031EEA0;
    v7 = _Block_copy(v8);

    [v5 getSubscriptionInfo:v7];
    _Block_release(v7);
  }
}

unint64_t sub_10020452C(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 224 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 224 * v7;
  a2 = (v9 + 32 + 224 * v8);
  if (result != a2 || result >= &a2[224 * v14])
  {
    result = memmove(result, a2, 224 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0xE0uLL);
  a3 = &qword_100377258;
  a4 = &qword_1002F23F8;
  a2 = v18;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1001AC934(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_1001AC934(v6, v18, &qword_100377258, &qword_1002F23F8);
}

unint64_t sub_100204650(unint64_t result, _BYTE *a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100224E64(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_10020452C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_100204724(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 224 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 224 * a3;
  v13 = (v7 + 32 + 224 * a2);
  if (result != v13 || result >= v13 + 224 * v12)
  {
    result = memmove(result, v13, 224 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002047FC(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  if (qword_100375018 != -1)
  {
    result = swift_once();
  }

  if (*(qword_100382500 + 26) == 1)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002EED30;
    v6 = v4;
    sub_1001A551C(&qword_100377238, &qword_1002F23D8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v5 + 56) = &type metadata for String;
    v10 = sub_1001A76E8();
    *(v5 + 64) = v10;
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    type metadata accessor for CTDataConnectionType(0);
    v11 = String.init<A>(describing:)();
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v10;
    *(v5 + 72) = v11;
    *(v5 + 80) = v12;
    v13 = a3;
    sub_1001A551C(&qword_100377240, &qword_1002F23E0);
    v14 = String.init<A>(describing:)();
    *(v5 + 136) = &type metadata for String;
    *(v5 + 144) = v10;
    *(v5 + 112) = v14;
    *(v5 + 120) = v15;
    os_log(_:dso:log:type:_:)();
  }

  return result;
}

void sub_1002049CC()
{
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_100205118;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1002050F8;
  v4[3] = &unk_10031EDB0;
  v3 = _Block_copy(v4);

  [v1 getSubscriptionInfo:v3];
  _Block_release(v3);
}

uint64_t sub_100204B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1001E1BB4(0, &qword_100377140, CellularLoggingFileInformation_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100204C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    v12 = a3;
    if (!v7)
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1001FA438(result);

  return v12(v5, v3, 0);
}

uint64_t sub_100204D38()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100204D78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100204DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100204E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100204E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100204EE8()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100204F58()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100204FB8(uint64_t (*a1)(uint64_t, void))
{
  result = *(v1 + 24);
  if (result)
  {
    return a1(result, *(v1 + 32));
  }

  __break(1u);
  return result;
}

uint64_t sub_100204FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020511C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100205190(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x61746144205443;
  if (v2 != 1)
  {
    v4 = 0x666E4920646E6142;
    v3 = 0xE90000000000006FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x79636167654CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x61746144205443;
  if (*a2 != 1)
  {
    v8 = 0x666E4920646E6142;
    v7 = 0xE90000000000006FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x79636167654CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100205298()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020533C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002053CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10020546C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002057E0(*a1);
  *a2 = result;
  return result;
}

void sub_10020549C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x61746144205443;
  if (v2 != 1)
  {
    v5 = 0x666E4920646E6142;
    v4 = 0xE90000000000006FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79636167654CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1002054FC()
{
  v1 = OBJC_IVAR____TtC11FTMInternal24FTMNeighbourStateChanged__stateChanged;
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMNeighbourStateChanged()
{
  result = qword_1003772E0;
  if (!qword_1003772E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1002055F8(uint64_t a1, uint64_t a2)
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
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10020563C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 201))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100205698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0u;
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
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_100205730@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTMNeighbourStateChanged();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10020578C()
{
  result = qword_100377398;
  if (!qword_100377398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377398);
  }

  return result;
}

unint64_t sub_1002057E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031A480, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_10020582C()
{
  v1 = OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() colorNamed:v5];

    [v4 setColor:v6];
    [v4 setHidesWhenStopped:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100205934()
{
  v1 = OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel);
  }

  else
  {
    v4 = sub_100205998(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100205998(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = a1 + OBJC_IVAR____TtC11FTMInternal11LoadingView_loadingLabelText;
  v4 = *(a1 + OBJC_IVAR____TtC11FTMInternal11LoadingView_loadingLabelText);
  v5 = *(v3 + 8);

  v6 = String._bridgeToObjectiveC()();

  [v2 setText:v6];

  [v2 setTextAlignment:0];
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() colorNamed:v7];

  [v2 setTextColor:v8];
  v9 = [objc_opt_self() systemFontOfSize:18.0 weight:UIFontWeightMedium];
  [v2 setFont:v9];

  v10 = v2;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setHidden:1];

  return v10;
}

char *sub_100205B14(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v6[OBJC_IVAR____TtC11FTMInternal11LoadingView_shouldHideLoadingView] = 1;
  *&v6[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator] = 0;
  *&v6[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel] = 0;
  v14 = &v6[OBJC_IVAR____TtC11FTMInternal11LoadingView_loadingLabelText];
  *v14 = a1;
  v14[1] = a2;
  v38.receiver = v6;
  v38.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v38, "initWithFrame:", a3, a4, a5, a6);
  v16 = sub_10020582C();
  [v15 addSubview:v16];

  v17 = sub_100205934();
  [v15 addSubview:v17];

  v18 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002EF640;
  v20 = OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator;
  v21 = [*&v15[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator] centerYAnchor];
  v22 = [v15 centerYAnchor];

  v23 = [v21 constraintEqualToAnchor:v22];
  *(v19 + 32) = v23;
  v24 = [*&v15[v20] centerXAnchor];
  v25 = [v15 centerXAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v19 + 40) = v26;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002EF640;
  v29 = OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel;
  v30 = [*&v15[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel] topAnchor];
  v31 = [*&v15[v20] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:5.0];

  *(v28 + 32) = v32;
  v33 = [*&v15[v29] centerXAnchor];
  v34 = [v15 centerXAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v28 + 40) = v35;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:v36];

  return v15;
}

id sub_100205F2C()
{
  v1 = OBJC_IVAR____TtC11FTMInternal11LoadingView_shouldHideLoadingView;
  v0[OBJC_IVAR____TtC11FTMInternal11LoadingView_shouldHideLoadingView] = 0;
  v2 = sub_10020582C();
  [v2 setHidden:v0[v1]];

  v3 = sub_100205934();
  [v3 setHidden:v0[v1]];

  v4 = *&v0[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel];
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  [*&v0[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator] startAnimating];

  return [v0 setHidden:0];
}

void sub_1002060F0()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TickerViewController();
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC11FTMInternal20TickerViewController_collectionView];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor:v3];

  [v1 setDelegate:v0];
  [v1 setDataSource:v0];
  type metadata accessor for TickerColumnCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 addSubview:v1];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002EF930;
  v11 = [v1 centerXAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v12 centerXAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(v10 + 32) = v15;
  v16 = [v1 centerYAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v17 centerYAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v10 + 40) = v20;
  v21 = objc_opt_self();
  *(v10 + 48) = [v21 constraintWithItem:v1 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:50.0];
  v22 = [v0 view];
  if (v22)
  {
    v30 = v22;
    sub_1001E1BB4(0, qword_1003774A8, UIView_ptr);
    v23 = v1;
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    swift_unknownObjectRetain();
    v24 = 0;
  }

  v25 = [v21 constraintWithItem:v1 attribute:7 relatedBy:0 toItem:v24 attribute:7 multiplier:1.0 constant:0.0];

  swift_unknownObjectRelease();
  *(v10 + 56) = v25;
  sub_1001E1BB4(0, &qword_1003774A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 addConstraints:isa];

  v27 = [v0 view];
  if (v27)
  {
    v28 = v27;
    v29 = [v2 whiteColor];
    [v28 setBackgroundColor:v29];

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1002065E0(double a1)
{
  v2 = v1;
  v45 = type metadata accessor for IndexPath();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v45);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  *(v1 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numberValue) = a1;
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002EED40;
  *(v11 + 56) = &type metadata for Double;
  *(v11 + 64) = &protocol witness table for Double;
  *(v11 + 32) = a1;
  v12 = String.init(format:_:)();
  v14 = v13;
  v15 = (v2 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
  v16 = *(v2 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue + 8);
  *v15 = v12;
  v15[1] = v13;

  v17 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v17 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v48 = v12;
  v49 = v14;
  v50 = 0;
  v51 = v17;
  v18 = OBJC_IVAR____TtC11FTMInternal20TickerViewController_collectionView;
  if (!String.Iterator.next()().value._object)
  {
  }

  result = 0;
  v42 = v10;
  v43 = (v4 + 8);
  v41 = v18;
  while (1)
  {
    v20 = v8;
    v21 = result + 1;
    if (__OFADD__(result, 1))
    {
      break;
    }

    IndexPath.init(item:section:)();
    v22 = *(v2 + v18);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v24 = [v22 cellForItemAtIndexPath:isa];

    if (!v24)
    {

      goto LABEL_22;
    }

    type metadata accessor for TickerColumnCell();
    v25 = swift_dynamicCastClass();
    if (!v25)
    {

      goto LABEL_22;
    }

    v26 = v25;
    v27 = v2;
    v28 = *(v25 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters);
    v46 = 0;
    v47 = 0xE000000000000000;

    Character.write<A>(to:)();

    v29 = v47;
    v30 = *(v28 + 16);
    if (!v30)
    {
LABEL_21:

      v10 = v42;
LABEL_22:
      (*v43)(v10, v45);
    }

    v31 = 0;
    v44 = v21;
    v32 = v46;
    v33 = (v28 + 40);
    while (1)
    {
      v34 = *(v33 - 1) == v32 && *v33 == v29;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v31;
      v33 += 2;
      if (v30 == v31)
      {
        goto LABEL_21;
      }
    }

    v8 = v20;
    IndexPath.init(item:section:)();
    if ((*(v26 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_isScrolling) & 1) == 0)
    {
      v35 = *(v26 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView);
      v36 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v35 scrollToRowAtIndexPath:v36 atScrollPosition:2 animated:1];

      v24 = v36;
    }

    v2 = v27;

    v37 = *v43;
    v38 = v45;
    (*v43)(v20, v45);
    v10 = v42;
    v37(v42, v38);
    object = String.Iterator.next()().value._object;
    v18 = v41;
    result = v44;
    if (!object)
    {
    }
  }

  __break(1u);
  return result;
}