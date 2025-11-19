Swift::Int sub_100BD0FC4(Swift::Int result, uint64_t a2)
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
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + v3);
        v13 = (v11 + v6);
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

uint64_t sub_100BD1158(uint64_t result, uint64_t a2)
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

unint64_t sub_100BD1308(unint64_t result, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for UUID() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
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

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100BD14F4(int64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for UUID();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CRLBoardIdentifier(0);
  v40 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v36 - v13;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v44 = (_HashTable.previousHole(before:)() + 1) & ~v15;
    v45 = v17;
    v18 = *(v9 + 72);
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v39 = a2 + 64;
    v43 = v18;
    while (1)
    {
      v19 = v18 * v16;
      v20 = v47;
      sub_10000C76C(*(a2 + 48) + v18 * v16, v47, type metadata accessor for CRLAssetReferrerIdentifier);
      Hasher.init(_seed:)();
      sub_10000C76C(v20, v11, type metadata accessor for CRLAssetReferrerIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *(sub_1005B981C(&qword_1019F4720) + 48);
        v22 = *v38;
        v42 = a1;
        v23 = v8;
        v24 = a2;
        v25 = v41;
        v26 = v46;
        v22(v41, v11, v46);
        sub_100BDBA0C(&v11[v21], v7, type metadata accessor for CRLBoardIdentifier);
        Hasher._combine(_:)(1uLL);
        sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
        v27 = v25;
        a2 = v24;
        v8 = v23;
        a1 = v42;
        v14 = v39;
        (*v37)(v27, v26);
      }

      else
      {
        sub_100BDBA0C(v11, v7, type metadata accessor for CRLBoardIdentifier);
        Hasher._combine(_:)(0);
        sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
      }

      sub_100BDB9AC(v7, type metadata accessor for CRLBoardIdentifier);
      v28 = Hasher._finalize()();
      sub_100BDB9AC(v47, type metadata accessor for CRLAssetReferrerIdentifier);
      v29 = v45;
      v30 = v28 & v45;
      if (a1 >= v44)
      {
        break;
      }

      v18 = v43;
      if (v30 < v44)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v18 * a1 != v19)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v31 = *(v40 + 72);
      v32 = v31 * a1;
      if (v31 * a1 < (v31 * v16) || *(a2 + 56) + v31 * a1 >= *(a2 + 56) + v31 * v16 + v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v16;
        if (v32 == v31 * v16)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v16;
LABEL_5:
      v16 = (v16 + 1) & v29;
      if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v18 = v43;
    if (v30 < v44)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (a1 < v30)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_23:
  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

unint64_t sub_100BD1ACC(int64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v33 = a4;
  v34 = a5;
  v31 = a3(0);
  v7 = *(v31 - 8);
  result = __chkstk_darwin(v31);
  v10 = &v30 - v9;
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    v32 = (v15 + 1) & v14;
    v17 = *(v7 + 72);
    do
    {
      v18 = v17;
      v19 = v17 * v13;
      v20 = v16;
      sub_10000C76C(*(a2 + 48) + v17 * v13, v10, v33);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v21 = Hasher._finalize()();
      result = sub_100BDB9AC(v10, v34);
      v16 = v20;
      v22 = v21 & v20;
      if (a1 >= v32)
      {
        if (v22 < v32)
        {
          v17 = v18;
        }

        else
        {
          v17 = v18;
          if (a1 >= v22)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v17 = v18;
        if (v22 >= v32 || a1 >= v22)
        {
LABEL_11:
          v23 = *(a2 + 48);
          result = v23 + v17 * a1;
          if (v17 * a1 < v19 || result >= v23 + v19 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
LABEL_16:
            v16 = v20;
          }

          else if (v17 * a1 != v19)
          {
            result = swift_arrayInitWithTakeBackToFront();
            goto LABEL_16;
          }

          v24 = *(a2 + 56);
          v25 = (v24 + 8 * a1);
          v26 = (v24 + 8 * v13);
          if (a1 != v13 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            a1 = v13;
          }
        }
      }

      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100BD1DC0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_100BD1F88(uint64_t result, uint64_t a2)
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
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_100024E98(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_10002640C(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100BD2140(uint64_t result, uint64_t a2)
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
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_100024E98(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_10002640C(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100BD2310(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v5);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v8, v5);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(v37(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_100BD2660(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100BD2F08(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100BDBA74(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

Swift::Int sub_100BD2800(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100BD3308(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100BDBAFC(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_100BD29A0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_100BD34B0(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_100BDB93C(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

uint64_t sub_100BD2B40(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_100BD381C(v9, v7, v3, a2, type metadata accessor for CRLCollaborationParticipant, &qword_101A00E38, type metadata accessor for CRLCollaborationParticipant, sub_1010F5904);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_100BDB89C(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

uint64_t sub_100BD2D24(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_100BD381C(v9, v7, v3, a2, type metadata accessor for CRLBoardItem, &qword_1019FCB80, type metadata accessor for CRLBoardItem, sub_1010F47D4);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_100BDB840(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

uint64_t sub_100BD2F08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v41 = a1;
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v49 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v57 = &v38 - v10;
  __chkstk_darwin(v9);
  v47 = &v38 - v12;
  v13 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a3 + 64);
  v17 = (v14 + 63) >> 6;
  v54 = v11 + 16;
  v55 = a4;
  v46 = v11 + 32;
  v51 = a4 + 56;
  v48 = v11;
  v56 = (v11 + 8);

  v40 = 0;
  v19 = 0;
  v44 = v17;
  v45 = a3 + 64;
  v42 = a3;
  while (v16)
  {
LABEL_12:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v24 = v47;
    v23 = v48;
    v25 = *(v48 + 72);
    v26 = *(a3 + 48) + v25 * (v22 | (v19 << 6));
    v52 = *(v48 + 16);
    v53 = v25;
    v52(v47, v26, v6);
    (*(v23 + 32))(v57, v24, v6);
    v27 = v55;
    sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
    v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(v27 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & *(v51 + 8 * (v30 >> 6))) != 0)
    {
      v43 = v56 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v50 = ~v29;
      while (1)
      {
        v33 = v49;
        v52(v49, *(v55 + 48) + v30 * v53, v6);
        sub_100BDAEF0(&qword_1019F37C0, &type metadata accessor for UUID);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20 = *v56;
        (*v56)(v33, v6);
        if (v34)
        {
          break;
        }

        v30 = (v30 + 1) & v50;
        v31 = v30 >> 6;
        v32 = 1 << v30;
        if (((1 << v30) & *(v51 + 8 * (v30 >> 6))) == 0)
        {
          a3 = v42;
          goto LABEL_6;
        }
      }

      result = (v20)(v57, v6);
      a3 = v42;
      v35 = v41[v31];
      v41[v31] = v35 | v32;
      v17 = v44;
      v13 = v45;
      if ((v35 & v32) == 0 && __OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_21:

        v37 = v55;

        return sub_1010F4288(v41, v39, v40, v37);
      }
    }

    else
    {
      v20 = *v56;
LABEL_6:
      v17 = v44;
      result = (v20)(v57, v6);
      v13 = v45;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      goto LABEL_21;
    }

    v16 = *(v13 + 8 * v21);
    ++v19;
    if (v16)
    {
      v19 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100BD3308(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v25 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(*(a3 + 48) + ((v5 << 9) | (8 * v14)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v15);
    result = Hasher._finalize()();
    v16 = -1 << *(a4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
    {
      v20 = *(a4 + 48);
      if (*(v20 + 8 * v17) == v15)
      {
LABEL_5:
        v12 = v25[v18];
        v25[v18] = v12 | v19;
        if ((v12 & v19) == 0 && __OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_20:

          return sub_1010F4B24(v25, a2, v24, a4);
        }
      }

      else
      {
        v21 = ~v16;
        while (1)
        {
          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
          {
            break;
          }

          if (*(v20 + 8 * v17) == v15)
          {
            goto LABEL_5;
          }
        }
      }
    }
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_20;
    }

    v9 = *(v6 + 8 * v13);
    ++v5;
    if (v9)
    {
      v5 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_100BD34B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F69D0);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
    Set.Iterator.init(_cocoa:)();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_29;
    }

    sub_100006370(0, &qword_1019F69D0);
    swift_dynamicCast();
    v17 = v43;
    v7 = v13;
    v8 = v14;
    if (!v43)
    {
      goto LABEL_29;
    }

LABEL_19:
    v18 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v19 = -1 << *(a4 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_100006370(0, &qword_1019F69D0);
    v23 = *(*(a4 + 48) + 8 * v20);
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
LABEL_24:
      v12 = (v6 + 64) >> 6;

      v28 = a1[v21];
      a1[v21] = v28 | v22;
      v13 = v7;
      v14 = v8;
      v29 = (v28 & v22) == 0;
      v5 = v34;
      v4 = v35;
      if (v29)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_29:
        sub_100035F90();

        sub_100035D8C(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v25 = ~v19;
      while (1)
      {
        v20 = (v20 + 1) & v25;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v26 = *(*(a4 + 48) + 8 * v20);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v12 = (v6 + 64) >> 6;
      v14 = v8;
      v5 = v34;
      v4 = v35;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v8 = (v16 - 1) & v16;
    v17 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_29;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100BD381C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    a5(0);
    sub_100BDAEF0(a6, a7);
    Set.Iterator.init(_cocoa:)();
    v8 = v47;
    v12 = v48;
    v13 = v49;
    v14 = v50;
    v15 = v51;
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v40 = 0;
  v19 = (v13 + 64) >> 6;
  v45 = a4 + 56;
  v42 = v12;
  v43 = v8;
LABEL_8:
  v20 = v14;
  v21 = v15;
  while (v8 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_29;
    }

    a5(0);
    swift_dynamicCast();
    v24 = v52;
    v14 = v20;
    v15 = v21;
    if (!v52)
    {
      goto LABEL_29;
    }

LABEL_19:
    v25 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v26 = -1 << *(a4 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v45 + 8 * (v27 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    a5(0);
    v30 = *(*(a4 + 48) + 8 * v27);
    v31 = static NSObject.== infix(_:_:)();

    if (v31)
    {
LABEL_24:
      v19 = (v13 + 64) >> 6;

      v12 = v42;
      v35 = *(a1 + 8 * v28);
      *(a1 + 8 * v28) = v35 | v29;
      v20 = v14;
      v21 = v15;
      v36 = (v35 & v29) == 0;
      v8 = v43;
      if (v36)
      {
        if (!__OFADD__(v40++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_29:
        sub_100035F90();

        a8(a1, a2, v40, a4);
        return;
      }
    }

    else
    {
      v32 = ~v26;
      while (1)
      {
        v27 = (v27 + 1) & v32;
        v28 = v27 >> 6;
        v29 = 1 << v27;
        if (((1 << v27) & *(v45 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v33 = *(*(a4 + 48) + 8 * v27);
        v34 = static NSObject.== infix(_:_:)();

        if (v34)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v20 = v14;
      v21 = v15;
      v12 = v42;
      v8 = v43;
      v19 = (v13 + 64) >> 6;
    }
  }

  v22 = v20;
  v23 = v21;
  v14 = v20;
  if (v21)
  {
LABEL_15:
    v15 = (v23 - 1) & v23;
    v24 = *(*(v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v24)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_29;
    }

    v23 = *(v12 + 8 * v14);
    ++v22;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100BD3B78(uint64_t a1, uint64_t a2)
{
  v3 = Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100BDAEF0(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  while (a2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_20:
      sub_100035F90();
      Hasher._combine(_:)(v11);
      return;
    }

    type metadata accessor for CRLBoardItem(0);
    swift_dynamicCast();
    v15 = v18;
LABEL_10:
    v16 = NSObject._rawHashValue(seed:)(v3);

    v11 ^= v16;
  }

  if (v7)
  {
    v13 = v6;
LABEL_9:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = *(*(a2 + 48) + ((v13 << 9) | (8 * v14)));
    v15 = v18;
    goto LABEL_10;
  }

  v17 = v6;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      goto LABEL_20;
    }

    v7 = *(v4 + 8 * v13);
    ++v17;
    if (v7)
    {
      v6 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void _s8Freeform21CRLUIPropertyNotifierC14PropertyFilterV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= Hasher._finalize()())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      Hasher._combine(_:)(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void _s8Freeform21CRLUIPropertyNotifierC10KindFilterV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= Hasher._finalize()())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 8) | (4 * v10)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      Hasher._combine(_:)(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100BD4000(__int128 *a1, uint64_t a2)
{
  v4 = _s17CategoryViewModelVMa();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v24 = a1[2];
  v25 = v7;
  v26 = *(a1 + 8);
  v9 = *a1;
  v8 = a1[1];
  v18[1] = a1;
  v22 = v9;
  v23 = v8;
  v20 = Hasher._finalize()();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = 0;
  v19 = v6;
  while (v12)
  {
LABEL_11:
    sub_10000C76C(*(a2 + 48) + *(v21 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v6, _s17CategoryViewModelVMa);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    String.hash(into:)();
    if (*&v6[*(v4 + 24) + 8])
    {
      Hasher._combine(_:)(1u);
      v6 = v19;
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v12 &= v12 - 1;
    String.hash(into:)();
    Hasher._combine(_:)(*&v6[*(v4 + 32)]);
    v16 = Hasher._finalize()();
    sub_100BDB9AC(v6, _s17CategoryViewModelVMa);
    v14 ^= v16;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      Hasher._combine(_:)(v14);
      return;
    }

    v12 = *(a2 + 56 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_100BD42D0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100BD4368(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_100BD43DC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100BD4368(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100AE6694(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100BD43DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_100BD44F0(void *a1, uint64_t a2)
{
  v10[3] = sub_1005B981C(&qword_101A147D0);
  v10[4] = sub_10001A2F8(&qword_101A147D8, &qword_101A147D0);
  v10[0] = a1;
  swift_beginAccess();
  sub_10000BE14(a2 + 48, v8, &qword_101A14668);
  v4 = v9;
  v5 = a1;
  sub_10000CAAC(v8, &qword_101A14668);
  if (v4)
  {
    sub_100BC66AC();
  }

  else
  {
    sub_10000630C(v10, v8);
    swift_beginAccess();
    sub_100BDBB28(v8, a2 + 48);
    swift_endAccess();
    v6 = static Subscribers.Demand.unlimited.getter();
    sub_1008B62F8(v6);
  }

  return sub_100005070(v10);
}

unint64_t sub_100BD4620(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A0F238);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1007CF108(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1007CF108(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD471C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F120);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_10000BE7C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_100BD481C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14730);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10006E4C8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD490C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14720);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_101A14728);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD4A5C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FEFB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EF08);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_1019FEFB0);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD4C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F208);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, v14, &qword_101A145E0);
      v5 = v14[0];
      v6 = v15;
      v7 = v16;
      result = sub_1007C7EFC(v14[0], v15, v16);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      result = sub_100050F74(&v17, v3[7] + 40 * result);
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 64;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD4D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A145E8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = sub_1007C7EC0(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_1007C7EC0(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD4ECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0EF78);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000BE7C(v5, v6);
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

unint64_t sub_100BD4FC8(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14588);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0F0E8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14588);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100BD51F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0EEF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      sub_10000BE14(i, &v13, &qword_101A145F8);
      v5 = v13;
      result = sub_1007CF108(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *sub_100BD5350(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(a2);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_1007C7EC0(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 7);
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_1007C7EC0(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD5450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A0F040);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1007CF10C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_1007CF10C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD5554(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A22780);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EFF0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A22780);
      v11 = *v5;
      v10 = v5[1];
      result = sub_10000BE7C(*v5, v10);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v7[6] + 16 * result);
      *v15 = v11;
      v15[1] = v10;
      v16 = v7[7];
      v17 = sub_1005B981C(&qword_1019F6990);
      result = sub_10003DFF8(v5 + v22, v16 + *(*(v17 - 8) + 72) * v14, &qword_1019F6990);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100BD5754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F0D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      sub_100024E98(v6, *i);
      result = sub_1007C8330(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD589C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F078);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_101A14630);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD59C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F280);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 3);
      v17 = *(i - 5);
      v18 = v5;
      v6 = *i;
      v19 = *(i - 1);
      sub_100BDBAA0(&v17, v16);
      v7 = v6;
      result = sub_1007C89DC(&v17);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 40 * result;
      v11 = v17;
      v12 = v18;
      *(v10 + 32) = v19;
      *v10 = v11;
      *(v10 + 16) = v12;
      *(v3[7] + 8 * result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD5AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14718);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_1019F8DD0);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD5C14(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EED0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14650);
      result = sub_1007C8514(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10000BF3C(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD5E14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14570);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_1019FA6F0);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD5F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A145C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_1019FE1E8);
      v5 = v11;
      result = sub_1007C8AC8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6064(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FE208);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0F248);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_10000BE14(v8, v5, &qword_1019FE208);
      result = sub_10005F124();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = type metadata accessor for Date();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6224(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FE228);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EF18);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_1019FE228);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000BE7C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for UUID();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F240);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1007C8BCC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD64FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F070);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = a1 + 48; ; i += 64)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 8);
      v8 = *(i + 16);
      v9 = *(i + 24);
      v10 = *(i + 40);
      *&v18 = *(i - 16);
      *(&v18 + 1) = v5;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      *&v20 = v8;
      *(&v20 + 1) = v9;
      v21 = *(i + 32);
      sub_100076F8C(v18, v5, v6, v7, v8, v9, v21);

      result = sub_10002D980(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14710);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_1019FE818);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A146B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_10006E4C8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A0EEC0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = sub_1007C7EC0(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_1007C7EC0(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD6968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F110);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000BE7C(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6A7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0EEC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1007CDD68();
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v9 = (*(v3 + 56) + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6B64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&unk_101A1B3B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000BE7C(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6C60(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A145D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0F118);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A145D0);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
      result = sub_100BDBA0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD6ECC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A146A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0F210);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A146A0);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 48 * v13;
      v17 = *(v8 + 5);
      v18 = *(v8 + 8);
      v19 = *(v8 + 24);
      *v16 = *v8;
      *(v16 + 8) = v18;
      *(v16 + 24) = v19;
      *(v16 + 40) = v17;
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD70D8(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A08C00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A147A8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A08C00);
      v11 = *v5;
      result = sub_1007C8D3C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD72C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14578);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_101A14580);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD73E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14698);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_10000BE7C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD7508(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A09EF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A147A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A09EF0);
      v11 = *v5;
      result = sub_1007C8DCC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD76F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F2C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1007C8EE4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD77E8(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14688);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0F1E8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14688);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD79F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14678);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &unk_101A0A348);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD7B1C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0BA18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0F1B8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A0BA18);
      v11 = *v5;
      result = sub_1007C8A78(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for CRLZoneSyncResultScenarios();
      result = sub_100BDBA0C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for CRLZoneSyncResultScenarios);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD7D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14680);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_101A0C018);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD7E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14818);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_10000BE7C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD7F38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F0F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, v15, &qword_101A147B0);
      result = sub_1000640CC(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100BD8068(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14810);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A0F2B0);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = *(v2 + 48);
  v9 = *(v3 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v31 = v9;

  sub_10000BE14(a1 + v10, v5, &qword_101A14810);
  v11 = sub_10003E994(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  v14 = &v5[v8];
  v30 = type metadata accessor for UUID();
  v15 = *(v30 - 8);
  v29 = *(v15 + 32);
  v16 = *(v15 + 72);
  v17 = a1 + v31 + v10;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    result = v29(v7[6] + v16 * v13, v5, v30);
    v19 = (v7[7] + (v13 << 6));
    v21 = *(v14 + 2);
    v20 = *(v14 + 3);
    v22 = *(v14 + 1);
    *v19 = *v14;
    v19[1] = v22;
    v19[2] = v21;
    v19[3] = v20;
    v23 = v7[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v7[2] = v25;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v26 = v17 + v31;
    sub_10000BE14(v17, v5, &qword_101A14810);
    v13 = sub_10003E994(v5);
    v17 = v26;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD82F4(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0F710);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A14798);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A0F710);
      v11 = *v5;
      result = sub_1007C8F34(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD84DC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A10408);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A14790);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A10408);
      v11 = *v5;
      result = sub_1007C8FFC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD86C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F1E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 42); ; i += 16)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 10);
      result = sub_1007C8A78(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 3 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
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

unint64_t sub_100BD87FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14658);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1007C8AC8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD88EC(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A0F180);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = *(a1 + 5);
  result = sub_1007C90C4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = a1 + 7;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1007C90C4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD89F8(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A13DF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A14788);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A13DF0);
      v11 = *v5;
      result = sub_1007C90DC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100BD8BE0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A0F2A8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = sub_1007C7EC0(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 8 * v10) = v4;
    v13 = (v3[7] + 24 * v10);
    *v13 = result;
    v13[1] = v6;
    v13[2] = v7;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v18 = *(v12 - 2);
    v19 = *(v12 - 1);
    v7 = *v12;

    v10 = sub_1007C7EC0(v4);
    v12 = v17;
    v6 = v19;
    result = v18;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD8D18(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14778);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A14780);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14778);
      v11 = *v5;
      result = sub_1007C91CC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100BD8F00(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(&qword_101A14660);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v6 = *(a1 + 5);
  v5 = *(a1 + 6);
  v7 = sub_1007C90C4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1007C90C4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD901C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14768);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A14770);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14768);
      v11 = *v5;
      result = sub_1007C9300(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD9204(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14758);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A14760);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14758);
      v11 = *v5;
      result = sub_1007C93B4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD93EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14640);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &qword_101A14648);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100BD954C(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1005B981C(a2);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_1007C7EC0(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 7);
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_1007C7EC0(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100BD9674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A14638);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1007C8B7C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_100BD97A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F068);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_100024E98(v5, v6);

      result = sub_1007C956C(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD98BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F060);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_100024E98(v5, v6);

      result = sub_1007C956C(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD9A10(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14620);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0F010);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14620);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
      result = sub_100BDBA0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD9C2C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A145F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EF38);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A145F0);
      result = sub_1000486F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRLBoardIdentifier(0);
      result = sub_100BDBA0C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CRLBoardIdentifier);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BD9E40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1005B981C(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_100BD9F38(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14608);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EFC0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14608);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BDA120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0EF70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, v15, &qword_101A14600);
      result = sub_1000640CC(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 24 * result;
      v11 = v18;
      *v10 = v17;
      *(v10 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 64;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BDA260(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14748);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A14750);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14748);
      v11 = *v5;
      result = sub_1007C96BC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100BDA43C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14738);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A14740);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14738);
      v11 = *v5;
      result = sub_1007C9734(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100BDA624(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v11 - v8;
  (*(v6 + 16))(&v11 - v8, v2 + *(v4 + 312), v5, v7);
  LOBYTE(v3) = (*(*(v4 + 304) + 24))(v3, v5);
  (*(v6 + 8))(v9, v5);
  if (v3)
  {
    sub_100BCABAC();
  }

  return static Subscribers.Demand.none.getter();
}

id sub_100BDA770(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *((swift_isaMask & *v4) + 0x70);
  type metadata accessor for CRLUnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  atomic_thread_fence(memory_order_acq_rel);
  *(v4 + v9) = v10;
  v12 = *((swift_isaMask & *v4) + 0x78);
  type metadata accessor for CRLUnfairRecursiveLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  atomic_thread_fence(memory_order_acq_rel);
  *(v4 + v12) = v13;
  v15 = *((swift_isaMask & *v4) + 0x88);
  *(v4 + v15) = 0;
  v16 = v4 + *((swift_isaMask & *v4) + 0x90);
  *v16 = 0;
  v16[8] = -1;
  v17 = *((swift_isaMask & *v4) + 0x98);
  *(v4 + v17) = 0;
  *(v4 + *((swift_isaMask & *v4) + 0x80)) = 0;
  *(v4 + v15) = a1;
  *v16 = a2;
  v16[8] = a3 & 1;
  swift_beginAccess();
  *(v4 + v17) = a4;
  v18 = a1;
  sub_1008B59E8(a2, a3 & 1);
  v21.receiver = v4;
  v21.super_class = sub_1005B981C(&qword_101A147E0);
  v19 = objc_msgSendSuper2(&v21, "init");
  if (a3)
  {
    [v18 addObserver:v19 forChangeSourceOfClass:swift_getObjCClassFromMetadata()];
  }

  else
  {
    [v18 addObserver:v19 forChangeSource:a2];
    sub_1008B7608(a2, 0);
  }

  return v19;
}

uint64_t sub_100BDA9D4(Swift::UInt a1)
{
  (*(*(*(*v1 + 296) - 8) + 16))(v1 + *(*v1 + 312));
  type metadata accessor for CRLUIPropertyNotifier();
  *(v1 + *(*v1 + 320)) = sub_100BC94C8(a1);
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = sub_100BD8BE0(_swiftEmptyArrayStorage);
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t type metadata accessor for CRLUIPropertyNotifier.CustomFilter()
{
  result = qword_101A144B8;
  if (!qword_101A144B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100BDAB58(Swift::UInt a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  *(v4 + 88) = a2;
  Hasher.init()();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(1uLL);

  a4(v9, a2);

  *(v4 + 96) = Hasher.finalize()();
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = sub_100BD8BE0(_swiftEmptyArrayStorage);
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_100BDAC30(Swift::UInt a1, uint64_t a2)
{
  v3 = v2;
  sub_10000C76C(a2, v2 + *(*v2 + 312), type metadata accessor for CRLUIPropertyNotifier.CustomFilter);
  Hasher.init()();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(1uLL);
  type metadata accessor for CRLUIPropertyNotifier.CustomFilter();
  type metadata accessor for UUID();
  sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  *(v2 + *(*v2 + 320)) = Hasher.finalize()();
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_100BD8BE0(_swiftEmptyArrayStorage);
  sub_100BDB9AC(a2, type metadata accessor for CRLUIPropertyNotifier.CustomFilter);
  *(v3 + 24) = v6;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_100BDADA8(Swift::UInt a1)
{
  Hasher.init()();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(1uLL);
  v3 = Hasher.finalize()();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = v3;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = sub_100BD8BE0(_swiftEmptyArrayStorage);
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_100BDAE48()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = sub_100BD8BE0(_swiftEmptyArrayStorage);
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_100BDAEA8()
{
  type metadata accessor for CRLUIPropertyNotifier.PublisherSubscriber();
  swift_allocObject();
  return sub_100BDAE48();
}

uint64_t sub_100BDAEF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100BDAF6C()
{
  result = qword_101A14120;
  if (!qword_101A14120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14120);
  }

  return result;
}

unint64_t sub_100BDAFC0()
{
  result = qword_101A14128;
  if (!qword_101A14128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14128);
  }

  return result;
}

unint64_t sub_100BDB018()
{
  result = qword_101A14130;
  if (!qword_101A14130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14130);
  }

  return result;
}

unint64_t sub_100BDB098()
{
  result = qword_101A14138;
  if (!qword_101A14138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14138);
  }

  return result;
}

unint64_t sub_100BDB0EC()
{
  result = qword_101A14140;
  if (!qword_101A14140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14140);
  }

  return result;
}

unint64_t sub_100BDB144()
{
  result = qword_101A14148;
  if (!qword_101A14148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14148);
  }

  return result;
}

uint64_t sub_100BDB1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100BDB200()
{
  result = qword_101A14150;
  if (!qword_101A14150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14150);
  }

  return result;
}

