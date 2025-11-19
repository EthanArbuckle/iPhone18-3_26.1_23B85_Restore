void sub_27C990(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

unint64_t sub_27CB20(int64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_ABABD0();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      sub_27F3EC(&qword_DFAA90, &type metadata accessor for IndexPath);
      v21 = sub_AB90D0();
      result = (*v31)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v33)
      {
        if (v22 >= v33 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          result = v26 + v25;
          if (v25 < v18 || result >= v26 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v33 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_27CE20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();

      sub_AB93F0();
      v9 = sub_ABB610();

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
        v15 = (v14 + v3);
        v16 = (v14 + v6);
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

uint64_t sub_27CFD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();

      sub_AB93F0();
      v10 = sub_ABB610();

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

void sub_27D180(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      if (v3 < v6 || *(a2 + 56) + 16 * v3 >= *(a2 + 56) + 16 * v6 + 16)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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
}

Swift::Int sub_27D32C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_27D518(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_ABB5C0();
      sub_ABB5D0(v10);
      sub_ABB5D0(v11);
      result = sub_ABB610();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v3);
      v15 = (v13 + 16 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(sub_AB31C0() - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
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

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

void sub_27D6F8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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
}

uint64_t sub_27D8A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();

      sub_AB93F0();
      v11 = sub_ABB610();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_27DA60(int64_t a1, uint64_t a2)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  v4 = *(v27 - 8);
  result = __chkstk_darwin(v27);
  v7 = &v25 - v6;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v26 = (sub_ABABD0() + 1) & ~v9;
    v12 = *(v4 + 72);
    while (1)
    {
      v13 = v12 * v10;
      sub_15F84(*(a2 + 48) + v12 * v10, v7, &unk_DFEEE0);
      sub_ABB5C0();
      sub_ABA7A0();
      sub_AB93F0();

      sub_AB3430();
      sub_27F3EC(&unk_DFEEF0, &type metadata accessor for Date);
      sub_AB90E0();
      v14 = sub_ABB610();
      result = sub_12E1C(v7, &unk_DFEEE0);
      v15 = v14 & v11;
      if (a1 >= v26)
      {
        if (v15 < v26 || a1 < v15)
        {
          goto LABEL_3;
        }
      }

      else if (v15 < v26 && a1 < v15)
      {
        goto LABEL_3;
      }

      if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v12 * a1 != v13)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v16 = *(a2 + 56);
      v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040) - 8) + 72);
      v18 = v17 * a1;
      result = v16 + v17 * a1;
      v19 = v17 * v10;
      v20 = v16 + v17 * v10 + v17;
      if (v18 < v19 || result >= v20)
      {
        break;
      }

      a1 = v10;
      if (v18 != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
        goto LABEL_23;
      }

LABEL_3:
      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    result = swift_arrayInitWithTakeFrontToBack();
LABEL_23:
    a1 = v10;
    goto LABEL_3;
  }

LABEL_24:
  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
    JUMPOUT(0x27DFACLL);
  }

  *(a2 + 16) = v24;
  ++*(a2 + 36);
  return result;
}

unint64_t sub_27DFF4(int64_t a1, uint64_t a2)
{
  v40 = sub_AB3820();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_ABABD0();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_27F3EC(&qword_DFAA90, &type metadata accessor for IndexPath);
      v23 = sub_AB90D0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_27E318(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      if (v3 < v6 || *(a2 + 56) + 40 * v3 >= *(a2 + 56) + 40 * v6 + 40)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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
}

Swift::Int sub_27E4CC(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_27E704(int64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20);
  v4 = *(v25 - 8);
  result = __chkstk_darwin(v25);
  v7 = &v23 - v6;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v24 = (sub_ABABD0() + 1) & ~v9;
    v12 = *(v4 + 72);
    do
    {
      v13 = v12;
      v14 = v12 * v10;
      sub_15F84(*(a2 + 48) + v12 * v10, v7, &unk_DFEF20);
      sub_ABB5C0();
      sub_ABA7A0();
      sub_AB93F0();

      sub_AB3430();
      sub_27F3EC(&unk_DFEEF0, &type metadata accessor for Date);
      sub_AB90E0();
      v15 = sub_ABB610();
      result = sub_12E1C(v7, &unk_DFEF20);
      v16 = v15 & v11;
      if (a1 >= v24)
      {
        v12 = v13;
        if (v16 < v24)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v24)
        {
          goto LABEL_10;
        }
      }

      if (a1 >= v16)
      {
LABEL_10:
        if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 * a1 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v17 = *(a2 + 56);
        v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040) - 8) + 72);
        v19 = v18 * a1;
        result = v17 + v18 * a1;
        if (v18 * a1 < (v18 * v10) || result >= v17 + v18 * v10 + v18)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v10;
          v12 = v13;
        }

        else
        {
          a1 = v10;
          v12 = v13;
          if (v19 != v18 * v10)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v10;
          }
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

uint64_t sub_27EB60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_ABB5B0();
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

Swift::Int sub_27ECD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFBF58);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_ABB5C0();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = sub_ABB610();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_27EE14(void *a1)
{
  if (!a1)
  {
    return 20;
  }

  v1 = *(&stru_108.size + (swift_isaMask & *a1));
  v2 = a1;
  LOBYTE(v1) = v1();

  return byte_B071C0[v1];
}

uint64_t sub_27EEA4(void *a1)
{
  v2 = (*(&stru_B8.offset + (swift_isaMask & *a1)))();
  if (v2)
  {
    v3 = v2;
    v4 = (*(&stru_B8.reserved2 + (swift_isaMask & *v2)))();
    v6 = v5;

    if (v6)
    {
      return v4;
    }
  }

  v7 = (*(&stru_B8.reserved2 + (swift_isaMask & *a1)))();
  if (!v7)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_11:
    sub_12E1C(&v13, &unk_DE8E40);
    return 0;
  }

  v8 = v7;
  if ([v7 storeID])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;

  if (!*(&v12 + 1))
  {
    goto LABEL_11;
  }

  sub_9ACFC(&v13, &v15);
  __swift_project_boxed_opaque_existential_1(&v15, v16);
  sub_ABB3A0();
  v9 = MPStoreItemMetadataStringNormalizeStoreIDValue();
  swift_unknownObjectRelease();
  if (v9)
  {
    v4 = sub_AB92A0();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v15);
  return v4;
}

unint64_t sub_27F09C()
{
  type metadata accessor for JSShelf();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = &OBJC_IVAR____TtC11MusicJSCore7JSShelf_title;
LABEL_5:
    v2 = (v0 + *v1);
    swift_beginAccess();
    v3 = *v2;

    return v3;
  }

  type metadata accessor for JSBrick();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = &OBJC_IVAR____TtC11MusicJSCore7JSBrick_title;
    goto LABEL_5;
  }

  type metadata accessor for JSMenu();
  if (swift_dynamicCastClass())
  {
    result = JSMenu.sections.getter();
    if (result >> 62)
    {
      v10 = result;
      v11 = sub_ABB060();
      result = v10;
      if (!v11)
      {
        goto LABEL_29;
      }

      goto LABEL_10;
    }

    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_10:
      if ((result & 0xC000000000000001) != 0)
      {
        v5 = sub_35FCC4(0, result);
        goto LABEL_13;
      }

      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        v5 = *(result + 32);
LABEL_13:
        v6 = v5;

        v7 = &OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_title;
LABEL_21:
        v9 = &v6[*v7];
        swift_beginAccess();
        v3 = *v9;

        return v3;
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_29:

    return 0;
  }

  type metadata accessor for JSGrid();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for JSSearchLandingViewModel();
    v0 = swift_dynamicCastClass();
    if (v0)
    {
      v1 = &OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title;
      goto LABEL_5;
    }

    return 0;
  }

  result = JSGrid.sections.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = result;
  v13 = sub_ABB060();
  result = v12;
  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = sub_35FC8C(0, result);
    goto LABEL_20;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(result + 32);
LABEL_20:
    v6 = v8;

    v7 = &OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id sub_27F2E4(id result)
{
  if (result >= 8)
  {
    return result;
  }

  return result;
}

void sub_27F2F4(id a1)
{
  if (a1 != &dword_8)
  {
    sub_27F304(a1);
  }
}

void sub_27F304(id a1)
{
  if (a1 >= 8)
  {
  }
}

uint64_t sub_27F314()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27F37C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27F3EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27F434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_27F490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27F524(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 8))
  {
    return (*a1 + 2147483640);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27F578(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_27F5E8()
{
  result = qword_DFBF60;
  if (!qword_DFBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBF60);
  }

  return result;
}

unint64_t sub_27F640()
{
  result = qword_DFBF68;
  if (!qword_DFBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBF68);
  }

  return result;
}

uint64_t sub_27F694()
{
  v0 = sub_ABB420();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

void sub_27F854(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle];
  *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle] = a1;
  v13 = v3;
  v4 = sub_AB92A0();
  v6 = v5;
  if (v4 == sub_AB92A0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();
    v12 = a1;

    if ((v9 & 1) != 0 || ([v1 setNeedsLayout], (v10 = *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler]) == 0))
    {

      v11 = v12;
    }

    else
    {

      v10(v1);

      sub_17654(v10);
      v11 = v13;
    }
  }
}

