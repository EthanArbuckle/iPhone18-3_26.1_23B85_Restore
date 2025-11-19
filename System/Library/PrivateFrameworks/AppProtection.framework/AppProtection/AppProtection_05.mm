size_t sub_185B3D0C8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_185B3D2A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_185B6866C();
  sub_185B67EEC();
  v7 = sub_185B686AC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_185B6859C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_185B4E2E8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_185B3D4D0(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_185B3D3E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_185B6865C();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_185B4E444();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_185B3D694(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t sub_185B3D4D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_185B682EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_185B6866C();

        sub_185B67EEC();
        v15 = sub_185B686AC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_185B3D694(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_185B682EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_185B6865C() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_185B3D81C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_185B682EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_185B6866C();

      sub_185B67EEC();
      v13 = sub_185B686AC();

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

unint64_t sub_185B3D9CC(int64_t a1, uint64_t a2)
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_185B682EC();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v4);
      v24 = *(a2 + 40);
      sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8]);
      v25 = sub_185B67DAC();
      result = (*v40)(v10, v4);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(type metadata accessor for AuthAssertion() - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_185B3DD10(int64_t a1, uint64_t a2)
{
  v44 = sub_185B67AFC();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v44, v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v8;
    v14 = sub_185B682EC();
    v15 = v44;
    v8 = v45;
    v16 = v13;
    v42 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v40 = a2 + 64;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v43;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v41(v43, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8]);
      v27 = sub_185B67DAC();
      result = (*v39)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v42)
      {
        if (v28 >= v42 && a1 >= v28)
        {
LABEL_15:
          v8 = v45;
          v31 = *(v45 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v45;
            v19 = v20;
            v16 = v23;
            v10 = v40;
          }

          else
          {
            v10 = v40;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v45;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + 16 * a1);
          v34 = (v32 + 16 * v12);
          if (a1 != v12 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v42 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v40;
      v19 = v20;
      v8 = v45;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_185B3E030(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_185B682EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_185B6865C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
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
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

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

uint64_t sub_185B3E1A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_185AC9F40(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_185B51254();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_185B3D81C(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_185B3E24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_185AF6E20(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_185B513BC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_185B67AFC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for AuthAssertion();
    v22 = *(v15 - 8);
    sub_185B40E60(v14 + *(v22 + 72) * v8, a2, type metadata accessor for AuthAssertion);
    sub_185B3D9CC(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for AuthAssertion();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_185B3E3E8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v10);
    v12 = v19 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_185B3E844(v12, v9, v5, a2);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v15 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v15;
    goto LABEL_2;
  }

  v16 = swift_slowAlloc();
  v17 = v3;
  v18 = sub_185B3EF98(v16, v9, v5, a2);
  result = MEMORY[0x1865FE2F0](v16, -1, -1);
  if (!v17)
  {
    result = v18;
  }

LABEL_4:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185B3E554(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v11);
    v13 = v21 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v17 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v17;
    goto LABEL_2;
  }

  v18 = swift_slowAlloc();
  v19 = v5;
  v20 = sub_185B3F020(v18, v10, v6, a3);
  result = MEMORY[0x1865FE2F0](v18, -1, -1);
  if (!v19)
  {
    result = v20;
  }

LABEL_4:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185B3E6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v11);
    v13 = v20 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = sub_185B3EE08(v13, v10, a3, v6);
    if (v4)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v16 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v16;
    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = v4;
  v19 = sub_185B3F0A8(v17, v10, a3, v6);
  result = MEMORY[0x1865FE2F0](v17, -1, -1);
  if (!v18)
  {
    result = v19;
  }

LABEL_4:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185B3E844(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v46 = a2;
  v62 = a4;
  v47 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD480, &qword_185B6E810);
  v5 = *(*(v61 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v61, v6);
  v60 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v59 = &v45 - v10;
  v11 = type metadata accessor for AuthAssertion();
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v57 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_185B67AFC();
  v15 = *(*(v56 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v56, v16);
  v54 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v18;
  v20 = 0;
  v63 = a3;
  v21 = *(a3 + 64);
  v50 = a3 + 64;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v48 = 0;
  v49 = (v22 + 63) >> 6;
  v52 = v18 + 8;
  v53 = v18 + 16;
  while (v24)
  {
    v25 = __clz(__rbit64(v24));
    v64 = (v24 - 1) & v24;
LABEL_11:
    v28 = v25 | (v20 << 6);
    v29 = v63;
    v30 = v54;
    v31 = v55;
    v32 = *(v55 + 16);
    v33 = v56;
    v32(v54, v63[6] + *(v55 + 72) * v28, v56);
    v34 = v29[7];
    v35 = *(v58 + 72);
    v51 = v28;
    v36 = v34 + v35 * v28;
    v37 = v57;
    sub_185B40B18(v36, v57, type metadata accessor for AuthAssertion);
    v38 = v59;
    v32(v59, v30, v33);
    v39 = v61;
    sub_185B40B18(v37, &v38[*(v61 + 48)], type metadata accessor for AuthAssertion);
    v40 = v38;
    v41 = v60;
    sub_185B40C1C(v40, v60, &qword_1EA8CD480, &qword_185B6E810);
    v42 = v41 + *(v39 + 48);
    LODWORD(v39) = *(v42 + 16);
    sub_185B40AB8(v42, type metadata accessor for AuthAssertion);
    v43 = *(v31 + 8);
    v43(v41, v33);
    sub_185B40AB8(v37, type metadata accessor for AuthAssertion);
    result = (v43)(v30, v33);
    v24 = v64;
    if (v39 != v62)
    {
      *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
        return sub_185B3F138(v47, v46, v48, v63);
      }
    }
  }

  v26 = v20;
  while (1)
  {
    v20 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v20 >= v49)
    {
      return sub_185B3F138(v47, v46, v48, v63);
    }

    v27 = *(v50 + 8 * v20);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v64 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_185B3EC18(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = (*(a3 + 56) + 3 * v11);
    if (*v14 == 1 && (v14[1] & 1) == 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_185B3F7FC(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_185B3F7FC(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_185B3ED14(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 3 * v11 + 1) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_185B3F7FC(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_185B3F7FC(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B3EE08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, _BYTE *))
{
  v24 = 0;
  v23 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v27[0] = *v16;
    v27[1] = v17;
    v18 = (v15 + 3 * v14);
    LOBYTE(v15) = *v18;
    v19 = v18[1];
    LOBYTE(v18) = v18[2];
    v28[0] = v15;
    v28[1] = v19;
    v28[2] = v18;

    v20 = a4(v27, v28);

    if (v4)
    {
      return result;
    }

    if (v20)
    {
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_185B3F7FC(v23, a2, v24, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_185B3F7FC(v23, a2, v24, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_185B3EF98(void *result, uint64_t a2, uint64_t a3, int a4)
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

    v8 = sub_185B3E844(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_185B3F020(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_185B3F0A8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, _BYTE *))
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

    v8 = sub_185B3EE08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_185B3F138(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AuthAssertion();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v62 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v54 = v50 - v14;
  v61 = sub_185B67AFC();
  v59 = *(v61 - 8);
  v15 = *(v59 + 64);
  v17 = MEMORY[0x1EEE9AC00](v61, v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v53 = v50 - v21;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD488, &qword_185B6E818);
  result = sub_185B6847C();
  v23 = result;
  if (a2 < 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = *a1;
  }

  v25 = 0;
  v50[1] = v59 + 16;
  v51 = a2;
  v60 = v59 + 32;
  v26 = result + 64;
  v52 = a1;
  v50[0] = a4;
  v27 = v61;
  while (v24)
  {
    v28 = v19;
    v29 = __clz(__rbit64(v24));
    v56 = (v24 - 1) & v24;
LABEL_16:
    v32 = v29 | (v25 << 6);
    v33 = a4[6];
    v34 = v59;
    v58 = *(v59 + 72);
    v35 = v53;
    (*(v59 + 16))(v53, v33 + v58 * v32, v27);
    v36 = a4[7];
    v57 = *(v55 + 72);
    v37 = v36 + v57 * v32;
    v38 = v54;
    sub_185B40B18(v37, v54, type metadata accessor for AuthAssertion);
    v39 = *(v34 + 32);
    v19 = v28;
    v39(v28, v35, v27);
    sub_185B40E60(v38, v62, type metadata accessor for AuthAssertion);
    v40 = *(v23 + 40);
    sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8]);
    result = sub_185B67DAC();
    v41 = -1 << *(v23 + 32);
    v42 = result & ~v41;
    v43 = v42 >> 6;
    if (((-1 << v42) & ~*(v26 + 8 * (v42 >> 6))) == 0)
    {
      v45 = 0;
      v46 = (63 - v41) >> 6;
      a2 = v51;
      a1 = v52;
      while (++v43 != v46 || (v45 & 1) == 0)
      {
        v47 = v43 == v46;
        if (v43 == v46)
        {
          v43 = 0;
        }

        v45 |= v47;
        v48 = *(v26 + 8 * v43);
        if (v48 != -1)
        {
          v44 = __clz(__rbit64(~v48)) + (v43 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v44 = __clz(__rbit64((-1 << v42) & ~*(v26 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
    a2 = v51;
    a1 = v52;
LABEL_26:
    *(v26 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v39((*(v23 + 48) + v44 * v58), v19, v61);
    result = sub_185B40E60(v62, *(v23 + 56) + v44 * v57, type metadata accessor for AuthAssertion);
    ++*(v23 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v50[0];
    v24 = v56;
    if (!a3)
    {
      return v23;
    }
  }

  v30 = v25;
  while (1)
  {
    v25 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v25 >= a2)
    {
      return v23;
    }

    v31 = a1[v25];
    ++v30;
    if (v31)
    {
      v28 = v19;
      v29 = __clz(__rbit64(v31));
      v56 = (v31 - 1) & v31;
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

uint64_t sub_185B3F5C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4E8, &qword_185B6EED0);
  result = sub_185B6847C();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_185ADF8F0(*(v4 + 56) + 40 * v16, v30);
    sub_185AC66F8(v30, v29);
    v18 = *(v9 + 40);
    v19 = v17;
    result = sub_185B6827C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v19;
    result = sub_185AC66F8(v29, *(v9 + 56) + 40 * v23);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_185B3F7FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD460, &unk_185B6E7F0);
  result = sub_185B6847C();
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
  v34 = v4;
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
    v21 = (v17 + 3 * v16);
    v36 = v21[1];
    v37 = *v21;
    v35 = v21[2];
    v22 = *(v9 + 40);
    sub_185B6866C();

    sub_185B67EEC();
    result = sub_185B686AC();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 3 * v26);
    *v32 = v37;
    v32[1] = v36;
    v32[2] = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
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

uint64_t sub_185B3FA60(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v68 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v49 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = (a2 + 56);

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_185B6866C();

    sub_185B67EEC();
    v24 = sub_185B686AC();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_185B6859C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v29 = *(v5 + 32);
  v56 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v56;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    MEMORY[0x1EEE9AC00]();
    v2 = &v55 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v60 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v58 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v28;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_185B40208(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v28 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v62 = v28;
            v39 = (v38 + ((v28 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            v41 = *(v5 + 40);
            sub_185B6866C();

            sub_185B67EEC();
            v42 = sub_185B686AC();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v40 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_185B6859C() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v40 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v34 = v60[v2];
          v60[v2] = v34 & ~v44;
          v27 = (v34 & v44) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_185B3FFD0(v52, v56, v5, v2, v64);

  if (!v53)
  {

    MEMORY[0x1865FE2F0](v52, -1, -1);
    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_185AF36FC();
    goto LABEL_53;
  }

  result = MEMORY[0x1865FE2F0](v52, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_185B3FFD0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_185B40208(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_185B6866C();

        sub_185B67EEC();
        v20 = sub_185B686AC();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_185B6859C() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_185B40208(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
  result = sub_185B6834C();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_185B6866C();

    sub_185B67EEC();
    result = sub_185B686AC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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

uint64_t sub_185B4042C(uint64_t result)
{
  v2 = 0;
  v22 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v22 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v21;
      sub_185AC407C(&v23, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v13 + 40);
    sub_185B6866C();

    sub_185B67EEC();
    v15 = sub_185B686AC();
    v16 = -1 << *(v13 + 32);
    v17 = v15 & ~v16;
    if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_7;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(v13 + 48) + 16 * v17);
      v20 = *v19 == v12 && v19[1] == v11;
      if (v20 || (sub_185B6859C() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v21;
    sub_185B3D2A4(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

uint64_t sub_185B40614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_185B3C500();
  *a1 = result;
  return result;
}

uint64_t sub_185B4068C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_185B406B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_185B67C9C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  v11 = *(*v4 + 112);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  *(v4 + 24) = a2;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_185B40A38;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_55_1;
  _Block_copy(aBlock);
  sub_185B41234(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
  v15 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  v16 = sub_185B67D2C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_185B67D1C();

  v20 = *(v4 + 16);
  *(v4 + 16) = v19;

  sub_185B6812C();

  return v4;
}

uint64_t sub_185B409DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[22];
  v11 = v1[21];
  return sub_185B389D0(a1, v1[9], v1[10], v1[11], v1[12], v1[13], v1[14], v1[15], v1[16], v1[17], v1[18], v1[19]);
}

uint64_t sub_185B40A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD478, &qword_185B6E808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B40AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_185B40B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_185B40B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD478, &qword_185B6E808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B40BF0(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  return sub_185B364E4(a1, a2, a3 & 0x10101, v3[2]);
}

uint64_t sub_185B40C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_185B40C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = a8;
  sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
  v19 = sub_185B2EC58(a1, a2, a3, a4);
  if (v11)
  {
  }

  else
  {
    v21 = a7;
    v22 = v59;
    v23 = v60;
    if (v19)
    {
      v58 = &v56;
      v57 = a11;
      v24 = MEMORY[0x1EEE9AC00](v19, v20);
      v37[2] = v23;
      v37[3] = a5;
      v37[4] = a6;
      v38 = a1;
      v39 = v25;
      v40 = a2;
      v41 = v26;
      v42 = a3;
      v43 = v27;
      v44 = v29;
      v45 = v28;
      v46 = v24;
      v47 = v21;
      v48 = v30;
      v49 = v22;
      v50 = v31;
      v51 = v32;
      v52 = v33;
      v53 = v34;
      v54 = v35;
      v55 = v57;
      v36 = v24;
      sub_185B325B0(sub_185B40F30, v37);
    }
  }
}

uint64_t sub_185B40E08()
{
  v1 = *(*v0 + 360);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_185B40E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_185B40FE4@<D0>(double *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_185B41060()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = (*(v0 + 40) & 1) == 0;
  v5 = v2 + *(*v2 + 304);
  return (*(*(*v2 + 208) + 32))(v1, v3, v4, *(*v2 + 128));
}

uint64_t objectdestroy_51Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_185B41144()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = (*(v0 + 40) & 1) == 0;
  v5 = v2 + *(*v2 + 304);
  return (*(*(*v2 + 208) + 24))(v1, v3, v4, *(*v2 + 128));
}

void *sub_185B411CC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_185B41234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_185B4127C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7542746567726174 && a2 == 0xEE004449656C646ELL;
  if (v4 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000185B77C50 == a2 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_185B6859C();

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

uint64_t sub_185B413A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = MEMORY[0x1E69E7CD0];
  *&v86[0] = MEMORY[0x1E69E7CD0];
  v10 = sub_185ADB840(a1);
  v11 = sub_185ADB68C();
  v12 = sub_185ACB848(v11, v10);
  v13 = *(a1 + 32);
  v80 = v12;
  v81 = v86;

  sub_185B4C96C(sub_185B42D7C, v79);

  v14 = *&v86[0];
  *&v86[0] = v9;
  v15 = sub_185ADB840(a1);
  v16 = sub_185ADB68C();
  v17 = sub_185ACB848(v16, v15);
  v18 = *(a1 + 32);
  v77 = v17;
  v78 = v86;

  sub_185B4C96C(sub_185B42D80, v76);

  v19 = *&v86[0];
  sub_185B34D08(a2, a3, a4);
  if (v4)
  {
  }

  v72 = 0;
  v21 = MEMORY[0x1E69E7CD0];
  *&v86[0] = MEMORY[0x1E69E7CD0];
  v22 = sub_185ADB840(a1);
  v23 = sub_185ADB68C();
  v24 = sub_185ACB848(v23, v22);
  v25 = *(a1 + 32);
  v70 = MEMORY[0x1EEE9AC00](v24, v26);
  v71 = v86;

  sub_185B4C96C(sub_185B42D7C, v69);

  v27 = *&v86[0];
  *&v86[0] = v21;
  v28 = sub_185ADB840(a1);
  v29 = sub_185ADB68C();
  v30 = sub_185ACB848(v29, v28);
  v87 = a1;
  v31 = *(a1 + 32);
  v70 = MEMORY[0x1EEE9AC00](v30, v32);
  v71 = v86;

  sub_185B4C96C(sub_185B42D80, v69);

  v33 = *&v86[0];
  *&v86[0] = v14;

  sub_185B4042C(v34);
  v35 = *&v86[0];
  if ((sub_185B3C6B8(v14, v27) & 1) == 0)
  {

    goto LABEL_7;
  }

  v36 = sub_185B3C6B8(v19, v33);

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v37 = v87;
    v38 = *(v87 + 136);
    *&v86[0] = MEMORY[0x1E69E7CD0];
    v39 = sub_185ADB840(v87);
    v40 = sub_185ADB68C();
    v41 = sub_185ACB848(v40, v39);
    v42 = *(v37 + 32);
    v70 = MEMORY[0x1EEE9AC00](v41, v43);
    v71 = v86;

    sub_185B4C96C(sub_185B42D80, v69);

    LODWORD(v82) = 4;
    *(&v82 + 1) = v35;
    v83 = 0u;
    v84 = 0u;
    v85 = *&v86[0];
    sub_185B67C2C();
    v86[0] = v82;
    v86[1] = v83;
    v86[2] = v84;
    v86[3] = v85;
    sub_185ADF798(v86);
    goto LABEL_8;
  }

LABEL_8:
  if (*(v27 + 16) <= *(v14 + 16) >> 3)
  {
    *&v86[0] = v14;
    sub_185ACC0B0(v27);

    result = *&v86[0];
  }

  else
  {
    v44 = sub_185B3FA60(v27, v14);

    result = v44;
  }

  v46 = 0;
  v47 = result + 56;
  v48 = 1 << *(result + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(result + 56);
  v51 = (v48 + 63) >> 6;
  *&v45 = 136315138;
  v73 = v45;
  v74 = v51;
  v75 = result;
  while (v50)
  {
LABEL_20:
    v60 = (*(result + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v50)))));
    v62 = *v60;
    v61 = v60[1];
    v63 = qword_1ED6F4CB0;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = sub_185B67B8C();
    __swift_project_value_buffer(v64, qword_1ED6F5130);

    v65 = sub_185B67B6C();
    v66 = sub_185B680AC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v86[0] = v68;
      *v67 = v73;
      *(v67 + 4) = sub_185ACB2C4(v62, v61, v86);
      _os_log_impl(&dword_185AC1000, v65, v66, "trying to unshield %s as it is no longer effectively locked", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x1865FE2F0](v68, -1, -1);
      MEMORY[0x1865FE2F0](v67, -1, -1);
    }

    v50 &= v50 - 1;
    v52 = swift_allocObject();
    *(v52 + 16) = v62;
    *(v52 + 24) = v61;
    v53 = *(v87 + 56);

    empty = xpc_dictionary_create_empty();
    v55 = sub_185B67ECC();
    xpc_dictionary_set_int64(empty, (v55 + 32), 2);

    v56 = sub_185B67ECC();
    v57 = sub_185B67ECC();
    xpc_dictionary_set_string(empty, (v56 + 32), (v57 + 32));

    v58 = sub_185B67ECC();
    xpc_dictionary_set_BOOL(empty, (v58 + 32), 0);

    sub_185B13EA8(empty, sub_185B42D84, v52);

    swift_unknownObjectRelease();
    result = v75;
    v51 = v74;
  }

  while (1)
  {
    v59 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v59 >= v51)
    {
    }

    v50 = *(v47 + 8 * v59);
    ++v46;
    if (v50)
    {
      v46 = v59;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B41AE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = MEMORY[0x1E69E7CD0];
  *&v86[0] = MEMORY[0x1E69E7CD0];
  v10 = sub_185ADB840(a1);
  v11 = sub_185ADB68C();
  v12 = sub_185ACB848(v11, v10);
  v13 = *(a1 + 32);
  v80 = v12;
  v81 = v86;

  sub_185B4C96C(sub_185B42D7C, v79);

  v14 = *&v86[0];
  *&v86[0] = v9;
  v15 = sub_185ADB840(a1);
  v16 = sub_185ADB68C();
  v17 = sub_185ACB848(v16, v15);
  v18 = *(a1 + 32);
  v77 = v17;
  v78 = v86;

  sub_185B4C96C(sub_185B42D80, v76);

  v19 = *&v86[0];
  sub_185B3518C(a2, a3, a4);
  if (v4)
  {
  }

  v72 = 0;
  v21 = MEMORY[0x1E69E7CD0];
  *&v86[0] = MEMORY[0x1E69E7CD0];
  v22 = sub_185ADB840(a1);
  v23 = sub_185ADB68C();
  v24 = sub_185ACB848(v23, v22);
  v25 = *(a1 + 32);
  v70 = MEMORY[0x1EEE9AC00](v24, v26);
  v71 = v86;

  sub_185B4C96C(sub_185B42D7C, v69);

  v27 = *&v86[0];
  *&v86[0] = v21;
  v28 = sub_185ADB840(a1);
  v29 = sub_185ADB68C();
  v30 = sub_185ACB848(v29, v28);
  v87 = a1;
  v31 = *(a1 + 32);
  v70 = MEMORY[0x1EEE9AC00](v30, v32);
  v71 = v86;

  sub_185B4C96C(sub_185B42D80, v69);

  v33 = *&v86[0];
  *&v86[0] = v14;

  sub_185B4042C(v34);
  v35 = *&v86[0];
  if ((sub_185B3C6B8(v14, v27) & 1) == 0)
  {

    goto LABEL_7;
  }

  v36 = sub_185B3C6B8(v19, v33);

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v37 = v87;
    v38 = *(v87 + 136);
    *&v86[0] = MEMORY[0x1E69E7CD0];
    v39 = sub_185ADB840(v87);
    v40 = sub_185ADB68C();
    v41 = sub_185ACB848(v40, v39);
    v42 = *(v37 + 32);
    v70 = MEMORY[0x1EEE9AC00](v41, v43);
    v71 = v86;

    sub_185B4C96C(sub_185B42D80, v69);

    LODWORD(v82) = 4;
    *(&v82 + 1) = v35;
    v83 = 0u;
    v84 = 0u;
    v85 = *&v86[0];
    sub_185B67C2C();
    v86[0] = v82;
    v86[1] = v83;
    v86[2] = v84;
    v86[3] = v85;
    sub_185ADF798(v86);
    goto LABEL_8;
  }

LABEL_8:
  if (*(v27 + 16) <= *(v14 + 16) >> 3)
  {
    *&v86[0] = v14;
    sub_185ACC0B0(v27);

    result = *&v86[0];
  }

  else
  {
    v44 = sub_185B3FA60(v27, v14);

    result = v44;
  }

  v46 = 0;
  v47 = result + 56;
  v48 = 1 << *(result + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(result + 56);
  v51 = (v48 + 63) >> 6;
  *&v45 = 136315138;
  v73 = v45;
  v74 = v51;
  v75 = result;
  while (v50)
  {
LABEL_20:
    v60 = (*(result + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v50)))));
    v62 = *v60;
    v61 = v60[1];
    v63 = qword_1ED6F4CB0;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = sub_185B67B8C();
    __swift_project_value_buffer(v64, qword_1ED6F5130);

    v65 = sub_185B67B6C();
    v66 = sub_185B680AC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v86[0] = v68;
      *v67 = v73;
      *(v67 + 4) = sub_185ACB2C4(v62, v61, v86);
      _os_log_impl(&dword_185AC1000, v65, v66, "trying to unshield %s as it is no longer effectively locked", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x1865FE2F0](v68, -1, -1);
      MEMORY[0x1865FE2F0](v67, -1, -1);
    }

    v50 &= v50 - 1;
    v52 = swift_allocObject();
    *(v52 + 16) = v62;
    *(v52 + 24) = v61;
    v53 = *(v87 + 56);

    empty = xpc_dictionary_create_empty();
    v55 = sub_185B67ECC();
    xpc_dictionary_set_int64(empty, (v55 + 32), 2);

    v56 = sub_185B67ECC();
    v57 = sub_185B67ECC();
    xpc_dictionary_set_string(empty, (v56 + 32), (v57 + 32));

    v58 = sub_185B67ECC();
    xpc_dictionary_set_BOOL(empty, (v58 + 32), 0);

    sub_185B13EA8(empty, sub_185B42D84, v52);

    swift_unknownObjectRelease();
    result = v75;
    v51 = v74;
  }

  while (1)
  {
    v59 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v59 >= v51)
    {
    }

    v50 = *(v47 + 8 * v59);
    ++v46;
    if (v50)
    {
      v46 = v59;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B42208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7CD0];
  *&v84[0] = MEMORY[0x1E69E7CD0];
  v8 = sub_185ADB840(a1);
  v9 = sub_185ADB68C();
  v10 = sub_185ACB848(v9, v8);
  v11 = *(a1 + 32);
  v78 = v10;
  v79 = v84;

  sub_185B4C96C(sub_185B42D7C, v77);

  v12 = *&v84[0];
  *&v84[0] = v7;
  v13 = sub_185ADB840(a1);
  v14 = sub_185ADB68C();
  v15 = sub_185ACB848(v14, v13);
  v16 = *(a1 + 32);
  v75 = v15;
  v76 = v84;

  sub_185B4C96C(sub_185B42D80, v74);

  v17 = *&v84[0];
  sub_185B355C0(a2, a3);
  if (v3)
  {
  }

  v70 = 0;
  *&v84[0] = v7;
  v19 = sub_185ADB840(a1);
  v20 = sub_185ADB68C();
  v21 = sub_185ACB848(v20, v19);
  v22 = *(a1 + 32);
  v68 = MEMORY[0x1EEE9AC00](v21, v23);
  v69 = v84;

  sub_185B4C96C(sub_185B42D7C, v67);

  v24 = *&v84[0];
  *&v84[0] = v7;
  v25 = sub_185ADB840(a1);
  v26 = sub_185ADB68C();
  v27 = sub_185ACB848(v26, v25);
  v28 = *(a1 + 32);
  v68 = MEMORY[0x1EEE9AC00](v27, v29);
  v69 = v84;

  sub_185B4C96C(sub_185B42D80, v67);

  v30 = *&v84[0];
  *&v84[0] = v12;

  sub_185B4042C(v31);
  v32 = *&v84[0];
  if ((sub_185B3C6B8(v12, v24) & 1) == 0)
  {

    goto LABEL_7;
  }

  v33 = sub_185B3C6B8(v17, v30);

  if ((v33 & 1) == 0)
  {
LABEL_7:
    v34 = *(a1 + 136);
    *&v84[0] = v7;
    v35 = sub_185ADB840(a1);
    v36 = sub_185ADB68C();
    v37 = sub_185ACB848(v36, v35);
    v38 = *(a1 + 32);
    v68 = MEMORY[0x1EEE9AC00](v37, v39);
    v69 = v84;

    sub_185B4C96C(sub_185B42D80, v67);

    LODWORD(v80) = 4;
    *(&v80 + 1) = v32;
    v81 = 0u;
    v82 = 0u;
    v83 = *&v84[0];
    sub_185B67C2C();
    v84[0] = v80;
    v84[1] = v81;
    v84[2] = v82;
    v84[3] = v83;
    sub_185ADF798(v84);
    goto LABEL_8;
  }

LABEL_8:
  v40 = *(v24 + 16);
  v41 = *(v12 + 16);
  v85 = a1;
  if (v40 <= v41 >> 3)
  {
    *&v84[0] = v12;
    sub_185ACC0B0(v24);

    result = *&v84[0];
  }

  else
  {
    v42 = sub_185B3FA60(v24, v12);

    result = v42;
  }

  v44 = 0;
  v45 = result + 56;
  v46 = 1 << *(result + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(result + 56);
  v49 = (v46 + 63) >> 6;
  *&v43 = 136315138;
  v71 = v43;
  v72 = v49;
  v73 = result;
  while (v48)
  {
LABEL_20:
    v58 = (*(result + 48) + ((v44 << 10) | (16 * __clz(__rbit64(v48)))));
    v60 = *v58;
    v59 = v58[1];
    v61 = qword_1ED6F4CB0;

    if (v61 != -1)
    {
      swift_once();
    }

    v62 = sub_185B67B8C();
    __swift_project_value_buffer(v62, qword_1ED6F5130);

    v63 = sub_185B67B6C();
    v64 = sub_185B680AC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v84[0] = v66;
      *v65 = v71;
      *(v65 + 4) = sub_185ACB2C4(v60, v59, v84);
      _os_log_impl(&dword_185AC1000, v63, v64, "trying to unshield %s as it is no longer effectively locked", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x1865FE2F0](v66, -1, -1);
      MEMORY[0x1865FE2F0](v65, -1, -1);
    }

    v48 &= v48 - 1;
    v50 = swift_allocObject();
    *(v50 + 16) = v60;
    *(v50 + 24) = v59;
    v51 = *(v85 + 56);

    empty = xpc_dictionary_create_empty();
    v53 = sub_185B67ECC();
    xpc_dictionary_set_int64(empty, (v53 + 32), 2);

    v54 = sub_185B67ECC();
    v55 = sub_185B67ECC();
    xpc_dictionary_set_string(empty, (v54 + 32), (v55 + 32));

    v56 = sub_185B67ECC();
    xpc_dictionary_set_BOOL(empty, (v56 + 32), 0);

    sub_185B13EA8(empty, sub_185B42D84, v50);

    swift_unknownObjectRelease();
    result = v73;
    v49 = v72;
  }

  while (1)
  {
    v57 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v57 >= v49)
    {
    }

    v48 = *(v45 + 8 * v57);
    ++v44;
    if (v48)
    {
      v44 = v57;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_13AppProtection19AuthUIBindingTargetOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_185B42978(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_185B429D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_185B42BA0()
{
  result = qword_1EA8CD5A8;
  if (!qword_1EA8CD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD5A8);
  }

  return result;
}

unint64_t sub_185B42BF8()
{
  result = qword_1EA8CD5B0;
  if (!qword_1EA8CD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD5B0);
  }

  return result;
}

unint64_t sub_185B42C50()
{
  result = qword_1EA8CD5B8;
  if (!qword_1EA8CD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD5B8);
  }

  return result;
}

uint64_t sub_185B42DA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_185B42E2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_185B43008(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

double sub_185B43314(uint64_t a1)
{
  v3 = *(a1 + 52);
  (*(*(a1 + 40) + 16))(*(a1 + 24));
  if (v1)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v5 = sub_185B67B8C();
    __swift_project_value_buffer(v5, qword_1EA8D2278);
    v6 = v1;
    v7 = sub_185B67B6C();
    v8 = sub_185B6808C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315394;
      v11 = sub_185B6872C();
      v13 = sub_185ACB2C4(v11, v12, &v20);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2112;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_185AC1000, v7, v8, "No authentication age for underlying provider %s: %@", v9, 0x16u);
      sub_185AC3F6C(v10);
      MEMORY[0x1865FE2F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1865FE2F0](v19, -1, -1);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    v16 = (*(*(a1 + 32) + 8))(*(a1 + 16));
  }

  else
  {
    v16 = v4;
    (*(*(a1 + 32) + 8))(*(a1 + 16));
    if (v18 < v16)
    {
      return v18;
    }
  }

  return v16;
}

double sub_185B436A8(uint64_t a1)
{
  v3 = *(a1 + 52);
  (*(*(a1 + 40) + 24))(*(a1 + 24));
  if (v1)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v5 = sub_185B67B8C();
    __swift_project_value_buffer(v5, qword_1EA8D2278);
    v6 = v1;
    v7 = sub_185B67B6C();
    v8 = sub_185B6806C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315394;
      v11 = sub_185B6872C();
      v13 = sub_185ACB2C4(v11, v12, &v20);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2112;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_185AC1000, v7, v8, "No fence age for underlying provider %s: %@", v9, 0x16u);
      sub_185AC3F6C(v10);
      MEMORY[0x1865FE2F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1865FE2F0](v19, -1, -1);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    v16 = (*(*(a1 + 32) + 24))(*(a1 + 16));
  }

  else
  {
    v16 = v4;
    (*(*(a1 + 32) + 24))(*(a1 + 16));
    if (v18 < v16)
    {
      return v18;
    }
  }

  return v16;
}

uint64_t sub_185B43A3C(uint64_t a1)
{
  (*(*(a1 + 32) + 32))(*(a1 + 16));
  v2 = *(a1 + 52);
  return (*(*(a1 + 40) + 32))(*(a1 + 24));
}

uint64_t sub_185B43A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a1;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 52);
  (*(v7 + 16))(v9, v4, v10);
  v12 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = *(a4 + 16);
  v19 = *(a4 + 24);
  *(v14 + 24) = v19;
  v15 = *(a4 + 40);
  *(v14 + 40) = v15;
  (*(v7 + 32))(v14 + v12, v9, a4);
  v16 = (v14 + v13);
  *v16 = v20;
  v16[1] = a3;
  v17 = *(v15 + 40);

  v17(v21, sub_185B4456C, v14, v19, v15);
}

uint64_t sub_185B43CBC(uint64_t a1, uint64_t a2)
{
  if (qword_1EA8CBFD0 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_1EA8D2330;
  v3 = *(*(qword_1EA8D2330 + 24) + 104);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v4, v5);

  os_unfair_lock_lock(v3 + 4);
  sub_185B44694(v6);
  os_unfair_lock_unlock(v3 + 4);

  v8 = *(*(v2 + 32) + 104);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  MEMORY[0x1EEE9AC00](v10, v11);

  os_unfair_lock_lock(v8 + 4);
  sub_185B44694(v12);
  os_unfair_lock_unlock(v8 + 4);
}

void sub_185B43E78(uint64_t a1, uint64_t a2)
{
  if (qword_1EA8CBFD0 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(*(qword_1EA8D2330 + 24) + 104);
  MEMORY[0x1EEE9AC00](a1, a2);

  os_unfair_lock_lock(v3 + 4);
  sub_185B42CD4(&v10);
  if (v2)
  {
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v3 + 4);

    v4 = v10;

    if (!v4)
    {
      v6 = 0xD000000000000036;
      v7 = 0x8000000185B77CE0;
      v8 = 2;
      v9 = 22;
      goto LABEL_10;
    }

    v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (!v5)
    {
      v6 = 0xD000000000000034;
      v7 = 0x8000000185B77CA0;
      v8 = 2;
      v9 = 26;
      goto LABEL_10;
    }

    if (v5 < v4)
    {
      v6 = 0xD000000000000022;
      v7 = 0x8000000185B77C70;
      v8 = 22;
      v9 = 30;
LABEL_10:
      sub_185B21B1C(v8, v6, v7, v9, 0xD000000000000013, 0x8000000185B77370);
      swift_willThrow();
    }
  }
}

void sub_185B4406C(uint64_t a1, uint64_t a2)
{
  if (qword_1EA8CBFD0 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(*(qword_1EA8D2330 + 32) + 104);
  MEMORY[0x1EEE9AC00](a1, a2);

  os_unfair_lock_lock(v3 + 4);
  sub_185B4064C(&v10);
  if (v2)
  {
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v3 + 4);

    v4 = v10;

    v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (!v5)
    {
      v8 = 0xD000000000000034;
      v6 = 0x8000000185B77CA0;
      v7 = 2;
      v9 = 54;
      goto LABEL_8;
    }

    if (v5 < v4)
    {
      v6 = 0x8000000185B77C70;
      v7 = 22;
      v8 = 0xD000000000000022;
      v9 = 58;
LABEL_8:
      sub_185B21B1C(v7, v8, v6, v9, 0x65674165636E6566, 0xEA00000000002928);
      swift_willThrow();
    }
  }
}

uint64_t sub_185B44220()
{
  if (qword_1EA8CBFD0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2330;
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v1 = *(*(v0 + 32) + 104);
  v3 = MEMORY[0x1EEE9AC00](v7, v2);
  MEMORY[0x1EEE9AC00](v3, v4);

  os_unfair_lock_lock(v1 + 4);
  sub_185B4435C(v5);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_185B44378@<X0>(uint64_t *a1@<X8>)
{
  result = sub_185B3C3C0();
  *a1 = result;
  return result;
}

uint64_t sub_185B443A8()
{
  if (qword_1EA8CBFD0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2330;
  v1 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v2 = *(*(v0 + 24) + 104);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  MEMORY[0x1EEE9AC00](v4, v5);

  os_unfair_lock_lock(v2 + 4);
  sub_185B44694(v6);
  os_unfair_lock_unlock(v2 + 4);

  v8 = *(*(v0 + 32) + 104);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  MEMORY[0x1EEE9AC00](v10, v11);

  os_unfair_lock_lock(v8 + 4);
  sub_185B44694(v12);
  os_unfair_lock_unlock(v8 + 4);
}

uint64_t sub_185B4456C(char a1, uint64_t a2)
{
  v11 = *(v2 + 16);
  v10 = *(v2 + 32);
  v5 = *(type metadata accessor for SelfCachingAuthProvider() - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v6;
  v7 = *(v6 + 8);
  if (a1)
  {
    (*(v10 + 16))(v11);
  }

  return v8(a1 & 1, a2);
}

uint64_t sub_185B446AC(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_185B6859C() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_185B6859C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return sub_185B67ACC();
}

uint64_t sub_185B44750(uint64_t a1)
{
  sub_185B6866C();
  v3 = *v1;
  v4 = v1[1];
  sub_185B67EEC();
  v5 = v1[2];
  v6 = v1[3];
  sub_185B67EEC();
  v7 = *(a1 + 24);
  sub_185B67AFC();
  sub_185B468C8(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8]);
  sub_185B67DBC();
  return sub_185B686AC();
}

uint64_t sub_185B44808(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_185B67EEC();
  v6 = v2[2];
  v7 = v2[3];
  sub_185B67EEC();
  v8 = *(a2 + 24);
  sub_185B67AFC();
  sub_185B468C8(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8]);
  return sub_185B67DBC();
}

uint64_t sub_185B448A4(uint64_t a1, uint64_t a2)
{
  sub_185B6866C();
  v4 = *v2;
  v5 = v2[1];
  sub_185B67EEC();
  v6 = v2[2];
  v7 = v2[3];
  sub_185B67EEC();
  v8 = *(a2 + 24);
  sub_185B67AFC();
  sub_185B468C8(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8]);
  sub_185B67DBC();
  return sub_185B686AC();
}

id sub_185B44958()
{
  result = APGetExtensionMonitorServiceInterface();
  qword_1EA8D22E8 = result;
  return result;
}

void sub_185B44980(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v89 = type metadata accessor for ExtensionMonitorPair();
  v91 = *(v89 - 8);
  v3 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v89, v4);
  v6 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v85[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v97 = &v85[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v85[-v19];
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v85[-v22];
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v24 = sub_185B67B8C();
  v25 = __swift_project_value_buffer(v24, qword_1EA8D2278);
  v27 = v8 + 2;
  v26 = v8[2];
  v96 = a1;
  v26(v23, a1, v7);
  v98 = v26;
  v26(v20, v99, v7);
  v95 = v25;
  v28 = sub_185B67B6C();
  v29 = sub_185B680AC();
  v30 = os_log_type_enabled(v28, v29);
  v90 = v6;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v93 = v8;
    v32 = v31;
    v87 = swift_slowAlloc();
    v100[0] = v87;
    *v32 = 136446466;
    sub_185B468C8(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8]);
    v94 = v27;
    v86 = v29;
    v33 = sub_185B6856C();
    v35 = v34;
    v88 = v13;
    v36 = v93[1];
    v36(v23, v7);
    v37 = sub_185ACB2C4(v33, v35, v100);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2082;
    v27 = v94;
    v38 = sub_185B6856C();
    v40 = v39;
    v36(v20, v7);
    v13 = v88;
    v41 = sub_185ACB2C4(v38, v40, v100);

    *(v32 + 14) = v41;
    _os_log_impl(&dword_185AC1000, v28, v86, "server begin monitoring extension %{public}s monitor %{public}s", v32, 0x16u);
    v42 = v87;
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v42, -1, -1);
    MEMORY[0x1865FE2F0](v32, -1, -1);
  }

  else
  {

    v36 = v8[1];
    v36(v20, v7);
    v36(v23, v7);
  }

  v43 = v96;
  v44 = sub_185AE948C(v96);
  v46 = v97;
  if (!v45)
  {
    goto LABEL_11;
  }

  v47 = v44;
  v48 = v45;
  v93 = sub_185AE8F94(v43);
  if (!v49)
  {

LABEL_11:
    v98(v13, v43, v7);
    v62 = sub_185B67B6C();
    v63 = sub_185B680AC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v100[0] = v65;
      *v64 = 136446210;
      sub_185B468C8(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8]);
      v66 = sub_185B6856C();
      v68 = v67;
      v36(v13, v7);
      v69 = sub_185ACB2C4(v66, v68, v100);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_185AC1000, v62, v63, "could not find container bundleID for extension %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x1865FE2F0](v65, -1, -1);
      MEMORY[0x1865FE2F0](v64, -1, -1);
    }

    else
    {

      v36(v13, v7);
    }

    return;
  }

  v50 = v49;
  v96 = v47;
  v94 = v27;
  v98(v46, v99, v7);

  v51 = sub_185B67B6C();
  v52 = sub_185B680AC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = v46;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v95 = v36;
    v56 = v55;
    v100[0] = v55;
    *v54 = 136315394;
    sub_185B468C8(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8]);
    v57 = sub_185B6856C();
    v59 = v58;
    v95(v53, v7);
    v60 = sub_185ACB2C4(v57, v59, v100);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    v61 = v93;
    *(v54 + 14) = sub_185ACB2C4(v93, v50, v100);
    _os_log_impl(&dword_185AC1000, v51, v52, "monitor %s is a monitor for %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v56, -1, -1);
    MEMORY[0x1865FE2F0](v54, -1, -1);
  }

  else
  {

    v36(v46, v7);
    v61 = v93;
  }

  v70 = v90;
  v98(v90 + *(v89 + 24), v99, v7);
  *v70 = v61;
  v70[1] = v50;
  v70[2] = v96;
  v70[3] = v48;
  v71 = OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_monitorAssociations;
  v72 = v92;
  swift_beginAccess();
  v73 = *(v72 + v71);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v72 + v71) = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_185B3D054(0, v73[2] + 1, 1, v73);
    *(v72 + v71) = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    v73 = sub_185B3D054(v75 > 1, v76 + 1, 1, v73);
  }

  v73[2] = v76 + 1;
  sub_185B46910(v70, v73 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v76);
  *(v72 + v71) = v73;
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy, v100);
    swift_unknownObjectRelease();
    v78 = v101;
    v79 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v80 = (*(v79 + 24))(v78, v79);
    sub_185AC3A7C(v61, v50, v80);

    v81 = __swift_destroy_boxed_opaque_existential_0Tm(v100);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v81, v82);
  v83 = v99;
  *&v85[-16] = v72;
  *&v85[-8] = v83;
  sub_185B54710(sub_185B46974, &v85[-32], v84);
}

uint64_t sub_185B4542C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1EA8D2278);
  (*(v5 + 16))(v9, a1, v4);
  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    sub_185B468C8(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8]);
    v16 = sub_185B6856C();
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_185ACB2C4(v16, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_185AC1000, v11, v12, "server end monitoring %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1865FE2F0](v15, -1, -1);
    v20 = v14;
    a1 = v27;
    MEMORY[0x1865FE2F0](v20, -1, -1);
  }

  else
  {

    v21 = (*(v5 + 8))(v9, v4);
  }

  MEMORY[0x1EEE9AC00](v21, v22);
  *(&v26 - 2) = a1;
  v23 = OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_monitorAssociations;
  swift_beginAccess();
  result = sub_185B5632C(sub_185B46878, (&v26 - 4));
  v25 = *(*(v2 + v23) + 16);
  if (v25 < result)
  {
    __break(1u);
  }

  else
  {
    sub_185B570E0(result, v25);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_185B45820(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ExtensionMonitorPair();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = (&v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v82 - v14;
  if ((*a1 & 6) != 0)
  {
    v98 = *(a1 + 8);
    v93 = *(a1 + 48);
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v16 = result;
      v86 = v15;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy, v99);
        swift_unknownObjectRelease();
        v18 = v100;
        v19 = v101;
        __swift_project_boxed_opaque_existential_1(v99, v100);
        v97 = (*(v19 + 32))(v18, v19);
        __swift_destroy_boxed_opaque_existential_0Tm(v99);
      }

      else
      {
        v97 = MEMORY[0x1E69E7CD0];
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        sub_185ADF8F0(v20 + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy, v99);
        swift_unknownObjectRelease();
        v21 = v100;
        v22 = v101;
        __swift_project_boxed_opaque_existential_1(v99, v100);
        v94 = (*(v22 + 40))(v21, v22);
        __swift_destroy_boxed_opaque_existential_0Tm(v99);
      }

      else
      {
        v94 = MEMORY[0x1E69E7CD0];
      }

      v23 = v86;
      v24 = OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_monitorAssociations;
      swift_beginAccess();
      v25 = *&v16[v24];
      v90 = *(v25 + 16);
      if (v90)
      {
        v83 = v16;
        v88 = v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v96 = v98 + 7;
        v91 = v93 + 7;
        v95 = v97 + 7;
        v92 = v94 + 7;

        v26 = 0;
        *&v27 = 136315394;
        v84 = v27;
        v85 = v6;
        v89 = result;
        while (1)
        {
          if (v26 >= *(result + 16))
          {
            __break(1u);
            return result;
          }

          sub_185B467B8(v88 + *(v6 + 72) * v26, v23);
          if (!v98)
          {
            goto LABEL_36;
          }

          if (v98[2])
          {
            v31 = *v23;
            v30 = v23[1];
            v32 = v98;
            v33 = v98[5];
            sub_185B6866C();
            sub_185B67EEC();
            v34 = sub_185B686AC();
            v35 = -1 << *(v32 + 32);
            v36 = v34 & ~v35;
            if ((*(v96 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
            {
              break;
            }
          }

LABEL_25:
          if (v93)
          {
            if (v93[2])
            {
              v41 = v23[2];
              v40 = v23[3];
              v42 = v93;
              v43 = v93[5];
              sub_185B6866C();
              sub_185B67EEC();
              v44 = sub_185B686AC();
              v45 = -1 << *(v42 + 32);
              v46 = v44 & ~v45;
              if ((*(v91 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
              {
                v47 = ~v45;
                do
                {
                  v48 = (v93[6] + 16 * v46);
                  v49 = *v48 == v41 && v48[1] == v40;
                  if (v49 || (sub_185B6859C() & 1) != 0)
                  {
                    goto LABEL_36;
                  }

                  v46 = (v46 + 1) & v47;
                }

                while (((*(v91 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0);
              }
            }
          }

LABEL_13:
          ++v26;
          sub_185B4681C(v23);
          result = v89;
          if (v26 == v90)
          {

            v16 = v83;
            goto LABEL_61;
          }
        }

        v37 = ~v35;
        while (1)
        {
          v38 = (v98[6] + 16 * v36);
          v39 = *v38 == v31 && v38[1] == v30;
          if (v39 || (sub_185B6859C() & 1) != 0)
          {
            break;
          }

          v36 = (v36 + 1) & v37;
          if (((*(v96 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        if (!v97[2])
        {
          goto LABEL_45;
        }

LABEL_36:
        v50 = *v23;
        v51 = v23[1];
        v52 = v97;
        v53 = v97[5];
        sub_185B6866C();
        sub_185B67EEC();
        v54 = sub_185B686AC();
        v55 = -1 << *(v52 + 32);
        v56 = v54 & ~v55;
        if ((*(v95 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          v57 = ~v55;
          while (1)
          {
            v58 = (v97[6] + 16 * v56);
            v59 = *v58 == v50 && v58[1] == v51;
            if (v59 || (sub_185B6859C() & 1) != 0)
            {
              break;
            }

            v56 = (v56 + 1) & v57;
            if (((*(v95 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
LABEL_45:
          if (!v94[2])
          {
            goto LABEL_54;
          }

          v60 = v23[2];
          v61 = v23[3];
          v62 = v94;
          v63 = v94[5];
          sub_185B6866C();
          sub_185B67EEC();
          v64 = sub_185B686AC();
          v65 = -1 << *(v62 + 32);
          v66 = v64 & ~v65;
          if (((*(v92 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
          {
LABEL_54:
            v70 = 0;
LABEL_56:
            if (qword_1EA8CB718 != -1)
            {
              swift_once();
            }

            v71 = sub_185B67B8C();
            __swift_project_value_buffer(v71, qword_1EA8D2278);
            sub_185B467B8(v23, v11);
            v72 = sub_185B67B6C();
            v73 = sub_185B680AC();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v99[0] = v75;
              *v74 = v84;
              v87 = v70;
              v76 = v5;
              v77 = a3;
              v79 = *v11;
              v78 = v11[1];

              sub_185B4681C(v11);
              v80 = sub_185ACB2C4(v79, v78, v99);
              a3 = v77;
              v5 = v76;
              v70 = v87;

              *(v74 + 4) = v80;
              v6 = v85;
              *(v74 + 12) = 1024;
              *(v74 + 14) = v70;
              _os_log_impl(&dword_185AC1000, v72, v73, "monitor for %s is potentially affected, locked: %{BOOL}d", v74, 0x12u);
              __swift_destroy_boxed_opaque_existential_0Tm(v75);
              v81 = v75;
              v23 = v86;
              MEMORY[0x1865FE2F0](v81, -1, -1);
              MEMORY[0x1865FE2F0](v74, -1, -1);
            }

            else
            {

              sub_185B4681C(v11);
            }

            v28 = v23 + *(v5 + 24);
            v29 = sub_185B67ABC();
            [a3 extensionMonitorWithUUID:v29 lockedStatusUpdate:v70];

            goto LABEL_13;
          }

          v67 = ~v65;
          while (1)
          {
            v68 = (v94[6] + 16 * v66);
            v69 = *v68 == v60 && v68[1] == v61;
            if (v69 || (sub_185B6859C() & 1) != 0)
            {
              break;
            }

            v66 = (v66 + 1) & v67;
            if (((*(v92 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
            {
              goto LABEL_54;
            }
          }
        }

        v70 = 1;
        goto LABEL_56;
      }

LABEL_61:
    }
  }

  return result;
}

id sub_185B460E4()
{
  if (qword_1EA8CB9C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D22E8;

  return v0;
}

id sub_185B46188(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for ExtensionMonitorPair()
{
  result = qword_1EA8CBB38;
  if (!qword_1EA8CBB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_185B4627C()
{
  result = sub_185B67AFC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_185B46394(void *a1)
{
  v1 = [a1 _xpcConnection];
  xpc_connection_set_non_launching();

  return swift_unknownObjectRelease();
}

void sub_185B463E4(void *a1)
{
  v2 = APGetClientExtensionMonitorInterface();
  [a1 setRemoteObjectInterface_];
}

uint64_t sub_185B46444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APExtensionMonitorService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

char *sub_185B464C0(void *a1)
{
  v2 = *v1;
  v3 = [a1 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD5F0, &qword_185B6ECA8);
  swift_dynamicCast();
  v4 = objc_allocWithZone(type metadata accessor for APExtensionMonitorClient());
  return sub_185B465C4(v2, v6, v4);
}

uint64_t sub_185B4656C(uint64_t a1, uint64_t a2)
{
  result = sub_185B468C8(&qword_1EA8CB9B0, a2, type metadata accessor for APExtensionMonitorClient);
  *(a1 + 8) = result;
  return result;
}

char *sub_185B465C4(void *a1, uint64_t a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_changeEventsSubscription] = 0;
  *&a3[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_delegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_monitorAssociations] = MEMORY[0x1E69E7CC0];
  *(v6 + 8) = &off_1EF46B7C8;
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_remoteMonitor] = a2;
  v21.receiver = a3;
  v21.super_class = type metadata accessor for APExtensionMonitorClient();
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v21, sel_init);
  sub_185ADF8F0(a1 + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy, v18);
  v8 = v19;
  v9 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v10 = *(v9 + 8);
  v11 = v7;
  v10(v17, v8, v9);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  swift_unknownObjectRetain();
  v14 = sub_185B67C7C();

  swift_unknownObjectRelease();
  v15 = *&v11[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_changeEventsSubscription];
  *&v11[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_changeEventsSubscription] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return v11;
}

uint64_t sub_185B467B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMonitorPair();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B4681C(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMonitorPair();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B46878()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ExtensionMonitorPair() + 24);
  return sub_185B67ACC() & 1;
}

uint64_t sub_185B468C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185B46910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMonitorPair();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_185B46974(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v2 + OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_remoteMonitor);
  v6 = sub_185B67ABC();
  [v5 extensionMonitorWithUUID:v6 lockedStatusUpdate:v4];
}

void sub_185B469D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_185B6791C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_185B46A64()
{
  type metadata accessor for ManagedProtectabilityCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD610, &unk_185B6ED28);
  v1 = swift_allocObject();
  *(v1 + 40) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  sub_185B478F8();
  qword_1EA8D22C8 = v0;
}

uint64_t sub_185B46AE0()
{
  v13 = sub_185B680EC();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B680DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_185B67CDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v14 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  result = sub_185B6813C();
  qword_1EA8D22D8 = result;
  return result;
}

uint64_t sub_185B46D40()
{
  v13 = sub_185B680EC();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B680DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_185B67CDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v14 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  result = sub_185B6813C();
  qword_1EA8D22D0 = result;
  return result;
}

uint64_t sub_185B46FA0()
{
  v1 = *v0;
  v11 = sub_185B47124;
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B6657C;
  v10 = &block_descriptor_82_0;
  v2 = _Block_copy(&v7);
  v3 = APGetAsyncReadProxy(v2);
  _Block_release(v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v11 = sub_185B4A2B4;
  v12 = v4;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B0E6C8;
  v10 = &block_descriptor_88_0;
  v5 = _Block_copy(&v7);

  [v3 getPerAppManagedProtectability_];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

void sub_185B47124(void *a1)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1ED6F5130);
  v3 = a1;
  oslog = sub_185B67B6C();
  v4 = sub_185B6808C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_185AC1000, oslog, v4, "Could not get protectability: %{public}@", v5, 0xCu);
    sub_185ACF5CC(v6, &unk_1EA8CC820, &unk_185B6B2A0);
    MEMORY[0x1865FE2F0](v6, -1, -1);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }
}

void sub_185B47280(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_185B67C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_185B67CDC();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  v49 = a1;
  os_unfair_lock_lock(v17 + 10);
  sub_185B4A2BC(&v17[4], aBlock);
  os_unfair_lock_unlock(v17 + 10);
  v18 = aBlock[0];
  v48 = v12;
  if (a1)
  {
    v19 = qword_1ED6F4CB0;
    v20 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_185B67B8C();
    __swift_project_value_buffer(v21, qword_1ED6F5130);
    v22 = v20;
    v23 = sub_185B67B6C();
    v24 = sub_185B680AC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v46 = v7;
      v26 = v25;
      v27 = swift_slowAlloc();
      v45 = v6;
      v28 = v18;
      v29 = v27;
      *v26 = 138543362;
      *(v26 + 4) = v22;
      *v27 = a1;
      v30 = v22;
      _os_log_impl(&dword_185AC1000, v23, v24, "got per-app managed protectability %{public}@", v26, 0xCu);
      sub_185ACF5CC(v29, &unk_1EA8CC820, &unk_185B6B2A0);
      v31 = v29;
      v18 = v28;
      v6 = v45;
      MEMORY[0x1865FE2F0](v31, -1, -1);
      v32 = v26;
      v7 = v46;
      MEMORY[0x1865FE2F0](v32, -1, -1);

      v23 = v30;
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      __break(1u);
      return;
    }

    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v33 = sub_185B67B8C();
    __swift_project_value_buffer(v33, qword_1ED6F5130);
    v34 = a2;
    v23 = sub_185B67B6C();
    v35 = sub_185B6808C();

    if (os_log_type_enabled(v23, v35))
    {
      v36 = v18;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      v39 = a2;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_185AC1000, v23, v35, "Could not get protectability: %{public}@", v37, 0xCu);
      sub_185ACF5CC(v38, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v38, -1, -1);
      v41 = v37;
      v18 = v36;
      MEMORY[0x1865FE2F0](v41, -1, -1);
    }
  }

  if (qword_1EA8CB980 != -1)
  {
    swift_once();
  }

  v42 = swift_allocObject();
  *(v42 + 16) = v18;
  *(v42 + 24) = a2;
  aBlock[4] = sub_185B4A2D8;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_94;
  v43 = _Block_copy(aBlock);
  v44 = a2;
  sub_185B67CBC();
  v50 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v16, v11, v43);
  _Block_release(v43);
  (*(v7 + 8))(v11, v6);
  (*(v47 + 8))(v16, v48);
}

void sub_185B4781C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = *a1;
    v7 = a2;

    *a1 = a2;
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *a3 = v8;
}

uint64_t sub_185B47884(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = a2;

      v6(&v7);

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_185B478F8()
{
  v1 = v0[2];
  v2 = *v0;
  os_unfair_lock_lock(v1 + 10);
  sub_185B4A290(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_185B47970(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 8) == -1)
  {
    if (qword_1EA8CB978 != -1)
    {
      swift_once();
    }

    v2 = qword_1EA8D22D0;
    v3 = swift_allocObject();
    swift_weakInit();
    v17[4] = sub_185B4A2AC;
    v17[5] = v3;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_185ACEA8C;
    v17[3] = &block_descriptor_79;
    v4 = _Block_copy(v17);

    v5 = sub_185B67ECC();
    v6 = notify_register_dispatch((v5 + 32), v1, v2, v4);

    _Block_release(v4);
    if (v6)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v7 = sub_185B67B8C();
      __swift_project_value_buffer(v7, qword_1ED6F5130);
      v8 = sub_185B67B6C();
      v9 = sub_185B6808C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v17[0] = v11;
        *v10 = 136315394;
        v12 = *MEMORY[0x1E69ADF98];
        v13 = sub_185B67E4C();
        v15 = sub_185ACB2C4(v13, v14, v17);

        *(v10 + 4) = v15;
        *(v10 + 12) = 1024;
        *(v10 + 14) = v6;
        _os_log_impl(&dword_185AC1000, v8, v9, "couldn't register for %s: %u", v10, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x1865FE2F0](v11, -1, -1);
        MEMORY[0x1865FE2F0](v10, -1, -1);
      }
    }
  }

  return sub_185B46FA0();
}

uint64_t sub_185B47C0C()
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1ED6F5130);
  v1 = sub_185B67B6C();
  v2 = sub_185B680AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_185ACB2C4(0xD00000000000002FLL, 0x8000000185B76C70, &v6);
    _os_log_impl(&dword_185AC1000, v1, v2, "got %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x1865FE2F0](v4, -1, -1);
    MEMORY[0x1865FE2F0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B46FA0();
  }

  return result;
}

void sub_185B47D80(uint64_t a1, uint64_t a2)
{
  v5 = sub_185B67C9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_185B67CDC();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 16);
  v21 = a1;
  v22 = a2;
  os_unfair_lock_lock(v16 + 10);
  sub_185B4A21C(&v16[4], aBlock);
  os_unfair_lock_unlock(v16 + 10);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v19 = v6;
    if (qword_1EA8CB980 != -1)
    {
      swift_once();
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    aBlock[4] = sub_185B4A238;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_70;
    v18 = _Block_copy(aBlock);

    sub_185B67CBC();
    v23 = MEMORY[0x1E69E7CC0];
    sub_185AE216C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v15, v10, v18);
    _Block_release(v18);
    (*(v19 + 8))(v10, v5);
    (*(v11 + 8))(v15, v20);
  }
}

uint64_t sub_185B480B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (*result)
  {
    v5 = 1;
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = *(v8 + 16);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_185B3D07C(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      result = sub_185B3D07C((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
    }

    v5 = 0;
    v10[2] = v12 + 1;
    v13 = &v10[2 * v12];
    v13[4] = sub_185B4A264;
    v13[5] = v9;
    *(v8 + 16) = v10;
  }

  *a4 = v5;
  return result;
}

id sub_185B481BC()
{
  result = [objc_allocWithZone(APSettingsManager) init];
  qword_1EA8D2270 = result;
  return result;
}

APSettingsManager __swiftcall APSettingsManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static APSettingsManager.shared()()
{
  if (qword_1EA8CB968 != -1)
  {
    swift_once();
  }

  if (qword_1EA8CB670 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2270;

  return v0;
}

void sub_185B482CC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v5 = sub_185B67B8C();
    __swift_project_value_buffer(v5, qword_1ED6F5130);
    v6 = a1;
    v7 = sub_185B67B6C();
    v8 = sub_185B6808C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_185AC1000, v7, v8, "error on connection: %@", v9, 0xCu);
      sub_185ACF5CC(v10, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v10, -1, -1);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    swift_beginAccess();
    v13 = *(a2 + 16);
    *(a2 + 16) = a1;
  }
}

uint64_t sub_185B48468(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v9 = a3;
  v10 = a1;
  a6(v9, a4);

  return 1;
}

uint64_t sub_185B48510(id a1, uint64_t (*a2)(id))
{
  if (a1)
  {
    v4 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v5 = sub_185B67B8C();
    __swift_project_value_buffer(v5, qword_1ED6F5130);
    v6 = a1;
    v7 = sub_185B67B6C();
    v8 = sub_185B6808C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_185AC1000, v7, v8, "error on write connection: %@", v9, 0xCu);
      sub_185ACF5CC(v10, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v10, -1, -1);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    else
    {
    }
  }

  return a2(a1);
}

void sub_185B486D0(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(id, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a1;
  a6(v11, a4, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_185B48970(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_185B489B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_185B48A08()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  v3 = [result isLockingAppsAllowed];

  if (!v3)
  {
    return 0;
  }

  result = [v0 sharedConnection];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result isHidingAppsAllowed];

  if (!v5)
  {
    return 0;
  }

  if (qword_1EA8CB968 != -1)
  {
    v6 = swift_once();
  }

  v8 = *(qword_1EA8D22C8 + 16);
  MEMORY[0x1EEE9AC00](v6, v7);
  os_unfair_lock_lock((v8 + 40));
  sub_185B4A1D4((v8 + 16), &v9);
  os_unfair_lock_unlock((v8 + 40));
  return v9;
}

id sub_185B48B58(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = &type metadata for AppRecordProtectabilityInfo;
  v20 = &off_1EF466208;
  v18[0] = a1;
  v18[1] = a2;
  sub_185B4A164(a3, v16);
  if (v17)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD608, &unk_185B6ED18);
    type metadata accessor for APPersistentStore();
    if (swift_dynamicCast())
    {
      if ((*(*(v15 + 16) + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) & 1) == 0)
      {
        v7 = sub_185AD0148(0x12uLL, 0xD000000000000051, 0x8000000185B77FF0, 28, 0xD00000000000005ELL, 0x8000000185B77F60);

        goto LABEL_23;
      }
    }
  }

  else
  {
    v5 = a1;
    swift_unknownObjectRetain();
    sub_185ACF5CC(v16, &qword_1EA8CD600, &qword_185B6ED10);
  }

  if (qword_1EA8CB9A0 != -1)
  {
    swift_once();
  }

  if (byte_1EA8CB9A8 != 1)
  {
    v11 = 0xD000000000000020;
    v12 = 0x8000000185B77F30;
    v13 = 17;
    v14 = 32;
LABEL_22:
    v7 = sub_185AD0148(v13, v11, v12, v14, 0xD00000000000005ELL, 0x8000000185B77F60);
    goto LABEL_23;
  }

  v16[0] = 0;
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0)
  {
    v13 = 2;
    v11 = 0;
    v12 = 0;
    v14 = 36;
    goto LABEL_22;
  }

  if (!sub_185AD06D8())
  {
    v13 = 12;
    v11 = 0;
    v12 = 0;
    v14 = 40;
    goto LABEL_22;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v18, v19);
  v7 = sub_185AD0A7C(*v6, v6[1]);
  if (v7)
  {
LABEL_23:
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return v7;
  }

  result = [*__swift_project_boxed_opaque_existential_1(v18 v19)];
  if (result)
  {
    v9 = result;
    sub_185B67E4C();

    LOBYTE(v9) = sub_185AD0CB0();

    if ((v9 & 1) == 0)
    {
LABEL_21:
      v11 = 0xD000000000000023;
      v12 = 0x8000000185B77FC0;
      v13 = 9;
      v14 = 48;
      goto LABEL_22;
    }

    result = [*__swift_project_boxed_opaque_existential_1(v18 v19)];
    if (result)
    {
      v10 = result;
      sub_185B67E4C();

      LOBYTE(v10) = sub_185B48A08();

      if (v10)
      {
        v7 = 0;
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185B48EA4(NSObject *a1, char a2)
{
  v5 = sub_185ACFB68(a1);
  if (v2)
  {
    return swift_willThrow();
  }

  v6 = v5;
  v7 = APGetPrivacyDisclosureInterface();
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = sub_185B48B58(v8, v7, &v20);
  swift_unknownObjectRelease();

  sub_185ACF5CC(&v20, &qword_1EA8CD600, &qword_185B6ED10);
  if (v9)
  {
    return swift_willThrow();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_185B4A200;
  *(v12 + 24) = v11;
  v22 = sub_185B4A340;
  v23 = v12;
  *&v20 = MEMORY[0x1E69E9820];
  *(&v20 + 1) = 1107296256;
  *&v21 = sub_185B6657C;
  *(&v21 + 1) = &block_descriptor_61;
  v13 = _Block_copy(&v20);
  swift_retain_n();

  v14 = APGetSyncWriteProxy(v13);
  _Block_release(v13);
  v15 = [a1 effectiveBundleIdentifier];
  if (!v15)
  {
    sub_185B67E4C();
    v15 = sub_185B67E1C();
  }

  v22 = sub_185B4A200;
  v23 = v11;
  *&v20 = MEMORY[0x1E69E9820];
  *(&v20 + 1) = 1107296256;
  *&v21 = sub_185B2AF84;
  *(&v21 + 1) = &block_descriptor_64_0;
  v16 = _Block_copy(&v20);

  [v14 setBundleIdentifier:v15 hidden:a2 & 1 completion:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v17 = *(v11 + 16);
  if (v17)
  {
    v18 = *(v11 + 16);
    swift_willThrow();
    v19 = v17;
  }
}

id sub_185B49188(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v20 = &type metadata for AppRecordProtectabilityInfo;
  v21 = &off_1EF466208;
  v19[0] = a1;
  v19[1] = a2;
  sub_185B4A164(a4, v17);
  if (v18)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD608, &unk_185B6ED18);
    type metadata accessor for APPersistentStore();
    if (swift_dynamicCast())
    {
      if ((*(*(v16 + 16) + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) & 1) == 0)
      {
        v12 = sub_185AD0148(0x12uLL, 0xD000000000000051, 0x8000000185B77FF0, 62, 0xD000000000000072, 0x8000000185B78080);

LABEL_18:
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        return v12;
      }
    }
  }

  else
  {
    v7 = a1;
    swift_unknownObjectRetain();
    sub_185ACF5CC(v17, &qword_1EA8CD600, &qword_185B6ED10);
  }

  if (qword_1EA8CB9A0 != -1)
  {
    swift_once();
  }

  if (byte_1EA8CB9A8 != 1)
  {
    v8 = 0xD000000000000020;
    v9 = 0x8000000185B77F30;
    v10 = 17;
    v11 = 66;
    goto LABEL_17;
  }

  v17[0] = 0;
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0)
  {
    v10 = 2;
    v8 = 0;
    v9 = 0;
    v11 = 70;
    goto LABEL_17;
  }

  if (!sub_185AD06D8())
  {
    v10 = 12;
    v8 = 0;
    v9 = 0;
    v11 = 74;
    goto LABEL_17;
  }

  if (a3)
  {
    v8 = 0xD000000000000026;
    v9 = 0x8000000185B77BF0;
    v10 = 3;
    v11 = 78;
LABEL_17:
    v12 = sub_185AD0148(v10, v8, v9, v11, 0xD000000000000072, 0x8000000185B78080);
    goto LABEL_18;
  }

  v14 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v12 = sub_185ACF880(*v14, v14[1]);
  if (v12)
  {
    goto LABEL_18;
  }

  result = [*__swift_project_boxed_opaque_existential_1(v19 v20)];
  if (result)
  {
    v15 = result;
    sub_185B67E4C();

    LOBYTE(v15) = sub_185AD0CB0();

    if (v15)
    {
      v12 = 0;
      goto LABEL_18;
    }

    v8 = 0xD000000000000023;
    v9 = 0x8000000185B78100;
    v10 = 9;
    v11 = 86;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_185B494BC(NSObject *a1, char a2)
{
  v5 = sub_185ACFB68(a1);
  if (v2)
  {
    return swift_willThrow();
  }

  v6 = v5;
  v7 = [a1 isHidden];
  v8 = APGetPrivacyDisclosureInterface();
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = sub_185B49188(v9, v8, v7, &v21);
  swift_unknownObjectRelease();

  sub_185ACF5CC(&v21, &qword_1EA8CD600, &qword_185B6ED10);
  if (v10)
  {
    return swift_willThrow();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_185B4A344;
  *(v13 + 24) = v12;
  v23 = sub_185B4A340;
  v24 = v13;
  *&v21 = MEMORY[0x1E69E9820];
  *(&v21 + 1) = 1107296256;
  *&v22 = sub_185B6657C;
  *(&v22 + 1) = &block_descriptor_50_1;
  v14 = _Block_copy(&v21);
  swift_retain_n();

  v15 = APGetSyncWriteProxy(v14);
  _Block_release(v14);
  v16 = [a1 effectiveBundleIdentifier];
  if (!v16)
  {
    sub_185B67E4C();
    v16 = sub_185B67E1C();
  }

  v23 = sub_185B4A344;
  v24 = v12;
  *&v21 = MEMORY[0x1E69E9820];
  *(&v21 + 1) = 1107296256;
  *&v22 = sub_185B2AF84;
  *(&v22 + 1) = &block_descriptor_53;
  v17 = _Block_copy(&v21);

  [v15 setBundleIdentifier:v16 locked:a2 & 1 completion:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v18 = *(v12 + 16);
  if (v18)
  {
    v19 = *(v12 + 16);
    swift_willThrow();
    v20 = v18;
  }
}

void sub_185B497B8(NSObject *a1, char a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_185ACFB68(a1);
  v8 = APGetPrivacyDisclosureInterface();
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = sub_185B48B58(v9, v8, &v20);
  swift_unknownObjectRelease();

  sub_185ACF5CC(&v20, &qword_1EA8CD600, &qword_185B6ED10);
  if (v10)
  {
    v11 = v10;
    v12 = sub_185B6791C();
    (a3)[2](a3, 0, v12);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_185ACA0F0;
    *(v13 + 24) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_185B12514;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_185B4A348;
    *(v15 + 24) = v14;
    v22 = sub_185B4A340;
    v23 = v15;
    *&v20 = MEMORY[0x1E69E9820];
    *(&v20 + 1) = 1107296256;
    *&v21 = sub_185B6657C;
    *(&v21 + 1) = &block_descriptor_37_3;
    v16 = _Block_copy(&v20);

    v17 = APGetAsyncWriteProxy(v16);
    _Block_release(v16);
    v18 = [a1 effectiveBundleIdentifier];
    if (!v18)
    {
      sub_185B67E4C();
      v18 = sub_185B67E1C();
    }

    v22 = sub_185B4A348;
    v23 = v14;
    *&v20 = MEMORY[0x1E69E9820];
    *(&v20 + 1) = 1107296256;
    *&v21 = sub_185B2AF84;
    *(&v21 + 1) = &block_descriptor_40_1;
    v19 = _Block_copy(&v20);

    [v17 setBundleIdentifier:v18 hidden:a2 & 1 completion:v19];
    _Block_release(v19);

    swift_unknownObjectRelease();
  }
}

void sub_185B49AF8(NSObject *a1, char a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_185ACFB68(a1);
  v8 = [a1 isHidden];
  v9 = APGetPrivacyDisclosureInterface();
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = sub_185B49188(v10, v9, v8, &v21);
  swift_unknownObjectRelease();

  sub_185ACF5CC(&v21, &qword_1EA8CD600, &qword_185B6ED10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_185B6791C();
    (a3)[2](a3, 0, v13);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_185ACA0F4;
    *(v14 + 24) = v6;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_185B12714;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_185B4A1F8;
    *(v16 + 24) = v15;
    v23 = sub_185B0FA08;
    v24 = v16;
    *&v21 = MEMORY[0x1E69E9820];
    *(&v21 + 1) = 1107296256;
    *&v22 = sub_185B6657C;
    *(&v22 + 1) = &block_descriptor_21;
    v17 = _Block_copy(&v21);

    v18 = APGetAsyncWriteProxy(v17);
    _Block_release(v17);
    v19 = [a1 effectiveBundleIdentifier];
    if (!v19)
    {
      sub_185B67E4C();
      v19 = sub_185B67E1C();
    }

    v23 = sub_185B4A1F8;
    v24 = v15;
    *&v21 = MEMORY[0x1E69E9820];
    *(&v21 + 1) = 1107296256;
    *&v22 = sub_185B2AF84;
    *(&v22 + 1) = &block_descriptor_19_0;
    v20 = _Block_copy(&v21);

    [v18 setBundleIdentifier:v19 locked:a2 & 1 completion:v20];
    _Block_release(v20);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_185B49E58(NSObject *a1)
{
  v1 = a1;
  v2 = sub_185ACFB68(a1);
  LOBYTE(v1) = [v1 isHidden];
  v3 = APGetPrivacyDisclosureInterface();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = v2;
  v5 = sub_185B49188(v4, v3, v1, v7);
  swift_unknownObjectRelease();

  sub_185ACF5CC(v7, &qword_1EA8CD600, &qword_185B6ED10);
  if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_185B49F34(NSObject *a1)
{
  v1 = sub_185ACFB68(a1);
  v2 = APGetPrivacyDisclosureInterface();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = v1;
  v4 = sub_185B48B58(v3, v2, v6);
  swift_unknownObjectRelease();

  sub_185ACF5CC(v6, &qword_1EA8CD600, &qword_185B6ED10);
  if (!v4)
  {
    return 1;
  }

  return 0;
}

id sub_185B49FEC()
{
  v0 = *MEMORY[0x1E696A768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v2 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 278;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 72) = v2;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v3;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD00000000000002FLL;
  *(inited + 104) = 0x8000000185B77F00;
  v4 = v0;
  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v6 = sub_185B67D7C();

  v7 = [v5 initWithDomain:v4 code:-4 userInfo:v6];

  return v7;
}

uint64_t sub_185B4A164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD600, &qword_185B6ED10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_185B4A1D4(void **a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_185AD0DE8(a1, &selRef_isHideable, a2);
}

uint64_t sub_185B4A238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_185B4A264(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_185B4A290(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_185B47970(a1);
}

void sub_185B4A34C(uint64_t a1@<X8>)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = [v1 raw_audit_token];
  if (!v3)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v15 = sub_185B67B8C();
    __swift_project_value_buffer(v15, qword_1EA8D2278);
    v16 = sub_185B67B6C();
    v17 = sub_185B6809C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_185AC1000, v16, v17, "data access record had no audit token data!", v18, 2u);
      MEMORY[0x1865FE2F0](v18, -1, -1);
    }

    goto LABEL_13;
  }

  v4 = v3;
  v5 = sub_185B67A5C();
  v7 = v6;

  v31 = 0u;
  v32 = 0u;
  v8 = sub_185B67A4C();
  v34[0] = 0;
  v9 = APAuditTokenFromData(v8, &v31, v34);

  v10 = v34[0];
  if (!v9)
  {
    v19 = qword_1EA8CB718;
    v20 = v34[0];
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_185B67B8C();
    __swift_project_value_buffer(v21, qword_1EA8D2278);
    v16 = sub_185B67B6C();
    v22 = sub_185B6809C();
    if (os_log_type_enabled(v16, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v10;
      v34[0] = v24;
      *v23 = 136315138;
      v20 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD628, &qword_185B6EE40);
      v25 = sub_185B67EBC();
      v27 = sub_185ACB2C4(v25, v26, v34);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_185AC1000, v16, v22, "cannot convert data to audit token: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1865FE2F0](v24, -1, -1);
      MEMORY[0x1865FE2F0](v23, -1, -1);
    }

    sub_185AE2FC8(v5, v7);

LABEL_13:
    v12 = 0uLL;
    v14 = 1;
    v13 = 0uLL;
    goto LABEL_14;
  }

  v11 = v34[0];
  sub_185AE2FC8(v5, v7);
  v29 = v32;
  v30 = v31;

  v13 = v29;
  v12 = v30;
  v14 = 0;
LABEL_14:
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  v28 = *MEMORY[0x1E69E9840];
}

unint64_t sub_185B4A660()
{
  sub_185B4A34C(&v7);
  if (v8)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v0 = sub_185B67B8C();
    __swift_project_value_buffer(v0, qword_1EA8D2278);
    v1 = sub_185B67B6C();
    v2 = sub_185B6809C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_185AC1000, v1, v2, "data access record had no audit token!", v3, 2u);
      MEMORY[0x1865FE2F0](v3, -1, -1);
    }

    return 0;
  }

  else
  {
    v6 = v7;
    v5 = audit_token_to_pid(&v6);
    v6 = v7;
    return v5 | (audit_token_to_pidversion(&v6) << 32);
  }
}

uint64_t sub_185B4A790(uint64_t a1, uint64_t a2)
{
  v5[2] = &v6;
  v6 = MEMORY[0x1E69E7CC8];
  (*(a2 + 56))(sub_185B5444C, v5, a1, a2);
  v3 = v6;
  if (v2)
  {
  }

  return v3;
}

uint64_t sub_185B4A814(uint64_t a1)
{
  result = MEMORY[0x1865FD050](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_185AC407C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B4A930()
{
  v1 = *v0;
  sub_185B6866C();
  sub_185B6868C();
  return sub_185B686AC();
}

uint64_t sub_185B4A9A4()
{
  v1 = *v0;
  sub_185B6866C();
  sub_185B6868C();
  return sub_185B686AC();
}

unsigned __int16 *sub_185B4A9E8@<X0>(unsigned __int16 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void sub_185B4AA0C(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  *&v21 = 0;
  v3 = [a1 executeRequest:a2 error:&v21];
  v4 = v21;
  if (!v3)
  {
    v8 = v21;
    sub_185B6792C();

    swift_willThrow();
    goto LABEL_14;
  }

  v5 = v3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = v4;
  if (!v6)
  {

    v21 = 0u;
    v22 = 0u;
LABEL_13:
    sub_185ACF5CC(&v21, &qword_1EA8CC830, &unk_185B6BEB0);
    goto LABEL_14;
  }

  if ([v6 result])
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {

    goto LABEL_13;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD648, &qword_185B6EE60);
  if (swift_dynamicCast())
  {
    v10 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD650, &qword_185B6EE68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB70;
    v12 = *MEMORY[0x1E695D2F8];
    *&v21 = sub_185B67E4C();
    *(&v21 + 1) = v13;
    sub_185B6831C();
    *(inited + 96) = v9;
    *(inited + 72) = v19;
    sub_185B532B4(inited);
    swift_setDeallocating();
    sub_185ACF5CC(inited + 32, &qword_1EA8CD658, &unk_185B6EE70);
    v14 = sub_185B67D7C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_185B6C470;
    *(v15 + 32) = a1;
    sub_185ADF590(0, &qword_1EA8CB638, 0x1E695D628);
    v16 = a1;
    v17 = sub_185B67F5C();

    [v10 mergeChangesFromRemoteContextSave:v14 intoContexts:v17];
  }

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_185B4AD14(void *a1, uint64_t a2)
{
  type metadata accessor for PreferenceSetting();
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_185ADF590(0, &qword_1EA8CB680, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_185B6BB70;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD648, &qword_185B6EE60);
  *(v5 + 64) = sub_185B54098();
  *(v5 + 32) = a2;

  v6 = sub_185B6804C();
  [v4 setPredicate_];

  v7 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v7 setResultType_];
  sub_185B4AA0C(a1, v7);
}

uint64_t sub_185B4AE78(int a1)
{
  sub_185B6836C();
  MEMORY[0x1865FCF60](0xD000000000000019, 0x8000000185B78310);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v2, v3);

  MEMORY[0x1865FCF60](0x6E6564646968202CLL, 0xEA0000000000203ALL);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v4, v5);

  MEMORY[0x1865FCF60](0x7369766F7270202CLL, 0xEF203A6C616E6F69);
  if ((a1 & 0x10000) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v6, v7);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_185B4B004()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_185B4AE78(v2 | *v0 | v1);
}

uint64_t sub_185B4B034(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a4;
  *a4 = 0x8000000000000000;
  sub_185B529EC(a3 & 0x10101, a1, a2, isUniquelyReferenced_nonNull_native);
  v10 = *a4;
  *a4 = v12;

  return a3 & 0x10101;
}

void sub_185B4B0C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_185B67D3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 24);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_185B67D5C();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v13 = *(v2 + 16);
  if (*(v13 + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) == 1)
  {
    v14 = [v13 newBackgroundContext];
    v16 = MEMORY[0x1EEE9AC00](v14, v15);
    v34[-4] = a1;
    v34[-3] = a2;
    v34[-2] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD678, &unk_185B6EE88);
    sub_185B6821C();

    return;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = sub_185B67B8C();
  __swift_project_value_buffer(v17, qword_1EA8D2278);
  v18 = sub_185B67B6C();
  v19 = sub_185B6809C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_185AC1000, v18, v19, "Persistent container is unavailable, cannot execute context operation", v20, 2u);
    MEMORY[0x1865FE2F0](v20, -1, -1);
  }

  v21 = *MEMORY[0x1E696A250];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v23 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 220;
  v24 = MEMORY[0x1E69E6158];
  *(inited + 72) = v23;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v24;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x8000000185B78260;
  v25 = v21;
  v26 = sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v27 = *MEMORY[0x1E696A278];
  v28 = sub_185B67E4C();
  v30 = v29;
  v37 = v24;
  *&v36 = 0xD00000000000001FLL;
  *(&v36 + 1) = 0x8000000185B78240;
  sub_185AD093C(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[1] = v26;
  sub_185ACFF1C(v35, v28, v30, isUniquelyReferenced_nonNull_native);

  v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v33 = sub_185B67D7C();

  [v32 initWithDomain:v25 code:132010 userInfo:v33];

  swift_willThrow();
}

uint64_t sub_185B4B524(uint64_t a1, uint64_t a2)
{
  v6 = sub_185B67D3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 24);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6);
  v13 = v12;
  LOBYTE(v12) = sub_185B67D5C();
  (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v14 = *(v2 + 16);
  if (*(v14 + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) == 1)
  {
    v15 = [v14 newBackgroundContext];
    v17 = MEMORY[0x1EEE9AC00](v15, v16);
    v37[-4] = a1;
    v37[-3] = a2;
    v37[-2] = v17;
    sub_185B6821C();

    if (!v3)
    {
      v18 = v41;
    }

    return v18 & 1;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v19 = sub_185B67B8C();
  __swift_project_value_buffer(v19, qword_1EA8D2278);
  v20 = sub_185B67B6C();
  v21 = sub_185B6809C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_185AC1000, v20, v21, "Persistent container is unavailable, cannot execute context operation", v22, 2u);
    MEMORY[0x1865FE2F0](v22, -1, -1);
  }

  v23 = *MEMORY[0x1E696A250];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v25 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 220;
  v26 = MEMORY[0x1E69E6158];
  *(inited + 72) = v25;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v26;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x8000000185B78260;
  v27 = v23;
  v28 = sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v29 = *MEMORY[0x1E696A278];
  v30 = sub_185B67E4C();
  v32 = v31;
  v40 = v26;
  *&v39 = 0xD00000000000001FLL;
  *(&v39 + 1) = 0x8000000185B78240;
  sub_185AD093C(&v39, v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[1] = v28;
  sub_185ACFF1C(v38, v30, v32, isUniquelyReferenced_nonNull_native);

  v34 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v35 = sub_185B67D7C();

  [v34 initWithDomain:v27 code:132010 userInfo:v35];

  swift_willThrow();
  return v18 & 1;
}

void sub_185B4B96C(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = sub_185B542E4(a1, a2);
  if (!v3)
  {
    if (v5)
    {
      v6 = v5;
      v7 = [v5 locked];
      v8 = [v6 hidden];
      v9 = [v6 provisional];

      if (v8)
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 | v7;
      if (v9)
      {
        v12 = 0x10000;
      }

      else
      {
        v12 = 0;
      }

      v13 = v11 | v12;
    }

    else
    {
      v13 = 2;
    }

    *a3 = v13;
    *(a3 + 2) = BYTE2(v13);
  }
}

uint64_t sub_185B4BA2C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = a3;
  v22 = 0;
  v16 = a1;
  v17 = a2;
  v18 = a3 & 0x101;
  v8 = (a3 >> 8) & 1;
  v19 = BYTE2(a3) & 1;
  v20 = &v22;
  sub_185ACCE00(sub_185B5458C, v15);
  if (!v3)
  {
    v4 = v22;
    if (v22 == 1)
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v9 = sub_185B67B8C();
      __swift_project_value_buffer(v9, qword_1EA8D2278);

      v10 = sub_185B67B6C();
      v11 = sub_185B680AC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v21 = v13;
        *v12 = 136315650;
        *(v12 + 4) = sub_185ACB2C4(a1, a2, &v21);
        *(v12 + 12) = 1024;
        *(v12 + 14) = v5 & 1;
        *(v12 + 18) = 1024;
        *(v12 + 20) = v8;
        _os_log_impl(&dword_185AC1000, v10, v11, "changed app preferences for %s to locked: %{BOOL}d, hidden: %{BOOL}d, notifying subscribers", v12, 0x18u);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x1865FE2F0](v13, -1, -1);
        MEMORY[0x1865FE2F0](v12, -1, -1);
      }
    }
  }

  return v4 & 1;
}

void sub_185B4BC08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, _BYTE *a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = sub_185B542E4(a3, a4);
  if (v6)
  {
    goto LABEL_14;
  }

  v11 = v10;
  if (v10)
  {
    v12 = [v10 locked];
    v13 = [v11 hidden];
    v14 = [v11 provisional];
    if (((v12 ^ a5) & 1) == 0 && ((v13 ^ ((a5 & 0x100) >> 8)) & 1) == 0 && ((v14 ^ ((a5 & 0x10000) >> 16)) & 1) == 0)
    {

      if ((*a6 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v15 = HIWORD(a5) & 1;
    v16 = (a5 >> 8) & 1;
  }

  else
  {
    v15 = HIWORD(a5) & 1;
    v16 = (a5 >> 8) & 1;
    type metadata accessor for PreferenceSetting();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v17 = sub_185B67E1C();
    [v11 setBundleid_];
  }

  [v11 setLocked_];
  [v11 setHidden_];
  [v11 setProvisional_];

  *a6 = 1;
LABEL_11:
  v22[0] = 0;
  if ([a1 save_])
  {
    v18 = v22[0];
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  v20 = v22[0];
  sub_185B6792C();

  swift_willThrow();
LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_185B4BE24(void *a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1865FD870]();
  sub_185B4BF9C(a2, a3, &v15, &v14, &v13);
  if (v3)
  {
    objc_autoreleasePoolPop(v7);
    goto LABEL_3;
  }

  objc_autoreleasePoolPop(v7);
  v10 = v14;
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (sub_185B6844C() > 0)
  {
LABEL_6:
    sub_185B4AD14(a1, v10);
  }

LABEL_7:
  if (v15 == 1)
  {
    v13 = 0;
    if ([a1 save_])
    {
      v11 = v13;
    }

    else
    {
      v12 = v13;
      sub_185B6792C();

      swift_willThrow();
    }
  }

LABEL_3:

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185B4BF9C(uint64_t (*a1)(uint64_t, uint64_t, void), uint64_t a2, _BYTE *a3, void *a4, uint64_t *a5)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_185B67E1C();
  v8 = [v6 initWithEntityName_];

  v44[0] = 0;
  v9 = [v8 execute_];

  v10 = v44[0];
  if (v9)
  {
    type metadata accessor for PreferenceSetting();
    v11 = sub_185B67F6C();
    v12 = v10;

    if (v11 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_185B6844C())
    {
      v14 = 0;
      v40 = v11 & 0xFFFFFFFFFFFFFF8;
      v41 = v11 & 0xC000000000000001;
      v39 = v11;
      while (1)
      {
        if (v41)
        {
          v17 = MEMORY[0x1865FD3E0](v14, v11);
        }

        else
        {
          if (v14 >= *(v40 + 16))
          {
            goto LABEL_29;
          }

          v17 = *(v11 + 8 * v14 + 32);
        }

        v18 = v17;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v43 = v14 + 1;
        v19 = [v17 locked];
        v20 = [v18 hidden];
        v21 = [v18 provisional];
        v22 = [v18 bundleid];
        if (!v22)
        {
          __break(1u);
        }

        v23 = v22;
        v24 = sub_185B67E4C();
        v26 = v25;

        if (v21)
        {
          v27 = 0x10000;
        }

        else
        {
          v27 = 0;
        }

        if (v20)
        {
          v28 = 256;
        }

        else
        {
          v28 = 0;
        }

        v29 = a1(v24, v26, v28 | v19 | v27);

        if (v29 == 2)
        {
          *a3 = 1;
          v30 = [v18 objectID];
          MEMORY[0x1865FCFA0]();
          if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v32 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_185B67F8C();
          }

          sub_185B67FAC();
        }

        else
        {
          v31 = v29 & 0xFFFFFF;
          if ((v19 ^ v29) & 1) != 0 || ((v20 ^ ((v29 & 0x100) >> 8)) & 1) != 0 || ((v21 ^ ((v29 & 0x10000u) >> 16)))
          {
            v15 = HIWORD(v31) & 1;
            v16 = (v31 >> 8) & 1;
            *a3 = 1;
            [v18 setLocked_];
            [v18 setHidden_];
            [v18 setProvisional_];
          }
        }

        ++v14;
        v11 = v39;
        if (v43 == i)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

LABEL_31:
  }

  else
  {
    v33 = v44[0];
    v34 = sub_185B6792C();

    result = swift_willThrow();
    *a5 = v34;
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185B4C344(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, int a9, int a10)
{
  v67 = a7;
  v68 = a8;
  v66 = a6;
  v72 = a4;
  v73 = a5;
  v71 = a1;
  v81 = *MEMORY[0x1E69E9840];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v69 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v58 - v19;
  v21 = sub_185B67AFC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  sub_185AD04BC(a2, v20, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v27 = *(v22 + 48);
  if (v27(v20, 1, v21) != 1)
  {
    v28 = a3;
    (*(v22 + 32))(v26, v20, v21);
    sub_185B53510();
    if (v10)
    {
      (*(v22 + 8))(v26, v21);
      goto LABEL_25;
    }

    v33 = v32;
    (*(v22 + 8))(v26, v21);
    if (v33)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v65 = v27;
  sub_185ACF5CC(v20, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v28 = a3;
  v29 = [a3 bundleIdentifier];
  if (v29)
  {
    v30 = v29;
    sub_185B67E4C();

    sub_185B53884();
    if (v10)
    {

LABEL_25:
      v51 = *MEMORY[0x1E69E9840];
      return;
    }

    v33 = v31;

    if (v33)
    {
      goto LABEL_24;
    }

    v27 = v65;
LABEL_11:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v64 = v28;
      v65 = v27;
      v34 = 1;
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v52 = sub_185B67B8C();
        __swift_project_value_buffer(v52, qword_1EA8D2278);
        v53 = v28;
        v33 = sub_185B67B6C();
        v54 = sub_185B680AC();

        if (os_log_type_enabled(v33, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v53;
          *v56 = v53;
          v57 = v53;
          _os_log_impl(&dword_185AC1000, v33, v54, "bogus bundle %@ of unknown type", v55, 0xCu);
          sub_185ACF5CC(v56, &unk_1EA8CC820, &unk_185B6B2A0);
          MEMORY[0x1865FE2F0](v56, -1, -1);
          MEMORY[0x1865FE2F0](v55, -1, -1);
        }

        goto LABEL_24;
      }

      v64 = v28;
      v65 = v27;
      v34 = 2;
    }

    v63 = v34;
    v35 = v66;
    v36 = v67;
    v61 = a10;
    v62 = a9;
    v59 = HIDWORD(v67);
    v60 = HIDWORD(v66);
    v37 = v68;
    v58 = HIDWORD(v68);
    type metadata accessor for DataAccess();
    v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v33 = [v38 initWithContext_];
    v39 = sub_185B67E1C();
    [v33 setAccessed_bundle_id:v39];

    v40 = [v64 bundleIdentifier];
    [v33 setAccessor_bundle_id:v40];

    v74 = __PAIR64__(v60, v35);
    v75 = v36;
    v76 = v59;
    v77 = v37;
    v78 = v58;
    v79 = v62;
    v80 = v61;
    v41 = APDataFromAuditToken(&v74);
    if (v41)
    {
      v42 = v41;
      v43 = sub_185B67A5C();
      v45 = v44;

      v46 = sub_185B67A4C();
      sub_185AE2FC8(v43, v45);
    }

    else
    {
      v46 = 0;
    }

    [v33 setRaw_audit_token:v46];

    [v33 setRaw_accessor_type:v63];
    v47 = v69;
    sub_185AD04BC(v70, v69, &unk_1EA8CD9A0, &unk_185B6C2C0);
    if (v65(v47, 1, v21) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_185B67ABC();
      (*(v22 + 8))(v47, v21);
    }

    [v33 setTransaction_uuid:v48];

    v74 = 0;
    if ([v71 save_])
    {
      v49 = v74;
    }

    else
    {
      v50 = v74;
      sub_185B6792C();

      swift_willThrow();
    }

LABEL_24:

    goto LABEL_25;
  }

  __break(1u);
}

void sub_185B4C96C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_185ACCE00(sub_185ACCDE4, v2);
}

void sub_185B4CAFC(void *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  sub_185B4CBBC(a1, type metadata accessor for DataAccess);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_185B4CB5C(void *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  sub_185B4CBBC(a1, type metadata accessor for PreferenceSetting);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_185B4CBBC(void *a1, void (*a2)(void))
{
  v9[1] = *MEMORY[0x1E69E9840];
  a2(0);
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  v5 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];

  [v5 setResultType_];
  sub_185B4AA0C(a1, v5);

  if (!v2)
  {
    v9[0] = 0;
    if ([a1 save_])
    {
      v6 = v9[0];
    }

    else
    {
      v7 = v9[0];
      sub_185B6792C();

      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_185B4CCE4(void *a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B53510();
  if (!v2)
  {
    v12 = v11;
    v25[1] = 0;
    if (v11)
    {
      [a1 deleteObject_];
      v26[0] = 0;
      if ([a1 save_])
      {
        v13 = v26[0];
      }

      else
      {
        v23 = v26[0];
        sub_185B6792C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v14 = sub_185B67B8C();
      __swift_project_value_buffer(v14, qword_1EA8D2278);
      (*(v6 + 16))(v10, a2, v5);
      v15 = sub_185B67B6C();
      v16 = sub_185B6808C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26[0] = v18;
        *v17 = 136315138;
        sub_185ACA328(&qword_1ED6F4640);
        v19 = sub_185B6856C();
        v21 = v20;
        (*(v6 + 8))(v10, v5);
        v22 = sub_185ACB2C4(v19, v21, v26);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_185AC1000, v15, v16, "No known access record with uuid %s...", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x1865FE2F0](v18, -1, -1);
        MEMORY[0x1865FE2F0](v17, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v10, v5);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_185B4D000(void *a1, unint64_t a2)
{
  v46 = a2;
  v47 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v3 = sub_185B6794C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = sub_185B67E1C();
  v11 = [v9 initWithEntityName_];

  v49[0] = 0;
  v12 = [v11 execute_];
  if (v12)
  {
    v13 = v12;
    v40 = v11;
    v41 = v4;
    v42 = v3;
    v38 = v2;
    v14 = v49[0];
    v39 = v13;
    sub_185B6823C();
    sub_185B6793C();
    if (v50)
    {
      v43 = HIDWORD(v46);
      v15 = type metadata accessor for DataAccess();
      v16 = MEMORY[0x1E69E7CA0];
      v17 = 0x1EA8CB000uLL;
      v18 = qword_1EA8D2278;
      *&v19 = 138412290;
      v44 = v19;
      v45 = v15;
      do
      {
        if (swift_dynamicCast())
        {
          v20 = *atoken.val;
          if (*(v17 + 1816) != -1)
          {
            swift_once();
          }

          v21 = sub_185B67B8C();
          __swift_project_value_buffer(v21, v18);
          v22 = v20;
          v23 = sub_185B67B6C();
          v24 = sub_185B680AC();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = v16;
            v27 = v18;
            v28 = v17;
            v29 = swift_slowAlloc();
            *v25 = v44;
            *(v25 + 4) = v22;
            *v29 = v22;
            v30 = v22;
            _os_log_impl(&dword_185AC1000, v23, v24, "evaluating %@ for removal", v25, 0xCu);
            sub_185ACF5CC(v29, &unk_1EA8CC820, &unk_185B6B2A0);
            v31 = v29;
            v17 = v28;
            v18 = v27;
            v16 = v26;
            MEMORY[0x1865FE2F0](v31, -1, -1);
            MEMORY[0x1865FE2F0](v25, -1, -1);
          }

          sub_185B4A34C(&v51);
          if ((v52 & 1) != 0 || (atoken = v51, v32 = audit_token_to_pid(&atoken), atoken = v51, v33 = audit_token_to_pidversion(&atoken), v32 == v46) && v33 == v43)
          {
            [v47 deleteObject_];
          }
        }

        sub_185B6793C();
      }

      while (v50);
    }

    (*(v41 + 8))(v8, v42);

    v49[0] = 0;
    if ([v47 save_])
    {
      v34 = v49[0];
    }

    else
    {
      v36 = v49[0];
      sub_185B6792C();

      swift_willThrow();
    }
  }

  else
  {
    v35 = v49[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t sub_185B4D474@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = MEMORY[0x1E69E7CC0];

  sub_185B53C3C(a2, a3, v20);

  v9 = v20[0];
  if (v4)
  {
    goto LABEL_14;
  }

  if (v20[0] >> 62)
  {
    v18 = sub_185B6844C() > 0;
    v10 = sub_185B6844C();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v10 != 0;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1865FD3E0](i, v9);
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    [a1 deleteObject_];
  }

LABEL_11:
  v19 = 0;
  if (([a1 save_] & 1) == 0)
  {
    v16 = v19;
    sub_185B6792C();

    swift_willThrow();
LABEL_14:

    goto LABEL_15;
  }

  v14 = v19;

  *a4 = v18;
LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185B4D640(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = sub_185B542E4(a2, a3);
  if (!v4)
  {
    v9 = v7;
    if (v7)
    {
      [a1 deleteObject_];
      v12[0] = 0;
      if ([a1 save_])
      {
        v10 = v12[0];

        *a4 = 1;
      }

      else
      {
        v11 = v12[0];
        sub_185B6792C();

        swift_willThrow();
      }
    }

    else
    {
      *a4 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_185B4D73C(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = sub_185B542E4(a2, a3);
  if (!v4)
  {
    if (v7)
    {
      v8 = v7;
      if ([v7 provisional])
      {
        [v8 setProvisional_];
        v12[0] = 0;
        if ([a1 save_])
        {
          v9 = v12[0];

          *a4 = 1;
        }

        else
        {
          v11 = v12[0];
          sub_185B6792C();

          swift_willThrow();
        }

        goto LABEL_8;
      }
    }

    *a4 = 0;
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

unint64_t sub_185B4D884()
{
  result = qword_1EA8CD618;
  if (!qword_1EA8CD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD618);
  }

  return result;
}

uint64_t sub_185B4D8D8(uint64_t a1, uint64_t a2)
{
  v9[2] = *v2;
  v9[3] = a1;
  v9[4] = a2;
  sub_185B4B0C4(sub_185B41AC8, v9);
  v4 = v3 != 2;
  v5 = v3 & 1;
  if (v3 == 2)
  {
    v5 = 0;
  }

  if ((*&v4 & ((v3 & 0x10000u) >> 16)) != 0)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if ((*&v4 & ((v3 & 0x100) >> 8)) != 0)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return v7 | v5 | v6;
}

void sub_185B4D99C(uint64_t a1, uint64_t a2)
{
  v4[3] = a2;
  v3 = *v2;
  v4[2] = a1;
  sub_185ACCE00(sub_185B42920, v4);
}

void sub_185B4D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  v14[2] = a12;
  v14[3] = a7;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a8;
  v14[7] = a9;
  v14[8] = a10;
  v14[9] = a11;
  sub_185ACCE00(sub_185B54064, v14);
}

void sub_185B4DA94(uint64_t a1)
{
  v2 = *v1;
  v3[2] = a1;
  sub_185ACCE00(sub_185B53FF8, v3);
}

void sub_185B4DADC(uint64_t a1)
{
  v2 = *v1;
  v3[2] = a1;
  sub_185ACCE00(sub_185B53FAC, v3);
}

uint64_t sub_185B4DB24(uint64_t a1, uint64_t a2)
{
  v5[3] = a2;
  v3 = *v2;
  v5[2] = a1;
  return sub_185B4B524(sub_185ADF708, v5) & 1;
}

char *sub_185B4DB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD630, &qword_185B6EE48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_185B4DC64(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_185B6865C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
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
    sub_185B4E1C8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_185B4DD44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
  result = sub_185B6833C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_185B4DFA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6F0, &qword_185B6EF28);
  result = sub_185B6833C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      result = sub_185B6865C();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_185B4E1C8(uint64_t result, unint64_t a2, char a3)
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
    sub_185B4DFA4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_185B4E444();
      a2 = v7;
      goto LABEL_12;
    }

    sub_185B4E7BC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_185B6865C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v12 + 48) + 8 * a2) = v4;
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
  result = sub_185B685CC();
  __break(1u);
  return result;
}

void *sub_185B4E2E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
  v2 = *v0;
  v3 = sub_185B6832C();
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

void *sub_185B4E444()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6F0, &qword_185B6EF28);
  v2 = *v0;
  v3 = sub_185B6832C();
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

uint64_t sub_185B4E584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
  result = sub_185B6833C();
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
      sub_185B6866C();

      sub_185B67EEC();
      result = sub_185B686AC();
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

uint64_t sub_185B4E7BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6F0, &qword_185B6EF28);
  result = sub_185B6833C();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_185B6865C();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

char *sub_185B4E9AC(char *a1, int64_t a2, char a3)
{
  result = sub_185B4EA4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_185B4E9CC(void *a1, int64_t a2, char a3)
{
  result = sub_185B4EB58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_185B4E9EC(void *a1, int64_t a2, char a3)
{
  result = sub_185B4ECA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_185B4EA0C(char *a1, int64_t a2, char a3)
{
  result = sub_185B4EDD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_185B4EA2C(size_t a1, int64_t a2, char a3)
{
  result = sub_185B4EEDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_185B4EA4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_185B4EB58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD700, &qword_185B6EF38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD708, &unk_185B6EF40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_185B4ECA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD528, &qword_185B6E8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_185B4EDD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6D0, &qword_185B6EF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_185B4EEDC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD710, &qword_185B6EFD8);
  v10 = *(type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_185B4F0B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD620, &unk_185B6EE30);
  v36 = a2;
  result = sub_185B6846C();
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
        sub_185AD093C(v25, v37);
      }

      else
      {
        sub_185ACB7C8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
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
      result = sub_185AD093C(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_185B4F3A8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_185B6846C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_185B4F648(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6C0, &qword_185B6EEF8);
  result = sub_185B6846C();
  v9 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v5 + 64);
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = v18 | (v10 << 6);
      v22 = *(v5 + 56);
      *&v8 = *(*(v5 + 48) + 8 * v21);
      v35 = v8;
      v23 = *(v22 + 8 * v21);
      if ((a2 & 1) == 0)
      {
        v24 = *(v22 + 8 * v21);
      }

      v25 = *(v9 + 40);
      sub_185B6866C();
      sub_185B6869C();
      sub_185B6869C();
      result = sub_185B686AC();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(&v8 + 1) = *(&v35 + 1);
      *(*(v9 + 48) + 8 * v17) = v35;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}