unint64_t sub_100BDB254()
{
  result = qword_101A14158;
  if (!qword_101A14158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14158);
  }

  return result;
}

unint64_t sub_100BDB2AC()
{
  result = qword_101A14160;
  if (!qword_101A14160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14160);
  }

  return result;
}

uint64_t sub_100BDB300(uint64_t a1)
{
  *(a1 + 8) = sub_100BDAEF0(&qword_101A14168, type metadata accessor for CRLUIPropertyNotifier.CustomFilter);
  result = sub_100BDAEF0(&qword_101A14170, type metadata accessor for CRLUIPropertyNotifier.CustomFilter);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100BDB458()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100BDB568()
{
  result = sub_1007152FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100BDB5EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100BDB628(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100BDB640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100BDB694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_100BDB6F8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100BDB760()
{
  sub_100BCB390();
  memset(v3, 0, sizeof(v3));
  v4 = xmmword_101482150;
  swift_beginAccess();
  v1 = type metadata accessor for CRLUIPropertyNotifier.PublisherSubscriber.Status();
  (*(*(v1 - 8) + 40))(v0 + 48, v3, v1);
  return swift_endAccess();
}

void sub_100BDB8F8(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  sub_100BD381C(a1, a2, **(v7 + 16), *(v7 + 24), a3, a4, a5, a6);
  if (!v8)
  {
    *a7 = v10;
  }
}

uint64_t sub_100BDB968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_100BDB9AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100BDBA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BDBB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A14668);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100BDBCAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSurfaceRep();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100BDBD50(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CRLSurfaceRep();
  objc_msgSendSuper2(&v10, "drawInContext:", a1);
  v8 = &type metadata for CRLFeatureFlags;
  v9 = sub_100004D60();
  v7[0] = 28;
  LOBYTE(a1) = isFeatureEnabled(_:)();
  sub_100005070(v7);
  if ((a1 & 1) != 0 && [v1 directlyManagesContentPlatformView])
  {
    v3 = [v1 info];
    type metadata accessor for CRLSurfaceItem();
    if (swift_dynamicCastClass() && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v5 = Strong;
      v6 = (*((swift_isaMask & *Strong) + 0x380))();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100BDBF28()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD7740);
  sub_1005EB3DC(v0, qword_101AD7740);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100BDBFD8()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD7758);
  sub_1005EB3DC(v0, qword_101AD7758);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100BDC088()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD7770);
  sub_1005EB3DC(v0, qword_101AD7770);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100BDC140()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD7788);
  sub_1005EB3DC(v0, qword_101AD7788);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100BDC1F0()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD77A0);
  sub_1005EB3DC(v0, qword_101AD77A0);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100BDC260@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1005B981C(&qword_1019FE720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_1005B981C(&qword_1019FE728);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10001A2F8(&qword_1019FE730, &qword_1019FE728);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1005B981C(&qword_1019FE738);
  a1[4] = sub_100758DC4();
  sub_10002C58C(a1);
  sub_10001A2F8(&qword_1019FE758, &qword_1019FE720);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100BDC4C0@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v43 = &v35 - v5;
  v6 = type metadata accessor for Tips.DonationTimeRange();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FE6A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = sub_1005B981C(&qword_1019FE6B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_1005B981C(&qword_1019FE6B8);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = sub_1005B981C(&qword_1019FE6C0);
  v22 = *(v21 - 8);
  v41 = v21;
  v42 = v22;
  __chkstk_darwin(v21);
  v36 = &v35 - v23;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  static Tips.DonationTimeRange.day.getter();
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  sub_100758BAC();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v39 + 8))(v8, v40);
  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  sub_10001A2F8(&qword_1019FE6E0, &qword_1019FE6B8);
  v25 = v36;
  v24 = v37;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v38 + 8))(v20, v24);
  v50 = 1;
  v26 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v46);
  v30 = sub_1005B981C(&qword_1019FE6E8);
  v31 = v47;
  v47[3] = v30;
  v31[4] = sub_100758C5C();
  sub_10002C58C(v31);
  sub_10001A2F8(&qword_1019FE710, &qword_1019FE6C0);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v32 = v41;
  v33 = v48;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v27 + 8))(v28, v29);
  (*(v49 + 8))(v26, v33);
  return (*(v42 + 8))(v25, v32);
}