id sub_27FA54(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BadgingView();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_27FB20(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for BadgingView();
  v27.receiver = v9;
  v27.super_class = v14;
  objc_msgSendSuper2(&v27, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v26.receiver = v9;
  v26.super_class = v14;
  objc_msgSendSuper2(&v26, *a2, a3, a4, a5, a6);
  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v20;
  v28.size.height = v22;
  CGRectGetWidth(v28);
  [v9 *a1];
  Width = CGRectGetWidth(v29);
  result = sub_AB38D0();
  if (result)
  {
    result = [v9 setNeedsLayout];
    v24 = *&v9[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler];
    if (v24)
    {

      v24(v9);
      return sub_17654(v24);
    }
  }

  return result;
}

void sub_27FD08(double a1)
{
  v3 = [v1 traitCollection];
  [v3 displayScale];
  v35 = v1;
  v4 = *(*&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems] + 16);
  if (v4)
  {
    v33 = v3;
    v34 = OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle;
    v5 =  + 48;
    v6 = 0.0;
    v7 = &selRef__authenticateReturningError_;
    v8 = &off_DE6000;
    v9 = &OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible;
    p_name = (&JSDateDescriptor + 24);
    v11 = 0.0;
    do
    {
      v12 = *(v5 - 16);
      if (v12 == 1)
      {
        v13 = objc_allocWithZone(type metadata accessor for BadgeLabel());

        v14 = [v13 v7[124]];
      }

      else
      {
        v15 = objc_allocWithZone(UILabel);

        v16 = [v15 v7[124]];
        v17 = v9;
        v18 = v8;
        v19 = v7;
        v20 = objc_opt_self();
        v14 = v16;
        v21 = [v20 clearColor];
        [v14 setBackgroundColor:v21];

        [v14 setClipsToBounds:0];
        [v14 setTextAlignment:1];
        sub_89F60();
        v22 = *&v35[v34];
        v23 = sub_ABA560();

        v7 = v19;
        v8 = v18;
        v9 = v17;
        p_name = &JSDateDescriptor.name;
        [v14 setFont:v23];
      }

      if (v8[401] != -1)
      {
        swift_once();
      }

      [v14 p_name[425]];

      v24 = sub_AB9260();

      [v14 setText:v24];

      v25 = v14;
      [v25 sizeThatFits:{a1, 1.79769313e308}];
      v28 = v27;
      v29 = v26;
      if (v11 < v26)
      {
        v11 = v26;
      }

      sub_AB39F0();
      v31 = v30;
      [v25 setFrame:?];

      v36.origin.y = 0.0;
      v36.origin.x = v31;
      v36.size.width = v28;
      v36.size.height = v29;
      Width = CGRectGetWidth(v36);

      if (v12)
      {
        v6 = v6 + Width + 12.0 + 4.0;
      }

      else
      {
        v6 = v6 + Width + 12.0;
      }

      v5 += 24;
      --v4;
    }

    while (v4);

    v3 = v33;
  }

  sub_AB39F0();
}

uint64_t sub_2800DC()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = type metadata accessor for BadgingView();
  objc_msgSendSuper2(&v51, "layoutSubviews");
  v44 = [v0 traitCollection];
  [v44 displayScale];
  [v0 bounds];
  Width = CGRectGetWidth(v52);
  v46 = OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems;
  if (*(*&v0[OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems] + 16))
  {

    v3 = sub_AB9260();
    v4 = [v3 _isNaturallyRTL];
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC16MusicApplication11BadgingView_itemLabels;
  result = swift_beginAccess();
  v7 = *&v0[v5];
  if (v7 >> 62)
  {
    goto LABEL_50;
  }

  v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (v8)
  {
    goto LABEL_6;
  }

  while (2)
  {
    while (2)
    {
      *&v1[v5] = _swiftEmptyArrayStorage;

      v7 = *(*&v1[v46] + 16);
      v45 = OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle;
      v49 = *&v1[v46];

      v48 = v7;
      if (!v7)
      {
LABEL_46:
      }

      v12 = 0;
      v13 = 0;
      v14 = v49 + 48;
      v15 = 0.0;
      v47 = v1;
      while (v13 < *(v49 + 16))
      {
        v50 = *(v14 - 16);
        if (v50 == 1)
        {
          v19 = objc_allocWithZone(type metadata accessor for BadgeLabel());

          v20 = [v19 init];
        }

        else
        {
          v21 = objc_allocWithZone(UILabel);

          v22 = [v21 init];
          v23 = v5;
          v24 = v4;
          v25 = objc_opt_self();
          v20 = v22;
          v26 = [v25 clearColor];
          [v20 setBackgroundColor:v26];

          [v20 setClipsToBounds:0];
          [v20 setTextAlignment:1];
          sub_89F60();
          v27 = *&v1[v45];
          v28 = sub_ABA560();

          v4 = v24;
          v5 = v23;
          [v20 setFont:v28];
        }

        if (qword_DE6C88 != -1)
        {
          swift_once();
        }

        [v20 setTextColor:qword_E718C8];

        v29 = sub_AB9260();

        [v20 setText:v29];

        v30 = v20;
        v1 = v47;
        [v47 addSubview:v30];
        swift_beginAccess();
        v31 = v30;
        sub_AB9730();
        if (*(&dword_10 + (*&v1[v5] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v5] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        v7 = &v47[v5];
        sub_AB97F0();
        swift_endAccess();
        if (v4)
        {
          [v47 bounds];
          CGRectGetMaxX(v53);
        }

        [v31 sizeThatFits:{Width, 1.79769313e308}];
        v16 = v32;
        v17 = v33;
        if (!v13)
        {
          goto LABEL_41;
        }

        v34 = *&v47[v5];
        if ((v34 & 0xC000000000000001) != 0)
        {

          v7 = sub_36160C(v13 - 1, v34);
        }

        else
        {
          if (v13 > *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_49;
          }

          v7 = *(v34 + 8 * v13 + 24);
        }

        v35 = *&v47[v46];
        if (v13 > *(v35 + 16))
        {
          goto LABEL_48;
        }

        v36 = *(v35 + v12 + 8);

        [v7 frame];
        if (v4)
        {
          MinX = CGRectGetMinX(*&v37);
          v42 = -12.0;
        }

        else
        {
          MinX = CGRectGetMaxX(*&v37);
          v42 = 12.0;
        }

        if (Width < v16 + MinX + v42)
        {
          sub_AB39F0();
          v15 = v15 + v43 + 4.0;
          if (v4)
          {
            [v47 bounds];
            CGRectGetMaxX(v54);
          }
        }

        if ((v36 & 1) == 0)
        {
          if (!v50)
          {
            goto LABEL_16;
          }
        }

        else
        {
LABEL_41:
          if (!v50)
          {
            goto LABEL_16;
          }
        }

        v16 = v16 + 4.0;
        v17 = v17 + 4.0;
LABEL_16:
        ++v13;
        sub_AB39F0();
        if (v4)
        {
          v18 = v18 - v16;
        }

        [v31 setFrame:{v18, v15, v16, v17}];

        v14 += 24;
        v12 += 24;
        if (v48 == v13)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      result = sub_ABB060();
      v8 = result;
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_6:
    if (v8 >= 1)
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_36160C(i, v7);
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        v11 = v10;
        [v10 removeFromSuperview];
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

id sub_2807AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_280874(uint64_t a1, int a2)
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

uint64_t sub_2808BC(uint64_t result, int a2, int a3)
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

uint64_t sub_28090C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = v3 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties;
  if (*(v3 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties) == 2)
  {
    v85 = a1;
    v86 = a2;
    v82 = OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_requestedProperties;
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_requestedProperties);
    v8 = [v7 properties];
    v9 = sub_AB9B40();

    v10 = sub_AB92A0();
    v12 = sub_4DFDA8(v10, v11, v9);
    v14 = v13;
    v16 = v15;

    v84 = v16;
    sub_F01A0(v12, v14, v16);
    v17 = sub_AB92A0();
    v19 = sub_4DFDA8(v17, v18, v9);
    v21 = v20;
    LODWORD(v14) = v22;

    v83 = v14;
    sub_F01A0(v19, v21, v14);
    v23 = sub_AB92A0();
    v25 = sub_4DFDA8(v23, v24, v9);
    v27 = v26;
    LODWORD(v14) = v28;

    v81 = v14;
    sub_F01A0(v25, v27, v14);
    v29 = sub_AB92A0();
    v31 = sub_4DFDA8(v29, v30, v9);
    v33 = v32;
    LODWORD(v14) = v34;

    v80 = v14;
    sub_F01A0(v31, v33, v14);
    v35 = sub_AB92A0();
    v37 = sub_4DFDA8(v35, v36, v9);
    v39 = v38;
    v41 = v40;

    sub_F01A0(v37, v39, v41);
    v42 = sub_AB92A0();
    v44 = sub_4DFDA8(v42, v43, v9);
    v46 = v45;
    v48 = v47;

    sub_F01A0(v44, v46, v48);
    v49 = sub_AB92A0();
    v51 = sub_4DFDA8(v49, v50, v9);
    v53 = v52;
    v55 = v54;

    sub_F01A0(v51, v53, v55);
    v56 = sub_AB92A0();
    v58 = sub_4DFDA8(v56, v57, v9);
    v60 = v59;
    v62 = v61;

    v79 = v62 != -1;
    sub_F01A0(v58, v60, v62);
    v63 = *(v3 + v82);
    v64 = [v63 relationships];
    sub_119B5C();
    v65 = sub_AB8FF0();

    v66 = sub_AB92A0();
    if (*(v65 + 16))
    {
      sub_2EBF88(v66, v67);
      v69 = v68;

      v70 = v69 & 1;
    }

    else
    {

      v70 = 0;
    }

    *v6 = ((~v84 != 0) << 8) | ((~v83 != 0) << 16) | ((~v81 != 0) << 24) | ((~v80 != 0) << 32) | ((~v41 != 0) << 40) | ((~v48 != 0) << 48) | ((v55 != -1) << 56) | v70;
    *(v6 + 8) = v79;

    v5 = v85;
    v4 = v86;
  }

  v88 = 1;
  v71 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin(v71);
  v78[2] = v3;
  v78[3] = v5;
  v78[4] = v4;
  v78[5] = &v88;
  v72 = objc_allocWithZone(MusicModelFlowcaseItem);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_281694;
  *(v73 + 24) = v78;
  aBlock[4] = sub_57B84;
  aBlock[5] = v73;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_94;
  v74 = _Block_copy(aBlock);

  v75 = [v72 initWithIdentifiers:v71 block:v74];
  _Block_release(v74);

  LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

  if (v74)
  {
    __break(1u);
  }

  else
  {
    v77 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v75 personalizationStyle:v88];

    return v77;
  }

  return result;
}

void sub_280EA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = (a2 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties);
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties);
  if (v11 == 2)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  v12 = v9;
  if (v11)
  {

    sub_4D3314(a3, a4);
    v14 = v13;
    v16 = v15;

    [v12 setContentItem:v14];
    if (v14)
    {

      *a5 = v16;
    }
  }

  v17 = *v10;
  if (*v10 == 2)
  {
    goto LABEL_46;
  }

  if ((v17 & 0x100) != 0)
  {
    v18 = a3 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionTitleText;
    swift_beginAccess();
    if (*(v18 + 1))
    {

      v19 = sub_AB9260();
    }

    else
    {
      v19 = 0;
    }

    [v12 setDescriptionTitleText:v19];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_47;
  }

  if ((v17 & 0x10000) != 0)
  {
    v20 = a3 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionText;
    swift_beginAccess();
    if (*(v20 + 1))
    {

      v21 = sub_AB9260();
    }

    else
    {
      v21 = 0;
    }

    [v12 setDescriptionText:v21];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_48;
  }

  if ((v17 & 0x1000000) != 0)
  {
    v22 = a3 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_headlineText;
    swift_beginAccess();
    if (*(v22 + 1))
    {

      v23 = sub_AB9260();
    }

    else
    {
      v23 = 0;
    }

    [v12 setHeadlineText:v23];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_49;
  }

  if ((v17 & 0x100000000) != 0)
  {
    v24 = a3 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_subtitleText;
    swift_beginAccess();
    if (*(v24 + 1))
    {

      v25 = sub_AB9260();
    }

    else
    {
      v25 = 0;
    }

    [v12 setSubtitleText:v25];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_50;
  }

  if ((v17 & 0x10000000000) != 0)
  {
    v26 = a3 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_titleText;
    swift_beginAccess();
    if (*(v26 + 1))
    {

      v27 = sub_AB9260();
    }

    else
    {
      v27 = 0;
    }

    [v12 setTitleText:v27];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_51;
  }

  if ((v17 & 0x1000000000000) != 0)
  {
    v28 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailHorizontalAlignment;
    swift_beginAccess();
    [v12 setThumbnailHorizontalAlignment:*(a3 + v28)];
    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_52;
  }

  if ((v17 & 0x100000000000000) != 0)
  {
    v29 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
    swift_beginAccess();
    v30 = *(a3 + v29);
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = a3;
    v44 = sub_281740;
    v45 = v31;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_119878;
    v43 = &block_descriptor_26_2;
    v32 = _Block_copy(&aBlock);
    v33 = v30;
    v34 = a3;

    [v12 setBackgroundArtworkCatalogBlock:v32];
    _Block_release(v32);

    LOBYTE(v17) = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_53;
  }

  if (v10[1])
  {
    v35 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailArtwork;
    swift_beginAccess();
    v36 = *(a3 + v35);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v44 = sub_119C50;
    v45 = v37;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_119878;
    v43 = &block_descriptor_20_2;
    v38 = _Block_copy(&aBlock);
    v39 = v36;

    [v12 setThumbnailArtworkCatalogBlock:v38];
    _Block_release(v38);
  }
}

id sub_281468(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    v4 = a2;
    v5 = JSArtwork.artworkCatalog(defaultCropStyle:)(v3);

    return v5;
  }

  else
  {
    v7 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
    swift_beginAccess();
    v9 = *(a3 + v7);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 flowcaseEditorialArtworkRequestToken];
      if (v11)
      {
        v12 = v11;
        v13 = objc_opt_self();
        v14 = v12;
        result = [v13 sharedStoreArtworkDataSource];
        if (result)
        {
          v15 = result;
          v16 = objc_allocWithZone(MPArtworkCatalog);
          v17 = v14;
          v18 = [v16 initWithToken:v17 dataSource:v15];

          return v18;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2815E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSModelFlowcaseItemBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2816C8()
{

  return swift_deallocObject();
}

uint64_t sub_281700()
{

  return swift_deallocObject();
}

id sub_281748(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties];
  *v3 = 2;
  v3[8] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelFlowcaseItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2818F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_AB3290();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_466B8(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_284478(v10, 0);
      v14 = sub_AB3200();
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      sub_466B8(a1, a2);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_281A6C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a8;
  if (!a8)
  {
    v16 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_12;
      }

      v19 = *(a2 + 16);
      v18 = *(a2 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v20)
      {
LABEL_12:
        v20 = __OFADD__(v17, 16);
        v21 = v17 + 16;
        if (v20)
        {
          __break(1u);
          goto LABEL_54;
        }

        v22 = a7 >> 62;
        if ((a7 >> 62) > 1)
        {
          if (v22 != 2)
          {
            v23 = 0;
            goto LABEL_23;
          }

          v25 = *(a6 + 16);
          v24 = *(a6 + 24);
          v20 = __OFSUB__(v24, v25);
          v23 = v24 - v25;
          if (!v20)
          {
LABEL_23:
            v8 = v21 - v23;
            if (!__OFSUB__(v21, v23))
            {
              goto LABEL_24;
            }

LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          __break(1u);
        }

        else if (!v22)
        {
          v23 = BYTE6(a7);
          goto LABEL_23;
        }

        LODWORD(v23) = HIDWORD(a6) - a6;
        if (__OFSUB__(HIDWORD(a6), a6))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v23 = v23;
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(a3);
      goto LABEL_12;
    }

    LODWORD(v17) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v17 = v17;
    goto LABEL_12;
  }

LABEL_24:
  v42 = sub_284DD4(v8);
  v43 = v26;
  v41 = 0;
  sub_90090(a2, a3);
  sub_90090(a6, a7);
  sub_90090(a4, a5);
  v27 = sub_284E74(&v42, a2, a3, a6, a7, a4, a5, a1, v8, &v41);
  sub_466B8(a4, a5);
  sub_466B8(a6, a7);
  sub_466B8(a2, a3);
  if (!v27)
  {
    v28 = v42;
    v31 = v43;
    v32 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v36 = v41;
        if (v41 < 0)
        {
          v37 = 0;
          goto LABEL_48;
        }

        goto LABEL_50;
      }

      v35 = *(v42 + 16);
      v34 = *(v42 + 24);
      v20 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (!v20)
      {
LABEL_37:
        v36 = v41;
        if (v41 < v33)
        {
          if (v32 == 2)
          {
            v39 = *(v28 + 16);
            v38 = *(v28 + 24);
            v37 = v38 - v39;
            if (!__OFSUB__(v38, v39))
            {
LABEL_48:
              if (v37 >= v36)
              {
                sub_AB3220();
                v28 = v42;
                v31 = v43;
                goto LABEL_50;
              }

              goto LABEL_55;
            }

            __break(1u);
          }

          else if (v32 == 1)
          {
            if (__OFSUB__(HIDWORD(v28), v28))
            {
              goto LABEL_59;
            }

            v37 = HIDWORD(v28) - v28;
            goto LABEL_48;
          }

          v37 = BYTE6(v31);
          goto LABEL_48;
        }

LABEL_50:
        sub_90090(v28, v31);
        v29 = v28;
        v30 = v31;
        goto LABEL_51;
      }

      __break(1u);
    }

    else if (!v32)
    {
      v33 = BYTE6(v43);
      goto LABEL_37;
    }

    LODWORD(v33) = HIDWORD(v28) - v28;
    if (__OFSUB__(HIDWORD(v28), v28))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    v33 = v33;
    goto LABEL_37;
  }

  if (v27 == -4301)
  {
    v28 = sub_281A6C(a1, a2, a3, a4, a5, a6, a7, v41);
    v29 = v42;
    v30 = v43;
LABEL_51:
    sub_466B8(v29, v30);
    return v28;
  }

  sub_466B8(v42, v43);
  return 0;
}

uint64_t sub_281D6C@<X0>(void *dataOut@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, CCCryptorStatus *a9@<X8>, unint64_t a10, uint64_t dataOutAvailable, size_t *a12)
{
  v14 = a4;
  v16 = dataOut;
  v18 = dataOutAvailable;
  v19 = a12;
  v20 = a10;
  v21 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_10;
  }

  if (!v21)
  {
    dataIn[0] = a3;
    LOWORD(dataIn[1]) = a4;
    BYTE2(dataIn[1]) = BYTE2(a4);
    BYTE3(dataIn[1]) = BYTE3(a4);
    BYTE4(dataIn[1]) = BYTE4(a4);
    v22 = a6 >> 62;
    BYTE5(dataIn[1]) = BYTE5(a4);
    if ((a6 >> 62) > 1)
    {
      goto LABEL_31;
    }

    if (v22)
    {
      v153 = a4;
      v175 = dataOutAvailable;
      v184 = v16;
      v166 = a9;
      *op = a10;
      v56 = a5;
      if (a5 > a5 >> 32)
      {
LABEL_229:
        __break(1u);
        goto LABEL_230;
      }

      v14 = a3;
      v57 = a7;
      v163 = a5;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v59 = sub_AB2D10();
      v195 = a6;
      if (v59)
      {
        v60 = sub_AB2D40();
        if (__OFSUB__(v56, v60))
        {
LABEL_233:
          __break(1u);
          goto LABEL_234;
        }

        v59 += v56 - v60;
      }

      v61 = a12;
      sub_AB2D30();
      v62 = a8 >> 62;
      if ((a8 >> 62) <= 1)
      {
        if (v62)
        {
          v152 = v14;
          v14 = v153;
          if (v57 > v57 >> 32)
          {
LABEL_269:
            __break(1u);
            goto LABEL_270;
          }

          v96 = v59;
          v68 = sub_AB2D10();
          if (v68)
          {
            v145 = sub_AB2D40();
            if (__OFSUB__(v57, v145))
            {
LABEL_304:
              __break(1u);
LABEL_305:
              __break(1u);
            }

            v68 += v57 - v145;
          }

          sub_AB2D30();
          v99 = a10;
          if ((a10 & 0x8000000000000000) != 0)
          {
            goto LABEL_286;
          }

          a9 = v166;
          v100 = dataOutAvailable;
          v101 = v184;
          if (HIDWORD(a10))
          {
LABEL_288:
            __break(1u);
            goto LABEL_289;
          }

          goto LABEL_205;
        }

        v63 = v59;
        key[0] = v57;
        LOWORD(key[1]) = a8;
        BYTE2(key[1]) = BYTE2(a8);
        BYTE3(key[1]) = BYTE3(a8);
        BYTE4(key[1]) = BYTE4(a8);
        BYTE5(key[1]) = BYTE5(a8);
        v64 = v153;
        if ((a10 & 0x8000000000000000) != 0)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        a9 = v166;
        if (HIDWORD(a10))
        {
LABEL_277:
          __break(1u);
          goto LABEL_278;
        }

        v65 = CCCrypt(a10, 0, 1u, key, 0x20uLL, v63, dataIn, BYTE6(v153), v184, dataOutAvailable, a12);
LABEL_221:
        v38 = v65;
        sub_466B8(v163, v195);
        sub_466B8(v57, a8);
        v73 = v14;
        goto LABEL_222;
      }

LABEL_95:
      v96 = v59;
      if (v62 == 2)
      {
        v152 = v14;
        v97 = *(v57 + 16);
        v68 = sub_AB2D10();
        v14 = v153;
        if (v68)
        {
          v98 = sub_AB2D40();
          if (__OFSUB__(v97, v98))
          {
LABEL_300:
            __break(1u);
            goto LABEL_301;
          }

          v68 += v97 - v98;
        }

        sub_AB2D30();
        v99 = op[0];
        if ((*op & 0x8000000000000000) != 0)
        {
          goto LABEL_273;
        }

        v70 = HIDWORD(*op);
        a9 = v166;
        v100 = v175;
        v101 = v184;
        if (HIDWORD(*op))
        {
          __break(1u);
LABEL_102:
          v102 = v68;
          if (v70 == 2)
          {
            v103 = *(v57 + 16);
            v104 = sub_AB2D10();
            v105 = v153;
            if (v104)
            {
              v106 = sub_AB2D40();
              if (__OFSUB__(v103, v106))
              {
LABEL_301:
                __break(1u);
                goto LABEL_302;
              }

              v104 += v103 - v106;
            }

            sub_AB2D30();
            if ((*op & 0x8000000000000000) != 0)
            {
              goto LABEL_274;
            }

            a9 = v166;
            if (HIDWORD(*op))
            {
LABEL_283:
              __break(1u);
              goto LABEL_284;
            }

            v38 = CCCrypt(op[0], 0, 1u, v104, 0x20uLL, v102, dataIn, 0, v184, v175, v61);
            sub_466B8(v163, v195);
            sub_466B8(v57, a8);
            v73 = v14;
LABEL_214:
            v138 = v105;
            goto LABEL_223;
          }

          memset(key, 0, 14);
          v64 = v153;
          if ((*op & 0x8000000000000000) != 0)
          {
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
            goto LABEL_277;
          }

          a9 = v166;
          if (HIDWORD(*op))
          {
LABEL_282:
            __break(1u);
            goto LABEL_283;
          }

          v65 = CCCrypt(op[0], 0, 1u, key, 0x20uLL, v102, dataIn, 0, v184, v175, v61);
          goto LABEL_221;
        }

LABEL_205:
        v38 = CCCrypt(v99, 0, 1u, v68, 0x20uLL, v96, dataIn, BYTE6(v14), v101, v100, v61);
        sub_466B8(v163, v195);
        sub_466B8(v57, a8);
        v73 = v152;
        goto LABEL_206;
      }

      memset(key, 0, 14);
      v64 = v153;
      if ((*op & 0x8000000000000000) != 0)
      {
LABEL_271:
        __break(1u);
        goto LABEL_272;
      }

      a9 = v166;
      if (HIDWORD(*op))
      {
LABEL_281:
        __break(1u);
        goto LABEL_282;
      }

      v65 = CCCrypt(op[0], 0, 1u, key, 0x20uLL, v96, dataIn, BYTE6(v153), v184, v175, v61);
      goto LABEL_221;
    }

    key[0] = a5;
    LOWORD(key[1]) = a6;
    BYTE2(key[1]) = BYTE2(a6);
    BYTE3(key[1]) = BYTE3(a6);
    BYTE4(key[1]) = BYTE4(a6);
    v23 = a8 >> 62;
    BYTE5(key[1]) = BYTE5(a6);
    if ((a8 >> 62) > 1)
    {
LABEL_67:
      if (v23 != 2)
      {
        memset(v196, 0, 14);
        if ((a10 & 0x8000000000000000) != 0)
        {
LABEL_243:
          __break(1u);
          goto LABEL_244;
        }

        if (!HIDWORD(a10))
        {
          goto LABEL_172;
        }

        __break(1u);
LABEL_167:
        memset(v196, 0, 14);
        if ((v20 & 0x8000000000000000) != 0)
        {
LABEL_244:
          __break(1u);
          goto LABEL_245;
        }

        if (HIDWORD(v20))
        {
          __break(1u);
LABEL_170:
          memset(v196, 0, 14);
          if ((v20 & 0x8000000000000000) != 0)
          {
LABEL_245:
            __break(1u);
            goto LABEL_246;
          }

          if (HIDWORD(v20))
          {
LABEL_257:
            __break(1u);
            goto LABEL_258;
          }

LABEL_172:
          v139 = a3;
          v140 = CCCrypt(v20, 0, 1u, v196, 0x20uLL, key, dataIn, BYTE6(v14), v16, v18, v19);
LABEL_176:
          v38 = v140;
          result = sub_466B8(v139, v14);
          goto LABEL_224;
        }

LABEL_175:
        v139 = a3;
        v140 = CCCrypt(v20, 0, 1u, v196, 0x20uLL, key, dataIn, 0, v16, v18, v19);
        goto LABEL_176;
      }

      v76 = a3;
      v77 = a12;
      v185 = v16;
      v163 = a5;
      v167 = a9;
      v19 = a10;
      v78 = *(a7 + 16);
      v195 = a6;
      sub_90090(a5, a6);
      v57 = a7;
      sub_90090(a7, a8);
      v80 = sub_AB2D10();
      if (v80)
      {
        v81 = sub_AB2D40();
        if (__OFSUB__(v78, v81))
        {
LABEL_290:
          __break(1u);
          goto LABEL_291;
        }

        v80 += v78 - v81;
      }

      sub_AB2D30();
      if ((a10 & 0x8000000000000000) != 0)
      {
        goto LABEL_247;
      }

      v20 = a10;
      v40 = HIDWORD(a10);
      a9 = v167;
      v82 = dataOutAvailable;
      v83 = v185;
      if (!HIDWORD(a10))
      {
        goto LABEL_155;
      }

      __break(1u);
LABEL_74:
      if (v40 == 2)
      {
        v76 = a3;
        v84 = v19;
        v176 = v18;
        v186 = v16;
        v163 = a5;
        v168 = a9;
        v19 = v20;
        v85 = *(a7 + 16);
        v195 = a6;
        v86 = a7;
        sub_90090(a5, a6);
        v57 = v86;
        sub_90090(v86, a8);
        v59 = sub_AB2D10();
        if (v59)
        {
          v87 = sub_AB2D40();
          if (__OFSUB__(v85, v87))
          {
LABEL_291:
            __break(1u);
            goto LABEL_292;
          }

          v59 += v85 - v87;
        }

        sub_AB2D30();
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_248;
        }

        v20 = v19;
        v74 = HIDWORD(v19);
        a9 = v168;
        v88 = v176;
        v89 = v186;
        if (!HIDWORD(v19))
        {
          goto LABEL_162;
        }

        __break(1u);
        goto LABEL_81;
      }

      goto LABEL_167;
    }

    if (v23)
    {
LABEL_135:
      v178 = v18;
      v188 = v16;
      v170 = a9;
      v128 = a7;
      if (a7 > a7 >> 32)
      {
LABEL_239:
        __break(1u);
        goto LABEL_240;
      }

      v76 = a3;
      v77 = v19;
      v19 = v20;
      v57 = a7;
      v163 = a5;
      v195 = a6;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v80 = sub_AB2D10();
      if (v80)
      {
        v129 = sub_AB2D40();
        if (__OFSUB__(v128, v129))
        {
LABEL_296:
          __break(1u);
          goto LABEL_297;
        }

        v80 += v128 - v129;
      }

      sub_AB2D30();
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_263;
      }

      v20 = v19;
      a9 = v170;
      v82 = v178;
      v83 = v188;
      if (!HIDWORD(v19))
      {
        goto LABEL_155;
      }

      __break(1u);
LABEL_142:
      v179 = v18;
      v189 = v16;
      v171 = a9;
      v130 = a7;
      if (a7 > a7 >> 32)
      {
LABEL_240:
        __break(1u);
        goto LABEL_241;
      }

      v76 = a3;
      v84 = v19;
      v19 = v20;
      v57 = a7;
      v163 = a5;
      v195 = a6;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v59 = sub_AB2D10();
      if (v59)
      {
        v131 = sub_AB2D40();
        if (__OFSUB__(v130, v131))
        {
LABEL_297:
          __break(1u);
          goto LABEL_298;
        }

        v59 += v130 - v131;
      }

      sub_AB2D30();
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_264;
      }

      v20 = v19;
      a9 = v171;
      v88 = v179;
      v89 = v189;
      if (HIDWORD(v19))
      {
        __break(1u);
        goto LABEL_149;
      }

LABEL_162:
      v135 = CCCrypt(v20, 0, 1u, v59, 0x20uLL, key, dataIn, 0, v89, v88, v84);
      goto LABEL_163;
    }

    v196[0] = a7;
    LOWORD(v196[1]) = a8;
    BYTE2(v196[1]) = BYTE2(a8);
    BYTE3(v196[1]) = BYTE3(a8);
    BYTE4(v196[1]) = BYTE4(a8);
    BYTE5(v196[1]) = BYTE5(a8);
    if ((a10 & 0x8000000000000000) != 0)
    {
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    v21 = HIDWORD(a10);
    if (!HIDWORD(a10))
    {
      goto LABEL_172;
    }

    __break(1u);
LABEL_10:
    if (v21 == 2)
    {
      v181 = v16;
      v164 = a9;
      v26 = *(a3 + 16);
      v27 = *(a3 + 24);
      sub_90090(a5, a6);
      v154 = a8;
      sub_90090(a7, a8);
      sub_90090(a3, v14);
      v28 = sub_AB2D10();
      if (v28)
      {
        v29 = sub_AB2D40();
        if (__OFSUB__(v26, v29))
        {
LABEL_227:
          __break(1u);
          goto LABEL_228;
        }

        v28 += v26 - v29;
      }

      if (!__OFSUB__(v27, v26))
      {
        sub_AB2D30();
        sub_2835C8(v28, a10, a5, a6, a7, v154, a3, dataIn, v14, v181, a2, dataOutAvailable, a12);
        if (!v12)
        {
          sub_466B8(a5, a6);
          sub_466B8(a7, v154);
          v30 = a3;
          v31 = v14;
LABEL_23:
          result = sub_466B8(v30, v31);
          v38 = dataIn[0];
          a9 = v164;
LABEL_224:
          *a9 = v38;
          return result;
        }

        sub_466B8(a5, a6);
        sub_466B8(a7, v154);
        v149 = a3;
        v150 = v14;
        goto LABEL_308;
      }

LABEL_226:
      __break(1u);
      goto LABEL_227;
    }

    v39 = a6 >> 62;
    memset(dataIn, 0, 14);
    if ((a6 >> 62) > 1)
    {
      if (v39 == 2)
      {
        v151 = a3;
        v49 = a12;
        v174 = dataOutAvailable;
        v183 = v16;
        v162 = a5;
        v165 = a9;
        *opa = a10;
        v50 = *(a5 + 16);
        sub_90090(a5, a6);
        v52 = a7;
        sub_90090(a7, a8);
        v53 = sub_AB2D10();
        v194 = a6;
        if (v53)
        {
          v54 = v53;
          v55 = sub_AB2D40();
          if (__OFSUB__(v50, v55))
          {
LABEL_232:
            __break(1u);
            goto LABEL_233;
          }

          iva = (v50 - v55 + v54);
LABEL_123:
          v19 = v49;
          sub_AB2D30();
          v119 = a8 >> 62;
          if ((a8 >> 62) <= 1)
          {
            v120 = opa[0];
            v109 = v52;
            if (v119)
            {
              v52 = v151;
              if (v109 > v109 >> 32)
              {
LABEL_255:
                __break(1u);
                goto LABEL_256;
              }

              v124 = sub_AB2D10();
              if (v124)
              {
                v144 = sub_AB2D40();
                if (__OFSUB__(v109, v144))
                {
LABEL_303:
                  __break(1u);
                  goto LABEL_304;
                }

                v124 += v109 - v144;
              }

              sub_AB2D30();
              LODWORD(v20) = opa[0];
              if ((*opa & 0x8000000000000000) != 0)
              {
                goto LABEL_276;
              }

              a9 = v165;
              v126 = v174;
              v127 = v183;
              if (HIDWORD(*opa))
              {
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
                goto LABEL_288;
              }

LABEL_193:
              v142 = CCCrypt(v20, 0, 1u, v124, 0x20uLL, iva, dataIn, 0, v127, v126, v49);
              goto LABEL_194;
            }

            key[0] = v52;
            LOWORD(key[1]) = a8;
            BYTE2(key[1]) = BYTE2(a8);
            BYTE3(key[1]) = BYTE3(a8);
            BYTE4(key[1]) = BYTE4(a8);
            BYTE5(key[1]) = BYTE5(a8);
            v110 = v151;
            if ((*opa & 0x8000000000000000) != 0)
            {
LABEL_252:
              __break(1u);
              goto LABEL_253;
            }

            v119 = HIDWORD(*opa);
            a9 = v165;
            v121 = v174;
            v122 = v183;
            if (!HIDWORD(*opa))
            {
              goto LABEL_197;
            }

            __break(1u);
          }

          v109 = v52;
          if (v119 == 2)
          {
            v123 = *(v52 + 16);
            v124 = sub_AB2D10();
            v52 = v151;
            if (v124)
            {
              v125 = sub_AB2D40();
              if (__OFSUB__(v123, v125))
              {
LABEL_295:
                __break(1u);
                goto LABEL_296;
              }

              v124 += v123 - v125;
            }

            sub_AB2D30();
            v20 = *opa;
            if ((*opa & 0x8000000000000000) != 0)
            {
              goto LABEL_260;
            }

            a9 = v165;
            v126 = v174;
            v127 = v183;
            if (HIDWORD(*opa))
            {
              __break(1u);
              goto LABEL_135;
            }

            goto LABEL_193;
          }

          memset(key, 0, 14);
          v120 = opa[0];
          v110 = v151;
          if ((*opa & 0x8000000000000000) != 0)
          {
LABEL_256:
            __break(1u);
            goto LABEL_257;
          }

          a9 = v165;
          v121 = v174;
          v122 = v183;
          if (HIDWORD(*opa))
          {
LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

LABEL_197:
          v143 = CCCrypt(v120, 0, 1u, key, 0x20uLL, iva, dataIn, 0, v122, v121, v49);
          goto LABEL_198;
        }

LABEL_122:
        iva = 0;
        goto LABEL_123;
      }

LABEL_62:
      v75 = a8 >> 62;
      memset(key, 0, 14);
      if ((a8 >> 62) > 1)
      {
LABEL_88:
        if (v75 == 2)
        {
          v76 = a3;
          v84 = v19;
          v175 = v18;
          v184 = v16;
          v163 = a5;
          v166 = a9;
          v61 = v20;
          v93 = *(a7 + 16);
          v195 = a6;
          v94 = a7;
          sub_90090(a5, a6);
          v57 = v94;
          sub_90090(v94, a8);
          v59 = sub_AB2D10();
          if (v59)
          {
            v95 = sub_AB2D40();
            if (__OFSUB__(v93, v95))
            {
LABEL_293:
              __break(1u);
              goto LABEL_294;
            }

            v59 += v93 - v95;
          }

          sub_AB2D30();
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_250;
          }

          LODWORD(v20) = v61;
          v62 = HIDWORD(v61);
          a9 = v166;
          v88 = v175;
          v89 = v184;
          if (!HIDWORD(v61))
          {
            goto LABEL_162;
          }

          __break(1u);
          goto LABEL_95;
        }

        memset(v196, 0, 14);
        if ((v20 & 0x8000000000000000) != 0)
        {
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        if (HIDWORD(v20))
        {
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
          goto LABEL_261;
        }

        goto LABEL_175;
      }

      if (v75)
      {
        v191 = v16;
        v173 = a9;
        v136 = a7;
        if (a7 > a7 >> 32)
        {
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v76 = a3;
        v84 = a12;
        v57 = a7;
        v163 = a5;
        v195 = a6;
        sub_90090(a5, a6);
        sub_90090(v57, a8);
        v59 = sub_AB2D10();
        if (v59)
        {
          v137 = sub_AB2D40();
          if (__OFSUB__(v136, v137))
          {
LABEL_299:
            __break(1u);
            goto LABEL_300;
          }

          v59 += v136 - v137;
        }

        sub_AB2D30();
        if ((a10 & 0x8000000000000000) != 0)
        {
          goto LABEL_266;
        }

        LODWORD(v20) = a10;
        a9 = v173;
        v88 = dataOutAvailable;
        v89 = v191;
        if (HIDWORD(a10))
        {
LABEL_280:
          __break(1u);
          goto LABEL_281;
        }

        goto LABEL_162;
      }

      v196[0] = a7;
      LOWORD(v196[1]) = a8;
      BYTE2(v196[1]) = BYTE2(a8);
      BYTE3(v196[1]) = BYTE3(a8);
      BYTE4(v196[1]) = BYTE4(a8);
      BYTE5(v196[1]) = BYTE5(a8);
      if ((a10 & 0x8000000000000000) != 0)
      {
LABEL_238:
        __break(1u);
        goto LABEL_239;
      }

      v23 = HIDWORD(a10);
      if (!HIDWORD(a10))
      {
        goto LABEL_175;
      }

      __break(1u);
      goto LABEL_67;
    }

    if (v39)
    {
      v153 = a4;
      v175 = dataOutAvailable;
      v184 = v16;
      v166 = a9;
      *op = a10;
      v66 = a5;
      if (a5 > a5 >> 32)
      {
LABEL_230:
        __break(1u);
        goto LABEL_231;
      }

      v14 = a3;
      v57 = a7;
      v163 = a5;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v68 = sub_AB2D10();
      v195 = a6;
      if (v68)
      {
        v69 = sub_AB2D40();
        if (__OFSUB__(v66, v69))
        {
LABEL_234:
          __break(1u);
          goto LABEL_235;
        }

        v68 += v66 - v69;
      }

      v61 = a12;
      sub_AB2D30();
      v70 = a8 >> 62;
      if ((a8 >> 62) <= 1)
      {
        v71 = v14;
        if (v70)
        {
          v105 = v153;
          if (v57 > v57 >> 32)
          {
LABEL_270:
            __break(1u);
            goto LABEL_271;
          }

          v146 = v68;
          v147 = sub_AB2D10();
          if (v147)
          {
            v148 = sub_AB2D40();
            if (__OFSUB__(v57, v148))
            {
              goto LABEL_305;
            }

            v147 += v57 - v148;
          }

          sub_AB2D30();
          if ((a10 & 0x8000000000000000) != 0)
          {
            goto LABEL_287;
          }

          a9 = v166;
          if (HIDWORD(a10))
          {
LABEL_289:
            __break(1u);
            goto LABEL_290;
          }

          v38 = CCCrypt(a10, 0, 1u, v147, 0x20uLL, v146, dataIn, 0, v184, dataOutAvailable, a12);
          sub_466B8(v163, v195);
          sub_466B8(v57, a8);
          v73 = v71;
          goto LABEL_214;
        }

        v72 = v68;
        key[0] = v57;
        LOWORD(key[1]) = a8;
        BYTE2(key[1]) = BYTE2(a8);
        BYTE3(key[1]) = BYTE3(a8);
        BYTE4(key[1]) = BYTE4(a8);
        BYTE5(key[1]) = BYTE5(a8);
        v64 = v153;
        if ((a10 & 0x8000000000000000) != 0)
        {
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
          goto LABEL_267;
        }

        a9 = v166;
        if (HIDWORD(a10))
        {
LABEL_278:
          __break(1u);
          goto LABEL_279;
        }

        v38 = CCCrypt(a10, 0, 1u, key, 0x20uLL, v72, dataIn, 0, v184, dataOutAvailable, a12);
        sub_466B8(v163, v195);
        sub_466B8(v57, a8);
        v73 = v14;
LABEL_222:
        v138 = v64;
        goto LABEL_223;
      }

      goto LABEL_102;
    }

    key[0] = a5;
    LOWORD(key[1]) = a6;
    BYTE2(key[1]) = BYTE2(a6);
    BYTE3(key[1]) = BYTE3(a6);
    BYTE4(key[1]) = BYTE4(a6);
    v40 = a8 >> 62;
    BYTE5(key[1]) = BYTE5(a6);
    if ((a8 >> 62) > 1)
    {
      goto LABEL_74;
    }

    if (v40)
    {
      goto LABEL_142;
    }

    v196[0] = a7;
    LOWORD(v196[1]) = a8;
    BYTE2(v196[1]) = BYTE2(a8);
    BYTE3(v196[1]) = BYTE3(a8);
    BYTE4(v196[1]) = BYTE4(a8);
    BYTE5(v196[1]) = BYTE5(a8);
    if ((a10 & 0x8000000000000000) != 0)
    {
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    v22 = HIDWORD(a10);
    if (!HIDWORD(a10))
    {
      goto LABEL_175;
    }

    __break(1u);
LABEL_31:
    if (v22 == 2)
    {
      v151 = a3;
      v174 = dataOutAvailable;
      v183 = v16;
      v162 = a5;
      v165 = a9;
      *opa = a10;
      v42 = *(a5 + 16);
      sub_90090(a5, a6);
      v44 = a7;
      sub_90090(a7, a8);
      v45 = sub_AB2D10();
      v194 = a6;
      if (v45)
      {
        v46 = v45;
        v47 = sub_AB2D40();
        if (__OFSUB__(v42, v47))
        {
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        iv = (v42 - v47 + v46);
      }

      else
      {
        iv = 0;
      }

      sub_AB2D30();
      v107 = a8 >> 62;
      v49 = v12;
      if ((a8 >> 62) <= 1)
      {
        v108 = a10;
        v109 = v44;
        if (v107)
        {
          v52 = v151;
          if (v109 > v109 >> 32)
          {
LABEL_253:
            __break(1u);
            goto LABEL_254;
          }

          v114 = sub_AB2D10();
          if (v114)
          {
            v141 = sub_AB2D40();
            if (__OFSUB__(v109, v141))
            {
LABEL_302:
              __break(1u);
              goto LABEL_303;
            }

            v114 += v109 - v141;
          }

          sub_AB2D30();
          v116 = a10;
          if ((a10 & 0x8000000000000000) != 0)
          {
            goto LABEL_275;
          }

          a9 = v165;
          v117 = dataOutAvailable;
          v118 = v183;
          if (HIDWORD(a10))
          {
LABEL_284:
            __break(1u);
            goto LABEL_285;
          }

          goto LABEL_183;
        }

        key[0] = v44;
        LOWORD(key[1]) = a8;
        BYTE2(key[1]) = BYTE2(a8);
        BYTE3(key[1]) = BYTE3(a8);
        BYTE4(key[1]) = BYTE4(a8);
        BYTE5(key[1]) = BYTE5(a8);
        v110 = v151;
        if ((a10 & 0x8000000000000000) != 0)
        {
LABEL_251:
          __break(1u);
          goto LABEL_252;
        }

        v107 = HIDWORD(a10);
        a9 = v165;
        v111 = dataOutAvailable;
        v112 = v183;
        if (!HIDWORD(a10))
        {
LABEL_186:
          v143 = CCCrypt(v108, 0, 1u, key, 0x20uLL, iv, dataIn, BYTE6(v14), v112, v111, a12);
LABEL_198:
          v38 = v143;
          sub_466B8(v162, v194);
          sub_466B8(v109, a8);
          v73 = v110;
          goto LABEL_206;
        }

        __break(1u);
      }

      v109 = v44;
      if (v107 == 2)
      {
        v113 = *(v44 + 16);
        v114 = sub_AB2D10();
        v52 = v151;
        if (v114)
        {
          v115 = sub_AB2D40();
          if (__OFSUB__(v113, v115))
          {
LABEL_294:
            __break(1u);
            goto LABEL_295;
          }

          v114 += v113 - v115;
        }

        sub_AB2D30();
        v116 = a10;
        if ((a10 & 0x8000000000000000) != 0)
        {
          goto LABEL_259;
        }

        a9 = v165;
        v117 = dataOutAvailable;
        v118 = v183;
        if (HIDWORD(a10))
        {
          __break(1u);
          goto LABEL_122;
        }

LABEL_183:
        v142 = CCCrypt(v116, 0, 1u, v114, 0x20uLL, iv, dataIn, BYTE6(v14), v118, v117, a12);
LABEL_194:
        v38 = v142;
        sub_466B8(v162, v194);
        sub_466B8(v109, a8);
        v73 = v52;
LABEL_206:
        v138 = v14;
        goto LABEL_223;
      }

      memset(key, 0, 14);
      v108 = a10;
      v110 = v151;
      if ((a10 & 0x8000000000000000) != 0)
      {
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      a9 = v165;
      v111 = dataOutAvailable;
      v112 = v183;
      if (HIDWORD(a10))
      {
LABEL_267:
        __break(1u);
        goto LABEL_268;
      }

      goto LABEL_186;
    }

    v74 = a8 >> 62;
    memset(key, 0, 14);
    if ((a8 >> 62) > 1)
    {
LABEL_81:
      if (v74 == 2)
      {
        v76 = a3;
        v77 = v19;
        v177 = v18;
        v187 = v16;
        v163 = a5;
        v169 = a9;
        v19 = v20;
        v90 = *(a7 + 16);
        v195 = a6;
        v91 = a7;
        sub_90090(a5, a6);
        v57 = v91;
        sub_90090(v91, a8);
        v80 = sub_AB2D10();
        if (v80)
        {
          v92 = sub_AB2D40();
          if (__OFSUB__(v90, v92))
          {
LABEL_292:
            __break(1u);
            goto LABEL_293;
          }

          v80 += v90 - v92;
        }

        sub_AB2D30();
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_249;
        }

        v20 = v19;
        v75 = HIDWORD(v19);
        a9 = v169;
        v82 = v177;
        v83 = v187;
        if (HIDWORD(v19))
        {
          __break(1u);
          goto LABEL_88;
        }

LABEL_155:
        v135 = CCCrypt(v20, 0, 1u, v80, 0x20uLL, key, dataIn, BYTE6(v14), v83, v82, v77);
LABEL_163:
        v38 = v135;
        sub_466B8(v163, v195);
        sub_466B8(v57, a8);
        v73 = v76;
        v138 = v14;
LABEL_223:
        result = sub_466B8(v73, v138);
        goto LABEL_224;
      }

      goto LABEL_170;
    }

    if (v74)
    {
LABEL_149:
      v180 = v18;
      v190 = v16;
      v172 = a9;
      v132 = a7;
      if (a7 > a7 >> 32)
      {
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      v76 = a3;
      v77 = v19;
      v133 = v20;
      v57 = a7;
      v163 = a5;
      v195 = a6;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v80 = sub_AB2D10();
      if (v80)
      {
        v134 = sub_AB2D40();
        if (__OFSUB__(v132, v134))
        {
LABEL_298:
          __break(1u);
          goto LABEL_299;
        }

        v80 += v132 - v134;
      }

      sub_AB2D30();
      if ((v133 & 0x8000000000000000) != 0)
      {
        goto LABEL_265;
      }

      LODWORD(v20) = v133;
      a9 = v172;
      v82 = v180;
      v83 = v190;
      if (HIDWORD(v133))
      {
LABEL_279:
        __break(1u);
        goto LABEL_280;
      }

      goto LABEL_155;
    }

    v196[0] = a7;
    LOWORD(v196[1]) = a8;
    BYTE2(v196[1]) = BYTE2(a8);
    BYTE3(v196[1]) = BYTE3(a8);
    BYTE4(v196[1]) = BYTE4(a8);
    BYTE5(v196[1]) = BYTE5(a8);
    if ((a10 & 0x8000000000000000) != 0)
    {
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

    if (!HIDWORD(a10))
    {
      goto LABEL_172;
    }

    __break(1u);
    goto LABEL_62;
  }

  v182 = v16;
  v32 = a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_226;
  }

  v164 = a9;
  sub_90090(a5, a6);
  v155 = a8;
  sub_90090(a7, a8);
  sub_90090(a3, v14);
  v35 = sub_AB2D10();
  if (v35)
  {
    v36 = sub_AB2D40();
    if (__OFSUB__(v32, v36))
    {
LABEL_228:
      __break(1u);
      goto LABEL_229;
    }

    v35 += v32 - v36;
  }

  sub_AB2D30();
  sub_2835C8(v35, a10, a5, a6, a7, v155, a3, dataIn, v14, v182, a2, dataOutAvailable, a12);
  if (!v12)
  {
    sub_466B8(a5, a6);
    sub_466B8(a7, v155);
    v30 = a3;
    v31 = v14;
    goto LABEL_23;
  }

  sub_466B8(a5, a6);
  sub_466B8(a7, v155);
  v149 = a3;
  v150 = v14;
LABEL_308:
  sub_466B8(v149, v150);

  __break(1u);
  return result;
}

uint64_t sub_2835C8@<X0>(void *dataIn@<X0>, unint64_t op@<X6>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X7>, _DWORD *a8@<X8>, unint64_t a9, void *a10, uint64_t a11, uint64_t a12, size_t *a13)
{
  v14 = v13;
  v15 = a7;
  v18 = a4;
  v19 = dataIn;
  v21 = a12;
  v22 = a13;
  v24 = a9;
  v23 = a10;
  v25 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (v25)
    {
      v100 = a8;
      dataIna = dataIn;
      v34 = a3;
      if (a3 <= a3 >> 32)
      {
        v102 = a13;
        v103 = a12;
        v104 = a10;
        v27 = op;
        sub_90090(a5, a6);
        v105 = v15;
        v19 = a9;
        sub_90090(v15, a9);
        v15 = sub_AB2D10();
        if (v15)
        {
          v35 = sub_AB2D40();
          if (__OFSUB__(v34, v35))
          {
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

          v15 = (v15 + v34 - v35);
        }

        v24 = v18 & 0x3FFFFFFFFFFFFFFFLL;
        sub_AB2D30();
        v36 = a6 >> 62;
        if ((a6 >> 62) <= 1)
        {
          if (!v36)
          {
            v30 = v27;
            iv[0] = a5;
            LOWORD(iv[1]) = a6;
            BYTE2(iv[1]) = BYTE2(a6);
            BYTE3(iv[1]) = BYTE3(a6);
            BYTE4(iv[1]) = BYTE4(a6);
            BYTE5(iv[1]) = BYTE5(a6);
            if ((v27 & 0x8000000000000000) == 0)
            {
              if (!HIDWORD(v27))
              {
                v24 = a9;
                v37 = a9 >> 62;
                op = dataIna;
                if ((a9 >> 62) <= 1)
                {
                  if (v37)
                  {
                    if (__OFSUB__(HIDWORD(v105), v105))
                    {
LABEL_298:
                      __break(1u);
                      goto LABEL_299;
                    }

                    v38 = HIDWORD(v105) - v105;
                  }

                  else
                  {
                    v38 = BYTE6(a9);
                  }

                  goto LABEL_235;
                }

                goto LABEL_184;
              }

              goto LABEL_279;
            }

            goto LABEL_268;
          }

          if (a5 > a5 >> 32)
          {
LABEL_274:
            __break(1u);
            goto LABEL_275;
          }

          v18 = sub_AB2D10();
          if (v18)
          {
            v65 = sub_AB2D40();
            if (__OFSUB__(a5, v65))
            {
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
LABEL_296:
              __break(1u);
              goto LABEL_297;
            }

            v18 += a5 - v65;
          }

          sub_AB2D30();
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_285;
          }

          v49 = v27;
          op = dataIna;
          if (HIDWORD(v27))
          {
LABEL_286:
            __break(1u);
            goto LABEL_287;
          }

          v66 = a9 >> 62;
          if ((a9 >> 62) <= 1)
          {
            if (v66)
            {
              v51 = HIDWORD(v105) - v105;
              if (__OFSUB__(HIDWORD(v105), v105))
              {
                goto LABEL_302;
              }

              goto LABEL_243;
            }

LABEL_141:
            v67 = BYTE6(v19);
LABEL_244:
            v96 = CCCrypt(v49, 0, 1u, v18, 0x20uLL, v15, op, v67, v104, v103, v102);
            goto LABEL_245;
          }

          if (v66 == 2)
          {
            v89 = v105[2];
            v88 = v105[3];
            v67 = v88 - v89;
            if (!__OFSUB__(v88, v89))
            {
              goto LABEL_244;
            }

            __break(1u);
          }

LABEL_214:
          v67 = 0;
          goto LABEL_244;
        }

LABEL_76:
        if (v36 == 2)
        {
          v47 = *(a5 + 16);
          v18 = sub_AB2D10();
          if (v18)
          {
            v48 = sub_AB2D40();
            if (__OFSUB__(v47, v48))
            {
LABEL_292:
              __break(1u);
              goto LABEL_293;
            }

            v18 += v47 - v48;
          }

          v24 = a6 & 0x3FFFFFFFFFFFFFFFLL;
          sub_AB2D30();
          a8 = v100;
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_277;
          }

          v49 = v27;
          op = dataIna;
          if (HIDWORD(v27))
          {
LABEL_283:
            __break(1u);
            goto LABEL_284;
          }

          v50 = v19 >> 62;
          if ((v19 >> 62) <= 1)
          {
            if (v50)
            {
              v51 = HIDWORD(v105) - v105;
              if (!__OFSUB__(HIDWORD(v105), v105))
              {
LABEL_243:
                v67 = v51;
                goto LABEL_244;
              }

              __break(1u);
LABEL_87:
              v102 = v22;
              v103 = v21;
              v104 = v23;
              if (a5 <= a5 >> 32)
              {
                v52 = op;
                sub_90090(a5, a6);
                v105 = v15;
                sub_90090(v15, v24);
                v15 = sub_AB2D10();
                if (v15)
                {
                  v53 = sub_AB2D40();
                  if (__OFSUB__(a5, v53))
                  {
LABEL_290:
                    __break(1u);
                    goto LABEL_291;
                  }

                  v15 = (v15 + a5 - v53);
                }

                sub_AB2D30();
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_271;
                }

                v30 = v52;
                if (HIDWORD(v52))
                {
LABEL_280:
                  __break(1u);
                  goto LABEL_281;
                }

                v54 = v24 >> 62;
                if ((v24 >> 62) > 1)
                {
                  goto LABEL_188;
                }

                if (!v54)
                {
                  goto LABEL_106;
                }

                LODWORD(v31) = HIDWORD(v105) - v105;
                if (!__OFSUB__(HIDWORD(v105), v105))
                {
                  goto LABEL_229;
                }

                __break(1u);
LABEL_98:
                v102 = v22;
                v103 = v21;
                v104 = v23;
                if (a5 <= a5 >> 32)
                {
                  v55 = op;
                  sub_90090(a5, a6);
                  v105 = v15;
                  sub_90090(v15, v24);
                  v15 = sub_AB2D10();
                  if (v15)
                  {
                    v56 = sub_AB2D40();
                    if (__OFSUB__(a5, v56))
                    {
LABEL_291:
                      __break(1u);
                      goto LABEL_292;
                    }

                    v15 = (v15 + a5 - v56);
                  }

                  sub_AB2D30();
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_272;
                  }

                  v30 = v55;
                  if (HIDWORD(v55))
                  {
LABEL_281:
                    __break(1u);
                    goto LABEL_282;
                  }

                  v57 = v24 >> 62;
                  if ((v24 >> 62) > 1)
                  {
LABEL_192:
                    if (v57 == 2)
                    {
                      v83 = v105[2];
                      v82 = v105[3];
                      v58 = v82 - v83;
                      if (!__OFSUB__(v82, v83))
                      {
                        goto LABEL_230;
                      }

                      __break(1u);
                    }

                    goto LABEL_196;
                  }

                  if (v57)
                  {
                    LODWORD(v31) = HIDWORD(v105) - v105;
                    if (__OFSUB__(HIDWORD(v105), v105))
                    {
LABEL_299:
                      __break(1u);
                      goto LABEL_300;
                    }

                    goto LABEL_229;
                  }

LABEL_106:
                  v58 = BYTE6(v24);
LABEL_230:
                  v93 = CCCrypt(v30, 0, 1u, v15, 0x20uLL, iv, v19, v58, v104, v103, v102);
LABEL_231:
                  v91 = v93;
                  sub_466B8(a5, a6);
                  v94 = v105;
                  v95 = v24;
LABEL_246:
                  result = sub_466B8(v94, v95);
                  goto LABEL_247;
                }

                goto LABEL_254;
              }

LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
              goto LABEL_255;
            }

            goto LABEL_141;
          }

          goto LABEL_201;
        }

        memset(iv, 0, 14);
        if ((v27 & 0x8000000000000000) != 0)
        {
LABEL_275:
          __break(1u);
          goto LABEL_276;
        }

        v49 = v27;
        a8 = v100;
        if (HIDWORD(v27))
        {
LABEL_282:
          __break(1u);
          goto LABEL_283;
        }

        v68 = v19 >> 62;
        op = dataIna;
        if ((v19 >> 62) > 1)
        {
          if (v68 == 2)
          {
            v84 = v105[2];
            v50 = v105[3];
            v69 = v50 - v84;
            if (__OFSUB__(v50, v84))
            {
              __break(1u);
LABEL_201:
              if (v50 == 2)
              {
                v85 = v105[2];
                v63 = v105[3];
                v67 = v63 - v85;
                if (__OFSUB__(v63, v85))
                {
                  __break(1u);
                  goto LABEL_205;
                }

                goto LABEL_244;
              }

              goto LABEL_214;
            }
          }

          else
          {
            v69 = 0;
          }
        }

        else if (v68)
        {
          if (__OFSUB__(HIDWORD(v105), v105))
          {
LABEL_300:
            __break(1u);
            goto LABEL_301;
          }

          v69 = HIDWORD(v105) - v105;
        }

        else
        {
          v69 = BYTE6(v19);
        }

        v96 = CCCrypt(v27, 0, 1u, iv, 0x20uLL, v15, dataIna, v69, v104, v103, v102);
LABEL_245:
        v91 = v96;
        sub_466B8(a5, a6);
        v94 = v105;
        v95 = v19;
        goto LABEL_246;
      }

      __break(1u);
LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

    iv[0] = a3;
    LOWORD(iv[1]) = a4;
    BYTE2(iv[1]) = BYTE2(a4);
    BYTE3(iv[1]) = BYTE3(a4);
    BYTE4(iv[1]) = BYTE4(a4);
    v25 = a6 >> 62;
    BYTE5(iv[1]) = BYTE5(a4);
    if ((a6 >> 62) > 1)
    {
      goto LABEL_43;
    }

    if (v25)
    {
      goto LABEL_87;
    }

    key[0] = a5;
    LOWORD(key[1]) = a6;
    BYTE2(key[1]) = BYTE2(a6);
    BYTE3(key[1]) = BYTE3(a6);
    BYTE4(key[1]) = BYTE4(a6);
    BYTE5(key[1]) = BYTE5(a6);
    if ((op & 0x8000000000000000) != 0)
    {
      goto LABEL_251;
    }

    if (HIDWORD(op))
    {
LABEL_262:
      __break(1u);
      goto LABEL_263;
    }

    v26 = a9 >> 62;
    if ((a9 >> 62) > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_163;
      }

      v70 = a7[2];
      v39 = a7[3];
      v61 = v39 - v70;
      if (!__OFSUB__(v39, v70))
      {
        goto LABEL_217;
      }

      __break(1u);
      goto LABEL_151;
    }

    if (!v26)
    {
      goto LABEL_118;
    }

    LODWORD(v25) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      goto LABEL_216;
    }

    __break(1u);
  }

  if (v25 == 2)
  {
    v102 = a13;
    v103 = a12;
    v104 = a10;
    v27 = op;
    dataIna = dataIn;
    v19 = a8;
    v28 = *(a3 + 16);
    sub_90090(a5, a6);
    v105 = v15;
    v100 = a9;
    sub_90090(v15, a9);
    v15 = sub_AB2D10();
    if (!v15)
    {
      goto LABEL_16;
    }

    v29 = sub_AB2D40();
    if (!__OFSUB__(v28, v29))
    {
      v15 = (v15 + v28 - v29);
LABEL_16:
      v30 = sub_AB2D30();
      v31 = a6 >> 62;
      if ((a6 >> 62) <= 1)
      {
        if (!v31)
        {
          v30 = v27;
          iv[0] = a5;
          LOWORD(iv[1]) = a6;
          BYTE2(iv[1]) = BYTE2(a6);
          BYTE3(iv[1]) = BYTE3(a6);
          BYTE4(iv[1]) = BYTE4(a6);
          BYTE5(iv[1]) = BYTE5(a6);
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v27))
            {
              v32 = a9 >> 62;
              op = dataIna;
              if ((a9 >> 62) <= 1)
              {
                v24 = v105;
                if (!v32)
                {
                  v33 = BYTE6(a9);
LABEL_223:
                  dataOutAvailable = a12;
                  v99 = a13;
                  v92 = iv;
                  dataOut = a10;
LABEL_241:
                  v91 = CCCrypt(v30, 0, 1u, v92, 0x20uLL, v15, op, v33, dataOut, dataOutAvailable, v99);
                  sub_466B8(a5, a6);
                  v94 = v24;
                  v95 = v100;
                  goto LABEL_246;
                }

                if (!__OFSUB__(HIDWORD(v105), v105))
                {
                  v33 = HIDWORD(v105) - v105;
                  goto LABEL_223;
                }

                goto LABEL_296;
              }

              v24 = v105;
              if (v32 != 2)
              {
                v33 = 0;
                goto LABEL_223;
              }

              v75 = v105[2];
              v41 = v105[3];
              v33 = v41 - v75;
              if (!__OFSUB__(v41, v75))
              {
                goto LABEL_223;
              }

              __break(1u);
              goto LABEL_168;
            }

            goto LABEL_267;
          }

          goto LABEL_257;
        }

        if (a5 > a5 >> 32)
        {
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v18 = sub_AB2D10();
        if (v18)
        {
          v62 = sub_AB2D40();
          if (__OFSUB__(a5, v62))
          {
LABEL_293:
            __break(1u);
            goto LABEL_294;
          }

          v18 += a5 - v62;
        }

        sub_AB2D30();
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_278;
        }

        op = dataIna;
        if (HIDWORD(v27))
        {
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
          goto LABEL_286;
        }

        v63 = a9 >> 62;
        v24 = v105;
        if ((a9 >> 62) <= 1)
        {
          if (!v63)
          {
            goto LABEL_127;
          }

          LODWORD(v36) = HIDWORD(v105) - v105;
          if (__OFSUB__(HIDWORD(v105), v105))
          {
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
          }

          goto LABEL_239;
        }

