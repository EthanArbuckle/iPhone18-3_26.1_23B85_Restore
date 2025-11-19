uint64_t sub_1000506A8(uint64_t result, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100050858(uint64_t result, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100050A08(uint64_t result, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100050BB8(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for AdPlacementType();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_10005623C(&qword_100970CB8, &type metadata accessor for AdPlacementType);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_100050ED8(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100051048(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for BadgeType();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_10005623C(&qword_100970CF8, &type metadata accessor for BadgeType);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

_OWORD *sub_100051368(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1003D8ACC(a2);
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
      sub_1000530B0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10004C3A8(v13, a3 & 1);
    v8 = sub_1003D8ACC(a2);
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
    sub_100007000(v19);

    return sub_100056164(a1, v19);
  }

  else
  {
    sub_100052A10(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_1000514BC(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1003D750C(a2, a3, a5);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_10004CA38(v18, a4 & 1);
      result = sub_1003D750C(a2, a3, a5);
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
      sub_1000534A0();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    v24 = v23[6] + 24 * result;
    *v24 = a2;
    *(v24 + 8) = a3;
    *(v24 + 16) = a5;
    *(v23[7] + 8 * result) = a1;
    v25 = v23[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v17)
    {
      v23[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

uint64_t sub_100051640(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1003D7340(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10005383C();
      goto LABEL_7;
    }

    sub_10004D058(v13, a3 & 1);
    v24 = sub_1003D7340(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
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
    v18 = type metadata accessor for ImpressionMetrics();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_100052A78(v10, a2, a1, v16);
}

unint64_t sub_1000517BC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_1003D7340(a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_10004D3A4(v16, a3 & 1, a4);
      result = sub_1003D7340(a2);
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
      sub_100053AA4(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

uint64_t sub_10005192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000072B8(a3, a4);
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
      sub_10004D8C4(v18, a5 & 1);
      v13 = sub_1000072B8(a3, a4);
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
      sub_100053F00();
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

uint64_t sub_100051AB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for AdPlacementType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1003D7C44(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1000541E0();
      goto LABEL_9;
    }

    sub_10004DE24(v18, a4 & 1);
    v21 = sub_1003D7C44(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_100052B74(v15, v12, v23, a2, v24);
  }
}

_OWORD *sub_100051CAC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000072B8(a2, a3);
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
      sub_100053D5C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10004D60C(v16, a4 & 1);
    v11 = sub_1000072B8(a2, a3);
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
    sub_100007000(v22);

    return sub_100056164(a1, v22);
  }

  else
  {
    sub_100052C78(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100051DFC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1003D78D8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10004EB04(v13, a3 & 1);
      v18 = sub_1003D78D8(a2);
      if ((v14 & 1) != (v19 & 1))
      {
LABEL_17:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1000549B8();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_10003D4AC(a2, v26);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v16[6] + 40 * v10;
    v21 = v27;
    v22 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v22;
    *(v20 + 32) = v21;
    *(v16[7] + 8 * v10) = a1;
    v23 = v16[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v16[2] = v25;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

unint64_t sub_100051F80(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000072B8(a1, a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_10004EDB4(v16, a3 & 1);
      result = sub_1000072B8(a1, a2);
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
      sub_100054B4C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
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

uint64_t sub_1000520DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1003D791C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10004F058(v14, a3 & 1);
      v9 = sub_1003D791C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for Artwork();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v17 = v9;
      sub_100054CB4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return _objc_release_x1();
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;
}

unint64_t sub_100052238(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1003D7340(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_100054E3C();
    result = v19;
    goto LABEL_8;
  }

  sub_10004F714(v16, a2 & 1);
  result = sub_1003D7340(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a1;
    v23 = (v21[7] + 16 * result);
    *v23 = a3;
    v23[1] = a4;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10005236C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AdamId();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1003D7438(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_100053230();
    goto LABEL_7;
  }

  sub_10004C678(result, a3 & 1);
  result = sub_1003D7438(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_100052D2C(v14, v11, a1 & 1, v20);
}

unint64_t sub_100052520(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_1003D7340(a2);
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
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_8:
    v21 = *v6;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_100054FA0(a4);
    result = v19;
    goto LABEL_8;
  }

  sub_10004F978(v16, a3 & 1, a4);
  result = sub_1003D7340(a2);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1();
}

uint64_t sub_10005268C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000072B8(a2, a3);
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
      sub_1000550EC();
      goto LABEL_7;
    }

    sub_10004FBD8(v15, a4 & 1);
    v26 = sub_1000072B8(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
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
    v20 = type metadata accessor for AdamId();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100052DE4(v12, a2, a3, a1, v18);
}

uint64_t sub_10005280C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BadgeType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1003D79C8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10005536C(&type metadata accessor for BadgeType, &unk_100982850);
      goto LABEL_7;
    }

    sub_10004FF58(v17, a3 & 1);
    v22 = sub_1003D79C8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100052E94(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_100052A10(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100056164(a3, (a4[7] + 32 * a1));
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

uint64_t sub_100052A78(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ImpressionMetrics();
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

unint64_t sub_100052B24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
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

uint64_t sub_100052B74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for AdPlacementType();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_100052C34(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_100052C78(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100056164(a4, (a5[7] + 32 * a1));
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

unint64_t sub_100052CE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100052D2C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AdamId();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_100052DE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AdamId();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

uint64_t sub_100052E94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BadgeType();
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

void *sub_100052F4C()
{
  v1 = v0;
  sub_10002849C(&unk_100982990);
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 32);
      v19 = *v17;
      v20 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 40 * v14;
      *v21 = v19;
      *(v21 + 16) = v20;
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

id sub_1000530B0()
{
  v1 = v0;
  sub_10002849C(&unk_100982750);
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
        sub_1000073E8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100056164(v19, (*(v4 + 56) + 32 * v17));
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

char *sub_100053230()
{
  v1 = v0;
  v31 = type metadata accessor for AdamId();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100970CD0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void *sub_1000534A0()
{
  v1 = v0;
  sub_10002849C(&qword_1009827B0);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
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

id sub_100053628()
{
  v1 = v0;
  v2 = type metadata accessor for Accessory();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100970D18);
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
        sub_100056174(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1000561D8(v4, *(v7 + 48) + v21);
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

void *sub_10005383C()
{
  v1 = v0;
  v29 = type metadata accessor for ImpressionMetrics();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100970C90);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_100053AA4(uint64_t *a1)
{
  v2 = v1;
  sub_10002849C(a1);
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
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

id sub_100053BF0()
{
  v1 = v0;
  sub_10002849C(&unk_1009827F0);
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

void *sub_100053D5C()
{
  v1 = v0;
  sub_10002849C(&qword_100970CB0);
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
        sub_1000073E8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100056164(v25, (*(v4 + 56) + v22));
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

void *sub_100053F00()
{
  v1 = v0;
  sub_10002849C(&qword_100982810);
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

void *sub_100054078()
{
  v1 = v0;
  sub_10002849C(&qword_100970CC8);
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

void *sub_1000541E0()
{
  v1 = v0;
  v28 = type metadata accessor for AdPlacementType();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100970CC0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v29 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v31 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v30;
        v20 = *(v30 + 72) * v18;
        v21 = v27;
        v22 = v28;
        (*(v30 + 16))(v27, *(v3 + 48) + v20, v28);
        v18 *= 16;
        v23 = v29;
        v24 = *(v29 + 48);
        v25 = *(v19 + 32);
        v32 = *(*(v3 + 56) + v18);
        v25(v24 + v20, v21, v22);
        *(*(v23 + 56) + v18) = v32;

        v13 = v31;
      }

      while (v31);
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

        v1 = v26[0];
        v5 = v29;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v31 = (v17 - 1) & v17;
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

void *sub_100054470()
{
  v1 = v0;
  sub_10002849C(&unk_100982970);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_1000545BC()
{
  v1 = v0;
  v30 = type metadata accessor for IndexPath();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100970D30);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; *(*(v22 + 56) + v17) = v33)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      result = v24(v23 + v19, v20, v21);
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_100054848()
{
  v1 = v0;
  sub_10002849C(&qword_100970CE0);
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

void *sub_1000549B8()
{
  v1 = v0;
  sub_10002849C(&qword_1009827E0);
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
        sub_10003D4AC(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

void *sub_100054B4C()
{
  v1 = v0;
  sub_10002849C(&qword_100970D50);
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

id sub_100054CB4()
{
  v1 = v0;
  sub_10002849C(&qword_100970D00);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_100054E3C()
{
  v1 = v0;
  sub_10002849C(&qword_100970D20);
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
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

id sub_100054FA0(uint64_t *a1)
{
  v2 = v1;
  sub_10002849C(a1);
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v19;
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

char *sub_1000550EC()
{
  v1 = v0;
  v35 = type metadata accessor for AdamId();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100970D58);
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

void *sub_10005536C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  sub_10002849C(a2);
  v6 = *v2;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
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

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

id sub_1000555E8(void *a1, uint64_t a2)
{
  if (*(a2 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for StaticDimension();
  sub_1000056A8(v3, qword_1009D2460);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

void sub_1000557D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationSemantics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100970CE8);
  swift_allocObject();
  v8 = swift_retain_n();
  v9 = sub_1003C940C(v8);

  v10 = sub_1003B71B8(a1, v9, a2);
  sub_10005623C(&qword_100970CF0, type metadata accessor for VersionHistoryViewController);
  v11 = v10;

  v12 = v11;
  dispatch thunk of BaseGenericPagePresenter.view.setter();
  dispatch thunk of BaseGenericPagePresenter.pageTitle.getter();
  v14 = v13;

  if (v14)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v12 setTitle:v15];

  v12[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 1;
  v16 = *&v12[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber];
  v17 = [v12 navigationItem];
  v18 = v17;
  if (v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  [v17 setLargeTitleDisplayMode:v19];

  v20 = [v12 view];
  if (v20)
  {
    memset(v21, 0, sizeof(v21));
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v21, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

id sub_100055A98(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 absoluteDimension:a1];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:v6 alignment:1];

  return v7;
}

uint64_t sub_100055BB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100972A20);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  sub_100055FF4(a1, v9);
  v23 = *(v11 + 48);
  if (v23(v9, 1, v10) == 1)
  {
    sub_10002B894(v9, &unk_100972A20);
    if (v2[14])
    {

      ImpressionsCalculator.removeAllElements()();
    }

    swift_beginAccess();
    v2[7] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v16, v9, v10);
    v20[1] = v20;
    v22 = v11;
    v25 = v2[3];
    __chkstk_darwin(v17);
    v20[0] = 0;
    v21 = v13;
    v20[-2] = v16;
    v20[-1] = v2;

    sub_10002849C(&unk_100980500);
    sub_100056080();
    v13 = v21;
    StateStore.performTransaction<A>(_:)();
    v11 = v22;

    (*(v11 + 8))(v16, v10);
  }

  sub_10004B414();
  sub_100055FF4(a1, v6);
  if (v23(v6, 1, v10) == 1)
  {
    return sub_10002B894(v6, &unk_100972A20);
  }

  v19 = (*(v11 + 32))(v13, v6, v10);
  v24 = v2[3];
  __chkstk_darwin(v19);
  v20[-2] = v13;
  v20[-1] = v2;

  sub_10002849C(&unk_100980500);
  sub_100056080();
  StateStore.performTransaction<A>(_:)();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100055FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100056080()
{
  result = qword_10097DB00;
  if (!qword_10097DB00)
  {
    sub_10002D1A8(&unk_100980500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DB00);
  }

  return result;
}

void sub_100056100()
{
  v1 = *(type metadata accessor for IndexSet() - 8);
  v2 = ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);

  sub_1005936C8(v3, v2);
}

_OWORD *sub_100056164(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100056174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000561D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005623C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100056294()
{
  v1 = ASKDeviceTypeGetCurrent();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      result = UITraitCollection.prefersAccessibilityLayouts.getter();
      if ((result & 1) == 0)
      {
        if (*(*(v0 + 88) + 16))
        {
          return sub_1003D7340(*(*(v0 + 96) + 16));
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000563F0@<X0>(char a1@<W0>, double *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v103 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100397050(_swiftEmptyArrayStorage);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  Width = CGRectGetWidth(v109);
  v17 = 0;
  v18 = *v6;
  v19 = *(v6 + 8);
  v106 = *(v6 + 16);
  v104 = *(v6 + 40);
  v20 = *(v6 + 48);
  if (Width <= 0.0)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v21 = 0.0;
  while (1)
  {
    if (v18 + v21 <= Width)
    {
      v22 = __OFADD__(v17++, 1);
      if (v22)
      {
        break;
      }
    }

    v21 = v18 + *(v6 + 24) + v21;
    if (v21 >= Width)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  if (v104 < 2 || v17 <= 0)
  {
LABEL_12:
    sub_10002849C(&qword_100970D60);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007B10D0;
    *(v23 + 32) = *(v6 + 96);

    v24 = 1;
  }

  else
  {
    sub_10002849C(&unk_10097E960);
    v23 = Array.chunked(by:)();
    v24 = *(v23 + 16);
    if (!v24)
    {

      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
LABEL_65:
      *a2 = v15;
      a2[1] = v26;
      a2[2] = v27;
      a2[3] = v28;
      a2[4] = v29;
      return result;
    }
  }

  v30 = *(v23 + 32);
  v90 = v23 + 32;
  v31 = *(v30 + 16);
  if (v17 < v31)
  {
    v31 = v17;
  }

  v32 = v18 * v31;
  v96 = v31;
  v33 = v31 + -1.0;
  v105 = a6;
  v100 = a3;
  if (v33 >= 0.0)
  {
    v34 = v32 + v106 * v33;
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v111.origin.x = a3;
    v111.origin.y = a4;
    v111.size.width = a5;
    v111.size.height = a6;
    v38 = CGRectGetWidth(v111);
    v101 = v34;
    v39 = (v38 - v34) * 0.5;
    v112.origin.x = a3;
    v35 = a4;
    v112.origin.y = a4;
    v36 = a5;
    v112.size.width = a5;
    v112.size.height = a6;
    MinX = CGRectGetMinX(v112) + v39;
    goto LABEL_20;
  }

  v34 = v106 * 0.0 + v32;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_17:
  v101 = v34;
  v110.origin.x = a3;
  v35 = a4;
  v110.origin.y = a4;
  v36 = a5;
  v110.size.width = a5;
  v110.size.height = a6;
  MinX = CGRectGetMinX(v110);
LABEL_20:
  v97 = 0.0;
  if (a1)
  {
    v40 = MinX;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v104;
  if (v104 >= v24)
  {
    v41 = v24;
  }

  v42 = v19 * v41 + v106 * (v24 - 1);
  v43 = 0.0;
  if (a1)
  {
    v44 = v100;
    v113.origin.x = v100;
    v113.origin.y = v35;
    v113.size.width = v36;
    v45 = v105;
    v113.size.height = v105;
    v99 = (CGRectGetHeight(v113) - v42) * 0.5;
    v114.origin.x = v44;
    v114.origin.y = v35;
    v114.size.width = v36;
    v114.size.height = v45;
    v43 = CGRectGetMinY(v114) + v99;
  }

  v87 = a2;
  v89 = *(v23 + 16);
  if (!v89)
  {
    v94 = 0.0;
    v93 = 0.0;
    v95 = 0.0;
LABEL_64:

    a2 = v87;
    v29 = v97;
    v26 = v95;
    v28 = v94;
    v27 = v93;
    goto LABEL_65;
  }

  v46 = 0;
  LODWORD(v100) = enum case for FloatingPointRoundingRule.down(_:);
  v47 = (v13 + 104);
  v48 = (v13 + 8);
  v49 = 0.0;
  v92 = v96;
  v95 = 0.0;
  v93 = 0.0;
  v94 = 0.0;
  v97 = 0.0;
  v88 = v23;
LABEL_30:
  if (*&v49 < *(v23 + 16))
  {
    v50 = *(v90 + 8 * *&v49);
    *&v91 = *&v49 + 1;
    v51 = *(*&v50 + 16);
    v98 = *&v50 + 32;
    v99 = v50;

    v52 = 0;
    v105 = v49;
    while (1)
    {
      v53 = 0uLL;
      v54 = v51;
      v55 = 0uLL;
      v56 = 0uLL;
      if (v52 != v51)
      {
        if (v52 >= *(*&v99 + 16))
        {
          goto LABEL_68;
        }

        v54 = v52 + 1;
        *&v107[0] = v52;
        sub_10002C0AC(v98 + 40 * v52, v107 + 8);
        v53 = v107[0];
        v55 = v107[1];
        v56 = v107[2];
      }

      v108[0] = v53;
      v108[1] = v55;
      v108[2] = v56;
      if (!v56)
      {

        v49 = v91;
        v23 = v88;
        if (*&v91 == v89)
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      v57 = v53;
      v58 = v102;
      v59 = v103;
      (*v47)(v102, LODWORD(v100), v103);
      CGPoint.rounded(_:)();
      v61 = v60;
      v63 = v62;
      (*v48)(v58, v59);
      v115.origin.x = v61;
      v115.origin.y = v63;
      v115.size.width = v18;
      v115.size.height = v19;
      v120.origin.x = v40;
      v120.origin.y = v43;
      v120.size.width = v101;
      v120.size.height = v42;
      v64 = CGRectIntersectsRect(v115, v120);
      v65 = 0;
      if (*&v49 < v104 && v64)
      {
        if (v96 <= -9.22337204e18)
        {
          goto LABEL_69;
        }

        if (v96 >= 9.22337204e18)
        {
          goto LABEL_70;
        }

        if (v57 >= v92)
        {
          v65 = 0;
        }

        else
        {
          v116.origin.x = v61;
          v116.origin.y = v63;
          v116.size.width = v18;
          v116.size.height = v19;
          v66 = CGRectGetMinX(v116);
          v67 = v95;
          if (v66 < v95)
          {
            v67 = v66;
          }

          v95 = v67;
          v117.origin.x = v61;
          v117.origin.y = v63;
          v117.size.width = v18;
          v117.size.height = v19;
          MinY = CGRectGetMinY(v117);
          v69 = v93;
          if (MinY < v93)
          {
            v69 = MinY;
          }

          v93 = v69;
          v118.origin.x = v61;
          v118.origin.y = v63;
          v118.size.width = v18;
          v118.size.height = v19;
          MaxX = CGRectGetMaxX(v118);
          v71 = v94;
          if (v94 <= MaxX)
          {
            v71 = MaxX;
          }

          v94 = v71;
          v119.origin.x = v61;
          v119.origin.y = v63;
          v119.size.width = v18;
          v119.size.height = v19;
          MaxY = CGRectGetMaxY(v119);
          v73 = v97;
          if (v97 <= MaxY)
          {
            v73 = MaxY;
          }

          v97 = v73;
          v65 = 1;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v107[0] = v15;
      v75 = sub_1003D7340(v46);
      v77 = v15[2];
      v78 = (v76 & 1) == 0;
      v22 = __OFADD__(v77, v78);
      v79 = v77 + v78;
      if (v22)
      {
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
        goto LABEL_72;
      }

      v80 = v76;
      if (v15[3] < v79)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_56;
      }

      v83 = v75;
      sub_100052F4C();
      v75 = v83;
      v15 = *&v107[0];
      if (v80)
      {
LABEL_57:
        v82 = v15[7] + 40 * v75;
        *v82 = v61;
        *(v82 + 8) = v63;
        *(v82 + 16) = v18;
        *(v82 + 24) = v19;
        *(v82 + 32) = v65;
        goto LABEL_61;
      }

LABEL_59:
      v15[(v75 >> 6) + 8] |= 1 << v75;
      *(v15[6] + 8 * v75) = v46;
      v84 = v15[7] + 40 * v75;
      *v84 = v61;
      *(v84 + 8) = v63;
      *(v84 + 16) = v18;
      *(v84 + 24) = v19;
      *(v84 + 32) = v65;
      v85 = v15[2];
      v22 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v22)
      {
        goto LABEL_71;
      }

      v15[2] = v86;
LABEL_61:
      v49 = v105;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_67;
      }

      sub_100007000(v108 + 8);
      ++v46;
      v52 = v54;
    }

    sub_10004C124(v79, isUniquelyReferenced_nonNull_native);
    v75 = sub_1003D7340(v46);
    if ((v80 & 1) != (v81 & 1))
    {
      goto LABEL_73;
    }

LABEL_56:
    v15 = *&v107[0];
    if (v80)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100056C80(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = sub_100397050(_swiftEmptyArrayStorage);
  v14 = ASKDeviceTypeGetCurrent();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v71.origin.x = a3;
  v71.origin.y = a4;
  v71.size.width = a5;
  v71.size.height = a6;
  Width = CGRectGetWidth(v71);
  v22 = *(v6 + 16);
  v23 = v22;
  if ((v20 & 1) == 0)
  {
    v23 = *(v6 + 24);
  }

  v24 = *v6;
  v25 = *(v6 + 8);
  v26 = 0;
  if (Width > 0.0)
  {
    v27 = v24 + v23;
    v28 = 0.0;
    while (1)
    {
      if (v24 + v28 <= Width)
      {
        v29 = __OFADD__(v26++, 1);
        if (v29)
        {
          break;
        }
      }

      v28 = v27 + v28;
      if (v28 >= Width)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

LABEL_16:
  v30 = *(v6 + 96);
  v31 = *(v30 + 16);
  if (v31 >= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = *(v30 + 16);
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_59;
  }

  if (v33 <= 0)
  {
    v68 = 0.0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    v68 = v22;
    goto LABEL_25;
  }

  v72.origin.x = a3;
  v72.origin.y = a4;
  v72.size.width = a5;
  v72.size.height = a6;
  v34 = CGRectGetWidth(v72);
  if (v20)
  {
    goto LABEL_24;
  }

  v68 = (v34 - v24 * v32) / v33;
LABEL_25:
  v73.origin.x = a3;
  v73.origin.y = a4;
  v73.size.width = a5;
  v73.size.height = a6;
  MinX = CGRectGetMinX(v73);
  v36 = 0.0;
  v37 = a5;
  v38 = 0.0;
  if (a1)
  {
    v39 = a3;
    v40 = a4;
    v41 = a6;
    v38 = floor(CGRectGetMidY(*(&v37 - 2)) + v25 * -0.5);
  }

  v42 = 0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  while (1)
  {
    v47 = 0uLL;
    v48 = v31;
    v49 = 0uLL;
    v50 = 0uLL;
    if (v42 != v31)
    {
      if (v42 >= v31)
      {
        goto LABEL_56;
      }

      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_57;
      }

      *&v69[0] = v42;
      sub_10002C0AC(v30 + 32 + 40 * v42, v69 + 8);
      v47 = v69[0];
      v49 = v69[1];
      v50 = v69[2];
    }

    v70[0] = v47;
    v70[1] = v49;
    v70[2] = v50;
    if (!v50)
    {
      *a2 = v13;
      *(a2 + 8) = v45;
      *(a2 + 16) = v44;
      *(a2 + 24) = v43;
      *(a2 + 32) = v36;
      return;
    }

    v51 = v47;
    if (v47 < v26)
    {
      v75.origin.x = MinX;
      v75.origin.y = v38;
      v75.size.width = v24;
      v75.size.height = v25;
      v52 = CGRectGetMinX(v75);
      if (v52 < v45)
      {
        v45 = v52;
      }

      v76.origin.x = MinX;
      v76.origin.y = v38;
      v76.size.width = v24;
      v76.size.height = v25;
      MinY = CGRectGetMinY(v76);
      if (MinY < v44)
      {
        v44 = MinY;
      }

      v77.origin.x = MinX;
      v77.origin.y = v38;
      v77.size.width = v24;
      v77.size.height = v25;
      MaxX = CGRectGetMaxX(v77);
      if (v43 <= MaxX)
      {
        v43 = MaxX;
      }

      v78.origin.x = MinX;
      v78.origin.y = v38;
      v78.size.width = v24;
      v78.size.height = v25;
      MaxY = CGRectGetMaxY(v78);
      if (v36 <= MaxY)
      {
        v36 = MaxY;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v13;
    v57 = sub_1003D7340(v51);
    v59 = v13[2];
    v60 = (v58 & 1) == 0;
    v29 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v29)
    {
      break;
    }

    v62 = v58;
    if (v13[3] < v61)
    {
      sub_10004C124(v61, isUniquelyReferenced_nonNull_native);
      v57 = sub_1003D7340(v51);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_60;
      }

LABEL_49:
      if (v62)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_49;
    }

    v67 = v57;
    sub_100052F4C();
    v57 = v67;
    v13 = *&v69[0];
    if (v62)
    {
LABEL_28:
      v46 = v13[7] + 40 * v57;
      *v46 = MinX;
      *(v46 + 8) = v38;
      *(v46 + 16) = v24;
      *(v46 + 24) = v25;
      *(v46 + 32) = v51 < v26;
      goto LABEL_29;
    }

LABEL_50:
    v13[(v57 >> 6) + 8] |= 1 << v57;
    *(v13[6] + 8 * v57) = v51;
    v64 = v13[7] + 40 * v57;
    *v64 = MinX;
    *(v64 + 8) = v38;
    *(v64 + 16) = v24;
    *(v64 + 24) = v25;
    *(v64 + 32) = v51 < v26;
    v65 = v13[2];
    v29 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v29)
    {
      goto LABEL_58;
    }

    v13[2] = v66;
LABEL_29:
    v74.origin.x = MinX;
    v74.origin.y = v38;
    v74.size.width = v24;
    v74.size.height = v25;
    MinX = v68 + CGRectGetMaxX(v74);
    sub_100007000(v70 + 8);
    v42 = v48;
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000570E8(void *a1)
{
  v2 = v1;
  v4 = [a1 traitCollection];
  sub_100056294();

  CGRect.subtracting(insets:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a1 traitCollection];
  LOBYTE(v4) = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v4)
  {
    sub_1000563F0(1, v31, v6, v8, v10, v12);
  }

  else
  {
    sub_100056C80(1, v31, v6, v8, v10, v12);
  }

  v14 = 0;
  v23 = v31[4];
  v24 = v31[3];
  v15 = v31[0];
  v16 = *(v2 + 96);
  v17 = *(v16 + 16);
  v25 = v16 + 32;
  while (1)
  {
    v18 = 0uLL;
    v19 = v17;
    v20 = 0uLL;
    v21 = 0uLL;
    if (v14 == v17)
    {
      goto LABEL_10;
    }

    if (v14 >= v17)
    {
      break;
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_17;
    }

    *&v27 = v14;
    sub_10002C0AC(v25 + 40 * v14, &v27 + 8);
    v18 = v27;
    v20 = v28;
    v21 = v29;
LABEL_10:
    v30[0] = v18;
    v30[1] = v20;
    v30[2] = v21;
    if (!v21)
    {

      CGRect.adding(outsets:)();
      LayoutRect.init(representing:)();
      return;
    }

    v26 = v18;
    sub_100005A38((v30 + 8), &v27);
    sub_10002A400(&v27, *(&v28 + 1));
    v22 = [a1 traitCollection];
    if (*(*&v15 + 16))
    {
      sub_1003D7340(v26);
    }

    CGRect.withLayoutDirection(using:relativeTo:)();

    dispatch thunk of LayoutView.frame.setter();
    sub_10002A400(&v27, *(&v28 + 1));
    if (*(*&v15 + 16))
    {
      sub_1003D7340(v26);
    }

    dispatch thunk of LayoutView.isHidden.setter();
    sub_100007000(&v27);
    v14 = v19;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_100057478(void *a1)
{
  v3 = v1[5];
  v6[4] = v1[4];
  v7[0] = v3;
  *(v7 + 10) = *(v1 + 90);
  v4 = v1[1];
  v6[0] = *v1;
  v6[1] = v4;
  v5 = v1[3];
  v6[2] = v1[2];
  v6[3] = v5;
  swift_getObjectType();
  sub_100057538(a1, v6);
}

uint64_t sub_1000574EC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1000578DC(v9, &v8);
}

void sub_100057538(void *a1, uint64_t a2)
{
  v4 = [a1 traitCollection];
  sub_100056294();

  CGSize.subtracting(insets:)();
  v6 = v5;
  v8 = v7;
  v9 = [a1 traitCollection];
  LOBYTE(v4) = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v4)
  {
    sub_1000563F0(0, v12, 0.0, 0.0, v6, v8);
  }

  else
  {
    sub_100056C80(0, v12, 0.0, 0.0, v6, v8);
  }

  sub_100057718(v12);
  CGSize.adding(outsets:)();
  v10 = [a1 traitCollection];
  v11 = v10;
  if ((*(a2 + 105) & 1) == 0 && *(a2 + 104) == 6)
  {
    UITraitCollection.prefersAccessibilityLayouts.getter();
  }

  else
  {
  }
}

__n128 sub_100057748(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005775C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000577A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000577FC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100057828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100057870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100057914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100057930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100057978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1000579E0()
{
  type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_100057A1C(int a1, int a2, int a3, uint64_t a4, id a5)
{
  if ([a5 horizontalSizeClass] == 1)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  }

  else
  {
    type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  }

  sub_1001B2E10(a4, a5);
  return v7;
}

id sub_100057AF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell()
{
  result = qword_100970D90;
  if (!qword_100970D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

UIColor sub_100057BBC()
{
  sub_100005744(0, &qword_100970180);
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent:0.1];

  result.super.isa = UIColor.init(light:dark:)(v1, [objc_allocWithZone(UIColor) initWithRed:0.168627451 green:0.188235294 blue:0.231372549 alpha:1.0]).super.isa;
  qword_1009CD7D0 = result.super.isa;
  return result;
}

char *sub_100057C8C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
  v12 = type metadata accessor for ItemLayoutContext();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_spotlightView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separatorView] = 0;
  v13 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separator;
  v14 = type metadata accessor for Separator();
  v15 = (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf] = 0;
  LOBYTE(ObjectType) = (*(ObjectType + 128))(v15);
  v16 = objc_allocWithZone(type metadata accessor for InAppPurchaseLockupView());
  *&v5[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView] = sub_1004A0A78(ObjectType & 1);
  v21.receiver = v5;
  v21.super_class = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v19 = [v17 contentView];
  [v19 addSubview:*&v17[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView]];

  return v17;
}

id sub_100057FCC()
{
  v1 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = type metadata accessor for Separator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A3C4(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10002B894(v3, &unk_100970E10);
    v12 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separatorView;
    v13 = *&v0[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 removeFromSuperview];
      v14 = *&v0[v12];
    }

    else
    {
      v14 = 0;
    }

    *&v0[v12] = 0;

    return [v0 setNeedsLayout];
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v15 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separatorView;
    v16 = *&v0[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separatorView];
    if (v16)
    {
      (*(v5 + 16))(v7, v10, v4);
      v17 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v18 = *(v5 + 24);
      v19 = v16;
      v18(&v16[v17], v7, v4);
      swift_endAccess();
      [v19 setNeedsLayout];

      v20 = *(v5 + 8);
      v20(v7, v4);
      return (v20)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v22 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v23 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v30 = *(v5 + 40);
      v24 = v22;
      v30(&v22[v23], v7, v4);
      swift_endAccess();

      v25 = *&v0[v15];
      if (v25)
      {
        [v25 removeFromSuperview];
        v26 = *&v0[v15];
      }

      else
      {
        v26 = 0;
      }

      *&v0[v15] = v24;
      v27 = v24;

      v28 = [v0 contentView];
      [v28 addSubview:v27];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }
}

uint64_t sub_1000583C0(uint64_t a1)
{
  v3 = type metadata accessor for InAppPurchaseTheme();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView);
  v12 = *(v4 + 16);
  v26 = a1;
  v12(&v24 - v9, a1, v3, v8);
  v13 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v4 + 24))(v11 + v13, v10, v3);
  swift_endAccess();
  sub_1004A05D0();
  v14 = *(v4 + 8);
  v14(v10, v3);
  (v12)(v6, v11 + v13, v3);
  LODWORD(v11) = (*(v4 + 88))(v6, v3);
  LODWORD(v12) = enum case for InAppPurchaseTheme.spotlight(_:);
  v14(v6, v3);
  v15 = v11 == v12;
  v16 = v25;
  if (v15)
  {
    v17 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_spotlightView;
    if (!*&v25[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_spotlightView])
    {
      v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = *&v16[v17];
      if (v19)
      {
        [v19 removeFromSuperview];
        v20 = *&v16[v17];
      }

      else
      {
        v20 = 0;
      }

      *&v16[v17] = v18;
      v21 = v18;

      if (v21)
      {
        [v21 _setCornerRadius:4.0];
        if (qword_10096CE80 != -1)
        {
          swift_once();
        }

        [v21 setBackgroundColor:qword_1009CD7D0];
        v22 = [v16 contentView];
        [v22 insertSubview:v21 atIndex:0];
      }

      [v16 setNeedsLayout];
    }
  }

  [v16 setNeedsLayout];
  return (v14)(v26, v3);
}

uint64_t sub_1000586D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100970EA0);
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v22[-1] - v11;
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v14)
  {
    if (qword_10096D670 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Separator();
    v16 = sub_1000056A8(v15, qword_1009CF3B8);
    v17 = *(*(v15 - 8) + 16);

    return v17(a2, v16, v15);
  }

  else
  {
    if (qword_10096E508 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
    sub_1000056A8(v19, qword_1009D1F00);
    InAppPurchaseLockupViewLayout.Metrics.iconSize.getter();
    v22[0] = a1;
    Conditional.evaluate(with:)();
    (*(v9 + 8))(v12, v8);
    InAppPurchaseLockupViewLayout.Metrics.iconMargin.getter();
    sub_10002A400(v22, v22[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v5 + 8))(v7, v4);
    sub_100007000(v22);
    if (qword_10096D670 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Separator();
    sub_1000056A8(v20, qword_1009CF3B8);
    return Separator.withLeadingInset(_:)();
  }
}

id sub_100058A48()
{
  v1 = v0;
  v2 = type metadata accessor for InAppPurchaseTheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v61 - v6;
  __chkstk_darwin(v7);
  v64 = &v61 - v8;
  v9 = type metadata accessor for Separator();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  v73.receiver = v0;
  v73.super_class = v13;
  objc_msgSendSuper2(&v73, "layoutSubviews");
  v14 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v72.origin.x = v16;
  v72.origin.y = v18;
  v72.size.width = v20;
  v72.size.height = v22;
  v67 = v1;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separatorView];
  if (v23)
  {
    v24 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    v62 = v3;
    v25 = *(v10 + 16);
    v25(v12, &v23[v24], v9);
    v26 = v9;
    v27 = v23;
    Separator.frame(forBoundingRect:in:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v63 = v2;
    v36 = *(v10 + 8);
    v36(v12, v26);
    [v27 setFrame:{v29, v31, v33, v35}];
    v25(v12, &v23[v24], v26);
    v3 = v62;
    CGRect.inset(bySeparator:in:)();

    v36(v12, v26);
    v2 = v63;
  }

  v37 = *&v67[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView];
  v38 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  v39 = *(v3 + 16);
  v40 = v64;
  v39(v64, &v37[v38], v2);
  v41 = (*(v3 + 88))(v40, v2);
  v42 = enum case for InAppPurchaseTheme.spotlight(_:);
  v64 = *(v3 + 8);
  (v64)(v40, v2);
  if (v41 == v42)
  {
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;
    CGRectGetMinX(v72);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMinY(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    CGRectGetWidth(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    v43.n128_f64[0] = CGRectGetHeight(v76);
  }

  v48 = *&v67[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_spotlightView];
  v49 = v65;
  if (v48)
  {
    v50 = v37;
    v51 = v3;
    v52 = v48;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v52 setFrame:?];

    v3 = v51;
    v37 = v50;
  }

  (v39)(v49, &v37[v38], v2, v43);
  v53 = v66;
  (*(v3 + 104))(v66, v42, v2);
  sub_10005A434(&unk_100970E30, &type metadata accessor for InAppPurchaseTheme);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v70 != v68 || v71 != v69)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v54 = v53;
  v55 = v64;
  (v64)(v54, v2);
  v55(v49, v2);

  v56 = v72.origin.x;
  v57 = v72.origin.y;
  v58 = v72.size.width;
  v59 = v72.size.height;
  CGRectGetMinX(v72);
  v77.origin.x = v56;
  v77.origin.y = v57;
  v77.size.width = v58;
  v77.size.height = v59;
  CGRectGetMinY(v77);
  v78.origin.x = v56;
  v78.origin.y = v57;
  v78.size.width = v58;
  v78.size.height = v59;
  CGRectGetWidth(v78);
  v79.origin.x = v56;
  v79.origin.y = v57;
  v79.size.width = v58;
  v79.size.height = v59;
  CGRectGetHeight(v79);
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v37 setFrame:?];
}

uint64_t sub_100059168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v94 = a4;
  v110 = a2;
  v106 = a1;
  v7 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v7 - 8);
  v108 = &v80 - v8;
  v107 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v10 - 8);
  v109 = &v80 - v11;
  v12 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v12 - 8);
  v100 = &v80 - v13;
  v99 = type metadata accessor for OfferButtonSubtitlePosition();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for OfferEnvironment();
  v88 = *(v113 - 8);
  __chkstk_darwin(v113);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v80 - v17;
  __chkstk_darwin(v18);
  v112 = &v80 - v19;
  v20 = sub_10002849C(&unk_1009701A0);
  v102 = *(v20 - 8);
  v103 = v20;
  __chkstk_darwin(v20);
  v101 = &v80 - v21;
  v22 = type metadata accessor for InAppPurchaseTheme();
  __chkstk_darwin(v22 - 8);
  v92 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Shelf.PresentationHints();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for FloatingPointRoundingRule();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v26 - 8);
  v28 = &v80 - v27;
  v29 = type metadata accessor for ComponentLayoutOptions();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Separator();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a5;
  sub_1000586D8(a5, v36);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10005A434(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v85 = a3;
  LOBYTE(a3) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v37 = *(v30 + 8);
  v37(v32, v29);
  v97 = v33;
  v96 = v34;
  v111 = v36;
  if (a3)
  {
    (*(v34 + 56))(v28, 1, 1, v33);
    v38 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separator;
    v39 = v93;
    swift_beginAccess();
    sub_10005A354(v28, &v39[v38]);
    swift_endAccess();
    sub_100057FCC();
    sub_10002B894(v28, &unk_100970E10);
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    LOBYTE(v38) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v37(v32, v29);
    v40 = [v39 contentView];
    v41 = v40;
    v42 = v39;
    if (v38)
    {
      [v40 layoutMargins];
      [v41 setLayoutMargins:?];
    }

    else
    {
      Separator.verticalOutset.getter();
      sub_10002A400(v114, v114[3]);
      v45 = v81;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v82 + 8))(v45, v83);
      [v41 layoutMargins];
      [v41 setLayoutMargins:?];

      sub_100007000(v114);
    }
  }

  else
  {
    (*(v34 + 16))(v28, v36, v33);
    (*(v34 + 56))(v28, 0, 1, v33);
    v43 = OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_separator;
    v42 = v93;
    swift_beginAccess();
    sub_10005A354(v28, &v42[v43]);
    swift_endAccess();
    sub_100057FCC();
    sub_10002B894(v28, &unk_100970E10);
    v44 = [v42 contentView];
    [v44 layoutMargins];
    [v44 setLayoutMargins:?];
  }

  v46 = v101;
  v47 = v112;
  v48 = v89;
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_10005A434(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v49 = v91;
  v50 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v90 + 8))(v48, v49);
  v42[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf] = v50 & 1;
  v51 = v92;
  InAppPurchaseLockup.theme.getter();
  sub_1000583C0(v51);
  v52 = *&v42[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView];
  v53 = *&v52[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
  Lockup.title.getter();
  if (v54)
  {
    v55 = String._bridgeToObjectiveC()();
  }

  else
  {
    v55 = 0;
  }

  [v53 setText:v55];

  v56 = *&v52[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
  InAppPurchaseLockup.descriptionText.getter();
  if (v57)
  {
    v58 = String._bridgeToObjectiveC()();
  }

  else
  {
    v58 = 0;
  }

  v59 = v113;
  [v56 setText:v58];

  if (Lockup.offerDisplayProperties.getter())
  {
    v60 = v86;
    OfferDisplayProperties.environment.getter();

    v61 = v88;
    (*(v88 + 32))(v47, v60, v59);
    v62 = v87;
    (*(v61 + 104))(v87, enum case for OfferEnvironment.widthConstrainedLockup(_:), v59);
    v63 = static OfferEnvironment.== infix(_:_:)();
    v64 = *(v61 + 8);
    v64(v62, v59);
    if (v63)
    {
      v65 = v95;
      v66 = v99;
      (*(v95 + 104))(v98, enum case for OfferButtonSubtitlePosition.below(_:), v99);
      (*(v65 + 56))(v100, 1, 1, v66);
      sub_10005A434(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
      AccessibilityConditional.init(value:axValue:)();
      v67 = v52[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_isHeightConstrained];
      v52[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_isHeightConstrained] = 1;
      if ((v67 & 1) == 0)
      {
        [v52 setNeedsLayout];
      }

      v64(v112, v113);
      v68 = v111;
      goto LABEL_20;
    }

    v64(v47, v59);
  }

  v69 = v95;
  v70 = v99;
  (*(v95 + 104))(v98, enum case for OfferButtonSubtitlePosition.right(_:), v99);
  (*(v69 + 56))(v100, 1, 1, v70);
  sub_10005A434(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  AccessibilityConditional.init(value:axValue:)();
  v71 = v52[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_isHeightConstrained];
  v52[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_isHeightConstrained] = 0;
  v68 = v111;
  if (v71 == 1)
  {
    [v52 setNeedsLayout];
  }

LABEL_20:
  v72 = *&v52[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_offerButton];
  v73 = Lockup.offerDisplayProperties.getter();
  v74 = Lockup.buttonAction.getter();
  v75 = v104;
  v76 = v107;
  (*(v104 + 104))(v105, enum case for OfferButtonPresenterViewAlignment.left(_:), v107);
  (*(v75 + 56))(v108, 1, 1, v76);
  sub_10005A434(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v77 = v109;
  AccessibilityConditional.init(value:axValue:)();
  v78 = sub_10002849C(&unk_100973240);
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  sub_10064AFA4(v73, v74, 0, v77, v46, v110, 0, 0);

  sub_10002B894(v77, &unk_100973230);
  [v42 setNeedsLayout];
  (*(v102 + 8))(v46, v103);
  return (*(v96 + 8))(v68, v97);
}

id sub_10005A0C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupCollectionViewCell()
{
  result = qword_100970DD8;
  if (!qword_100970DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005A1E0()
{
  sub_10005A300(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10005A300(319, &unk_100970DF0, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10005A300(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10005A354(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100970E10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100970E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A434(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell()
{
  result = qword_100970E68;
  if (!qword_100970E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A5AC()
{
  if (qword_10096E510 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  sub_1000056A8(v0, qword_1009D1F18);
  return InAppPurchaseIconLayout.Metrics.mainIconDimension.getter();
}

void sub_10005A61C(uint64_t a1)
{
  v3 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Artwork.Crop();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    Artwork.crop.getter();
    v8 = Artwork.Crop.preferredContentMode.getter();
    (*(v5 + 8))(v7, v4);
    if (qword_10096E510 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
    sub_1000056A8(v9, qword_1009D1F18);
    InAppPurchaseIconLayout.Metrics.mainIconDimension.getter();
    Artwork.config(_:mode:prefersLayeredImage:)();
    v10 = *(v1 + OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView);
    v11 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView;
    v12 = *(*(v10 + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v12 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(*(v10 + v11) + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView) setContentMode:v8];
    v13 = *(*(v10 + v11) + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    v14 = v13;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005A900(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Artwork.Crop();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    Artwork.crop.getter();
    v9 = Artwork.Crop.preferredContentMode.getter();
    (*(v6 + 8))(v8, v5);
    v10 = sub_10005C8F4(&unk_100970E90, type metadata accessor for BrickCollectionViewCell);
    (*(v10 + 24))(ObjectType, v10);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v11 = *(v1 + OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v11 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    [v11 setContentMode:v9];
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005ABA4(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Artwork.Crop();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    Artwork.crop.getter();
    v8 = Artwork.Crop.preferredContentMode.getter();
    (*(v5 + 8))(v7, v4);
    if (*(v1 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100129BEC();
      swift_unknownObjectRelease();
    }

    Artwork.config(_:mode:prefersLayeredImage:)();
    v9 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView;
    v10 = *(v1 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v10 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(v1 + v9) setContentMode:v8];
    v11 = *(v1 + v9);
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    v12 = v11;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005AE74(uint64_t a1)
{
  v3 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Artwork.Crop();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    Artwork.crop.getter();
    v8 = Artwork.Crop.preferredContentMode.getter();
    (*(v5 + 8))(v7, v4);
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView);
    swift_beginAccess();
    Artwork.config(_:mode:prefersLayeredImage:)();
    v10 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v11 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    v13 = v12;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005B114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for Artwork.Crop();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a2;

    Artwork.crop.getter();
    v23 = Artwork.Crop.preferredContentMode.getter();
    (*(v16 + 8))(v18, v15);
    v19 = [v3 traitCollection];
    v24 = v3;
    v20 = v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize + 16];
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      sub_1006EA400(v19, v11);
    }

    else if (v20)
    {
      sub_1006EA738();
    }

    else
    {
      sub_1006EA7D8();
    }

    v21 = v23;

    (*(v9 + 32))(v14, v11, v8);
    RibbonBarItemCellLayout.Metrics.artworkSize.getter();
    (*(v9 + 8))(v14, v8);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v22 = *&v24[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v22 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    [v22 setContentMode:v21];
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005B4D8(uint64_t a1)
{
  v3 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Artwork.Crop();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    Artwork.crop.getter();
    v8 = Artwork.Crop.preferredContentMode.getter();
    (*(v5 + 8))(v7, v4);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView);
    v10 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC8AppStore9QuoteView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v11 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    v13 = v12;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005B760(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Artwork.Crop();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  if (a1)
  {

    Artwork.crop.getter();
    static Artwork.Crop.boundingBox.getter();
    sub_10005C8F4(&unk_10097B3E0, &type metadata accessor for Artwork.Crop);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13 = *(v6 + 8);
    v13(v8, v5);
    if (v12)
    {
      v14 = 6;
    }

    else
    {
      v14 = Artwork.Crop.preferredContentMode.getter();
    }

    v13(v11, v5);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v15 = *(v2 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v15 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    [v15 setContentMode:v14];
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005BA50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for SmallLockupLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Artwork.Crop();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    Artwork.crop.getter();
    v15 = Artwork.Crop.preferredContentMode.getter();
    (*(v12 + 8))(v14, v11);
    v16 = v15;
    v17 = *(v3 + OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v17 + v18, v7);
    SmallLockupLayout.Metrics.artworkSize.getter();
    (*(v8 + 8))(v10, v7);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v19 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v20 = *(v17 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v20 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(v17 + v19) setContentMode:v16];
    v21 = *(v17 + v19);
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    v22 = v21;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005BDC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for SmallLockupLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Artwork.Crop();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    Artwork.crop.getter();
    v15 = v3;
    v16 = Artwork.Crop.preferredContentMode.getter();
    (*(v12 + 8))(v14, v11);
    v17 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
    v18 = v15;
    v19 = *(*(v15 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
    v20 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v19 + v20, v7);
    SmallLockupLayout.Metrics.artworkSize.getter();
    (*(v8 + 8))(v10, v7);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v21 = *(*(v18 + v17) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v21 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(*(v18 + v17) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView) setContentMode:v16];
    v22 = *(*(v18 + v17) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    v23 = v22;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005C158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = v3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100970EA0);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for MediumLockupLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artwork.Crop();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a2;

    Artwork.crop.getter();
    v24 = Artwork.Crop.preferredContentMode.getter();
    (*(v16 + 8))(v18, v15);
    v19 = v29;
    v20 = [v29 traitCollection];
    sub_100631334(v14);

    MediumLockupLayout.Metrics.artworkSize.getter();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    v30 = v19;
    Conditional.evaluate(with:)();
    (*(v26 + 8))(v10, v8);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v22 = *&v19[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_artworkView];
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v22 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    [v22 setContentMode:v21];
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005C544(uint64_t a1)
{
  v3 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Artwork.Crop();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    Artwork.crop.getter();
    v8 = Artwork.Crop.preferredContentMode.getter();
    (*(v5 + 8))(v7, v4);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v9 = *(v1 + qword_1009CFF28);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v9 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    [v9 setContentMode:v8];
    type metadata accessor for ArtworkView();
    sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_10005C79C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView;
  v3 = *(*(v1 + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
  ArtworkView.isImageHidden.setter();

  v4 = *(*(v1 + v2) + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
  type metadata accessor for ArtworkView();
  sub_10005C8F4(&qword_100970E80, &type metadata accessor for ArtworkView);
  v5 = v4;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10005C89C(uint64_t a1)
{
  result = sub_10005C8F4(&qword_100970E78, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005C8F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10005C93C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    v7 = a1;
    sub_1006B4A00(v7, a6);
  }
}

double sub_10005CA00(void *a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_10096EDE8 != -1)
  {
    swift_once();
  }

  v29.is_nil = qword_1009D35D0;
  v29.value._rawValue = 0;
  isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v29, v7).super.isa;
  v27 = isa;

  v28 = UIFontTextStyleHeadline;
  v10 = objc_opt_self();
  v11 = [v10 configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
  v12 = *(v3 + 104);
  v12(v6, enum case for SystemImage.star(_:), v2);
  v13 = [v11 configurationWithTraitCollection:isa];
  v14 = static SystemImage.load(_:with:)();

  v15 = *(v3 + 8);
  v15(v6, v2);
  [v14 contentInsets];
  v17 = v16;
  [v14 contentInsets];
  v19 = v17 + v18;
  [v14 size];
  v21 = v20 - v19;
  [v14 contentInsets];
  [v14 contentInsets];
  [v14 size];

  v22 = [v10 configurationWithTextStyle:v28 scale:2];
  v12(v6, enum case for SystemImage.starFill(_:), v2);
  v23 = v27;
  v24 = [v22 configurationWithTraitCollection:v27];
  v25 = static SystemImage.load(_:with:)();

  v15(v6, v2);
  UIImage.baselineOffsetFromBottom.getter();
  [v25 contentInsets];

  return v21 * 5.0 + 24.0;
}

id sub_10005CD44(void *a1)
{
  if (qword_10096EDE0 != -1)
  {
    swift_once();
  }

  v2 = qword_1009D35C8;
  if (static UIContentSizeCategory.< infix(_:_:)())
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

double sub_10005CDC0(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = sub_10045D630(v3, a2);

  return v4;
}

double sub_10005CE38(uint64_t a1, void *a2, int a3)
{
  v95 = a3;
  v101 = a2;
  v4 = type metadata accessor for Adaptive();
  v97 = *(v4 - 8);
  v98 = v4;
  __chkstk_darwin(v4);
  v96 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextAppearance();
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v78 - v9;
  v10 = type metadata accessor for FontSource();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontUseCase();
  v86 = *(v12 - 8);
  v87 = v12;
  __chkstk_darwin(v12);
  v84 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DynamicTextAppearance();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v15 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v78 - v17;
  v19 = type metadata accessor for LabelPlaceholder();
  v94 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v78 - v23;
  __chkstk_darwin(v25);
  v27 = v78 - v26;
  v28 = Ratings.status.getter();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    type metadata accessor for ProductNoRatingsView();
    v32 = v101;
    swift_getObjectType();
    v33 = sub_100220D7C(v30, v31, v32);
  }

  else
  {
    v78[0] = v15;
    v78[1] = v18;
    v100 = v27;
    v81 = v21;
    Ratings.ratingAverage.getter();
    v35 = v34;
    v36 = objc_allocWithZone(NSNumber);
    LODWORD(v37) = v35;
    v109.value.super.super.isa = [v36 initWithFloat:v37];
    isa = v109.value.super.super.isa;
    v109.is_nil = 1;
    object = localizedStringForDecimal(_:_:)(v109, v39).value._object;

    v80 = v19;
    v99 = v24;
    v78[2] = a1;
    if (!object)
    {
      Ratings.ratingAverage.getter();
      Float.description.getter();
    }

    sub_10002849C(&unk_100973960);
    inited = swift_initStackObject();
    *(inited + 32) = NSKernAttributeName;
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 40) = 0xC010000000000000;
    v42 = NSKernAttributeName;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10005DC58(inited + 32);
    v43 = objc_allocWithZone(NSAttributedString);
    v44 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10005DCC0(&qword_100976620, type metadata accessor for Key);
    v45 = Dictionary._bridgeToObjectiveC()().super.isa;

    v46 = [v43 initWithString:v44 attributes:v45];

    v79 = v46;
    v47 = v78[0];
    DynamicTextAppearance.init()();
    if (qword_10096EDD8 != -1)
    {
      swift_once();
    }

    v48 = sub_10002849C(&unk_100970ED0);
    sub_1000056A8(v48, qword_1009D35B0);
    v104[0] = [v101 snapshotPageTraitEnvironment];
    v49 = v84;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    DynamicTextAppearance.withFontUseCase(_:)();
    v51 = v86;
    v50 = v87;
    (*(v86 + 8))(v49, v87);
    (*(v83 + 8))(v47, v85);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    v84 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v85 = LayoutViewPlaceholder.init(measureWith:)();
    v52 = v91;
    if (qword_10096DF20 != -1)
    {
      swift_once();
    }

    v53 = sub_1000056A8(v50, qword_1009D0CE0);
    v54 = v88;
    (*(v51 + 16))(v88, v53, v50);
    v56 = v89;
    v55 = v90;
    (*(v89 + 104))(v54, enum case for FontSource.useCase(_:), v90);
    v57 = FontSource.font(in:for:)();
    (*(v56 + 8))(v54, v55);
    v58._object = 0x80000001007FBBB0;
    v58._countAndFlagsBits = 0xD000000000000012;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v58, 5, v59);
    TextAppearance.init()();
    TextAppearance.withFont(_:)();
    v60 = v93;
    v61 = v92[1];
    v61(v52, v93);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    v62 = Ratings.totalNumberOfRatings.getter();
    v63._countAndFlagsBits = 0xD000000000000013;
    v63._object = 0x80000001007FBBD0;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v63, v62, v64);
    TextAppearance.init()();
    v92 = v57;
    TextAppearance.withFont(_:)();
    v61(v52, v60);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    swift_allocObject();
    v93 = LayoutViewPlaceholder.init(measureWith:)();
    v65 = v94;
    if (qword_10096EDD0 != -1)
    {
      swift_once();
    }

    sub_10005DD08(&xmmword_1009D34D0, v104);
    v66 = v80;
    v105[3] = v80;
    v105[4] = &protocol witness table for LabelPlaceholder;
    v67 = sub_1000056E0(v105);
    v68 = *(v65 + 16);
    v68(v67, v100, v66);
    v103 = v85;
    Measurable.placeable.getter();
    v106[3] = v66;
    v106[4] = &protocol witness table for LabelPlaceholder;
    v69 = sub_1000056E0(v106);
    v68(v69, v99, v66);
    v107[3] = v66;
    v107[4] = &protocol witness table for LabelPlaceholder;
    v70 = sub_1000056E0(v107);
    v71 = v81;
    v68(v70, v81, v66);
    v102 = v93;
    Measurable.placeable.getter();
    v108 = v95 & 1;
    v72 = [v101 traitCollection];
    v73 = v96;
    sub_1006DA3B4();
    v74 = v98;
    dispatch thunk of Placeable.measure(toFit:with:)();
    v33 = v75;

    (*(v97 + 8))(v73, v74);
    sub_10005DD64(v104);
    v76 = *(v65 + 8);
    v76(v71, v66);
    v76(v99, v66);
    v76(v100, v66);
  }

  return v33;
}

double sub_10005D958()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Ratings();
  sub_10005DCC0(&qword_100970EB8, &type metadata accessor for Ratings);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v18)
  {
    return 0.0;
  }

  v17 = v18;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v8 + 8))(v10, v7);
  v11 = sub_100079F24();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static Shelf.PresentationHints.isSeeAllContext.getter();
  sub_10005DCC0(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);
  sub_10005CE38(v17, v11, v12 & 1);
  v15 = v14;
  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_10005DC58(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100970EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005DCC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005DDB8(uint64_t a1)
{
  v49 = a1;
  v1 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = type metadata accessor for PageGrid.HorizontalMargins();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v8 - 8);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  sub_10002849C(&qword_100970EF0);
  v19 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v54 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v46 = v21;
  *(v21 + 16) = xmmword_1007B23A0;
  v57 = v21 + v20;
  v59 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4030000000000000;
  v59 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v50 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v5 + 104);
  v55 = v5 + 104;
  v51 = v27;
  v52 = v4;
  (v27)(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v59) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = v18;
  v29 = v3;
  v41 = v15;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v59 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4034000000000000;
  v59 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v51(v7, v50, v4);
  LOBYTE(v59) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v45 = left;
  v39 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v58 = 0x4000000000000000;
  v59 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v48.i32[0] = v49 < 2;
  LOBYTE(v59) = v49 < 2;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v43 = vdupq_n_s64(0x4041000000000000uLL);
  *v7 = v43;
  v40 = v7;
  v32 = v50;
  v33 = v51;
  v51(v7, v50, v52);
  v59 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v47 = v29;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v42 = 2 * v31 + v54;
  v59 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  LOBYTE(v59) = v48.i8[0];
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v34 = v40;
  *v40 = v43;
  v33(v34, v32, v52);
  static UIEdgeInsets.horizontal(left:right:)();
  v59 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 4 * v54;
  v58 = 0x4000000000000000;
  v59 = 0x4004000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  LODWORD(v49) = v49 < 3;
  LOBYTE(v59) = v49;
  LOBYTE(v58) = v48.i8[0];
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v59 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v48 = vdupq_n_s64(0x404A000000000000uLL);
  *v34 = v48;
  v36 = v50;
  v37 = v51;
  v51(v34, v50, v52);
  v59 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v54 += v35;
  v59 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  LOBYTE(v59) = v49;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v34 = v48;
  v37(v34, v36, v52);
  v59 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v46;
}

unint64_t sub_10005E808()
{
  result = qword_100970EF8;
  if (!qword_100970EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100970EF8);
  }

  return result;
}

double sub_10005E8A8()
{
  v0 = sub_10002849C(&qword_100970F08);
  v54 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v37 - v1;
  v3 = type metadata accessor for PageGrid();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LinkableTextCollectionViewCellLayout.Metrics();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LinkableTextCollectionViewCellLayout();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v50 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for LabelPlaceholder();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DynamicTextAppearance();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  type metadata accessor for LinkableText();
  sub_10005F024(&qword_100973290, &type metadata accessor for LinkableText);
  ItemLayoutContext.typedModel<A>(as:)();
  v16 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v0;
  sub_1000367E8();
  if (qword_10096E208 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  sub_1000056A8(v17, qword_1009D1598);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v18 = v56[0];
  v19 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v37[1] = v16;
  LinkableText.styledText.getter();
  v40 = v19;
  v20 = dispatch thunk of StyledText.asAttributedString(using:)();

  DynamicTextAppearance.init()();
  DynamicTextAppearance.withFontUseCase(_:)();
  v21 = v44;
  v38 = *(v10 + 8);
  v38(v12, v44);
  v22 = *(v10 + 16);
  v39 = v15;
  v22(v12, v15, v21);
  v37[0] = v20;
  LabelPlaceholder.Options.init(rawValue:)();
  v23 = v55;
  LabelPlaceholder.init(_:with:where:)();
  if (qword_10096ED28 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v5, qword_1009D3398);
  (*(v43 + 16))(v45, v24, v5);
  v25 = v51;
  v56[3] = v51;
  v56[4] = &protocol witness table for LabelPlaceholder;
  v26 = sub_1000056E0(v56);
  v27 = v49;
  (*(v49 + 16))(v26, v23, v25);
  v28 = v50;
  LinkableTextCollectionViewCellLayout.init(metrics:textLabel:)();
  swift_getKeyPath();
  v29 = v46;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v47 + 8))(v29, v48);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v30 = v56[0];
  sub_10005F024(&qword_100970F10, &type metadata accessor for LinkableTextCollectionViewCellLayout);
  v31 = v41;
  v32 = v53;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v35 = v34;

  (*(v54 + 8))(v31, v33);
  (*(v52 + 8))(v28, v32);
  (*(v27 + 8))(v55, v25);
  v38(v39, v21);
  return v35;
}

uint64_t sub_10005F024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005F0D8@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.items.getter();
  *a1 = result;
  return result;
}

double sub_10005F108()
{
  v54 = type metadata accessor for FootnoteLayout.Metrics();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for FootnoteLayout();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for LabelPlaceholderCompatibility();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10002849C(&qword_100970F20);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v42 = &v41 - v3;
  v49 = type metadata accessor for PageGrid();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ComponentLayoutOptions();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10002849C(qword_10097DB40);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_10002849C(&unk_1009731F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_10002849C(&unk_1009731D0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v19 = v42;
  (*(v12 + 8))(v14, v11);

  ItemLayoutContext.state.getter();
  v50 = v6;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  v20 = v43;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v45 + 8))(v20, v49);
  v21 = sub_100079F24();
  sub_10002C0AC(v69, v68);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Footnote();
  swift_dynamicCast();
  v22 = *(v61 + 16);
  v49 = v10;
  v22(v44, v10, v62);
  type metadata accessor for NilState();
  v23 = v19;
  StateLens.init(_:)();
  Footnote.text.getter();
  v24 = Footnote.presentationStyle.getter();
  sub_1000367E8();
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for FontUseCase();
  sub_1000056A8(v25, qword_1009D09B0);
  v26 = [v21 traitCollection];
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v28 = type metadata accessor for Feature();
  v68[3] = v28;
  v68[4] = sub_10005FCE4(&qword_100972E50, &type metadata accessor for Feature);
  v29 = sub_1000056E0(v68);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  isFeatureEnabled(_:)();
  sub_100007000(v68);
  v31 = v46;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v47 + 8))(v31, v48);
  if ((v24 & 2) != 0)
  {
    if (qword_10096CF48 != -1)
    {
      swift_once();
    }

    [qword_1009CDB60 size];
    v32 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v33 = LayoutViewPlaceholder.init(representing:)();
    *(&v66 + 1) = v32;
    v67 = &protocol witness table for LayoutViewPlaceholder;
    *&v65 = v33;
  }

  else
  {
    v67 = 0;
    v66 = 0u;
    v65 = 0u;
  }

  if (qword_10096CF30 != -1)
  {
    swift_once();
  }

  v34 = v54;
  v35 = sub_1000056A8(v54, qword_1009CDB48);
  (*(v53 + 16))(v55, v35, v34);
  sub_10002C0AC(v68, v64);
  sub_10005FC74(&v65, v63);
  v36 = v58;
  FootnoteLayout.init(metrics:labelView:chevronView:)();
  [v21 pageMarginInsets];
  CGSize.subtracting(insets:)();
  sub_10005FCE4(&qword_100992FD0, &type metadata accessor for FootnoteLayout);
  v37 = v60;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v39 = v38;

  swift_unknownObjectRelease();
  (*(v59 + 8))(v36, v37);
  sub_100007000(v68);
  (*(v56 + 8))(v23, v57);
  (*(v51 + 8))(v50, v52);
  (*(v61 + 8))(v49, v62);
  sub_100007000(v69);
  sub_10005FD2C(&v65);

  return v39;
}

uint64_t sub_10005FC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FCE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FD2C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100975610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005FD98()
{
  result = qword_100970F28;
  if (!qword_100970F28)
  {
    type metadata accessor for UberHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100970F28);
  }

  return result;
}

id sub_10005FDF0()
{
  if (!*(*(*(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    return 0;
  }

  type metadata accessor for VideoView();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    result = *(v1 + qword_100988CC0);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }
  }

  return [result image];
}

void sub_10005FE9C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  v3 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v4 = *(*(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v4)
  {
    v5 = [v4 layer];
    [v5 removeAllAnimations];

    v6 = *(*(v2 + v3) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v6)
    {
      [v6 setAlpha:1.0];
      v7 = *(*(v2 + v3) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v7)
      {
        type metadata accessor for VideoView();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = *(v8 + qword_100988CC0);
        }

        else
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (!v10)
          {
            goto LABEL_9;
          }

          v9 = v10;
        }

        v11 = v7;
        [v9 setImage:a1];
      }
    }
  }

LABEL_9:
}

void sub_10005FFD4(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  v5 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  if (!*(*(v4 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    goto LABEL_7;
  }

  type metadata accessor for VideoView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + qword_100988CC0);
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [v8 image];
  if (!v9 || (v9, (a2 & 1) != 0))
  {
LABEL_7:
    v10 = *(*(v4 + v5) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v10)
    {
      type metadata accessor for VideoView();
      if (swift_dynamicCastClass())
      {
        v19 = v10;
        sub_1006B34F4(a1, a1 == 0);
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = v10;
          [v12 setAlpha:0.0];
          [v12 setImage:a1];
          sub_100060340();
          v14 = static UIViewPropertyAnimator.fadeInPropertyAnimator.getter();
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          aBlock[4] = sub_10006038C;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100007A08;
          aBlock[3] = &unk_1008B1DB0;
          v16 = _Block_copy(aBlock);
          v17 = v13;

          [v14 addAnimations:v16];
          _Block_release(v16);
          [v14 startAnimation];
        }
      }
    }

    return;
  }

  v18 = a1;

  sub_10005FE9C(a1);
}

void (*sub_10006028C(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10005FDF0();
  return sub_1000602D4;
}

void sub_1000602D4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10005FE9C(v2);
  }

  else
  {
    sub_10005FE9C(*a1);
  }
}

unint64_t sub_100060340()
{
  result = qword_100970F30;
  if (!qword_100970F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100970F30);
  }

  return result;
}

uint64_t sub_1000603A0()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = type metadata accessor for PageGrid.HorizontalMargins();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10002849C(&qword_100970EF0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  v44 = v6;
  PageGrid.DirectionalValue.init(_:)();
  v41 = v15;
  v43 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v30(v3, v45, v29);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v9;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4018000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100970F38 = v39;
  return result;
}

uint64_t CrossLinkPresenter.adamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_adamId;
  v4 = type metadata accessor for AdamId();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CrossLinkPresenter.isVisible.getter()
{
  v1 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100060E90(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t CrossLinkPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*CrossLinkPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10006111C;
}

void sub_10006111C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t CrossLinkPresenter.__allocating_init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

void *CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v47 = a6;
  v52 = a5;
  v42 = a2;
  v43 = a4;
  v45 = a7;
  v46 = a10;
  v48 = *v10;
  v49 = a3;
  v14 = type metadata accessor for LegacyAppState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = v10 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_view;
  *(v21 + 1) = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_adamId;
  v23 = type metadata accessor for AdamId();
  v50 = *(v23 - 8);
  v51 = v23;
  (*(v50 + 16))(v11 + v22, a1);
  swift_beginAccess();
  v44 = a8;
  *(v21 + 1) = a8;
  v24 = v45;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v53 = a9;
  v54 = a1;
  v25 = v47;
  v26 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v27 = (v11 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_stateMachine);
  *v27 = v26;
  v27[1] = v28;
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
  (*(v15 + 32))(v17, v20, v14);
  v29 = (*(v15 + 88))(v17, v14);
  if (v29 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = type metadata accessor for InstallationType();
LABEL_3:
    (*(*(v30 - 8) + 8))(v17, v30);
LABEL_6:
    v31 = 1;
    goto LABEL_7;
  }

  if (v29 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_6;
  }

  if (v29 == enum case for LegacyAppState.installing(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = type metadata accessor for LegacyAppState.AppInstallationDetails();
    goto LABEL_3;
  }

  if (v29 == enum case for LegacyAppState.openable(_:))
  {
    (*(v15 + 96))(v17, v14);

    v30 = type metadata accessor for OpenableDestination();
    goto LABEL_3;
  }

  (*(v15 + 8))(v17, v14);
  v31 = 0;
LABEL_7:
  v32 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible;
  *(v11 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible) = v31;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v25 & 1;
  *(v34 + 32) = v48;

  dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();

  if (v24)
  {
    ObjectType = swift_getObjectType();
    v36 = v44;
    v37 = *(v44 + 40);
    swift_unknownObjectRetain();
    v48 = v26;
    v37(v42, v49, v43, v52, ObjectType, v36);

    swift_unknownObjectRelease();
    v38 = swift_getObjectType();
    swift_beginAccess();
    v39 = *(v11 + v32);
    v40 = *(v36 + 32);
    swift_unknownObjectRetain();
    v40(v39, 0, v38, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    (*(v50 + 8))(v54, v51);
  }

  else
  {

    (*(v50 + 8))(v54, v51);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v11;
}

uint64_t sub_100061850()
{
  v0 = type metadata accessor for LegacyAppState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
    (*(v1 + 32))(v3, v6, v0);
    v8 = (*(v1 + 88))(v3, v0);
    if (v8 == enum case for LegacyAppState.waiting(_:))
    {
      (*(v1 + 96))(v3, v0);
      v9 = type metadata accessor for InstallationType();
    }

    else
    {
      if (v8 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v1 + 8))(v3, v0);
        goto LABEL_7;
      }

      if (v8 == enum case for LegacyAppState.installing(_:))
      {
        (*(v1 + 96))(v3, v0);
        v9 = type metadata accessor for LegacyAppState.AppInstallationDetails();
      }

      else
      {
        if (v8 != enum case for LegacyAppState.openable(_:))
        {
          (*(v1 + 8))(v3, v0);
          v10 = 0;
          goto LABEL_8;
        }

        (*(v1 + 96))(v3, v0);

        v9 = type metadata accessor for OpenableDestination();
      }
    }

    (*(*(v9 - 8) + 8))(v3, v9);
LABEL_7:
    v10 = 1;
LABEL_8:
    sub_100060E90(v10);
  }

  return result;
}

uint64_t CrossLinkPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_adamId;
  v3 = type metadata accessor for AdamId();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10001F64C(v1 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CrossLinkPresenter.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_adamId;
  v3 = type metadata accessor for AdamId();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10001F64C(v1 + OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_view);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CrossLinkPresenter()
{
  result = qword_100970F70;
  if (!qword_100970F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061D4C()
{
  result = type metadata accessor for AdamId();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100061EE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100061F3C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for InsetCollectionViewControllerContentView();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  __break(1u);
}

void sub_100061FAC(char a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_7:
    __break(1u);
    return;
  }

  *(v5 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = a1 & 1;

  v6 = *((swift_isaMask & *v1) + 0x128);

  v6();
}

id sub_10006207C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(UICollectionView);

  return [v10 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

void sub_100062100()
{
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  v5 = 0.0;
  if ((v4 & 1) == 0)
  {
    v6 = [v0 view];
    if (!v6)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = v6;
    [v6 safeAreaInsets];
    v9 = v8;

    v5 = -v9;
  }

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v10 contentInset];
  v13 = v12;

  if (v13 == v5)
  {
    return;
  }

  v26 = [v0 collectionView];
  if (!v26)
  {
    goto LABEL_19;
  }

  v14 = [v0 collectionView];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  [v14 contentInset];
  v17 = v16;

  v18 = [v0 collectionView];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  [v18 contentInset];
  v21 = v20;

  v22 = [v0 collectionView];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 contentInset];
  v25 = v24;

  [v26 setContentInset:{v5, v17, v21, v25}];
}

uint64_t sub_10006230C()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_100065AF0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = v0;
    v9 = static NSObject.== infix(_:_:)();

    return v9 & 1;
  }

  __break(1u);
  return result;
}

void sub_100062428()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000624A8(char a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = a1;
  v2 = (*((swift_isaMask & *v1) + 0x198))();
  v3 = [v1 navigationItem];
  v5 = v3;
  if (v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  [v3 setLargeTitleDisplayMode:v4];
}

void sub_100062560(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarTransitionDistance;
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_1000625B0();
}

void sub_100062594(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress;
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_1000625B0();
}

void sub_1000625B0()
{
  if (v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress + 8])
  {
    if (v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarTransitionDistance + 8])
    {
      v16 = [v0 navigationItem];
      [v16 _setManualScrollEdgeAppearanceEnabled:0];
    }

    else
    {
      v8 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarTransitionDistance];
      v9 = [v0 navigationItem];
      v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

      if (v10)
      {
        v11 = [v0 navigationItem];
        [v11 _autoScrollEdgeTransitionDistance];
        v13 = v12;

        if (v13 == v8)
        {
          return;
        }
      }

      v14 = [v0 navigationItem];
      [v14 _setManualScrollEdgeAppearanceEnabled:0];

      v15 = [v0 navigationItem];
      [v15 _setAutoScrollEdgeTransitionDistance:v8];

      v16 = [v0 navigationItem];
      [v16 _setManualScrollEdgeAppearanceEnabled:1];
    }
  }

  else
  {
    v1 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress];
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (v3)
    {
      v4 = [v0 navigationItem];
      [v4 _manualScrollEdgeAppearanceProgress];
      v6 = v5;

      if (v6 == v1)
      {
        return;
      }
    }

    v7 = [v0 navigationItem];
    [v7 _setManualScrollEdgeAppearanceEnabled:1];

    v16 = [v0 navigationItem];
    [v16 _setManualScrollEdgeAppearanceProgress:v1];
  }
}

uint64_t sub_100062810(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_100973210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  sub_10002849C(&qword_100971200);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B10D0;
  v8 = (v7 + v6);
  v9 = *(sub_10002849C(&unk_100984520) + 48);
  *v8 = 1;
  sub_100031660(a2, &v8[v9], &unk_1009796E0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1003978F8(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100065C3C;
  v11[3] = v10;
  sub_1000C5DDC(a1);

  *(v4 + 32) = v11;
  return v4;
}

char *sub_1000629CC(unint64_t a1)
{
  v2 = sub_10002849C(&unk_1009796E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for StoreTab();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v35 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
    return 0;
  }

LABEL_3:
  if (v35 < 1)
  {
    __break(1u);
LABEL_33:
    result = _CocoaArrayWrapper.endIndex.getter();
    v21 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v26 = v8;
  v9 = 0;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph;
  v10 = v36 & 0xC000000000000001;
  v11 = (v6 + 48);
  v28 = (v6 + 8);
  v29 = (v6 + 32);
  v32 = v36 & 0xC000000000000001;
  v30 = (v6 + 48);
  v27 = v4;
  do
  {
    if (v10)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v36 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v34 = v14;
      sub_100031660(v14 + qword_1009D2930, v4, &unk_1009796E0);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10002B894(v4, &unk_1009796E0);
      }

      else
      {
        v15 = v33;
        (*v29)(v33, v4, v5);
        type metadata accessor for FloatingUnifiedMessageCoordinator();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v16 = v37;
        v4 = v27;
        v11 = v30;
        FloatingUnifiedMessageCoordinator.register(accountButton:with:for:)();

        v17 = v15;
        v10 = v32;
        (*v28)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v35 != v9);
  if (!v26)
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result == 1)
  {
LABEL_25:
    if (v10)
    {
      return specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    return *(v36 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_10002849C(&qword_1009711E0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_100978370] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_100978378] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_100978380] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_100978388] = 0;
  [v6 setNeedsLayout];
  sub_10002849C(&qword_1009711E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = v36;

  v8 = sub_10071C0E4(inited);
  swift_setDeallocating();
  result = sub_10002B894(inited + 32, &unk_1009711F0);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v8 + 8 * i + 32);
      }

      v24 = v23;
      [v6 addSubview:{v23, v26}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_100062F20()
{
  v1 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationAccessories;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationAccessories];

  v3 = [v0 traitCollection];
  v4 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v5 = v3;

  v6 = sub_100401ED4(v2, v5, 0, v4);

  v30 = sub_1000629CC(v6);

  v7 = [v0 navigationItem];
  v8 = *&v0[v1];

  v9 = [v0 traitCollection];

  v10 = v9;
  v11 = sub_100401ED4(v8, v10, 1u, v4);

  v12 = sub_1000629CC(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setLeftBarButtonItem:{v13, v30}];

  if ((sub_100039CB4(v0) & 1) == 0)
  {
    type metadata accessor for NavigationAccessory();

    v14 = Array.isNotEmpty.getter();

    if (v14)
    {
      v15 = [v0 navigationItem];
      v16 = *&v0[v1];

      v17 = [v0 traitCollection];

      v18 = v17;
      v19 = sub_100401ED4(v16, v18, 2u, v4);

      v20 = sub_1000629CC(v19);

      if (v20)
      {
        v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v20];
      }

      else
      {
        v21 = 0;
      }

      [v15 setRightBarButtonItem:v21];

      v22 = [v0 navigationItem];
      v23 = [v22 rightBarButtonItem];

      if (v23)
      {
        [v23 setHidesSharedBackground:1];
      }

      ObjectType = swift_getObjectType();
      v25 = swift_conformsToProtocol2();
      if (v25)
      {
        v26 = v25;
        v27 = v0;
        v28 = [v27 traitCollection];
        v29 = UITraitCollection.isSizeClassCompact.getter();

        (*(v26 + 16))(v29 & 1, ObjectType, v26);
      }
    }
  }
}

uint64_t sub_1000632F4(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = *a2;
  *&v3[*a2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = [v3 collectionView];
  if (v6)
  {
    v7 = v6;
    v8 = *&v3[v5];
    swift_unknownObjectRetain();
    [v7 *a3];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void sub_100063518()
{
  v1 = type metadata accessor for AutomationSemantics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D518 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_window), v7 = [v6 rootViewController], v6, swift_unknownObjectRelease(), !v7))
  {
    v21 = type metadata accessor for StoreCollectionViewController();
    v26.receiver = v0;
    v26.super_class = v21;
    objc_msgSendSuper2(&v26, "loadView");
    return;
  }

  v8 = [v7 view];

  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v24 = [objc_allocWithZone(type metadata accessor for InsetCollectionViewControllerContentView()) initWithFrame:{v10, v12, v14, v16}];
  [v24 setAutoresizingMask:18];
  [v0 setView:v24];
  v17 = [v0 collectionViewLayout];
  v18 = (*((swift_isaMask & *v0) + 0x108))(v10, v12, v14, v16);

  [v18 setAutoresizingMask:18];
  [v18 setDelegate:*(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_collectionViewDelegate)];
  [v18 setDataSource:*(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_collectionViewDataSource)];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 addSubview:v18];

  [v0 setCollectionView:v18];
  if (*(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_automationSemanticPageId + 8))
  {
    memset(v25, 0, sizeof(v25));

    static AutomationSemantics.page(name:id:)();

    sub_10002B894(v25, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    (*(v2 + 8))(v4, v1);
  }

  else
  {

    v22 = v24;
  }
}

id sub_100063934()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreCollectionViewController();
  v25.receiver = v0;
  v25.super_class = v6;
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v7 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v7, v22, &unk_10097F510);
  if (v23)
  {
    sub_10002C0AC(v22, v21);
    sub_10002B894(v22, &unk_10097F510);
    sub_10002A400(v21, v21[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v3 + 8))(v5, v2);
    sub_100007000(v21);
  }

  else
  {
    sub_10002B894(v22, &unk_10097F510);
  }

  v8 = [v1 navigationItem];
  [v8 _setSupportsTwoLineLargeTitles:1];

  LOBYTE(v8) = (*((swift_isaMask & *v1) + 0x198))();
  v9 = [v1 navigationItem];
  v10 = v9;
  if (v8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  [v9 setLargeTitleDisplayMode:v11];

  v12 = (*((swift_isaMask & *v1) + 0x160))();
  if (v12)
  {
    v13 = v12;
    v22[0] = (*((swift_isaMask & *v1) + 0x178))();
    v22[1] = v14;
    v22[2] = v15;
    v23 = v16;
    v24 = 0;
    static ViewControllerContainment.add(_:to:frame:)();
  }

  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  if (!v21[0])
  {
    goto LABEL_12;
  }

  result = [v1 collectionView];
  if (result)
  {
    v18 = result;
    [result bounds];

    ImpressionsCalculator.viewBounds.setter();

LABEL_12:
    sub_10002849C(&qword_10097B110);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1007B10D0;
    *(v19 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v19 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_100063E24(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoreCollectionViewController();
  v21.receiver = v2;
  v21.super_class = v8;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v2 + v9, v20, &unk_10097F510);
  if (v20[3])
  {
    sub_10002C0AC(v20, v19);
    sub_10002B894(v20, &unk_10097F510);
    sub_10002A400(v19, v19[3]);
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v4);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v5 + 8))(v7, v4);
    sub_100007000(v19);
  }

  else
  {
    sub_10002B894(v20, &unk_10097F510);
  }

  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_registeredForApplicationDidBecomeActive;
  if (*(v2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_registeredForApplicationDidBecomeActive) == 1)
  {
    v11 = UIApplicationDidBecomeActiveNotification;
  }

  else
  {
    v12 = [objc_opt_self() defaultCenter];
    v11 = UIApplicationDidBecomeActiveNotification;
    [v12 addObserver:v2 selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    *(v2 + v10) = 1;
  }

  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  [v14 addObserver:v2 selector:"appWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v15 = [v13 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:v11 object:0];

  v16 = [v13 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  type metadata accessor for FloatingUnifiedMessageCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v17 = v20[0];
  if (v20[0])
  {
    FloatingUnifiedMessageCoordinator.viewControllerDidAppear(_:)(v2);
  }
}

void sub_1000641B0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for StoreCollectionViewController();
  v28.receiver = v2;
  v28.super_class = v8;
  objc_msgSendSuper2(&v28, "viewWillDisappear:", a1 & 1);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 parentViewController];
    if (v11 && (v12 = v11, sub_100065AF0(), v10 = v10, v13 = static NSObject.== infix(_:_:)(), v10, v12, (v13 & 1) != 0) && (v14 = [v10 viewControllers], v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v14, sub_10045DBC0(v2, v15), LOBYTE(v14) = v16, , (v14 & 1) != 0))
    {
      v17 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
      swift_beginAccess();
      sub_100031660(v2 + v17, v26, &unk_10097F510);
      if (v27)
      {
        sub_10002C0AC(v26, v24);
        sub_10002B894(v26, &unk_10097F510);
        sub_10002A400(v24, v25);
        (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v4);
        dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

        (*(v5 + 8))(v7, v4);
        sub_100007000(v24);
      }

      else
      {

        sub_10002B894(v26, &unk_10097F510);
      }
    }

    else
    {
    }
  }

  v18 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v2 + v18, v26, &unk_10097F510);
  if (v27)
  {
    sub_10002C0AC(v26, v24);
    sub_10002B894(v26, &unk_10097F510);
    sub_10002A400(v24, v25);
    static ViewWillDisappearReason.inferred(for:)();
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v4);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v5 + 8))(v7, v4);
    sub_100007000(v24);
  }

  else
  {
    sub_10002B894(v26, &unk_10097F510);
  }

  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  [v20 removeObserver:v2 name:UIApplicationDidBecomeActiveNotification object:0];

  v21 = [v19 defaultCenter];
  [v21 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];

  type metadata accessor for FloatingUnifiedMessageCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v22 = v26[0];
  if (v26[0])
  {
    FloatingUnifiedMessageCoordinator.viewControllerDidDissappear(_:)(v2);
  }
}

void sub_100064648()
{
  v1 = v0;
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoreCollectionViewController();
  v32.receiver = v1;
  v32.super_class = v10;
  objc_msgSendSuper2(&v32, "as_viewWillBecomeFullyVisible");
  v28 = v1;
  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 indexPathsForSelectedItems];

  v26 = v3;
  v27 = v2;
  v25 = v5;
  if (!v13)
  {
    v14 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (v15 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = v14[2];
  if (v15 != 0.0)
  {
LABEL_6:
    v16 = 0;
    while (v16 < *(v14 + 2))
    {
      (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v6);
      v17 = [v28 collectionView];
      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = v17;
      ++v16;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v18 deselectItemAtIndexPath:isa animated:1];

      (*(v7 + 8))(v9, v6);
      if (*&v15 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v20 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  v21 = v28;
  swift_beginAccess();
  sub_100031660(v21 + v20, v30, &unk_10097F510);
  if (v31)
  {
    sub_10002C0AC(v30, v29);
    sub_10002B894(v30, &unk_10097F510);
    sub_10002A400(v29, v29[3]);
    v23 = v25;
    v22 = v26;
    v24 = v27;
    (*(v26 + 104))(v25, enum case for StoreViewControllerLifecycleEvent.willBecomeFullyVisible(_:), v27);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v22 + 8))(v23, v24);
    sub_100007000(v29);
  }

  else
  {
    sub_10002B894(v30, &unk_10097F510);
  }
}

uint64_t sub_100064AA0(SEL *a1, unsigned int *a2)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreCollectionViewController();
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v2 + v10, v14, &unk_10097F510);
  if (!v15)
  {
    return sub_10002B894(v14, &unk_10097F510);
  }

  sub_10002C0AC(v14, v13);
  sub_10002B894(v14, &unk_10097F510);
  sub_10002A400(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v8, v5);
  return sub_100007000(v13);
}

uint64_t sub_100064D34(char a1, SEL *a2, unsigned int *a3)
{
  v7 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreCollectionViewController();
  v18.receiver = v3;
  v18.super_class = v11;
  objc_msgSendSuper2(&v18, *a2, a1 & 1);
  v12 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v3 + v12, v16, &unk_10097F510);
  if (!v17)
  {
    return sub_10002B894(v16, &unk_10097F510);
  }

  sub_10002C0AC(v16, v15);
  sub_10002B894(v16, &unk_10097F510);
  sub_10002A400(v15, v15[3]);
  (*(v8 + 104))(v10, *a3, v7);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v8 + 8))(v10, v7);
  return sub_100007000(v15);
}

uint64_t sub_100065130(unsigned int *a1)
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v7, v11, &unk_10097F510);
  if (!v12)
  {
    return sub_10002B894(v11, &unk_10097F510);
  }

  sub_10002C0AC(v11, v10);
  sub_10002B894(v11, &unk_10097F510);
  sub_10002A400(v10, v10[3]);
  (*(v4 + 104))(v6, *a1, v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v6, v3);
  return sub_100007000(v10);
}

void *sub_100065428()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_100065458(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  v6 = a1;

  (*((swift_isaMask & *v1) + 0x178))();
  static ViewControllerContainment.add(_:to:frame:)();
}

id sub_100065674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000659FC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_automationSemanticPageId];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_registeredForApplicationDidBecomeActive] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController] = 0;
  v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
  v6 = &v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarTransitionDistance];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationAccessories] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_collectionViewDelegate] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_collectionViewDataSource] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for StoreCollectionViewController();
  return objc_msgSendSuper2(&v9, "initWithCollectionViewLayout:", a1);
}

unint64_t sub_100065AF0()
{
  result = qword_1009711C0;
  if (!qword_1009711C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009711C0);
  }

  return result;
}

void sub_100065B3C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_automationSemanticPageId);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_registeredForApplicationDidBecomeActive) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = 0;
  v3 = v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarTransitionDistance;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_collectionViewDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_collectionViewDataSource) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100065C48(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  *(v2 + qword_1009CD810 + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AdvertRotationControllerProvider();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v2 + qword_100971208) = v11;

  v5 = sub_1003B76FC(a1, a2);
  v6 = *&v5[qword_1009CF410];
  v7 = v5;
  v8 = v6;

  CompoundScrollObserver.addChild(_:)();

  sub_10002849C(&qword_10097B110);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B1890;
  *(v9 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v9 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v9 + 48) = type metadata accessor for UITraitLayoutDirection();
  *(v9 + 56) = &protocol witness table for UITraitLayoutDirection;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v7;
}

void sub_100065DF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AutomationSemantics();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad", v9);
  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setKeyboardDismissMode:1];
  }

  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setAllowsSelection:1];
  }

  v16 = [v1 collectionView];
  if (v16)
  {
    v17 = v16;
    [v16 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    memset(v26, 0, sizeof(v26));
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v26, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    (*(v8 + 8))(v11, v7);
    sub_10002849C(&qword_10097B110);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1007B1890;
    *(v20 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v20 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v20 + 48) = type metadata accessor for UITraitLegibilityWeight();
    *(v20 + 56) = &protocol witness table for UITraitLegibilityWeight;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for StaticDimension();
    sub_1000056A8(v21, qword_1009D2490);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    [v1 additionalSafeAreaInsets];
    [v1 setAdditionalSafeAreaInsets:v23];
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      [v24 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000661F0(void *a1)
{
  v1 = a1;
  sub_100065DF4();
}

void sub_10006629C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v9 + 8))(v11, v8);
}

void sub_1000663E4(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v11 + 8))(v13, v10);
}

void sub_100066548(void *a1)
{
  v1 = a1;
  sub_100066520();
}

uint64_t sub_1000665B8(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1000674A8(v6 + v15, v22);
  if (v23)
  {
    sub_10002C0AC(v22, v21);
    sub_10002B894(v22, &unk_10097F510);
    v18 = a2;
    v19 = v7;
    sub_10002A400(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v12 + 8))(v14, v11);
    v16 = sub_100007000(v21);
  }

  else
  {
    v16 = sub_10002B894(v22, &unk_10097F510);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v8 + 8))(v10, v7);
}

void sub_10006684C(void *a1)
{
  v1 = a1;
  sub_100066590();
}

id sub_100066894()
{
  v1 = v0;
  swift_getObjectType();
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B1E00;
  sub_10002849C(&qword_1009717B8);
  swift_allocObject();
  swift_retain_n();

  v3 = SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)();
  v4 = sub_1000673FC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  v6 = sub_100067460(&qword_1009717C8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_100067460(&qword_1009717A0, type metadata accessor for SearchFocusDiffablePageViewController);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();

  result = [v1 collectionView];
  if (result)
  {
    type metadata accessor for SearchImpressionsCollectionElementsObserver();
    swift_allocObject();
    *(v2 + 64) = SearchImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    type metadata accessor for CompoundCollectionElementsObserver();
    swift_allocObject();
    v8 = CompoundCollectionElementsObserver.init(children:)();
    sub_100738F40();
    if (swift_dynamicCastClass())
    {
      CompoundCollectionElementsObserver.removingChildren(where:)();
      CompoundCollectionElementsObserver.addChild(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100066B70@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchFocusPageShelfLayoutSpacingProvider;
  result = sub_1000673A8();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100066BA4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_100067460(&qword_1009717A0, type metadata accessor for SearchFocusDiffablePageViewController);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v2 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_1000073E8(v18, v17);
  sub_100056164(v17, v15);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && v16)
  {
    v13 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100034090((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v13;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v19, v17);
  sub_100056164(v17, v15);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && v16)
  {
    v14 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v14;
    if (v8 >= v7 >> 1)
    {
      v12 = sub_100034090((v7 > 1), v8 + 1, 1, v4);
      v9 = v14;
      v4 = v12;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  v10 = type metadata accessor for SearchFocusLayoutSectionProvider();
  swift_allocObject();

  result = sub_1006BC8E4(v20);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = result;
  return result;
}

unint64_t sub_100066E84@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  swift_allocObject();
  v3 = PageGridCache.init()();
  swift_allocObject();
  v4 = PageGridCache.init()();
  a1[3] = &type metadata for SearchFocusPageGridProvider;
  result = sub_100067354();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_100066F2C(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_1009CD810];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100066FDC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchFocusShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_100067460(&qword_100971790, type metadata accessor for SearchFocusShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_100067090(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100971788);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_100726740(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    AdvertRotationControllerProvider.viewControllerWillBeReloaded()();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1000671C8()
{

  v1 = v0 + qword_1009CD810;

  return sub_10001F64C(v1);
}

uint64_t sub_100067208(uint64_t a1)
{

  v2 = a1 + qword_1009CD810;

  return sub_10001F64C(v2);
}

uint64_t type metadata accessor for SearchFocusDiffablePageViewController()
{
  result = qword_100971238;
  if (!qword_100971238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000672F8(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100067354()
{
  result = qword_100971798;
  if (!qword_100971798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100971798);
  }

  return result;
}

unint64_t sub_1000673A8()
{
  result = qword_1009717A8;
  if (!qword_1009717A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009717A8);
  }

  return result;
}

unint64_t sub_1000673FC()
{
  result = qword_1009717C0;
  if (!qword_1009717C0)
  {
    sub_10002D1A8(&qword_1009717B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009717C0);
  }

  return result;
}

uint64_t sub_100067460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000674A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097F510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100067518(void *a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for StaticDimension();
  sub_1000056A8(v6, qword_1009D2490);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [a1 additionalSafeAreaInsets];
  [a1 setAdditionalSafeAreaInsets:v8];
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1000676B0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000676EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_100067734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}