uint64_t sub_100BDCBD0@<X0>(uint64_t *a1@<X8>)
{
  sub_10067E9D0();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100BDCC14()
{
  result = qword_101A14868;
  if (!qword_101A14868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14868);
  }

  return result;
}

unint64_t sub_100BDCC68(uint64_t a1)
{
  result = sub_10067E9D0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100BDCC90()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v24 = v21 - v1;
  v2 = sub_1005B981C(&unk_1019F6CF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - v4;
  v6 = type metadata accessor for Tips.Rule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F1E38 != -1)
  {
    swift_once();
  }

  v10 = sub_1005EB3DC(v2, qword_101AD7740);
  swift_beginAccess();
  v11 = *(v3 + 16);
  v11(v5, v10, v2);
  Tips.Rule.init<A>(_:_:)();
  v21[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  if (qword_1019F1E40 != -1)
  {
    swift_once();
  }

  v13 = sub_1005EB3DC(v2, qword_101AD7758);
  swift_beginAccess();
  v11(v5, v13, v2);
  Tips.Rule.init<A>(_:_:)();
  v21[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v6);
  if (qword_1019F1E50 != -1)
  {
    swift_once();
  }

  v14 = sub_1005EB3DC(v2, qword_101AD7788);
  swift_beginAccess();
  v11(v5, v14, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v6);
  v15 = v6;
  if (qword_1019F1E48 != -1)
  {
    swift_once();
  }

  v16 = sub_1005EB3DC(v2, qword_101AD7770);
  swift_beginAccess();
  v11(v5, v16, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v15);
  if (qword_1019F1E58 != -1)
  {
    swift_once();
  }

  v17 = v23;
  v18 = sub_1005EB3DC(v23, qword_101AD77A0);
  (*(v22 + 16))(v24, v18, v17);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v15);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v19 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v19;
}