LABEL_205:
        if (v63 == 2)
        {
          v87 = *(v24 + 16);
          v86 = *(v24 + 24);
          v33 = v86 - v87;
          if (!__OFSUB__(v86, v87))
          {
            goto LABEL_240;
          }

          __break(1u);
        }

LABEL_209:
        v33 = 0;
        goto LABEL_240;
      }

      goto LABEL_65;
    }

    goto LABEL_249;
  }

  v31 = a6 >> 62;
  memset(iv, 0, 14);
  if ((a6 >> 62) > 1)
  {
    goto LABEL_54;
  }

  if (v31)
  {
    goto LABEL_98;
  }

  key[0] = a5;
  LOWORD(key[1]) = a6;
  BYTE2(key[1]) = BYTE2(a6);
  BYTE3(key[1]) = BYTE3(a6);
  BYTE4(key[1]) = BYTE4(a6);
  BYTE5(key[1]) = BYTE5(a6);
  if ((op & 0x8000000000000000) != 0)
  {
    goto LABEL_252;
  }

  if (HIDWORD(op))
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v39 = a9 >> 62;
  if ((a9 >> 62) > 1)
  {
LABEL_151:
    if (v39 != 2)
    {
      goto LABEL_163;
    }

    v71 = v15[2];
    v59 = v15[3];
    v61 = v59 - v71;
    if (!__OFSUB__(v59, v71))
    {
      goto LABEL_217;
    }

    __break(1u);
    goto LABEL_155;
  }

  if (!v39)
  {
    goto LABEL_118;
  }

  LODWORD(v25) = HIDWORD(a7) - a7;
  if (!__OFSUB__(HIDWORD(a7), a7))
  {
    goto LABEL_216;
  }

  __break(1u);
LABEL_43:
  if (v25 == 2)
  {
    v102 = a13;
    v103 = a12;
    v104 = a10;
    v27 = op;
    v18 = *(a5 + 16);
    sub_90090(a5, a6);
    v105 = v15;
    sub_90090(v15, a9);
    v15 = sub_AB2D10();
    if (v15)
    {
      v40 = sub_AB2D40();
      if (__OFSUB__(v18, v40))
      {
LABEL_287:
        __break(1u);
        goto LABEL_288;
      }

      v15 = (v15 + v18 - v40);
    }

    sub_AB2D30();
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_258;
    }

    v30 = v27;
    if (HIDWORD(v27))
    {
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v41 = a9 >> 62;
    v14 = v13;
    if ((a9 >> 62) > 1)
    {
LABEL_168:
      if (v41 != 2)
      {
        goto LABEL_196;
      }

      v76 = v105[2];
      v43 = v105[3];
      v58 = v43 - v76;
      if (!__OFSUB__(v43, v76))
      {
        goto LABEL_230;
      }

      __break(1u);
      goto LABEL_172;
    }

    if (!v41)
    {
      goto LABEL_106;
    }

    LODWORD(v31) = HIDWORD(v105) - v105;
    if (!__OFSUB__(HIDWORD(v105), v105))
    {
      goto LABEL_229;
    }

    __break(1u);
LABEL_54:
    if (v31 == 2)
    {
      v102 = v22;
      v103 = v21;
      v104 = v23;
      dataIna = v14;
      v27 = op;
      v18 = *(a5 + 16);
      sub_90090(a5, a6);
      v105 = v15;
      sub_90090(v15, a9);
      v15 = sub_AB2D10();
      if (v15)
      {
        v42 = sub_AB2D40();
        if (__OFSUB__(v18, v42))
        {
LABEL_288:
          __break(1u);
          goto LABEL_289;
        }

        v15 = (v15 + v18 - v42);
      }

      sub_AB2D30();
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_259;
      }

      v30 = v27;
      if (HIDWORD(v27))
      {
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
        goto LABEL_274;
      }

      v43 = a9 >> 62;
      if ((a9 >> 62) > 1)
      {
LABEL_172:
        if (v43 != 2)
        {
          goto LABEL_196;
        }

        v77 = v105[2];
        v64 = v105[3];
        v58 = v64 - v77;
        if (!__OFSUB__(v64, v77))
        {
          goto LABEL_230;
        }

        __break(1u);
        goto LABEL_176;
      }

      if (!v43)
      {
        goto LABEL_106;
      }

      LODWORD(v31) = HIDWORD(v105) - v105;
      if (__OFSUB__(HIDWORD(v105), v105))
      {
        __break(1u);
LABEL_65:
        if (v31 != 2)
        {
          memset(iv, 0, 14);
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v27))
            {
              a8 = v19;
              v64 = v100 >> 62;
              op = dataIna;
              if ((v100 >> 62) <= 1)
              {
                v24 = v105;
                if (v64)
                {
                  if (__OFSUB__(HIDWORD(v105), v105))
                  {
LABEL_297:
                    __break(1u);
                    goto LABEL_298;
                  }

                  v33 = HIDWORD(v105) - v105;
                }

                else
                {
                  v33 = BYTE6(v100);
                }

                goto LABEL_225;
              }

LABEL_176:
              v24 = v105;
              if (v64 == 2)
              {
                v78 = v105[2];
                v46 = v105[3];
                v33 = v46 - v78;
                if (!__OFSUB__(v46, v78))
                {
                  goto LABEL_225;
                }

                __break(1u);
LABEL_180:
                if (v46 == 2)
                {
                  v79 = *(v24 + 16);
                  v37 = *(v24 + 24);
                  v33 = v37 - v79;
                  if (!__OFSUB__(v37, v79))
                  {
                    goto LABEL_240;
                  }

                  __break(1u);
LABEL_184:
                  if (v37 != 2)
                  {
                    v38 = 0;
LABEL_235:
                    v93 = CCCrypt(v30, 0, 1u, iv, 0x20uLL, v15, op, v38, v104, v103, v102);
                    goto LABEL_231;
                  }

                  v80 = v105[2];
                  v54 = v105[3];
                  v38 = v54 - v80;
                  if (!__OFSUB__(v54, v80))
                  {
                    goto LABEL_235;
                  }

                  __break(1u);
LABEL_188:
                  if (v54 == 2)
                  {
                    v81 = v105[2];
                    v57 = v105[3];
                    v58 = v57 - v81;
                    if (!__OFSUB__(v57, v81))
                    {
                      goto LABEL_230;
                    }

                    __break(1u);
                    goto LABEL_192;
                  }

LABEL_196:
                  v58 = 0;
                  goto LABEL_230;
                }

                goto LABEL_209;
              }

              v33 = 0;
LABEL_225:
              dataOutAvailable = v103;
              v99 = v102;
              v92 = iv;
              dataOut = v104;
              v30 = v27;
              goto LABEL_241;
            }

            goto LABEL_273;
          }

          goto LABEL_261;
        }

        v44 = *(a5 + 16);
        v18 = sub_AB2D10();
        if (v18)
        {
          v45 = sub_AB2D40();
          if (__OFSUB__(v44, v45))
          {
LABEL_289:
            __break(1u);
            goto LABEL_290;
          }

          v18 += v44 - v45;
        }

        v30 = sub_AB2D30();
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_266;
        }

        op = dataIna;
        if (HIDWORD(v27))
        {
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
          goto LABEL_280;
        }

        a8 = v19;
        v46 = v100 >> 62;
        v24 = v105;
        if ((v100 >> 62) > 1)
        {
          goto LABEL_180;
        }

        if (!v46)
        {
LABEL_127:
          v33 = BYTE6(v100);
LABEL_240:
          dataOutAvailable = v103;
          v99 = v102;
          dataOut = v104;
          v30 = v27;
          v92 = v18;
          goto LABEL_241;
        }

        LODWORD(v36) = HIDWORD(v105) - v105;
        if (!__OFSUB__(HIDWORD(v105), v105))
        {
LABEL_239:
          v33 = v36;
          goto LABEL_240;
        }

        __break(1u);
        goto LABEL_76;
      }