void sub_100BDD324(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  if (v2 != (a1 & 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {

        sub_10091D554();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_100BDD3F8()
{

  v2 = sub_100BC17E0(v1);

  v100 = [v2 interactiveCanvasController];

  if (v100)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;

      sub_100BDDAE4(v5);
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = swift_unknownObjectWeakLoadStrong();
      if (!v14 || (v15 = *(v14 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingOut), swift_unknownObjectRelease(), (v15 & 1) == 0))
      {

        v17 = sub_100BC17E0(v16);

        v18 = [v17 interactiveCanvasController];

        if (v18)
        {
          [v18 visibleScaledRectForCanvasUI];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          rect_8a = v25;
          [v18 convertUnscaledToBoundsRect:{v7, v9, v11, v13}];
          v96 = v9;
          v98 = v7;
          recta = v102.origin.x;
          y = v102.origin.y;
          rect_16 = v13;
          rect_24a = v11;
          width = v102.size.width;
          height = v102.size.height;
          MinY = CGRectGetMinY(v102);
          v103.origin.x = v20;
          v103.origin.y = v22;
          v103.size.width = v24;
          v103.size.height = rect_8a;
          v88 = MinY - CGRectGetMinY(v103);
          v104.origin.x = v20;
          v104.origin.y = v22;
          v104.size.width = v24;
          v104.size.height = rect_8a;
          MaxY = CGRectGetMaxY(v104);
          v105.origin.x = recta;
          v105.origin.y = y;
          v105.size.width = width;
          v11 = rect_24a;
          v9 = v96;
          v105.size.height = height;
          v13 = rect_16;
          v31 = CGRectGetMaxY(v105);

          v32 = MaxY - v31;
          v7 = v98;
          v33 = v32 <= v88 + 1.0;
        }

        else
        {
          v33 = 0;
        }

        sub_100BDD324(v33);
      }

      [v100 convertUnscaledToBoundsRect:{v7, v9, v11, v13, *&v88}];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      [v100 visibleScaledRectForCanvasUI];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      [v4 frame];
      v97 = v50;
      v99 = v51;
      rect_24 = v35;
      v106.origin.x = v35;
      v52 = v37;
      v106.origin.y = v37;
      v53 = v39;
      v106.size.width = v39;
      v54 = v41;
      v106.size.height = v41;
      v112.origin.x = v43;
      v112.origin.y = v45;
      v112.size.width = v47;
      v112.size.height = v49;
      v107 = CGRectIntersection(v106, v112);
      v113.origin.x = v43;
      v113.origin.y = v45;
      v113.size.width = v47;
      v113.size.height = v49;
      if (CGRectEqualToRect(v107, v113))
      {
        v108.origin.x = v43;
        v108.origin.y = v45;
        v108.size.width = v47;
        v108.size.height = v49;
        v55 = v97;
        v56 = CGRectGetMidX(v108) + v97 * -0.5;
        v57 = v43;
        v58 = v47;
        v59 = v43;
        v60 = v45;
        v61 = v47;
        v62 = v49;
        if (*(v0 + 56) == 1)
        {
          v63 = CGRectGetMinY(*&v59);
        }

        else
        {
          v63 = CGRectGetMaxY(*&v59);
        }

        v76 = v63 - *(v0 + 48) - v99;
        v70 = v49;
      }

      else
      {
        rect_8 = v49;
        rect = v53;
        v64 = rect_24;
        v65 = v52;
        v66 = v52;
        v67 = v53;
        v68 = v54;
        if (*(v0 + 56) == 1)
        {
          v69 = CGRectGetMinY(*&v64);
          v57 = v43;
          v109.origin.x = v43;
          v109.origin.y = v45;
          v58 = v47;
          v109.size.width = v47;
          v70 = rect_8;
          v109.size.height = rect_8;
          v71 = CGRectGetMinY(v109);
          v72 = *(v0 + 48);
          v73 = v99 + v72 < v69 - v71;
          v74 = v69 + v72;
          v75 = v69 - v72 - v99;
        }

        else
        {
          v77 = CGRectGetMaxY(*&v64);
          v57 = v43;
          v110.origin.x = v43;
          v110.origin.y = v45;
          v58 = v47;
          v110.size.width = v47;
          v70 = rect_8;
          v110.size.height = rect_8;
          v78 = CGRectGetMaxY(v110);
          v79 = *(v0 + 48);
          v73 = v99 + v79 < v78 - v77;
          v74 = v77 - v79 - v99;
          v75 = v77 + v79;
        }

        if (v73)
        {
          v80 = v75;
        }

        else
        {
          v80 = v74;
        }

        v111.origin.x = rect_24;
        v111.origin.y = v65;
        v111.size.width = rect;
        v111.size.height = v54;
        v55 = v97;
        v56 = CGRectGetMidX(v111) + v97 * -0.5;
        v76 = v80;
      }

      if (sub_10011FBD0(v58, v70))
      {
        v81 = v100;
        v100 = v4;
      }

      else
      {
        v82 = sub_100076B60(5.0);
        v84 = sub_100BDDE50(v57, v45, v58, v70, v82, v83);
        [v4 setFrame:{sub_100120B08(v56, v76, v55, v99, v84, v85, v86, v87)}];
        v81 = v4;
      }
    }
  }
}

BOOL sub_100BDD904(double a1, double a2)
{

  v5 = sub_100BC17E0(v4);

  v6 = [v5 interactiveCanvasController];

  if (!v6)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v27 = a2;
    [v6 visibleScaledRectForCanvasUI];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v8 frame];
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    MinY = CGRectGetMinY(v28);
    v29.origin.x = v10;
    v29.origin.y = v12;
    v29.size.width = v14;
    v29.size.height = v16;
    v25 = CGRectGetMinY(v29);
    v30.origin.x = v10;
    v30.origin.y = v12;
    v30.size.width = v14;
    v30.size.height = v16;
    MaxY = CGRectGetMaxY(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v22 = CGRectGetMaxY(v31);

    if (*(v2 + 56))
    {
      v23 = MinY - v25;
    }

    else
    {
      v23 = MaxY - v22;
    }

    return v23 >= v27;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100BDDA78()
{

  swift_unknownObjectWeakDestroy();
  sub_1000C1024(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_100BDDAE4(uint64_t a1)
{
  v1 = a1;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() <= 0)
    {
      return;
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1006055C8();
    sub_100605614();
    Set.Iterator.init(_cocoa:)();
    v1 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
    v9 = v42;
  }

  else
  {
    if (!*(a1 + 16))
    {
      return;
    }

    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v35 = v7;
  v13 = (v7 + 64) >> 6;
  while (1)
  {
    v14 = y;
    v15 = x;
    v16 = height;
    v17 = width;
    if ((v1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v23 = __CocoaSet.Iterator.next()();
    if (!v23 || (v36 = v23, sub_1006055C8(), swift_dynamicCast(), a = v37.a, v20 = v8, v21 = v9, !*&v37.a))
    {
LABEL_23:
      sub_100035F90();
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      CGRectIsNull(v46);
      return;
    }

LABEL_19:
    v24 = [*&a layout];
    [v24 frameForMiniFormatterPositioning];
    x = v25;
    y = v26;
    width = v27;
    height = v28;

    v29 = [*&a layout];
    v30 = [v29 parent];

    if (v30)
    {
      [v30 transformInRoot];
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      v44 = CGRectApplyAffineTransform(v43, &v37);
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
    }

    v45.origin.x = v15;
    v45.origin.y = v14;
    v45.size.width = v17;
    v45.size.height = v16;
    IsNull = CGRectIsNull(v45);

    v8 = v20;
    v9 = v21;
    if (!IsNull)
    {
      x = sub_10011FC04(v15, v14, v17, v16, x, y, width, height);
      y = v32;
      width = v33;
      height = v34;
      v8 = v20;
      v9 = v21;
    }
  }

  v18 = v8;
  v19 = v9;
  v20 = v8;
  if (v9)
  {
LABEL_15:
    v21 = (v19 - 1) & v19;
    a = COERCE_DOUBLE(*(*(v1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))));
    if (a == 0.0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v13)
    {
      goto LABEL_23;
    }

    v19 = *(v6 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_100BDDE70()
{
  result = qword_101A149C0;
  if (!qword_101A149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A149C0);
  }

  return result;
}

unint64_t sub_100BDDECC()
{
  result = qword_101A149C8;
  if (!qword_101A149C8)
  {
    sub_1005C4E5C(&qword_101A149D0);
    sub_100876FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A149C8);
  }

  return result;
}

uint64_t sub_100BDDF70()
{
  AppDependency.wrappedValue.getter();
  v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[6] = &off_1018AD9D0;
  v0[11] = sub_100020E58(v0 + 2, &type metadata for CRLBoardLibraryProvidingDependency);
  v0[12] = sub_100020E58(v0 + 2, v0[5]);
  type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BDE040, v2, v1);
}

uint64_t sub_100BDE040()
{
  v1 = *(v0 + 96);

  v2 = *v1;
  v3 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  *(v0 + 112) = *(v2 + v3);

  return _swift_task_switch(sub_100BDE0DC, 0, 0);
}

uint64_t sub_100BDE0DC()
{
  v11 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_100B39DB4(*(v1 + 16), 0);
    v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
    sub_100B3C1F0(&v10, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
    v6 = v5;
    sub_100035F90();
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  *(v0 + 120) = v3;
  v7 = **(v0 + 88);
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_100BDE21C;

  return sub_100FF846C(v3, v7);
}

uint64_t sub_100BDE21C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100BDE39C, 0, 0);
  }

  else
  {
    sub_100005070(v4 + 16);
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_100BDE39C()
{
  sub_100005070(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BDE400(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_100BDE420, 0, 0);
}

uint64_t sub_100BDE420()
{
  AppDependency.wrappedValue.getter();
  v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[6] = &off_1018AD9D0;
  v0[12] = sub_100020E58(v0 + 2, &type metadata for CRLBoardLibraryProvidingDependency);
  v0[13] = sub_100020E58(v0 + 2, v0[5]);
  type metadata accessor for MainActor();
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BDE4F0, v2, v1);
}

uint64_t sub_100BDE4F0()
{
  v1 = *(v0 + 104);

  v2 = *v1;
  v3 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  *(v0 + 120) = *(v2 + v3);

  return _swift_task_switch(sub_100BDE58C, 0, 0);
}

uint64_t sub_100BDE58C()
{
  v11 = v0;
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_100B39DB4(*(v1 + 16), 0);
    v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
    sub_100B3C1F0(&v10, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
    v6 = v5;
    sub_100035F90();
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  *(v0 + 128) = v3;
  v7 = **(v0 + 96);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_100BDE6CC;

  return sub_100FF846C(v3, v7);
}

uint64_t sub_100BDE6CC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v4 = sub_100BDE930;
  }

  else
  {

    sub_100005070(v3 + 16);
    v4 = sub_100BDE804;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100BDE804()
{
  v1 = v0[18];
  if (*(v1 + 16) == 1)
  {
    v2 = v0[10];
    v3 = type metadata accessor for CRLBoardEntity();
    v4 = *(v3 - 8);
    sub_1006B05D0(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {

    v3 = type metadata accessor for CRLBoardEntity();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[10], v5, 1, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100BDE930()
{
  sub_100005070(v0 + 16);
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.appIntents;
  v2 = static os_log_type_t.debug.getter();
  sub_100005404(v1, &_mh_execute_header, v2, "No open boards found.", 21, 2, _swiftEmptyArrayStorage);
  v3 = type metadata accessor for CRLBoardEntity();
  (*(*(v3 - 8) + 56))(*(v0 + 80), 1, 1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100BDEA3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100796700;

  return sub_100BDDF50(v3);
}

uint64_t sub_100BDEAD4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_100BDE400(a1, v4);
}

void sub_100BDF0BC(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = v2;
  v75 = a1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v74 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for UUID();
  v6 = *(v85 - 8);
  __chkstk_darwin(v85);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v58 - v9;
  __chkstk_darwin(v10);
  v71 = &v58 - v11;
  if (qword_1019F22B8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v12 = static OS_os_log.boardItemLifecycle;
  v13 = static os_log_type_t.default.getter();
  v70 = v12;
  sub_100005404(v12, &_mh_execute_header, v13, "🟢 CRLCommandInsertBoardItems commit() begin", 46, 0, _swiftEmptyArrayStorage);
  v14 = *(v3 + OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_boardItemsByIndex);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v64 = OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_container;
  v19 = (v16 + 63) >> 6;
  v68 = (v6 + 8);
  v69 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;

  v20 = 0;
  v67 = xmmword_10146CA70;
  v62 = v14;
  v63 = v3;
  v60 = v19;
  v61 = v14 + 64;
  while (v18)
  {
    if (!*(v14 + 16))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_8:
    v6 = v14;
    v21 = sub_1007C7EC0(*(*(v14 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v18))))));
    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }

    v6 = *(*(v14 + 56) + 8 * v21);
    if (v6 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 &= v18 - 1;
    if (v23)
    {
      if (v23 < 1)
      {
        goto LABEL_28;
      }

      v65 = v20;
      v66 = v18;
      v78 = *(v3 + v64);
      v76 = v6 & 0xC000000000000001;
      v77 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;

      v24 = 0;
      v79 = v23;
      v80 = v6;
      do
      {
        if (v76)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v6 + 8 * v24 + 32);
        }

        v26 = v25;
        v82 = v24 + 1;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v67;
        v28 = v71;
        (*((swift_isaMask & *v26) + 0x88))();
        v29 = UUID.uuidString.getter();
        v31 = v30;
        v84 = *v68;
        v84(v28, v85);
        *(inited + 56) = &type metadata for String;
        v32 = sub_1000053B0();
        *(inited + 64) = v32;
        *(inited + 32) = v29;
        v83 = inited + 32;
        *(inited + 40) = v31;
        v33 = v26;
        v81 = v33;
        v34 = [v33 description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v32;
        *(inited + 72) = v35;
        *(inited + 80) = v37;
        v38 = v78;
        v39 = v72;
        (*(**&v78[v77] + 264))();
        v40 = UUID.uuidString.getter();
        v42 = v41;
        v84(v39, v85);
        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v32;
        *(inited + 112) = v40;
        *(inited + 120) = v42;
        v43 = v38;
        v44 = [v43 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        *(inited + 176) = &type metadata for String;
        *(inited + 184) = v32;
        *(inited + 152) = v45;
        *(inited + 160) = v47;
        v48 = *(v75 + v69);
        v49 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        v50 = v48 + v49;
        v51 = v74;
        sub_1005E2B78(v50, v74);
        sub_1005B981C(&unk_1019F5250);
        v52 = v73;
        CRRegister.wrappedValue.getter();
        sub_1005E2BDC(v51);
        v53 = UUID.uuidString.getter();
        v55 = v54;
        v84(v52, v85);
        *(inited + 216) = &type metadata for String;
        *(inited + 224) = v32;
        *(inited + 192) = v53;
        *(inited + 200) = v55;
        v24 = v82;
        v56 = static os_log_type_t.default.getter();
        sub_100005404(v70, &_mh_execute_header, v56, "🟢 CRLCommandInsertBoardItems commit() add new %{public}@%{public}@ to parent %{public}@%{public}@. Board: %{public}@", 119, 0, inited);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v6 = v80;
      }

      while (v79 != v24);

      v14 = v62;
      v3 = v63;
      v19 = v60;
      v15 = v61;
      v20 = v65;
      v18 = v66;
    }
  }

  while (1)
  {
    v57 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v57 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v57);
    ++v20;
    if (v18)
    {
      v20 = v57;
      if (*(v14 + 16))
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  sub_100971EFC(v14, v59);
}

uint64_t sub_100BDF7F4()
{
}

id sub_100BDF848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandInsertBoardItems();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100BDF900()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_actionString);

  return v1;
}

id sub_100BDF940(uint64_t a1, uint64_t a2)
{
  inserted = type metadata accessor for CRLCommandInsertBoardItems();
  v5 = objc_allocWithZone(inserted);
  v6 = &v5[OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_actionString];
  v7 = [objc_opt_self() mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *v6 = v12;
  v6[1] = v14;
  *&v5[OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_container] = a1;
  *&v5[OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_boardItemsByIndex] = a2;
  v16.receiver = v5;
  v16.super_class = inserted;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_100BDFA98(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A039D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100BDFB48(uint64_t a1)
{
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000541BC(a1, v4, type metadata accessor for CRLSELibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v9 = sub_1005B981C(&unk_101A14AE0);

    v10 = *(v9 + 64);
    (*(v6 + 32))(v8, v4, v5);
    sub_10000CAAC(&v4[v10], &qword_101A0A320);
    v11 = static UUID.== infix(_:_:)();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_1000559C8(v4, type metadata accessor for CRLSELibraryViewModel.Item);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100BDFD3C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v56 = v50 - v3;
  v4 = sub_1005B981C(&qword_101A14A78);
  __chkstk_darwin(v4 - 8);
  v58 = v50 - v5;
  v57 = type metadata accessor for CRLSEImportManifest(0);
  v59 = *(v57 - 8);
  v6 = __chkstk_darwin(v57);
  v53 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v7;
  __chkstk_darwin(v6);
  v55 = v50 - v8;
  v60 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v60 - 8);
  __chkstk_darwin(v60);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for URL();
  v66 = *(v67 - 8);
  v12 = __chkstk_darwin(v67);
  v51 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[1] = v13;
  __chkstk_darwin(v12);
  v15 = v50 - v14;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v65 = PropertyListDecoder.init()();
  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlSharingExtension;
  v62 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v61 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v18 = URL.relativeString.getter();
  v20 = v19;
  *(inited + 56) = &type metadata for String;
  v63 = sub_1000053B0();
  *(inited + 64) = v63;
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  v21 = static os_log_type_t.debug.getter();
  v64 = v16;
  sub_100005404(v16, &_mh_execute_header, v21, "Beginning Import for %@", 23, 2, inited);
  swift_setDeallocating();
  v22 = a1;
  sub_100005070(inited + 32);
  strcpy(v68, "Manifest.plist");
  v68[15] = -18;
  v23 = v60;
  (*(v9 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v60);
  sub_100017CD8();
  URL.appending<A>(path:directoryHint:)();
  (*(v9 + 8))(v11, v23);
  v24 = Data.init(contentsOf:options:)();
  v26 = v25;
  sub_100055EC4(&unk_101A14A80, type metadata accessor for CRLSEImportManifest);
  v27 = v58;
  v28 = v57;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v29 = v67;
  v60 = v24;
  v31 = v59 + 56;
  (*(v59 + 7))(v27, 0, 1, v28);
  v59 = type metadata accessor for CRLSEImportManifest;
  v32 = v55;
  sub_100055654(v27, v55, type metadata accessor for CRLSEImportManifest);
  v33 = swift_initStackObject();
  v62 = v26;
  v34 = v33;
  *(v33 + 16) = v61;
  v35 = URL.relativeString.getter();
  v36 = v63;
  v34[7] = &type metadata for String;
  v34[8] = v36;
  v34[4] = v35;
  v34[5] = v37;
  v38 = static os_log_type_t.debug.getter();
  sub_100005404(v64, &_mh_execute_header, v38, "Manifest file loaded %@", 23, 2, v34);
  swift_setDeallocating();
  sub_100005070((v34 + 4));
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  v40 = v32;
  v41 = v53;
  sub_1000541BC(v40, v53, type metadata accessor for CRLSEImportManifest);
  v42 = v66;
  v43 = v51;
  (*(v66 + 16))(v51, v22, v29);
  v44 = (v31[24] + 32) & ~v31[24];
  v45 = (v52 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v42 + 80) + v45 + 8) & ~*(v42 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  sub_100055654(v41, v47 + v44, v59);
  v48 = v54;
  *(v47 + v45) = v54;
  (*(v42 + 32))(v47 + v46, v43, v29);
  v49 = v48;
  sub_10064191C(0, 0, v56, &unk_10149F0C0, v47);
  sub_10002640C(v60, v62);

  sub_1000559C8(v55, type metadata accessor for CRLSEImportManifest);
  return (*(v42 + 8))(v15, v29);
}

uint64_t sub_100BE0660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[66] = a6;
  v6[65] = a5;
  v6[64] = a4;
  type metadata accessor for CRLBoardCRDTData(0);
  v6[67] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0);
  v6[68] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33D0);
  v6[69] = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0);
  v6[70] = swift_task_alloc();
  v7 = _s5BoardVMa(0);
  v6[71] = v7;
  v6[72] = *(v7 - 8);
  v6[73] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6990);
  v6[76] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[77] = v8;
  v6[78] = *(v8 - 8);
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v6[82] = v9;
  v6[83] = *(v9 - 8);
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();

  return _swift_task_switch(sub_100BE0974, 0, 0);
}

uint64_t sub_100BE0974()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  sub_10000BE14(*(v0 + 512), v3, &qword_1019F6990);
  v4 = (*(v1 + 48))(v3, 1, v2);
  *(v0 + 896) = v4;
  if (v4 == 1)
  {
    v5 = *(v0 + 680);
    v6 = *(v0 + 640);
    v7 = *(v0 + 600);
    v8 = *(v0 + 520);
    v9 = *(v0 + 512);
    sub_10000CAAC(*(v0 + 608), &qword_1019F6990);
    UUID.init()();
    sub_10084BD4C(v6, 0, 0xE000000000000000, v5);
    v10 = *(v8 + OBJC_IVAR____TtC8Freeform13CRLSEImporter_boardLibrary);
    *(v0 + 688) = v10;
    v11 = *(v10 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
    *(v0 + 696) = v11;
    v12 = (v9 + *(type metadata accessor for CRLSEImportManifest(0) + 24));
    v13 = *v12;
    v14 = v12[1];
    v15 = sub_1005B981C(&qword_1019F3480);
    v16 = *(*(v15 - 8) + 56);
    v16(v7, 1, 5, v15);
    *(v0 + 704) = sub_1007B1254(v13, v14, v7, 0, v11, 0);
    *(v0 + 712) = v17;
    v26 = *(v0 + 592);
    sub_1000559C8(*(v0 + 600), type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v16(v26, 1, 5, v15);
    type metadata accessor for MainActor();
    *(v0 + 736) = static MainActor.shared.getter();
    v27 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 744) = v27;
    *(v0 + 752) = v28;
    v29 = v27;
    v30 = v28;
    v31 = sub_100BE1718;
    v32 = v29;
  }

  else
  {
    v18 = *(v0 + 648);
    v19 = *(v0 + 632);
    v20 = *(v0 + 624);
    v21 = *(v0 + 616);
    v22 = *(v0 + 512);
    (*(v20 + 32))(v18, *(v0 + 608), v21);
    (*(v20 + 16))(v19, v18, v21);
    v23 = (v22 + *(type metadata accessor for CRLSEImportManifest(0) + 20));
    if (v23[1])
    {
      v24 = *v23;
      v25 = v23[1];
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    v35 = *(v0 + 632);
    v36 = *(v0 + 520);

    sub_10084BD4C(v35, v24, v25, v34);
    sub_100055654(v34, v33, type metadata accessor for CRLBoardIdentifier);
    *(v0 + 720) = *(v36 + OBJC_IVAR____TtC8Freeform13CRLSEImporter_boardLibrary);
    type metadata accessor for MainActor();
    *(v0 + 728) = static MainActor.shared.getter();
    v37 = dispatch thunk of Actor.unownedExecutor.getter();
    v39 = v38;
    v31 = sub_100BE0FA0;
    v32 = v37;
    v30 = v39;
  }

  return _swift_task_switch(v31, v32, v30);
}

uint64_t sub_100BE0FA0()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 560);

  sub_1010AB99C(v1, v2);

  return _swift_task_switch(sub_100BE1074, 0, 0);
}

uint64_t sub_100BE1074()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  (*(v0[72] + 56))(v3, 0, 1, v2);
  sub_100055654(v3, v1, _s5BoardVMa);
  sub_10000BE14(v1 + *(v2 + 80), v4, &qword_1019F33D0);
  v5 = _s5BoardV13ShareMetadataVMa(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  v7 = v0[69];
  if (v6 == 1)
  {
    sub_10000CAAC(v7, &qword_1019F33D0);
LABEL_4:
    v9 = v0[81];
    v10 = v0[78];
    v11 = v0[77];
    sub_1000559C8(v0[73], _s5BoardVMa);
    (*(v10 + 8))(v9, v11);
    v0[98] = v0[90];
    v12 = v0[64];
    v13 = type metadata accessor for CRLSEImportManifest(0);
    v0[99] = sub_100BE3A38(*(v12 + *(v13 + 28)));
    v0[100] = v14;
    v15 = swift_task_alloc();
    v0[101] = v15;
    *v15 = v0;
    v15[1] = sub_100BE20B4;
    v16 = v0[85];

    return sub_1010AF408(v16);
  }

  v8 = *v7;
  sub_1000559C8(v7, _s5BoardV13ShareMetadataVMa);
  if (v8)
  {
    goto LABEL_4;
  }

  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.crlSharingExtension;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v20 = UUID.uuidString.getter();
  v22 = v21;
  *(inited + 56) = &type metadata for String;
  v23 = sub_1000053B0();
  *(inited + 64) = v23;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = URL.relativeString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v23;
  *(inited + 72) = v24;
  *(inited + 80) = v25;
  v26 = static os_log_type_t.debug.getter();
  sub_100005404(v18, &_mh_execute_header, v26, "Can't import content to read-only board (%@), deleting %@", 57, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v27 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v0[63] = 0;
  v31 = [v27 removeItemAtURL:v29 error:v0 + 63];

  v32 = v0[63];
  v33 = v0[85];
  v34 = v0[81];
  v35 = v0[78];
  v36 = v0[77];
  v37 = v0[73];
  if (v31)
  {
    v38 = v32;
    sub_1000559C8(v37, _s5BoardVMa);
    (*(v35 + 8))(v34, v36);
    sub_1000559C8(v33, type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    v39 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000559C8(v37, _s5BoardVMa);
    (*(v35 + 8))(v34, v36);
    sub_1000559C8(v33, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2148 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlSharingExtension;
    sub_1005B981C(&qword_1019F54E0);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v42 = Error.publicDescription.getter(v0[49], v0[50]);
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v23;
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    swift_getErrorValue();
    v44 = Error.fullDescription.getter(v0[52]);
    *(v41 + 96) = &type metadata for String;
    *(v41 + 104) = v23;
    *(v41 + 72) = v44;
    *(v41 + 80) = v45;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v46, "Error importing sharing extension content %{public}@ <%@>", 57, 2, v41);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_100BE37AC();
  }

  v47 = v0[1];

  return v47();
}

uint64_t sub_100BE1718()
{
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Creating new board with Board UUID (%@).", 40, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = swift_task_alloc();
  v0[95] = v7;
  *v7 = v0;
  v7[1] = sub_100BE18D0;
  v8 = v0[89];
  v9 = v0[88];
  v10 = v0[85];
  v11 = v0[74];

  return sub_1010C0B98(v10, v11, v9, v8, 0);
}

uint64_t sub_100BE18D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 768) = v1;

  if (v1)
  {
    v5 = v4[94];
    v6 = v4[93];
    v7 = sub_100BE1A48;
  }

  else
  {
    v4[97] = a1;
    v5 = v4[94];
    v6 = v4[93];
    v7 = sub_100BE1DAC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100BE1A48()
{
  v1 = *(v0 + 592);

  sub_1000559C8(v1, type metadata accessor for CRLBoardLibraryViewModel.Filter);

  return _swift_task_switch(sub_100BE1AFC, 0, 0);
}

uint64_t sub_100BE1AFC()
{
  v1 = *(v0 + 680);

  sub_1000559C8(v1, type metadata accessor for CRLBoardIdentifier);
  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlSharingExtension;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v4 = Error.publicDescription.getter(*(v0 + 392), *(v0 + 400));
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 64) = v7;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  swift_getErrorValue();
  v8 = Error.fullDescription.getter(*(v0 + 416));
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "Error importing sharing extension content %{public}@ <%@>", 57, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_100BE37AC();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100BE1DAC()
{
  v1 = *(v0 + 592);

  sub_1000559C8(v1, type metadata accessor for CRLBoardLibraryViewModel.Filter);

  return _swift_task_switch(sub_100BE1E60, 0, 0);
}

uint64_t sub_100BE1E60()
{
  v1 = v0[97];
  v2 = v0[83];
  v20 = v0[87];
  v21 = v0[82];
  v3 = v0[80];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[65];
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1000541BC(v8 + v9, v5, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_1000559C8(v5, type metadata accessor for CRLBoardCRDTData);
  v10 = (*&v1[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v3, v11, v12, v4);

  (*(v2 + 56))(v4, 0, 1, v21);
  v13 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_lastImportedBoardIdentifier;
  swift_beginAccess();
  sub_10002C638(v4, v6 + v13, &unk_1019F52D0);
  swift_endAccess();
  v0[98] = v0[86];
  v14 = v0[64];
  v15 = type metadata accessor for CRLSEImportManifest(0);
  v0[99] = sub_100BE3A38(*(v14 + *(v15 + 28)));
  v0[100] = v16;
  v17 = swift_task_alloc();
  v0[101] = v17;
  *v17 = v0;
  v17[1] = sub_100BE20B4;
  v18 = v0[85];

  return sub_1010AF408(v18);
}

uint64_t sub_100BE20B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 816) = a1;
  *(v3 + 824) = v1;

  if (v1)
  {

    v4 = sub_100BE2E0C;
  }

  else
  {
    v4 = sub_100BE2214;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100BE2214()
{
  v1 = v0[99];
  v2 = *(*(v0[102] + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
  v0[104] = v2;
  v3 = v2;
  v0[105] = sub_100BE4100(v1, v3);

  v4 = swift_task_alloc();
  v0[106] = v4;
  *v4 = v0;
  v4[1] = sub_100BE232C;
  v5 = v0[100];

  return sub_100BE4664(v5, v3);
}

uint64_t sub_100BE232C(uint64_t a1)
{
  *(*v1 + 856) = a1;

  return _swift_task_switch(sub_100BE2478, 0, 0);
}

uint64_t sub_100BE2478()
{
  v3 = v0[105];
  sub_100798D00(v0[107]);
  v0[108] = v3;
  v1 = swift_task_alloc();
  v0[109] = v1;
  *v1 = v0;
  v1[1] = sub_100BE255C;

  return sub_100FE17C4(v3);
}

uint64_t sub_100BE255C()
{

  return _swift_task_switch(sub_100BE26A0, 0, 0);
}

uint64_t sub_100BE26A0()
{
  type metadata accessor for MainActor();
  *(v0 + 880) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BE2768, v2, v1);
}

uint64_t sub_100BE2768()
{
  v1 = v0[103];
  v2 = v0[102];

  sub_1010AFB50(v2);
  v0[111] = v1;
  if (v1)
  {
    v3 = sub_100BE30B0;
  }

  else
  {
    v3 = sub_100BE2830;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100BE2830()
{
  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlSharingExtension;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = URL.relativeString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v1, &_mh_execute_header, v7, "Shared content imported, deleting %@", 36, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  *(v0 + 496) = 0;
  LODWORD(inited) = [v8 removeItemAtURL:v10 error:v0 + 496];

  v12 = *(v0 + 496);
  if (inited)
  {
    v13 = *(v0 + 832);
    v14 = *(v0 + 816);
    v15 = *(v0 + 680);
    if (*(v0 + 896) == 1)
    {
      v16 = v12;
      sub_1005B981C(&qword_101A14A90);
      sub_100BE4C5C();
      Subject<>.send()();

      sub_1000559C8(v15, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      v28 = v12;
      sub_1000559C8(v15, type metadata accessor for CRLBoardIdentifier);
    }
  }

  else
  {
    v17 = *(v0 + 832);
    v18 = *(v0 + 816);
    v19 = *(v0 + 680);
    v20 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000559C8(v19, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2148 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlSharingExtension;
    sub_1005B981C(&qword_1019F54E0);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v23 = Error.publicDescription.getter(*(v0 + 392), *(v0 + 400));
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = v6;
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    swift_getErrorValue();
    v25 = Error.fullDescription.getter(*(v0 + 416));
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v6;
    *(v22 + 72) = v25;
    *(v22 + 80) = v26;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v27, "Error importing sharing extension content %{public}@ <%@>", 57, 2, v22);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_100BE37AC();
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100BE2CBC()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  (*(v0[78] + 8))(v0[81], v0[77]);
  (*(v1 + 56))(v3, 1, 1, v2);
  sub_10000CAAC(v3, &unk_1019FA3E0);
  v0[98] = v0[90];
  v4 = v0[64];
  v5 = type metadata accessor for CRLSEImportManifest(0);
  v0[99] = sub_100BE3A38(*(v4 + *(v5 + 28)));
  v0[100] = v6;
  v7 = swift_task_alloc();
  v0[101] = v7;
  *v7 = v0;
  v7[1] = sub_100BE20B4;
  v8 = v0[85];

  return sub_1010AF408(v8);
}

uint64_t sub_100BE2E0C()
{
  sub_1000559C8(v0[85], type metadata accessor for CRLBoardIdentifier);
  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlSharingExtension;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v3 = Error.publicDescription.getter(v0[49], v0[50]);
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.fullDescription.getter(v0[52]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Error importing sharing extension content %{public}@ <%@>", 57, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_100BE37AC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100BE30B0()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 680);

  sub_1000559C8(v2, type metadata accessor for CRLBoardIdentifier);
  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlSharingExtension;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v5 = Error.publicDescription.getter(*(v0 + 392), *(v0 + 400));
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  swift_getErrorValue();
  v9 = Error.fullDescription.getter(*(v0 + 416));
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "Error importing sharing extension content %{public}@ <%@>", 57, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_100BE37AC();

  v12 = *(v0 + 8);

  return v12();
}

id sub_100BE3644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSEImporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100BE37AC()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100BE38CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLSEImportManifest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D3D4;

  return sub_100BE0660(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

char *sub_100BE3A38(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v49 - v10;
  v11 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v66 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v65 = &v49 - v18;
  v19 = type metadata accessor for CRLSEManifestItem(0);
  __chkstk_darwin(v19);
  v68 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = v15;
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    v60 = (v24 + 32);
    v61 = (v24 + 48);
    v54 = (v24 + 16);
    v55 = v24;
    v53 = v24 + 8;
    v58 = (v6 + 32);
    v59 = (v6 + 48);
    v52 = (v6 + 16);
    v70 = v5;
    v57 = v6;
    v51 = v6 + 8;
    v71 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    v63 = v20;
    v64 = v4;
    v56 = v8;
    v27 = v68;
    v28 = v20;
    v69 = v14;
    v62 = v26;
    v50 = v13;
    do
    {
      v73 = v23;
      sub_1000541BC(v25, v27, type metadata accessor for CRLSEManifestItem);
      sub_10000BE14(v27 + *(v28 + 24), v13, &qword_1019FC880);
      if ((*v61)(v13, 1, v14) == 1)
      {
        v29 = v13;
        sub_10000CAAC(v13, &qword_1019FC880);
        v30 = v28;
        v31 = v4;
        v32 = v70;
      }

      else
      {
        v33 = v8;
        v34 = *v60;
        v35 = v65;
        (*v60)(v65, v13, v14);
        (*v54)(v66, v35, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_100B38A58(0, *(v71 + 2) + 1, 1, v71);
        }

        v37 = *(v71 + 2);
        v36 = *(v71 + 3);
        if (v37 >= v36 >> 1)
        {
          v71 = sub_100B38A58(v36 > 1, v37 + 1, 1, v71);
        }

        v29 = v13;
        v38 = v55;
        v39 = v69;
        (*(v55 + 8))(v65, v69);
        v40 = v71;
        *(v71 + 2) = v37 + 1;
        v34(&v40[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37], v66, v39);
        v30 = v63;
        v31 = v64;
        v32 = v70;
        v8 = v33;
      }

      v28 = v30;
      v27 = v68;
      sub_10000BE14(&v68[*(v30 + 28)], v31, &unk_1019F33C0);
      if ((*v59)(v31, 1, v32) == 1)
      {
        sub_1000559C8(v27, type metadata accessor for CRLSEManifestItem);
        sub_10000CAAC(v31, &unk_1019F33C0);
        v13 = v29;
        v14 = v69;
        v4 = v31;
      }

      else
      {
        v41 = *v58;
        v42 = v67;
        (*v58)(v67, v31, v32);
        (*v52)(v8, v42, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_100B364FC(0, *(v72 + 2) + 1, 1, v72);
        }

        v44 = *(v72 + 2);
        v43 = *(v72 + 3);
        if (v44 >= v43 >> 1)
        {
          v72 = sub_100B364FC(v43 > 1, v44 + 1, 1, v72);
        }

        v45 = v57;
        v46 = v70;
        (*(v57 + 8))(v67, v70);
        sub_1000559C8(v27, type metadata accessor for CRLSEManifestItem);
        v47 = v72;
        *(v72 + 2) = v44 + 1;
        v8 = v56;
        v41(&v47[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44], v56, v46);
        v28 = v63;
        v4 = v64;
        v13 = v50;
        v14 = v69;
      }

      v25 += v62;
      v23 = v73 - 1;
    }

    while (v73 != 1);
  }

  else
  {
    v71 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
  }

  return v71;
}

uint64_t sub_100BE4100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  v33 = v14;
  if (v14)
  {
    v40 = a2;
    v41 = v6;
    v43 = _swiftEmptyArrayStorage;
    v39 = v7;
    specialized ContiguousArray.reserveCapacity(_:)();
    v38 = sub_100006370(0, &qword_1019F76F0);
    v37 = objc_opt_self();
    sub_1006950BC(v44);
    v46[12] = v44[12];
    v46[13] = v44[13];
    v46[14] = v44[14];
    v46[8] = v44[8];
    v46[9] = v44[9];
    v46[10] = v44[10];
    v46[11] = v44[11];
    v46[4] = v44[4];
    v46[5] = v44[5];
    v46[6] = v44[6];
    v46[7] = v44[7];
    v46[0] = v44[0];
    v46[1] = v44[1];
    v16 = *(v8 + 16);
    v17 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
    v35 = (v8 + 8);
    v36 = v16;
    v47 = v45;
    v46[2] = v44[2];
    v46[3] = v44[3];
    v42 = v8 + 16;
    v34 = *(v8 + 72);
    v18 = v41;
    do
    {
      v19 = v39;
      v20 = v36;
      v36(v13, v17, v39);
      v20(v10, v13, v19);
      v21 = NSAttributedString.init(_:)();
      v22 = [v37 pathSourceForShapeType:0 naturalSize:sub_10057DBD4(0)];
      v23 = type metadata accessor for CRLWPStorageCRDTData(0);
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      v24 = v10;
      v25 = v22;
      sub_1011133FC(0, 0, v22, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v21, v18, v46, 0, 0, 0, 0, 1u);

      sub_10000CAAC(v18, &unk_101A0B1C0);
      (*v35)(v13, v19);
      type metadata accessor for CRLWPShapeItem();
      swift_dynamicCastClassUnconditional();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v10 = v24;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += v34;
      --v14;
    }

    while (v14);
    v15 = v43;
  }

  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  v26 = static OS_os_log.crlSharingExtension;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v28 = v33;
  if (v15 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v29;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v28;
  v30 = static os_log_type_t.debug.getter();
  sub_100005404(v26, &_mh_execute_header, v30, "%d of %d Text items imported", 28, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (v15 >> 62)
  {
    type metadata accessor for CRLBoardItem(0);

    v31 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CRLBoardItem(0);
    v31 = v15;
  }

  return v31;
}

uint64_t sub_100BE4664(uint64_t a1, uint64_t a2)
{
  *(v2 + 432) = a1;
  *(v2 + 440) = a2;
  return _swift_task_switch(sub_100BE4684, 0, 0);
}

uint64_t sub_100BE4684()
{
  v1 = v0[55];
  v2 = objc_allocWithZone(CRLMultipleItemImporter);
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithURLs:isa boardItemFactory:v1];
  v0[56] = v4;

  v0[2] = v0;
  v0[3] = sub_100BE47EC;
  v5 = swift_continuation_init();
  v0[45] = sub_1005B981C(&qword_101A14AA0);
  v0[38] = _NSConcreteStackBlock;
  v0[39] = *"";
  v0[40] = sub_100675B28;
  v0[41] = &unk_101899930;
  v0[42] = v5;
  [v4 importBoardItemsWithCompletionHandler:v0 + 38];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100BE47EC()
{

  return _swift_task_switch(sub_100BE48CC, 0, 0);
}

uint64_t sub_100BE48CC()
{
  if (qword_1019F2148 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v1 = v0[56];
    v30 = static OS_os_log.crlSharingExtension;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v3 = [v1 boardItems];
    type metadata accessor for CRLBoardItem(0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v0[56];
    v7 = v0[54];

    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v5;
    v8 = *(v7 + 16);
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = v8;
    v9 = static os_log_type_t.debug.getter();
    sub_100005404(v30, &_mh_execute_header, v9, "%d of %d URL items imported", 27, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v10 = [v6 errors];
    sub_1005B981C(&unk_1019F6B40);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v11 + 16);
    if (!v29)
    {
      break;
    }

    v12 = 0;
    while (v12 < *(v11 + 16))
    {
      v13 = v12 + 1;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_10146BDE0;
      swift_getErrorValue();
      v15 = v0[47];
      v16 = v0[48];
      swift_errorRetain();
      v17 = Error.publicDescription.getter(v15, v16);
      v19 = v18;
      *(v14 + 56) = &type metadata for String;
      v20 = sub_1000053B0();
      *(v14 + 64) = v20;
      *(v14 + 32) = v17;
      *(v14 + 40) = v19;
      swift_getErrorValue();
      v21 = Error.fullDescription.getter(v0[50]);
      *(v14 + 96) = &type metadata for String;
      *(v14 + 104) = v20;
      *(v14 + 72) = v21;
      *(v14 + 80) = v22;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v23, "Error creating board items from sharing extension content %{public}@ <%@>", 73, 2, v14);

      swift_setDeallocating();
      swift_arrayDestroy();
      v12 = v13;
      if (v29 == v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:
  v24 = v0[56];

  v25 = [v24 boardItems];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v0[1];

  return v27(v26);
}

unint64_t sub_100BE4C5C()
{
  result = qword_101A14A98;
  if (!qword_101A14A98)
  {
    sub_1005C4E5C(&qword_101A14A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14A98);
  }

  return result;
}

unint64_t sub_100BE4CC0()
{
  result = qword_101A14AB8;
  if (!qword_101A14AB8)
  {
    sub_1005C4E5C(&qword_101A14AB0);
    sub_100055EC4(&qword_101A14AC0, type metadata accessor for CRLSELibraryViewModel.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A14AB8);
  }

  return result;
}

uint64_t sub_100BE4E9C()
{
  v1 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = sub_1007CF108(), (v4 & 1) != 0))
  {
    sub_100601584(*(v2 + 56) + 32 * v3, v7);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    memset(v7, 0, 24);
    v7[3] = 1;
  }

  sub_10000CAAC(v7, &unk_1019F4D50);
  return v5;
}

id sub_100BE5038(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t))
{
  a4(v12, a3);
  v4 = v13;
  if (v13)
  {
    v5 = sub_100020E58(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100005070(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

double sub_100BE5174@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_1007CF108(), (v6 & 1) != 0))
  {
    sub_100601584(*(v4 + 56) + 32 * v5, v10);
    *(a1 + 24) = sub_1005B981C(&unk_1019F4D00);
    v7 = swift_allocObject();
    *a1 = v7;
    result = *v10;
    v9 = v10[1];
    *(v7 + 16) = v10[0];
    *(v7 + 32) = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100BE52F4(void (*a1)(uint64_t, __int128 *, char *))
{
  v14 = 0;
  v3 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = *(*(v4 + 48) + 8 * v11);
      sub_100601584(*(v4 + 56) + 32 * v11, &v15);
      if (v16 == 1)
      {
        break;
      }

      a1(v12, &v15, &v14);
      sub_10000CAAC(&v15, &unk_1019F4D00);
      if (v14 == 1)
      {
        break;
      }

      v7 &= v7 - 1;
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }
  }
}

id sub_100BE5530()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLPropertyMap();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100BE5598(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  v4 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a2 + 16;

  v12 = 0;
  v26 = v5;
  v27 = a2;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = *(*(v5 + 48) + 8 * v14);
      sub_100601584(*(v5 + 56) + 32 * v14, &v32);
      if (v33 == 1)
      {
        break;
      }

      sub_100601584(&v32, v30);
      v16 = v31;
      if (v31)
      {
        v17 = sub_100020E58(v30, v31);
        v28 = &v26;
        v18 = *(v16 - 8);
        v19 = __chkstk_darwin(v17);
        v21 = v11;
        v22 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v18 + 16))(v22, v19);
        v23 = _bridgeAnythingToObjectiveC<A>(_:)();
        v24 = v22;
        v11 = v21;
        (*(v18 + 8))(v24, v16);
        v5 = v26;
        a2 = v27;
        sub_100005070(v30);
      }

      else
      {
        v23 = 0;
      }

      (*(a2 + 16))(a2, v15, v23, &v29);
      swift_unknownObjectRelease();
      sub_10000CAAC(&v32, &unk_1019F4D00);
      if (v29)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t sub_100BE5840()
{
  sub_100BE5D8C();

  return swift_unknownObjectRetain();
}

id sub_100BE5B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPStyle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Class sub_100BE5B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = objc_allocWithZone(NSNumber);
      LODWORD(v6) = v4;
      [v5 initWithFloat:v6];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  sub_100006370(0, &qword_1019FF3E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

Class sub_100BE5C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(NSNumber) initWithBool:v4];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  sub_100006370(0, &qword_1019FF3E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t sub_100BE5D8C()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v24 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v24);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v10;
  v11 = sub_1005CF04C();
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 47;
  v13 = v24;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Requesting value for invalid property", 37, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:47 isFatal:0 format:v22 args:v19];

  return 0;
}

UIImage *sub_100BE612C(void *a1)
{
  [a1 size];
  v4 = v3;
  [v1 size];
  if (v4 <= v5)
  {
    v4 = v5;
  }

  [a1 size];
  v7 = v6;
  [v1 size];
  if (v7 > v8)
  {
    v8 = v7;
  }

  v9 = v4;
  UIGraphicsBeginImageContextWithOptions(*(&v8 - 1), 0, 0.0);
  [v1 size];
  v11 = v10 * 0.5;
  [a1 size];
  v13 = v11 - v12 * 0.5;
  [v1 size];
  v15 = v14 * 0.5;
  [a1 size];
  v17 = v15 - v16 * 0.5;
  [a1 size];
  v19 = v18;
  [a1 size];
  [a1 drawInRect:{v13, v17, v19, v20}];
  [v1 size];
  v22 = v21;
  [v1 size];
  [v1 drawInRect:{0.0, 0.0, v22, v23}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v24;
}

id sub_100BE6294(uint64_t a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue);
  v4 = type metadata accessor for CRLTextInputModifierKeyMask();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v3;
  v16.receiver = v5;
  v16.super_class = v4;
  v6 = objc_msgSendSuper2(&v16, "init");
  v7 = *&v6[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue];

  v8 = *(a1 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue) & v7;
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v8;
  v15.receiver = v9;
  v15.super_class = v4;
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = objc_allocWithZone(v4);
  *&v11[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = 0;
  v14.receiver = v11;
  v14.super_class = v4;
  v12 = objc_msgSendSuper2(&v14, "init");
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {

    return 0;
  }

  else
  {
    sub_100BE69C8(a1);
  }

  return v10;
}

BOOL sub_100BE639C(void *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue;
  v7 = *(*v2 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue);
  v8 = type metadata accessor for CRLTextInputModifierKeyMask();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v7;
  v25.receiver = v9;
  v25.super_class = v8;
  v10 = objc_msgSendSuper2(&v25, "init");
  v11 = *&v10[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue];

  v12 = OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue;
  v13 = *(a2 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue) & v11;
  v14 = objc_allocWithZone(v8);
  *&v14[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v13;
  v24.receiver = v14;
  v24.super_class = v8;
  v15 = objc_msgSendSuper2(&v24, "init");
  v16 = static NSObject.== infix(_:_:)();
  if ((v16 & 1) == 0)
  {

    v17 = *&v5[v6];
    v15 = a2;

    v18 = *(a2 + v12) | v17;
    v19 = objc_allocWithZone(v8);
    *&v19[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v18;
    v23.receiver = v19;
    v23.super_class = v8;
    v20 = objc_msgSendSuper2(&v23, "init");

    *v3 = v20;
  }

  *a1 = v15;
  return (v16 & 1) == 0;
}

uint64_t sub_100BE64CC(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = sub_1005B981C(&qword_101A14BC8);
  __chkstk_darwin(v4);
  v27 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v24 - v7;
  v9 = type metadata accessor for RecognitionController.EducationPanelFeatures();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v24 - v15;
  v25 = *(v10 + 16);
  v26 = v2;
  v25(v12, v2, v9, v14);
  v24[1] = sub_100BE7C8C(&qword_101A14BD0, 255, &type metadata accessor for RecognitionController.EducationPanelFeatures);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v4;
  sub_100BE7C8C(&qword_101A14BD8, 255, &type metadata accessor for RecognitionController.EducationPanelFeatures);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 48);
  *v8 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v10 + 32))(&v8[v19], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v20 = v25;
    (v25)(&v8[v19], a2, v9);
    v20(v12, a2, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v27;
  sub_100BE7CD4(v8, v27);
  v22 = *v21;
  (*(v10 + 32))(v28, &v21[*(v17 + 48)], v9);
  return v22;
}

id sub_100BE67CC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue;
  v5 = *(*v1 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue);
  v6 = type metadata accessor for CRLTextInputModifierKeyMask();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v5;
  v23.receiver = v7;
  v23.super_class = v6;
  v8 = objc_msgSendSuper2(&v23, "init");
  v9 = *&v8[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue];

  v10 = OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue;
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue) & v9;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v11;
  v22.receiver = v12;
  v22.super_class = v6;
  v13 = objc_msgSendSuper2(&v22, "init");
  v14 = *&v3[v4];

  v15 = *(a1 + v10) | v14;
  v16 = objc_allocWithZone(v6);
  *&v16[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v15;
  v21.receiver = v16;
  v21.super_class = v6;
  *v1 = objc_msgSendSuper2(&v21, "init");
  v17 = objc_allocWithZone(v6);
  *&v17[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = 0;
  v20.receiver = v17;
  v20.super_class = v6;
  v18 = objc_msgSendSuper2(&v20, "init");
  LOBYTE(v6) = static NSObject.== infix(_:_:)();

  if (v6)
  {

    return 0;
  }

  return v13;
}

uint64_t sub_100BE6908(uint64_t a1)
{
  v3 = type metadata accessor for CRLTextInputModifierKeyMask();
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue);
  v5 = objc_allocWithZone(v3);
  *&v5[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v4;
  v14.receiver = v5;
  v14.super_class = v3;
  v6 = objc_msgSendSuper2(&v14, "init");
  v7 = *&v6[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue];

  v8 = *(a1 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue) & v7;
  v9 = objc_allocWithZone(v3);
  *&v9[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v8;
  v13.receiver = v9;
  v13.super_class = v3;
  v10 = objc_msgSendSuper2(&v13, "init");
  v11 = static NSObject.== infix(_:_:)();

  return v11 & 1;
}

void sub_100BE69C8(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue;
  v5 = *(*v1 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue);
  v6 = type metadata accessor for CRLTextInputModifierKeyMask();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v5;
  v19.receiver = v7;
  v19.super_class = v6;
  v8 = objc_msgSendSuper2(&v19, "init");
  v9 = *&v8[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue];

  v10 = *(a1 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue) ^ v9;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v10;
  v18.receiver = v11;
  v18.super_class = v6;
  v12 = objc_msgSendSuper2(&v18, "init");
  v13 = *&v3[v4];

  v14 = *(v12 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue) & v13;
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v14;
  v17.receiver = v15;
  v17.super_class = v6;
  v16 = objc_msgSendSuper2(&v17, "init");

  *v1 = v16;
}

id sub_100BE6B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for CRLTextInputModifierKeyMask();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *a3 = result;
  return result;
}

uint64_t sub_100BE6CCC(uint64_t a1, void *a2, objc_class *a3, void *a4)
{
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CE00;
  if (*a2 != -1)
  {
LABEL_17:
    swift_once();
  }

  v7 = *a3;
  *(inited + 32) = *a3;
  v8 = qword_1019F1E68;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v35 = inited + 32;
  v10 = qword_101AD77E8;
  *(inited + 40) = qword_101AD77E8;
  a3 = type metadata accessor for CRLTextInputModifierKeyMask();
  v11 = objc_allocWithZone(a3);
  *&v11[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = 0;
  v39.receiver = v11;
  v39.super_class = a3;
  v12 = v10;
  v13 = objc_msgSendSuper2(&v39, "init");
  v14 = 0;
  v33 = inited & 0xFFFFFFFFFFFFFF8;
  v34 = inited & 0xC000000000000001;
  do
  {
    while (1)
    {
      if (v34)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v15 = *(v35 + 8 * v14);
      }

      v16 = v15;
      v17 = v14 + 1;
      inited = OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue;
      v18 = *&v13[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue];
      v19 = objc_allocWithZone(a3);
      *&v19[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v18;
      v38.receiver = v19;
      v38.super_class = a3;
      v20 = objc_msgSendSuper2(&v38, "init");
      v21 = *&v20[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue];

      v22 = OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue;
      v23 = *(v16 + OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue) & v21;
      v24 = objc_allocWithZone(a3);
      *&v24[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = v23;
      v37.receiver = v24;
      v37.super_class = a3;
      v25 = objc_msgSendSuper2(&v37, "init");
      v26 = static NSObject.== infix(_:_:)();

      if ((v26 & 1) == 0)
      {
        break;
      }

      ++v14;
      if (v17 == 2)
      {
        goto LABEL_15;
      }
    }

    v27 = *&v13[inited];
    v28 = v16;

    inited = *(v16 + v22) | v27;
    v29 = objc_allocWithZone(a3);
    *&v29[OBJC_IVAR____TtC8Freeform27CRLTextInputModifierKeyMask_rawValue] = inited;
    v36.receiver = v29;
    v36.super_class = a3;
    v13 = objc_msgSendSuper2(&v36, "init");
  }

  while (v14++ != 1);
LABEL_15:
  swift_setDeallocating();
  result = swift_arrayDestroy();
  *a4 = v13;
  return result;
}