LABEL_229:
      v58 = v31;
      goto LABEL_230;
    }

LABEL_114:
    memset(key, 0, 14);
    if ((op & 0x8000000000000000) != 0)
    {
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    if (HIDWORD(op))
    {
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    v60 = a9 >> 62;
    if ((a9 >> 62) <= 1)
    {
      if (v60)
      {
        LODWORD(v25) = HIDWORD(v15) - v15;
        if (!__OFSUB__(HIDWORD(v15), v15))
        {
LABEL_216:
          v61 = v25;
          goto LABEL_217;
        }

        goto LABEL_295;
      }

      goto LABEL_118;
    }

    goto LABEL_159;
  }

  memset(key, 0, 14);
  if ((op & 0x8000000000000000) != 0)
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  if (HIDWORD(op))
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v59 = a9 >> 62;
  if ((a9 >> 62) > 1)
  {
LABEL_155:
    if (v59 == 2)
    {
      v72 = v15[2];
      v60 = v15[3];
      v61 = v60 - v72;
      if (!__OFSUB__(v60, v72))
      {
        goto LABEL_217;
      }

      __break(1u);
LABEL_159:
      if (v60 == 2)
      {
        v74 = v15[2];
        v73 = v15[3];
        v61 = v73 - v74;
        if (!__OFSUB__(v73, v74))
        {
          goto LABEL_217;
        }

        __break(1u);
      }
    }

LABEL_163:
    v61 = 0;
    goto LABEL_217;
  }

  if (v59)
  {
    LODWORD(v25) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      goto LABEL_216;
    }

    __break(1u);
    goto LABEL_114;
  }

LABEL_118:
  v61 = BYTE6(a9);
LABEL_217:
  result = CCCrypt(op, 0, 1u, key, 0x20uLL, iv, v19, v61, v23, v21, v22);
  v91 = result;
LABEL_247:
  *a8 = v91;
  return result;
}

void *sub_284478(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E25170);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2845A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_ABB060();
  }

  return sub_ABAE30();
}

_BYTE *sub_284608@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_28469C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_284754(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2847D0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_28469C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_284754(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_AB2D50();
  swift_allocObject();
  result = sub_AB2D00();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_AB3210();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2847D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_AB2D50();
  swift_allocObject();
  result = sub_AB2D00();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_284854(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFBFF8);
  v10 = sub_284D70();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_284608(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_284904(uint64_t a1, unint64_t a2, int64_t a3, int8x16_t a4, int8x16_t a5)
{
  v11 = a1;
  *a4.i64 = vcvtd_n_f64_s64(a3, 3uLL);
  *a5.i64 = *a4.i64 - trunc(*a4.i64);
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  v14 = vbslq_s8(v13, a5, a4);
  if (*v14.i64 == 0.0)
  {
    if ((a4.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (*a4.i64 > -9.22337204e18)
    {
      if (*a4.i64 < 9.22337204e18)
      {
        v15 = a2 >> 62;
        if ((a2 >> 62) > 1)
        {
          a1 = 0;
          if (v15 == 2)
          {
            a1 = *(v11 + 16);
          }
        }

        else if (v15)
        {
          a1 = a1;
        }

        else
        {
          a1 = 0;
        }

        if (a1 <= *a4.i64)
        {
          v18 = sub_AB3240();
          v20 = v19;
          v21 = Data.hexRepresentation.getter(v18, v19);
          sub_466B8(v18, v20);
          return v21;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_63;
  }

  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a2);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    if (a3 > 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v25 = __OFSUB__(v23, v24);
  v17 = v23 - v24;
  if (v25)
  {
    __break(1u);
LABEL_20:
    LODWORD(v17) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_77;
    }

    v17 = v17;
  }

LABEL_22:
  if ((v17 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a3 > 8 * v17)
  {
LABEL_24:

    return Data.hexRepresentation.getter(a1, a2);
  }

LABEL_28:
  *v14.i64 = a3;
  v26 = ceil(*a4.i64);
  v27 = v26 * 8.0 - a3;
  if (v27 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *v13.i64 = *v14.i64 - trunc(*v14.i64 * 0.25) * 4.0;
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  v29 = *v14.i64 + 4.0 - *vbslq_s8(vnegq_f64(v28), v13, v14).i64 - *v14.i64;
  if (v29 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v30 = COERCE_UNSIGNED_INT64(fabs(v26 * 8.0 - a3)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v30)
  {
    goto LABEL_70;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v26 < 9.22337204e18)
  {
    v31 = 0;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v31 = *(v11 + 16);
      }
    }

    else if (v16)
    {
      v31 = v11;
    }

    if (v31 > v26)
    {
      goto LABEL_73;
    }

    v5 = sub_AB3240();
    v6 = v32;
    sub_90090(v5, v32);
    v33 = sub_2818F0(v5, v6);
    v8 = *(v33 + 2);
    if (!v8)
    {
      goto LABEL_74;
    }

    v7 = v33;
    v34 = v27;
    v11 = v29;
    v9 = v8 - 1;
    if (v27 < -8 || v34 > 8)
    {
LABEL_46:
      if (v11 - 9 >= 0xFFFFFFFFFFFFFFEFLL)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        LOBYTE(v10) = 0;
        v35 = 0;
        if (v11 >= 8)
        {
          goto LABEL_58;
        }

LABEL_57:
        v10 = v35 << v11;
        goto LABEL_58;
      }

      goto LABEL_54;
    }

    v36 = v33[v9 + 32];
    if (v34 < 0)
    {
      if (v34 == -8)
      {
        goto LABEL_46;
      }

      v35 = v36 << -v34;
    }

    else
    {
      if (v34 == 8)
      {
        goto LABEL_46;
      }

      v35 = v36 >> v34;
    }

    if (v11 - 9 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        if (v11 > 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_83;
        }
      }

      else if (v11 < 8)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    LOBYTE(v10) = 0;
    goto LABEL_58;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  v7 = sub_284540(v7);
  while (1)
  {
    v11 = *(v7 + 2);
    if (v8 <= v11)
    {
      break;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    LOBYTE(v35) = 0;
    LOBYTE(v10) = 0;
    if (v11 > 0xFFFFFFFFFFFFFFF8)
    {
LABEL_83:
      v10 = v35 >> -v11;
    }

LABEL_58:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  v7[v9 + 32] = v10;

  v38 = sub_284854(v37);
  v40 = v39;

  v41 = Data.hexRepresentation.getter(v38, v40);
  sub_466B8(v5, v6);
  sub_466B8(v38, v40);

  return v41;
}

unint64_t sub_284D70()
{
  result = qword_DFC000;
  if (!qword_DFC000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFBFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC000);
  }

  return result;
}

uint64_t sub_284DD4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_AB2D50();
      swift_allocObject();
      sub_AB2D20();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_AB3210();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_284E74(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, size_t *a10)
{
  v13 = a5;
  v18 = *a1;
  v17 = a1[1];
  v19 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v19 != 2)
    {
      *(&dataOut + 7) = 0;
      *&dataOut = 0;
      sub_90090(a2, a3);
      sub_90090(a4, v13);
      sub_90090(a6, a7);
      sub_281D6C(&dataOut, &dataOut, a2, a3, a4, v13, a6, a7, &v59, a8, a9, a10);
      sub_466B8(a2, a3);
      sub_466B8(a4, v13);
      if (!v10)
      {
        v13 = v59;
      }

      goto LABEL_34;
    }

    sub_90090(a2, a3);
    sub_90090(a4, v13);
    sub_90090(a6, a7);
    sub_90090(a2, a3);
    sub_90090(a4, v13);
    sub_90090(a6, a7);
    sub_90090(v18, v17);
    sub_466B8(v18, v17);
    *&dataOut = v18;
    *(&dataOut + 1) = v17 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_B07530;
    sub_466B8(0, 0xC000000000000000);
    sub_AB31D0();
    v21 = *(&dataOut + 1);
    v22 = v13;
    v23 = *(dataOut + 16);
    v24 = *(dataOut + 24);
    v50 = dataOut;
    sub_90090(a2, a3);
    v55 = v22;
    sub_90090(a4, v22);
    v52 = a6;
    sub_90090(a6, a7);
    result = sub_AB2D10();
    if (!result)
    {
      __break(1u);
      goto LABEL_42;
    }

    v26 = result;
    v27 = sub_AB2D40();
    v28 = v23 - v27;
    if (!__OFSUB__(v23, v27))
    {
      v29 = __OFSUB__(v24, v23);
      v13 = v24 - v23;
      if (!v29)
      {
        v30 = sub_AB2D30();
        if (v30 >= v13)
        {
          v31 = v13;
        }

        else
        {
          v31 = v30;
        }

        v32 = (v26 + v28);
        v33 = v26 + v28 + v31;
        a6 = v52;
        sub_281D6C(v32, v33, a2, a3, a4, v55, v52, a7, &v59, a8, a9, a10);
        v34 = v21 | 0x8000000000000000;
        sub_466B8(v52, a7);
        sub_466B8(a4, v55);
        sub_466B8(a2, a3);
        sub_466B8(a2, a3);
        sub_466B8(a4, v55);
        if (!v10)
        {
          v13 = v59;
        }

        sub_466B8(v52, a7);
        sub_466B8(a2, a3);
        sub_466B8(a4, v55);
        *a1 = v50;
        a1[1] = v34;
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v19)
  {
    sub_90090(a2, a3);
    sub_90090(a4, a5);
    sub_90090(a6, a7);
    sub_90090(a2, a3);
    sub_90090(a4, a5);
    sub_90090(a6, a7);
    sub_466B8(v18, v17);
    *&dataOut = v18;
    WORD4(dataOut) = v17;
    BYTE10(dataOut) = BYTE2(v17);
    BYTE11(dataOut) = BYTE3(v17);
    BYTE12(dataOut) = BYTE4(v17);
    BYTE13(dataOut) = BYTE5(v17);
    BYTE14(dataOut) = BYTE6(v17);
    sub_281D6C(&dataOut, &dataOut + BYTE6(v17), a2, a3, a4, a5, a6, a7, &v59, a8, a9, a10);
    if (v10)
    {
      v20 = dataOut;
      v13 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
      sub_466B8(a2, a3);
      sub_466B8(a4, a5);
      sub_466B8(a6, a7);
      sub_466B8(a2, a3);
      sub_466B8(a4, a5);
      *a1 = v20;
      a1[1] = v13;
    }

    else
    {
      v13 = v59;
      v38 = dataOut;
      v39 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
      sub_466B8(a2, a3);
      sub_466B8(a4, a5);
      sub_466B8(a6, a7);
      sub_466B8(a2, a3);
      sub_466B8(a4, a5);
      *a1 = v38;
      a1[1] = v39;
    }

LABEL_34:
    sub_466B8(a6, a7);
    return v13;
  }

  v13 = v17 & 0x3FFFFFFFFFFFFFFFLL;
  sub_90090(a2, a3);
  sub_90090(a4, a5);
  sub_90090(a6, a7);
  sub_90090(a2, a3);
  v51 = a4;
  sub_90090(a4, a5);
  sub_90090(a6, a7);
  sub_90090(v18, v17);
  sub_466B8(v18, v17);
  *a1 = xmmword_B07530;
  sub_466B8(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v18;
  v37 = v18 >> 32;
  v53 = a6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v37 < v18)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (sub_AB2D10() && __OFSUB__(v18, sub_AB2D40()))
    {
LABEL_40:
      __break(1u);
    }

    sub_AB2D50();
    swift_allocObject();
    v36 = v18;
    v40 = sub_AB2CF0();

    v13 = v40;
    v37 = v18 >> 32;
  }

  v41 = v37 - v36;
  if (v37 < v36)
  {
    goto LABEL_36;
  }

  sub_90090(a2, a3);
  sub_90090(v51, a5);
  v49 = a7;
  sub_90090(a6, a7);

  result = sub_AB2D10();
  if (result)
  {
    v42 = result;
    v43 = sub_AB2D40();
    v44 = v36 - v43;
    if (!__OFSUB__(v36, v43))
    {
      v45 = sub_AB2D30();
      if (v45 >= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v45;
      }

      v47 = (v42 + v44);
      v48 = v42 + v44 + v46;
      a6 = v53;
      a7 = v49;
      sub_281D6C(v47, v48, a2, a3, v51, a5, v53, v49, &dataOut, a8, a9, a10);
      v57 = v13 | 0x4000000000000000;
      if (v10)
      {
        sub_466B8(v53, v49);
        sub_466B8(v51, a5);
        sub_466B8(a2, a3);

        sub_466B8(a2, a3);
        sub_466B8(v51, a5);
        sub_466B8(v53, v49);
        sub_466B8(a2, a3);
        sub_466B8(v51, a5);
        *a1 = v18;
        a1[1] = v57;
      }

      else
      {
        sub_466B8(v53, v49);
        sub_466B8(v51, a5);
        sub_466B8(a2, a3);

        sub_466B8(a2, a3);
        v13 = dataOut;
        sub_466B8(v51, a5);
        sub_466B8(v53, v49);
        sub_466B8(a2, a3);
        sub_466B8(v51, a5);
        *a1 = v18;
        a1[1] = v57;
      }

      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_42:
  __break(1u);
  return result;
}

double sub_285778()
{
  result = -Int.seconds.getter(16);
  qword_DFC020 = *&result;
  return result;
}

uint64_t sub_2857E8(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_ABA330();

  return v2 & 1;
}

void (*sub_285838(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 184) = v1;
  v5 = _s17CellConfigurationVMa(0);
  v4[24] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(*(v5 - 8) + 64));
  }

  v4[25] = v6;
  v4[3] = v5;
  v4[4] = sub_28D000(&unk_DFC268, 255, _s17CellConfigurationVMa);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  v8 = OBJC_IVAR___MusicInterstellarContentView_typedConfiguration;
  swift_beginAccess();
  sub_28D09C(v1 + v8, boxed_opaque_existential_0, _s17CellConfigurationVMa);
  return sub_285978;
}

void sub_285978(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 200);
  if (a2)
  {
    sub_E8BA0(*a1, v2 + 40);
    sub_E8BA0(v2 + 40, v2 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
    swift_dynamicCast();
    sub_285A70(v3);
    __swift_destroy_boxed_opaque_existential_0(v2 + 40);
  }

  else
  {
    sub_E8BA0(*a1, v2 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
    swift_dynamicCast();
    sub_285A70(v3);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  free(v3);

  free(v2);
}

uint64_t sub_285A70(uint64_t a1)
{
  v3 = _s17CellConfigurationVMa(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR___MusicInterstellarContentView_typedConfiguration;
  swift_beginAccess();
  sub_28D09C(v1 + v9, v8, _s17CellConfigurationVMa);
  swift_beginAccess();
  sub_28F314(a1, v1 + v9, _s17CellConfigurationVMa);
  swift_endAccess();
  sub_28D09C(v1 + v9, v6, _s17CellConfigurationVMa);
  v10 = sub_28D104(v6, v8);
  sub_28D434(v6, _s17CellConfigurationVMa);
  if ((v10 & 1) == 0)
  {
    sub_286378();
  }

  sub_28D434(a1, _s17CellConfigurationVMa);
  return sub_28D434(v8, _s17CellConfigurationVMa);
}

void sub_285CDC(void *a1)
{
  v2 = OBJC_IVAR___MusicInterstellarContentView_pill;
  v3 = *&v1[OBJC_IVAR___MusicInterstellarContentView_pill];
  *&v1[OBJC_IVAR___MusicInterstellarContentView_pill] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v1 addSubview:v6];
  }

LABEL_4:
}

void *sub_285D88()
{
  v1 = OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton;
  v2 = *&v0[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton];
  }

  else
  {
    v4 = _s11MusicCoreUI12SymbolButtonC0A11ApplicationE014mediaPickerAddE0ACvgZ_0();
    [v4 sizeToFit];
    [v4 setHidden:1];
    [v4 setUserInteractionEnabled:0];

    [v0 addSubview:v4];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_285E40(id result)
{
  v2 = v1[OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton];
  v1[OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton] = result;
  if (v2 != (result & 1))
  {
    v3 = result;
    v4 = sub_285D88();
    v5 = v4;
    if (v3)
    {
      [v4 setSelected:v1[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected]];

      [*&v1[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton] setHidden:0];
    }

    else
    {
      [v4 setHidden:1];
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

char *sub_285F14(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR___MusicInterstellarContentView_separatorHidden] = 1;
  v7 = OBJC_IVAR___MusicInterstellarContentView_badgeView;
  v8 = objc_allocWithZone(type metadata accessor for BadgeView());
  v9 = UIFontTextStyleBody;
  *&v1[v7] = sub_4CABD8(_swiftEmptyArrayStorage, v9);
  v10 = OBJC_IVAR___MusicInterstellarContentView_titleLabel;
  *&v2[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR___MusicInterstellarContentView_subtitleLabel;
  *&v2[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR___MusicInterstellarContentView_separator;
  _s9SeparatorCMa();
  *&v2[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR___MusicInterstellarContentView_pill] = 0;
  *&v2[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton] = 0;
  v2[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected] = 0;
  v2[OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton] = 0;
  sub_28D09C(a1, &v2[OBJC_IVAR___MusicInterstellarContentView_typedConfiguration], _s17CellConfigurationVMa);
  v13 = _s17CellConfigurationVMa(0);
  sub_28D09C(a1 + *(v13 + 28), v6, type metadata accessor for Artwork);
  v14 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  *&v2[OBJC_IVAR___MusicInterstellarContentView_artworkView] = Artwork.View.init(configuration:)(v6);
  v15 = _s11ContentViewCMa(0);
  v35.receiver = v2;
  v35.super_class = v15;
  v16 = objc_msgSendSuper2(&v35, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = *&v16[OBJC_IVAR___MusicInterstellarContentView_artworkView];
  v18 = v16;
  [v18 addSubview:v17];
  v19 = OBJC_IVAR___MusicInterstellarContentView_titleLabel;
  [v18 addSubview:*&v18[OBJC_IVAR___MusicInterstellarContentView_titleLabel]];
  [v18 addSubview:*&v18[OBJC_IVAR___MusicInterstellarContentView_badgeView]];
  v20 = OBJC_IVAR___MusicInterstellarContentView_subtitleLabel;
  [v18 addSubview:*&v18[OBJC_IVAR___MusicInterstellarContentView_subtitleLabel]];
  v21 = OBJC_IVAR___MusicInterstellarContentView_separator;
  [v18 addSubview:*&v18[OBJC_IVAR___MusicInterstellarContentView_separator]];
  [*&v18[v21] setHidden:1];
  [v18 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  v22 = *&v18[v19];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 labelColor];
  [v24 setTextColor:v25];

  v26 = *&v18[v20];
  v27 = [v23 secondaryLabelColor];
  [v26 setTextColor:v27];

  v28 = *&v18[v19];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:v9];
  [v30 setFont:v31];

  v32 = *&v18[v20];
  v33 = [v29 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v32 setFont:v33];

  [*&v18[v19] setAdjustsFontForContentSizeCategory:1];
  [*&v18[v20] setAdjustsFontForContentSizeCategory:1];
  sub_286378();
  sub_28D434(a1, _s17CellConfigurationVMa);

  return v18;
}

uint64_t sub_286378()
{
  v1 = v0;
  v2 = _s17CellConfigurationVMa(0);
  __chkstk_darwin(v2);
  v4 = (v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR___MusicInterstellarContentView_typedConfiguration;
  swift_beginAccess();
  sub_28D09C(v1 + v5, v4, _s17CellConfigurationVMa);
  v6 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_artworkView);
  v7 = *(v2 + 28);
  v26[3] = type metadata accessor for Artwork(0);
  v26[4] = sub_28D000(&unk_DF0C60, 255, type metadata accessor for Artwork);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  sub_28D09C(v4 + v7, boxed_opaque_existential_0, type metadata accessor for Artwork);
  v9 = type metadata accessor for Artwork.View(0);
  v10 = sub_28D000(&qword_DFC328, 255, type metadata accessor for Artwork.View);
  v11 = v6;
  MusicUIContentView.configuration.setter(v26, v9, v10);

  v12 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_titleLabel);
  if (v4[2])
  {
    v13 = sub_AB9260();
  }

  else
  {
    v13 = 0;
  }

  [v12 setText:v13];

  v14 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_subtitleLabel);
  if (v4[4])
  {
    v15 = sub_AB9260();
  }

  else
  {
    v15 = 0;
  }

  [v14 setText:v15];

  if (*(v4 + *(v2 + 32)))
  {
    v16 = &off_CEFA98;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_badgeView);
  v18 = sub_2F3AA8(v16);

  v19 = *&v17[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet];
  *&v17[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = v18;
  sub_4CAE8C(v19);

  v20 = *v4;
  if (*v4)
  {
    v21 = objc_allocWithZone(SLAttributionView);
    v22 = v20;
    v23 = [v21 initWithHighlight:v22];
    v24 = v23;
    sub_285CDC(v23);
  }

  else
  {
    sub_285CDC(0);
  }

  return sub_28D434(v4, _s17CellConfigurationVMa);
}

void sub_28676C()
{
  v1 = v0;
  v81.receiver = v0;
  v81.super_class = _s11ContentViewCMa(0);
  objc_msgSendSuper2(&v81, "layoutSubviews");
  [v0 layoutMargins];
  v3 = v2;
  v5 = v4;
  [v0 effectiveUserInterfaceLayoutDirection];
  v78 = [v0 traitCollection];
  [v0 bounds];
  v10 = UIEdgeInsetsInsetRect(v6, v7, v8, v9, v3, v5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (qword_DE6A30 != -1)
  {
    swift_once();
  }

  v17 = *&qword_DFC010;
  v18 = *&v0[OBJC_IVAR___MusicInterstellarContentView_artworkView];
  sub_ABA460();
  v80 = v12;
  sub_ABA490();
  [v18 setFrame:?];

  if (qword_DE6A38 != -1)
  {
    swift_once();
  }

  v19 = v17 + *&qword_DFC018;
  v20 = v14 - (v17 + *&qword_DFC018);
  v77 = OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton;
  v21 = v20;
  if (v1[OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton] == 1)
  {
    v22 = sub_285D88();
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v82.origin.x = v24;
    v82.origin.y = v26;
    v82.size.width = v28;
    v82.size.height = v30;
    v21 = v20 - CGRectGetWidth(v82);
  }

  v31 = v10 + v19;
  v32 = &v1[OBJC_IVAR___MusicInterstellarContentView_typedConfiguration];
  swift_beginAccess();
  v75 = _s17CellConfigurationVMa(0);
  v76 = v32;
  if (v32[*(v75 + 32)])
  {
    [*&v1[OBJC_IVAR___MusicInterstellarContentView_badgeView] sizeThatFits:{v21, v16}];
    v34 = v20 - v33;
  }

  else
  {
    v34 = v20;
  }

  v79 = *&v1[OBJC_IVAR___MusicInterstellarContentView_titleLabel];
  [v79 sizeThatFits:{v34, v16}];
  v83.origin.x = v31;
  v83.origin.y = v80;
  v83.size.width = v34;
  v83.size.height = v16;
  CGRectGetWidth(v83);
  v35 = *&v1[OBJC_IVAR___MusicInterstellarContentView_subtitleLabel];
  [v35 sizeThatFits:{v21, v16}];
  v36 = OBJC_IVAR___MusicInterstellarContentView_pill;
  [*&v1[OBJC_IVAR___MusicInterstellarContentView_pill] prepareLayoutWithMaxWidth:v20];
  v37 = *&v1[v36];
  if (v37)
  {
    [v37 frame];
  }

  v38 = objc_opt_self();
  v39 = [v38 defaultMetrics];
  v40 = sub_ABA310();
  __chkstk_darwin(v40);
  sub_AB9EF0();

  v41 = [v38 defaultMetrics];
  v42 = sub_ABA310();
  __chkstk_darwin(v42);
  sub_AB9EF0();
  v44 = v43;

  [v79 _baselineOffsetFromBottom];
  [v35 _firstBaselineOffsetFromTop];
  v84.origin.x = v31;
  v84.origin.y = v80;
  v84.size.width = v20;
  v84.size.height = v16;
  CGRectGetMidY(v84);
  v85.origin.x = v31;
  v85.origin.y = v80;
  v85.size.width = v34;
  v85.size.height = v16;
  CGRectGetMinX(v85);
  sub_ABA490();
  [v79 setFrame:?];
  if (v76[*(v75 + 32)] == 1)
  {
    v45 = *&v1[OBJC_IVAR___MusicInterstellarContentView_badgeView];
    v86.origin.x = v31;
    v86.origin.y = v80;
    v86.size.width = v34;
    v86.size.height = v16;
    CGRectGetMinX(v86);
    sub_ABA490();
    [v45 setFrame:?];
  }

  [v79 frame];
  CGRectGetMaxY(v87);
  [v79 _baselineOffsetFromBottom];
  [v35 _firstBaselineOffsetFromTop];
  v88.origin.x = v31;
  v88.origin.y = v80;
  v88.size.width = v20;
  v88.size.height = v16;
  CGRectGetMinX(v88);
  sub_ABA490();
  [v35 setFrame:?];
  [v35 frame];
  MaxY = CGRectGetMaxY(v89);
  [v35 _baselineOffsetFromBottom];
  v48 = *&v1[v36];
  if (v48)
  {
    v49 = v44 + MaxY - v47;
    v50 = v48;
    v90.origin.x = v31;
    v90.origin.y = v80;
    v90.size.width = v20;
    v90.size.height = v16;
    MinX = CGRectGetMinX(v90);
    [v50 frame];
    [v50 setFrame:{MinX, v49}];

    v52 = *&v1[v36];
    if (v52)
    {
      [v52 frame];
      v53 = *&v1[v36];
      if (v53)
      {
        v54 = v53;
        sub_ABA490();
        [v54 setFrame:?];
      }
    }
  }

  if (v1[v77] == 1)
  {
    [v79 frame];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    [v35 frame];
    v98.origin.x = v63;
    v98.origin.y = v64;
    v98.size.width = v65;
    v98.size.height = v66;
    v91.origin.x = v56;
    v91.origin.y = v58;
    v91.size.width = v60;
    v91.size.height = v62;
    v92 = CGRectUnion(v91, v98);
    x = v92.origin.x;
    y = v92.origin.y;
    width = v92.size.width;
    height = v92.size.height;
    v71 = sub_285D88();
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    CGRectGetMidY(v93);
    [v35 _baselineOffsetFromBottom];
    [v71 center];
    [v71 setCenter:?];

    v72 = OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton;
    [*&v1[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton] bounds];
    v73 = *&v1[v72];
    [v1 bounds];
    CGRectGetMaxX(v94);
    [*&v1[v72] frame];
    CGRectGetMinY(v95);
    sub_ABA490();
    [v73 setFrame:?];
  }

  v74 = *&v1[OBJC_IVAR___MusicInterstellarContentView_separator];
  [v74 intrinsicContentSize];
  [v1 bounds];
  CGRectGetMaxY(v96);
  v97.origin.x = v31;
  v97.origin.y = v80;
  v97.size.width = v20;
  v97.size.height = v16;
  CGRectGetWidth(v97);
  sub_ABA490();
  [v74 setFrame:?];
}

uint64_t sub_287240@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = _s17CellConfigurationVMa(0);
  a1[4] = sub_28D000(&unk_DFC268, 255, _s17CellConfigurationVMa);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v4 = OBJC_IVAR___MusicInterstellarContentView_typedConfiguration;
  swift_beginAccess();
  return sub_28D09C(v1 + v4, boxed_opaque_existential_0, _s17CellConfigurationVMa);
}

uint64_t sub_287300(uint64_t a1)
{
  v2 = _s17CellConfigurationVMa(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_E8BA0(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  swift_dynamicCast();
  sub_285A70(v4);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_2873C4(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_285838(v2);
  return sub_A8F90;
}

void sub_287448(char a1)
{
  v2 = OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected;
  v3 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected);
  *(v1 + OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected) = a1;
  if (v3 != (a1 & 1))
  {
    v4 = sub_285D88();
    [v4 setSelected:*(v1 + v2)];
  }
}

uint64_t sub_2874C4(void **a1)
{
  sub_1253F8(*a1, a1[1]);
  *a1 = 0;
  a1[1] = 0;
  v2 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v19 = v2[5];
  v20 = v2[4];
  v7 = type metadata accessor for Artwork(0);
  v8 = a1 + *(v7 + 32);
  v17 = *(v8 + 1);
  v18 = *v8;
  v9 = *(v8 + 3);
  v16 = *(v8 + 2);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v13 = v4;
  sub_2F1C8(v18, v17, v16, v9);
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  *(v8 + 3) = v6;
  *(v8 + 4) = v20;
  *(v8 + 5) = v19;
  v14 = Artwork.Decoration.grid.unsafeMutableAddressor();
  return sub_28F314(v14, a1 + *(v7 + 28), type metadata accessor for Artwork.Decoration);
}

char *sub_2875B4(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28D09C(v1, v3, _s17CellConfigurationVMa);
  v4 = objc_allocWithZone(_s11ContentViewCMa(0));
  v5 = sub_285F14(v3);
  sub_28D000(&qword_DFC278, 255, _s11ContentViewCMa);
  return v5;
}

id sub_2876C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC320);
  __chkstk_darwin(v0 - 8);
  v2 = &v14[-v1];
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  v5 = sub_ABA8C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_allocWithZone(UIButton) init];
  v10 = UIView.forAutolayout.getter();

  sub_ABA8A0();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_ABA8B0();
  (*(v6 + 16))(v2, v8, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_ABA8F0();
  v11 = [v10 titleLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setAdjustsFontForContentSizeCategory:1];
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

uint64_t sub_287988()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC310);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-1] - v1;
  v3 = sub_AB5070();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_AB4C60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v8(v2, 0, 1, v3);
    (*(v4 + 32))(v6, v2, v3);
    sub_AB5050();
    v12[3] = v3;
    v12[4] = &protocol witness table for UIListContentConfiguration;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
    (*(v4 + 16))(boxed_opaque_existential_0, v6, v3);
    sub_AB4C70();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v8(v2, 1, 1, v3);

    return sub_12E1C(v2, &unk_DFC310);
  }
}

char *sub_287BE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_AB5070();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_seeAllButton;
  *&v4[v14] = sub_2876C4();
  v15 = OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator;
  _s9SeparatorCMa();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = &v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_isSeeAllButtonHidden] = 0;
  sub_AB5030();
  sub_AB5020();
  v17 = sub_AB4F70();
  v18 = &v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_contentView];
  *v18 = v17;
  v18[1] = v19;
  [v17 addSubview:*&v5[v14]];
  v20 = _s10HeaderViewCMa();
  v27.receiver = v5;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v22 = *&v21[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_contentView];
  v23 = v21;
  [v23 addSubview:v22];
  [v23 addSubview:*&v23[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator]];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_13C80(0, &qword_DF13D0);
  ControlEventHandling<>.on(_:handler:)(64, sub_28F30C, v24, v25);
  (*(v11 + 8))(v13, v10);

  return v23;
}

void sub_287EC4()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = _s10HeaderViewCMa();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_contentView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator];
  [v1 bounds];
  v5 = v4;
  [v1 bounds];
  v7 = v6;
  [v1 bounds];
  v9 = v8;
  [v3 intrinsicContentSize];
  [v3 setFrame:{v5, v7, v9, v10}];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  v13 = *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_seeAllButton];
  v14 = [v13 trailingAnchor];
  v15 = [v2 trailingAnchor];
  if (qword_DE6A40 != -1)
  {
    swift_once();
  }

  v16 = [v14 constraintEqualToAnchor:v15 constant:*&qword_DFC020];

  *(v12 + 32) = v16;
  v17 = [v13 centerYAnchor];
  v18 = [v2 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v12 + 40) = v19;
  sub_13C80(0, &qword_DF7920);
  isa = sub_AB9740().super.isa;

  [v11 activateConstraints:isa];
}

void sub_288194()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler];
    if (v2)
    {
      sub_307CC(*&Strong[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler]);

      v2();
      sub_17654(v2);
    }

    else
    {
    }
  }
}

id sub_288244(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_2882EC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView] = 0;
  v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context] = 0;
  v3 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v1[v3] = swift_allocObject();
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker] = 0;
  v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_verticalStackItemPrefersTopHairline] = 1;
  v7.receiver = v1;
  v7.super_class = _s14ViewControllerCMa();
  v4 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  v5 = *&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel];
  *&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel] = a1;

  return v4;
}

id sub_288418()
{
  v0 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  result = [v0 setScrollDirection:0];
  qword_E713E0 = v0;
  return result;
}

id sub_288468()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout;
  v2 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout);
  }

  else
  {
    v4 = sub_28D24C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2884CC()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_288468();
    v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_288614()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D8);
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = __chkstk_darwin(v1);
  v49 = v3;
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v48 = &v44 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC2E0);
  v46 = *(v53 - 8);
  v5 = *(v46 + 64);
  v6 = __chkstk_darwin(v53);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = _s14ViewControllerCMa();
  v56.receiver = v0;
  v56.super_class = v9;
  objc_msgSendSuper2(&v56, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v11 = result;
    v12 = v0;
    v13 = sub_2884CC();
    [v11 addSubview:v13];

    v14 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView;
    v15 = *&v12[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView];
    v44 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView;
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 systemBackgroundColor];
    [v17 setBackgroundColor:v18];

    swift_weakInit();
    strcpy(v55, "SharedWithYou");
    v55[7] = -4864;
    swift_weakAssign();
    sub_125340(v55, v54);
    v19 = swift_allocObject();
    sub_28F058(v54, v19 + 16);
    sub_13C80(0, &qword_DFE230);
    sub_ABA030();
    sub_AB92A0();
    v20 = swift_allocObject();
    v45 = v8;
    *(v20 + 16) = v12;
    _s10HeaderViewCMa();
    v21 = v12;
    v22 = v48;
    sub_ABA040();
    v23 = *&v12[v14];
    v24 = v46;
    v25 = v47;
    v26 = v8;
    v27 = v53;
    (*(v46 + 16))(v47, v26, v53);
    v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v29 = swift_allocObject();
    (*(v24 + 32))(v29 + v28, v25, v27);
    v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2F0));
    v31 = v23;
    v32 = sub_AB5200();
    v33 = v50;
    v34 = v51;
    v35 = v52;
    (*(v51 + 16))(v50, v22, v52);
    v36 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v37 = swift_allocObject();
    (*(v34 + 32))(v37 + v36, v33, v35);
    sub_AB5210();
    v38 = *&v21[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
    *&v21[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource] = v32;
    v39 = v32;

    [*&v12[v44] setDelegate:v21];
    v40 = sub_28C1E0();

    (*(v34 + 8))(v22, v35);
    (*(v24 + 8))(v45, v53);
    sub_1253A4(v55);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = (v40 + *(*v40 + 128));
    swift_beginAccess();
    v43 = *v42;
    *v42 = sub_28F2C4;
    v42[1] = v41;

    sub_17654(v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_288BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v41[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41[-1] - v10;
  v12 = _s17CellConfigurationVMa(0);
  __chkstk_darwin(v12);
  v14 = (&v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a3;
  if (*(a3 + 8))
  {
    sub_25FAA8(v44);
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
  }

  v16 = (v14 + *(v12 + 28));
  static Artwork.with(_:)(sub_2874C4, v16);
  sub_12E1C((v16 + 2), &unk_DF0CA0);
  sub_125340(a4, (v16 + 2));
  sub_15F84(v44, v41, &unk_DFC288);
  v17 = v42;
  if (v42)
  {
    v18 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v19 = (*(v18 + 24))(v17, v18);
    v17 = v20;
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    sub_12E1C(v41, &unk_DFC288);
    v19 = 0;
  }

  sub_1253F8(*v16, v16[1]);
  *v16 = v19;
  v16[1] = v17;
  sub_15F84(v44, v41, &unk_DFC288);
  v21 = v42;
  if (v42)
  {
    v22 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v23 = (*(v22 + 8))(v21, v22);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    sub_12E1C(v41, &unk_DFC288);
    v23 = 0;
  }

  v14[1] = v23;
  v14[2] = v21;
  sub_15F84(v44, v41, &unk_DFC288);
  v25 = v42;
  if (v42)
  {
    v26 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v27 = (*(v26 + 16))(v25, v26);
    v25 = v28;
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    sub_12E1C(v41, &unk_DFC288);
    v27 = 0;
  }

  v14[3] = v27;
  v14[4] = v25;
  *v14 = v15;
  sub_15F84(v44, v41, &unk_DFC288);
  v29 = v42;
  if (v42)
  {
    v30 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v31 = v15;
    v32 = *(v30 + 32);
    v33 = v31;
    v34 = v32(v29, v30);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v35 = v15;
    sub_12E1C(v41, &unk_DFC288);
    v34 = 0;
  }

  *(v14 + *(v12 + 32)) = v34 & 1;
  sub_AB4ED0();
  v36 = sub_AB4F50();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v11, 0, 1, v36);
  sub_ABA2D0();
  sub_ABA2C0();
  if ((*(v37 + 48))(v9, 1, v36))
  {
    sub_15F84(v9, v11, &unk_DFC300);
    sub_ABA2D0();
    sub_12E1C(v9, &unk_DFC300);
  }

  else
  {
    sub_AB4EC0();
    sub_ABA2D0();
  }

  v42 = v12;
  v43 = sub_28D000(&unk_DFC268, 255, _s17CellConfigurationVMa);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  sub_28D09C(v14, boxed_opaque_existential_0, _s17CellConfigurationVMa);
  sub_ABA2B0();
  sub_12E1C(v44, &unk_DFC288);
  return sub_28D434(v14, _s17CellConfigurationVMa);
}

uint64_t sub_289134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_28C1E0();
  swift_beginAccess();
  v8 = v7[2];

  v9 = *&v8[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];

  v10 = [v9 displayName];
  sub_AB92A0();

  sub_287988();
  [*(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator) setHidden:(*(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_verticalStackItemPrefersTopHairline) & 1) == 0];
  v11 = *(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController);
  swift_beginAccess();
  *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_isSeeAllButtonHidden) = *(*(v11 + 16) + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_isSeeAllButtonHidden);
  [*(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_seeAllButton) setHidden:?];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = (a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler);
  v14 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler);
  *v13 = sub_28F2CC;
  v13[1] = v12;

  sub_17654(v14);
}

void sub_2892E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_allocWithZone(_s14ViewControllerCMa());
    v3 = sub_2882EC(0);
    v4 = sub_28C1E0();
    swift_beginAccess();
    v5 = v4[2];

    v6 = *&v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];

    v7 = [v6 displayName];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      sub_AB92A0();
      v8 = sub_AB9260();
    }

    [v3 setTitle:v8];

    v3[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context] = 1;
    v9 = [v3 navigationItem];

    [v9 setLargeTitleDisplayMode:2];
    v10 = [v1 navigationController];
    if (v10)
    {
      v11 = v10;
      [v10 pushViewController:v3 animated:1];
    }
  }
}

uint64_t sub_289494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  sub_13C80(0, &qword_DFE230);
  v5 = v3;
  v6 = v4;
  v7 = sub_ABA050();

  return v7;
}

void sub_289538()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2F8);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    RequestResponse.Revision.content.getter(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_12E1C(v2, &qword_DFC2F8);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v9 = *&v8[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
      if (v9)
      {
        v10 = v9;
        sub_AB5240();
        (*(v4 + 8))(v6, v3);

        v8 = v10;
      }

      else
      {
        (*(v4 + 8))(v6, v3);
      }
    }
  }
}

void sub_289784(uint64_t a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = _s14ViewControllerCMa();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v4 = sub_2884CC();
  v5 = [v4 collectionViewLayout];

  [v5 invalidateLayout];
  v6 = [v2 traitCollection];
  LOBYTE(v5) = UITraitCollection.isMediaPicker.getter();

  if (v5)
  {
    v7 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController;
    if (!*&v2[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController])
    {
      v8 = [v2 navigationController];
      if (v8)
      {
        v9 = v8;
        type metadata accessor for MediaPickerNavigationController();
        if (swift_dynamicCastClass())
        {
          v10 = *&v2[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D0);
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v11 + 24) = 0;
          *(v11 + 32) = 0;
          swift_unknownObjectWeakAssign();
          v12 = v10;

          v13 = *(v11 + 24);
          *(v11 + 24) = v10;

          *&v2[v7] = v11;
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_289974(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = sub_AB3430();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = __chkstk_darwin(v4);
  v32[1] = v6;
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = v32 - v7;
  v8 = _s14ViewControllerCMa();
  v39.receiver = v1;
  v39.super_class = v8;
  objc_msgSendSuper2(&v39, "viewWillAppear:", v3 & 1);
  if (qword_DE6C48 != -1)
  {
LABEL_18:
    swift_once();
  }

  v38 = v3;
  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, qword_E71878);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "ViewWillAppear", v12, 2u);
  }

  sub_28C1E0();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  v37 = v2;
  v13 = sub_28C2C8();
  *(v13 + 145) = 1;
  v14 = v13[4];
  v3 = *(v14 + 16);

  if (v3)
  {
    v15 = 0;
    v2 = (v14 + 40);
    do
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v18 = *v2;
      v19 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v19 == -1)
      {
        if (byte_E71A90)
        {
          goto LABEL_11;
        }
      }

      else
      {
        swift_once();
        if (byte_E71A90)
        {
LABEL_11:
          v16 = 0;
          goto LABEL_7;
        }
      }

      v16 = *(v13 + 145);
LABEL_7:
      ++v15;
      ObjectType = swift_getObjectType();
      (*(v18 + 16))(v16, ObjectType, v18);
      swift_unknownObjectRelease();
      v2 += 2;
    }

    while (v3 != v15);
  }

  if (qword_DE6D68 == -1)
  {
    if (byte_E71A90)
    {
LABEL_16:

      v21 = v38;
      v22 = v37;
      goto LABEL_24;
    }
  }

  else
  {
    v20 = swift_once();
    if (byte_E71A90)
    {
      goto LABEL_16;
    }
  }

  v21 = v38;
  v22 = v37;
  if (*(v13 + 145) & 1) != 0 && (sub_472A68(v20))
  {
    v23 = v36;
    sub_AB3420();
    v24 = swift_allocObject();
    swift_weakInit();
    v26 = v33;
    v25 = v34;
    v27 = v35;
    (*(v34 + 16))(v33, v23, v35);
    v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    (*(v25 + 32))(v29 + v28, v26, v27);

    sub_48C6A0(sub_28EFA4, v29);
    (*(v25 + 8))(v36, v27);
  }

LABEL_24:
  v30 = sub_2884CC();
  UICollectionView.clearSelection(using:animated:)([v22 transitionCoordinator], v21 & 1);

  return swift_unknownObjectRelease();
}

void *sub_289E34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v1 - 8);
  v35 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v0;
  sub_28C2C8();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_AB3420();
  sub_15F84(v38, v37, &qword_DF2BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  v10 = sub_AB3820();
  v11 = swift_dynamicCast();
  (*(*(v10 - 8) + 56))(v5, v11 ^ 1u, 1, v10);
  v12 = sub_2CA81C(2u, v9, v5);
  (*(v7 + 8))(v9, v6);
  sub_12E1C(v38, &qword_DF2BD0);
  sub_12E1C(v5, &unk_DE8E20);

  if (!v12)
  {
    goto LABEL_26;
  }

  if (!(v12 >> 62))
  {
    if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      v13 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v14 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_19:
      v26 = v13;
      v17 = _swiftEmptyArrayStorage;
LABEL_20:
      sub_12B2FC();
      v28 = v35;
      if (v29)
      {
        v30 = v27;
        ObjectType = swift_getObjectType();
        (*(v30 + 24))(ObjectType, v30);
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = type metadata accessor for MetricsPageProperties();
        (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
      }

      (*(&stru_68.flags + (swift_isaMask & *v13)))(v17, v28, 0, 0, 0, 0, 0);
      sub_12E1C(v28, &unk_DF1330);
    }

LABEL_25:

LABEL_26:

    sub_2E4810(v33);
  }

  if (!sub_ABB060())
  {
    goto LABEL_25;
  }

  v13 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v14 = sub_ABB060();
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_5:
  *&v38[0] = _swiftEmptyArrayStorage;
  v15 = v13;
  result = sub_6D410(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v17 = *&v38[0];
    if ((v12 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v19 = *(sub_35FC58(v18, v12) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

        swift_unknownObjectRelease();
        *&v38[0] = v17;
        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_6D410((v20 > 1), v21 + 1, 1);
          v17 = *&v38[0];
        }

        ++v18;
        v17[2] = v21 + 1;
        v17[v21 + 4] = v19;
      }

      while (v14 != v18);
    }

    else
    {
      v22 = (v12 + 32);
      do
      {
        v23 = *(*v22 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
        *&v38[0] = v17;
        v25 = v17[2];
        v24 = v17[3];

        if (v25 >= v24 >> 1)
        {
          sub_6D410((v24 > 1), v25 + 1, 1);
          v17 = *&v38[0];
        }

        v17[2] = v25 + 1;
        v17[v25 + 4] = v23;
        ++v22;
        --v14;
      }

      while (v14);
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_28A3F0(void *a1, id a2, unint64_t a3)
{
  v4 = v3;
  v35 = [a2 contentView];
  _s11ContentViewCMa(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    [a1 frame];
    Width = CGRectGetWidth(v41);
    v11 = [v3 traitCollection];
    v12 = UITraitCollection.isAccessibilitySizeCategory.getter();

    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, v12 & 1, v39, Width);
    v13 = v35;
    [v9 layoutMargins];
    [v9 setLayoutMargins:?];

    v14 = sub_AB37B0();
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      v16 = sub_AB37B0();
      v17 = [a1 numberOfItemsInSection:sub_AB37F0()];
      if (!__OFSUB__(v17, 1))
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * v15 + 0x2AAAAAAAAAAAAAAALL < 0x5555555555555555;
        if (v16 == v17 - 1)
        {
          v18 = 1;
        }

        if (v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context])
        {
          v19 = v16 == (v17 - 1);
        }

        else
        {
          v19 = v18;
        }

        v9[OBJC_IVAR___MusicInterstellarContentView_separatorHidden] = v19;
        [*&v9[OBJC_IVAR___MusicInterstellarContentView_separator] setHidden:v35];
        v20 = *&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
        if (!v20)
        {
          goto LABEL_24;
        }

        v21 = v20;
        sub_AB5230();

        v22 = v37;
        if (!v37)
        {
          goto LABEL_24;
        }

        v23 = sub_28C1E0();
        swift_beginAccess();
        v24 = v23[2];

        v25 = *&v24[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];

        [v25 feedbackForHighlight:v37 withType:0 completionBlock:0];
        if (v38)
        {
          v36 = v25;
          v26 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController;
          if (*&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController])
          {
            v27 = v38;

            v28 = sub_2FBF94(v27);
          }

          else
          {
            v29 = v38;
            v28 = 0;
          }

          sub_285E40((v28 & 1));
          if (*&v4[v26])
          {

            v30 = sub_304104();

            v31 = &v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected];
            v32 = v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected];
            v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected] = v30 & 1;
            if ((v30 & 1) != v32)
            {
LABEL_20:
              v33 = sub_285D88();
              [v33 setSelected:*v31];

LABEL_24:
              sub_28C2C8();
              sub_466840(a2, a3);

              return;
            }
          }

          else
          {
            v31 = &v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected];
            v34 = v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected];
            v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected] = 0;
            if (v34)
            {
              goto LABEL_20;
            }
          }

          v22 = v25;
          v25 = v38;
        }

        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_28ABF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_28ACE4();
  }
}

void sub_28ACE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v85 - v7;
  __chkstk_darwin(v6);
  v10 = &v85 - v9;
  v11 = type metadata accessor for PlaybackIntentDescriptor(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v85 - v16;
  v18 = *&v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
  if (!v18)
  {
    return;
  }

  v19 = v18;
  sub_AB5230();

  v92 = v99;
  if (!v99)
  {
    return;
  }

  if (!v100)
  {
    v32 = &v106;
LABEL_49:

    return;
  }

  v20 = *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController];
  v91 = v12;
  v90 = v100;
  if (!v20)
  {
    v33 = v100;
    v34 = v100;
    v35 = v92;
    goto LABEL_18;
  }

  v87 = v100;

  v21 = v20;
  v22 = [v1 traitCollection];
  v23 = UITraitCollection.mediaPickerConfiguration.getter();
  if (!v23)
  {

LABEL_16:
    v35 = v92;
LABEL_17:
    v33 = v90;
LABEL_18:
    v36 = sub_28C1E0();
    swift_beginAccess();
    v37 = v36[2];

    v38 = *&v37[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];

    v89 = v38;
    [v38 feedbackForHighlight:v35 withType:1 completionBlock:0];
    (*(v91 + 56))(v8, 1, 1, v11);
    v39 = [v33 innermostModelObject];
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = v40;
      if ([v40 hasVideo])
      {
LABEL_20:
        v42 = [objc_opt_self() deviceMediaLibrary];
        sub_264648(static MPMediaLibraryFilteringOptions.none.getter, 0, v42, v5);

        sub_267C14(v5, v8);
LABEL_35:
        v52 = v91 + 48;
        v53 = *(v91 + 48);
        if (!v53(v8, 1, v11))
        {
          v91 = v52;
          v88 = v1;
          v54 = UIViewController.playActivityInformation.getter();
          v56 = v55;
          v87 = v57;
          v59 = v58;
          v60 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter();
          v61 = HIBYTE(v56) & 0xF;
          if ((v56 & 0x2000000000000000) == 0)
          {
            v61 = v54 & 0xFFFFFFFFFFFFLL;
          }

          v86 = v39;
          if (v61)
          {

            v62 = sub_AB9260();
          }

          else
          {
            v62 = 0;
          }

          [v60 setPlayActivityFeatureName:v62];

          v63 = v59;
          if (v59 >> 60 == 15)
          {
            isa = 0;
            v65 = v87;
          }

          else
          {
            v65 = v87;
            isa = sub_AB3250().super.isa;
          }

          [v60 setPlayActivityRecommendationData:isa];

          sub_466A4(v65, v63);
          v35 = v92;
          v39 = v86;
        }

        if (!v53(v8, 1, v11))
        {
          sub_28D09C(v8, v15, type metadata accessor for PlaybackIntentDescriptor);
          sub_37D3DC(0);
          sub_28D434(v15, type metadata accessor for PlaybackIntentDescriptor);
        }

        sub_28B85C(v39, 31);
        goto LABEL_48;
      }

      v46 = [v41 album];
      if (!v46)
      {
        goto LABEL_35;
      }

      v47 = v46;
      sub_28E278(v46, v41, v35, v1, &v93);
      if (!v93)
      {

        goto LABEL_35;
      }

      v99 = v93;
      v101 = v95;
      v102 = v96;
      v103 = v97;
      v104 = v98;
      v100 = v94;
      v48 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
      v49 = sub_2D72DC(&v99);
    }

    else
    {
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        sub_28E278(v43, 0, v35, v1, &v93);
        if (!v93)
        {
          goto LABEL_35;
        }

        v99 = v93;
        v101 = v95;
        v102 = v96;
        v103 = v97;
        v104 = v98;
        v100 = v94;
        v44 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
        v45 = sub_2D72DC(&v99);
      }

      else
      {
        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        if (!v50)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            goto LABEL_35;
          }

          goto LABEL_20;
        }

        sub_28E278(v50, 0, v35, v1, &v93);
        if (!v93)
        {
          goto LABEL_35;
        }

        v99 = v93;
        v101 = v95;
        v102 = v96;
        v103 = v97;
        v104 = v98;
        v100 = v94;
        v51 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
        v45 = sub_39891C(&v99, 0);
      }

      v49 = v45;
    }

    sub_728FC(v49, 0, 1, v1);
    sub_28B85C(v39, 28);

    v39 = v49;
LABEL_48:

    sub_12E1C(v8, &unk_DEA510);
    v66 = v90;

    v32 = &v105;
    goto LABEL_49;
  }

  v88 = v23;
  v89 = v21;

  v24 = sub_2884CC();
  v25 = sub_AB3770().super.isa;
  v26 = [v24 cellForItemAtIndexPath:v25];

  if (!v26 || (v27 = [v26 contentView], v26, !v27))
  {
LABEL_15:

    goto LABEL_16;
  }

  _s11ContentViewCMa(0);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    goto LABEL_16;
  }

  v85 = v28;
  v86 = v27;
  v29 = v87;
  v30 = [v87 innermostModelObject];
  v31 = [objc_opt_self() deviceMediaLibrary];
  sub_264648(static MPMediaLibraryFilteringOptions.none.getter, 0, v31, v10);

  if ((*(v91 + 48))(v10, 1, v11) == 1)
  {

    sub_12E1C(v10, &unk_DEA510);
    goto LABEL_15;
  }

  sub_28E998(v10, v17, type metadata accessor for PlaybackIntentDescriptor);
  v67 = [v29 pickableObjectFor:{objc_msgSend(v88, "selectionMode")}];
  if (!v67)
  {
    v68 = v86;
    v35 = v92;
LABEL_59:

    sub_28D434(v17, type metadata accessor for PlaybackIntentDescriptor);

    goto LABEL_17;
  }

  v68 = v67;
  v69 = [v67 musicTypeIdentifier];
  v35 = v92;
  if (!v69)
  {

    goto LABEL_59;
  }

  v70 = v69;

  v71 = v1;
  v72 = UIViewController.playActivityInformation.getter();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter();
  v80 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v80 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (v80)
  {

    v81 = sub_AB9260();
  }

  else
  {
    v81 = 0;
  }

  [v79 setPlayActivityFeatureName:v81];

  if (v78 >> 60 == 15)
  {
    v82 = 0;
  }

  else
  {
    v82 = sub_AB3250().super.isa;
  }

  [v79 setPlayActivityRecommendationData:v82];

  sub_466A4(v76, v78);
  v83 = v86;
  v84 = v87;
  sub_3B97D0(v17, v87, v85, &off_D07518);

  sub_28D434(v17, type metadata accessor for PlaybackIntentDescriptor);
}

uint64_t sub_28B85C(void *a1, int a2)
{
  v79 = a2;
  v4 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v4);
  v81 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB9300();
  __chkstk_darwin(v6 - 8);
  v76[1] = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v8 - 8);
  v82 = v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v10 - 8);
  v12 = v76 - v11;
  v13 = type metadata accessor for MetricsPageProperties();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v78 = (v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v85 = v76 - v17;
  v83 = MPModelObject.bestIdentifier(for:)(0, 2u);
  v84 = v2;
  v19 = v18;
  sub_12B2FC();
  v80 = v4;
  if (v21)
  {
    v22 = v20;
    ObjectType = swift_getObjectType();
    (*(v22 + 24))(ObjectType, v22);
    swift_unknownObjectRelease();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_28E998(v12, v85, type metadata accessor for MetricsPageProperties);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  v24 = sub_AB31C0();
  v25 = v82;
  (*(*(v24 - 8) + 56))(v82, 1, 1, v24);
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x497972617262694CLL, 0xEB000000006D6574, 0, 0xE000000000000000, v25, 0, 0, 0, v85);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_12E1C(v12, &unk_DF1330);
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 32) = 25705;
  *(inited + 16) = xmmword_AF8600;
  v27 = 0xE000000000000000;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = &type metadata for String;
  if (v19)
  {
    v28 = v19;
  }

  else
  {
    v28 = 0xEB000000006D6574;
  }

  v77 = v28;
  v29 = v83;
  if (v19)
  {
    v27 = v19;
  }

  else
  {
    v29 = 0;
  }

  *(inited + 48) = v29;
  *(inited + 56) = v27;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;

  sub_25FAA8(&v87);
  v30 = *(&v88 + 1);
  if (*(&v88 + 1))
  {
    v31 = v89;
    __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
    v32 = (*(v31 + 8))(v30, v31);
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_0(&v87);
    v35 = (inited + 96);
    *(inited + 120) = &type metadata for String;
    if (v34)
    {
      *v35 = v32;
      goto LABEL_18;
    }
  }

  else
  {
    sub_12E1C(&v87, &unk_DFC288);
    v35 = (inited + 96);
    *(inited + 120) = &type metadata for String;
  }

  *v35 = 0;
  v34 = 0xE000000000000000;
LABEL_18:
  *(inited + 104) = v34;
  strcpy((inited + 128), "locationType");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = 0x657449666C656853;
  *(inited + 152) = 0xE90000000000006DLL;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 1684957547;
  *(inited + 184) = 0xE400000000000000;
  v86 = a1;
  sub_13C80(0, &qword_DEDE20);
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC298);
  if (!swift_dynamicCast())
  {
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    sub_12E1C(&v87, &unk_DFC2A0);
    v42 = (inited + 192);
    *(inited + 216) = &type metadata for String;
    goto LABEL_22;
  }

  v37 = *(&v88 + 1);
  v38 = v89;
  __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
  v39 = (*(v38 + 8))(v37, v38);
  v41 = v40;
  __swift_destroy_boxed_opaque_existential_0(&v87);
  v42 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v41)
  {
LABEL_22:
    *v42 = 0;
    v41 = 0xE000000000000000;
    goto LABEL_23;
  }

  *v42 = v39;
LABEL_23:
  *(inited + 200) = v41;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000000B5B050;
  v43 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel;
  v44 = *(v84 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel);
  if (!v44 || (v45 = *(&stru_68.offset + (swift_isaMask & *v44)), v46 = v44, v47 = v45(), v49 = v48, v46, v49 >> 60 == 15))
  {
    v50 = (inited + 240);
    *(inited + 264) = &type metadata for String;
LABEL_26:
    v51 = v80;
    *v50 = 0;
    v52 = 0xE000000000000000;
    goto LABEL_27;
  }

  sub_AB92F0();
  v68 = sub_AB92C0();
  v52 = v69;
  sub_466A4(v47, v49);
  v50 = (inited + 240);
  *(inited + 264) = &type metadata for String;
  if (!v52)
  {
    goto LABEL_26;
  }

  *v50 = v68;
  v51 = v80;
LABEL_27:
  *(inited + 248) = v52;
  v53 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  if (v19)
  {
    v54 = v83;
  }

  else
  {
    v54 = 0x497972617262694CLL;
  }

  v55 = sub_AB31C0();
  v56 = v82;
  (*(*(v55 - 8) + 56))(v82, 1, 1, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_AF4EC0;
  *(v57 + 32) = v53;
  v58 = v78;
  sub_28D09C(v85, v78, type metadata accessor for MetricsPageProperties);
  v59 = v81;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v54, v77, 25, v79, v56, v57, 0, 12, v81, 0, 0, 0xFF00u, v58, 0);
  *(v59 + *(v51 + 76)) = 1;
  v60 = *(v84 + v43);
  if (v60)
  {
    v61 = *(&stru_68.offset + (swift_isaMask & *v60));
    v62 = v60;
    v63 = v61();
    v65 = v64;

    if (v65 >> 60 == 15)
    {
      v66 = 0;
      v67 = 0;
    }

    else
    {
      sub_AB92F0();
      v66 = sub_AB92C0();
      v67 = v70;
      sub_466A4(v63, v65);
    }
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v71 = (v59 + *(v51 + 80));

  *v71 = v66;
  v71[1] = v67;
  v72 = MetricsReportingController.shared.unsafeMutableAddressor();
  v73 = *&stru_B8.sectname[swift_isaMask & **v72];
  v74 = *v72;
  v73(v59, 0, 0, 0, 0, 0);
  sub_28D434(v85, type metadata accessor for MetricsPageProperties);

  return sub_28D434(v59, type metadata accessor for MetricsEvent.Click);
}

uint64_t *sub_28C1E0()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController;
  if (*(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController))
  {
    v2 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context);
    if (qword_DE6C18 != -1)
    {
      swift_once();
    }

    v5 = qword_E71848;
    v8 = qword_E71848;
    v9 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC280);
    swift_allocObject();
    v6 = v5;
    v2 = RequestResponse.Controller.init(request:)(&v8);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_28C2C8()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    [v0 loadViewIfNeeded];
    v3 = sub_2884CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC220);
    swift_allocObject();
    v2 = sub_2BE860(v0, v3, 1, 0);
    *&v0[v1] = v2;
  }

  return v2;
}

double sub_28C480@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB9300();
  __chkstk_darwin(v4 - 8);
  v5 = *(v1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  sub_AB5230();

  if (!v102)
  {
    goto LABEL_8;
  }

  if (!*(&v102 + 1))
  {

LABEL_8:
    sub_465CC(&v102);
    goto LABEL_15;
  }

  v25 = v102;
  v26 = *(&v102 + 1);
  v7 = IndexPath.safeItem.getter();
  v8 = *(v2 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel);
  if (v8 && (v9 = *(&stru_68.offset + (swift_isaMask & *v8)), v10 = v8, v11 = v9(), v13 = v12, v10, v13 >> 60 != 15))
  {
    sub_AB92F0();
    v14 = sub_AB92C0();
    v24 = v15;
    sub_466A4(v11, v13);
  }

  else
  {
    v14 = 0;
    v24 = 0;
  }

  sub_27A160(v26, &v97);
  v101 = v97;
  v100 = v98;
  v86 = v97;
  v87 = v98;
  v16 = v99;
  if (sub_279AC8(v99) == 0x497972617262696CLL && v17 == 0xEB000000006D6574)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_ABB3C0() ^ 1;
  }

  sub_15F84(&v101, &v102, &unk_DEE6F0);
  sub_15F84(&v100, &v102, &unk_DEE6F0);

  sub_28D048(&v97);
  v27[0] = v86;
  v27[1] = v87;
  *&v28 = 5;
  *(&v28 + 1) = v7;
  LOWORD(v29) = 512;
  BYTE2(v29) = v16;
  *(&v29 + 3) = v84;
  BYTE7(v29) = v85;
  *(&v29 + 1) = v14;
  *&v30[0] = v24;
  *(&v30[3] + 1) = 0;
  *(&v30[2] + 8) = 0u;
  *(&v30[1] + 8) = 0u;
  *(v30 + 8) = 0u;
  LOBYTE(v31) = v18 & 1;
  *(&v31 + 1) = *v83;
  DWORD1(v31) = *&v83[3];
  *(&v31 + 1) = 0;
  v32 = 0;
  v33 = 2;
  sub_465F4(v27, &v102);

  v34[0] = v86;
  v34[1] = v87;
  v35 = 5;
  v36 = v7;
  v37 = 512;
  v38 = v16;
  v39 = v84;
  v40 = v85;
  v41 = v14;
  v42 = v24;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  v47 = v18 & 1;
  *v48 = *v83;
  *&v48[3] = *&v83[3];
  v49 = 0;
  v50 = 0;
  v51 = 2;
  sub_46650(v34);

  v96 = v27[0];
  v92 = v30[2];
  v93 = v30[3];
  v94 = v31;
  v88 = v28;
  v89 = v29;
  v90 = v30[0];
  v91 = v30[1];
  v52 = v27[0];
  v59 = v30[2];
  v60 = v30[3];
  v61[0] = v31;
  v55 = v28;
  v56 = v29;
  v95 = v32;
  v53 = 0;
  v54 = 0;
  *&v61[1] = v32;
  v57 = v30[0];
  v58 = v30[1];
  BYTE8(v61[1]) = 1;
  v62 = v27[0];
  v63 = 0u;
  v66 = v30[0];
  v67 = v30[1];
  v64 = v28;
  v65 = v29;
  v69 = v30[3];
  v70[0] = v31;
  v68 = v30[2];
  *(v70 + 9) = *(v61 + 9);
  UIScreen.Dimensions.size.getter(*(v61 + 9));
  v71 = v96;
  v73 = 0;
  v72 = 0;
  v78 = v92;
  v79 = v93;
  v80 = v94;
  v81 = v95;
  v74 = v88;
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v82 = 1;
  sub_465F4(&v52, &v102);
  sub_46650(&v71);

  v108 = v68;
  v109 = v69;
  v110[0] = v70[0];
  *(v110 + 9) = *(v70 + 9);
  v104 = v64;
  v105 = v65;
  v106 = v66;
  v107 = v67;
  v102 = v62;
  v103 = v63;
LABEL_15:
  v19 = v109;
  a1[6] = v108;
  a1[7] = v19;
  a1[8] = v110[0];
  *(a1 + 137) = *(v110 + 9);
  v20 = v105;
  a1[2] = v104;
  a1[3] = v20;
  v21 = v107;
  a1[4] = v106;
  a1[5] = v21;
  result = *&v102;
  v23 = v103;
  *a1 = v102;
  a1[1] = v23;
  return result;
}

double sub_28CA2C@<D0>(_OWORD *a1@<X8>)
{
  sub_28C480(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

uint64_t sub_28CB10()
{
  result = _s17CellConfigurationVMa(319);
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

uint64_t sub_28CC4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Artwork(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_28CD18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Artwork(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_28CDBC()
{
  sub_28CE60();
  if (v0 <= 0x3F)
  {
    sub_81414();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Artwork(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_28CE60()
{
  if (!qword_DFC1B0)
  {
    sub_13C80(255, &unk_E07CB0);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DFC1B0);
    }
  }
}

unint64_t sub_28CF18()
{
  result = qword_DFC218;
  if (!qword_DFC218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFC220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC218);
  }

  return result;
}

uint64_t sub_28CF7C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_28D000(&qword_DFC250, a2, _s14ViewControllerCMa);
  result = sub_28D000(&qword_DFC258, v3, _s14ViewControllerCMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_28D000(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_28D09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_28D104(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_22;
    }

    sub_13C80(0, &unk_E07CB0);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v5)
  {
    goto LABEL_22;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10 || (*(a1 + 8) != *(a2 + 8) || v9 != v10) && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v10)
  {
    goto LABEL_22;
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

LABEL_22:
    v14 = 0;
    return v14 & 1;
  }

  if (!v12 || (*(a1 + 24) != *(a2 + 24) || v11 != v12) && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v13 = _s17CellConfigurationVMa(0);
  if ((static Artwork.== infix(_:_:)(a1 + *(v13 + 28), a2 + *(v13 + 28)) & 1) == 0)
  {
    goto LABEL_22;
  }

  v14 = *(a1 + *(v13 + 32)) ^ *(a2 + *(v13 + 32)) ^ 1;
  return v14 & 1;
}

id sub_28D24C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context);
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = qword_DE6A58;

  if (v1)
  {
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = qword_E713E0;
    v5 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v14 = sub_28EA38;
    v15 = v2;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v6 = &block_descriptor_95;
  }

  else
  {
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = qword_E713E0;
    v5 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v14 = sub_28EA90;
    v15 = v2;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v6 = &block_descriptor_80_1;
  }

  v12 = sub_496F34;
  v13 = v6;
  v7 = _Block_copy(&v10);
  v8 = [v5 initWithSectionProvider:v7 configuration:{v4, v10, v11}];
  _Block_release(v7);

  return v8;
}

uint64_t sub_28D434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_28D494()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___MusicInterstellarContentView_separatorHidden) = 1;
  v2 = OBJC_IVAR___MusicInterstellarContentView_badgeView;
  v3 = objc_allocWithZone(type metadata accessor for BadgeView());
  *(v0 + v2) = sub_4CABD8(_swiftEmptyArrayStorage, UIFontTextStyleBody);
  v4 = OBJC_IVAR___MusicInterstellarContentView_titleLabel;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR___MusicInterstellarContentView_subtitleLabel;
  *(v1 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR___MusicInterstellarContentView_separator;
  _s9SeparatorCMa();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR___MusicInterstellarContentView_pill) = 0;
  *(v1 + OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton) = 0;
  *(v1 + OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected) = 0;
  *(v1 + OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_28D5DC()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_seeAllButton;
  *(v0 + v1) = sub_2876C4();
  v2 = OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator;
  _s9SeparatorCMa();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_isSeeAllButtonHidden) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_28D690()
{
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context) = 0;
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *(v0 + v1) = swift_allocObject();
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController) = 0;
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController) = 0;
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker) = 0;
  *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_verticalStackItemPrefersTopHairline) = 1;
  sub_ABAFD0();
  __break(1u);
}

id sub_28D780(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = [v1 traitCollection];
  v9 = [objc_opt_self() defaultMetrics];
  v10 = sub_ABA310();
  v46 = v8;
  sub_AB9EF0();
  v12 = v11;

  [objc_msgSend(a1 "container")];
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = [a1 traitCollection];
  LOBYTE(v8) = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, v8 & 1, v47, v14);
  v16 = objc_opt_self();
  v17 = [v16 fractionalWidthDimension:1.0];
  v18 = [v16 estimatedDimension:v12];
  v19 = objc_opt_self();
  v20 = [v19 sizeWithWidthDimension:v17 heightDimension:v18];

  v21 = objc_opt_self();
  v45 = v20;
  v22 = [v21 itemWithLayoutSize:v20];
  v23 = *&v2[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
  if (v23)
  {
    v24 = v23;
    sub_AB5250();

    v25 = sub_AB50C0();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v25 >= 3)
  {
    v26 = 3;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v16 absoluteDimension:v49];
  v28 = [v16 estimatedDimension:v12 * v26];
  v29 = [v19 sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [objc_opt_self() verticalGroupWithLayoutSize:v29 subitem:v22 count:v26];
  v31 = [objc_opt_self() sectionWithGroup:v30];
  [v31 setOrthogonalScrollingBehavior:4];
  v32 = v48;
  [v31 setInterGroupSpacing:v48];
  if (qword_DE6A48 != -1)
  {
    swift_once();
  }

  if (qword_DE6A50 != -1)
  {
    swift_once();
  }

  [v31 setContentInsets:?];
  v33 = [a1 traitCollection];
  [objc_msgSend(a1 "container")];
  swift_unknownObjectRelease();
  sub_18A8A8(v33, 2uLL, 0, 1);
  v35 = v34;

  v36 = [v16 fractionalWidthDimension:1.0];
  v37 = [v16 absoluteDimension:v35];
  v38 = [v19 sizeWithWidthDimension:v36 heightDimension:v37];

  v39 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v38 elementKind:UICollectionElementKindSectionHeader alignment:1 absoluteOffset:{v32, 0.0}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_AF82B0;
  *(v40 + 32) = v39;
  sub_13C80(0, &qword_DF9290);
  v41 = v39;
  isa = sub_AB9740().super.isa;

  [v31 setBoundarySupplementaryItems:isa];

  return v31;
}

id sub_28DDBC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32[-v6];
  v8 = [v1 traitCollection];
  v9 = [objc_opt_self() defaultMetrics];
  v10 = sub_ABA310();
  v33 = v8;
  sub_AB9EF0();
  v12 = v11;

  [objc_msgSend(a1 "container")];
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = [a1 traitCollection];
  LOBYTE(a1) = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, a1 & 1, v34, v14);
  v16 = objc_opt_self();
  v17 = [v16 absoluteDimension:v37];
  v18 = [v16 estimatedDimension:v12];
  v19 = objc_opt_self();
  v20 = [v19 sizeWithWidthDimension:v17 heightDimension:v18];

  v21 = [objc_opt_self() itemWithLayoutSize:v20];
  v22 = *&v2[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
  if (v22)
  {
    v23 = v22;
    sub_AB5250();

    v24 = sub_AB50C0();
    (*(v5 + 8))(v7, v4);
    v25 = 3;
    if (v24 < 3)
    {
      v25 = v24;
    }

    v26 = v25;
  }

  else
  {
    v26 = 3.0;
  }

  v27 = v12 * v26;
  v28 = [v16 fractionalWidthDimension:1.0];
  v29 = [v16 estimatedDimension:v27];
  v30 = [v19 sizeWithWidthDimension:v28 heightDimension:v29];

  sub_13C80(0, &unk_DFC2C0);
  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v36 < 9.22337204e18)
  {
    v28 = sub_ABA3B0();
    v29 = [objc_opt_self() sectionWithGroup:v28];
    [v29 setInterGroupSpacing:v35];
    if (qword_DE6A48 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  swift_once();
LABEL_10:
  if (qword_DE6A50 != -1)
  {
    swift_once();
  }

  [v29 setContentInsets:?];

  return v29;
}