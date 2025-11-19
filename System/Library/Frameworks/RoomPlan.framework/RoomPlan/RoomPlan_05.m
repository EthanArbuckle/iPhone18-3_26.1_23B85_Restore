uint64_t sub_23A90BFA4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_23AA0DD04();
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

uint64_t sub_23A90C114(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v10);
      result = sub_23AA0DD54();
      v11 = result & v7;
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
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
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

uint64_t sub_23A90C2A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_23AA0DD14();
      v11 = *(v10 + 16);

      v12 = sub_23AA0D444();
      MEMORY[0x23EE907C0](v12);
      v13 = *(v10 + 24);
      v14 = sub_23AA0D444();
      MEMORY[0x23EE907C0](v14);
      v15 = *(v10 + 32);
      v16 = sub_23AA0DD64();
      MEMORY[0x23EE907C0](v16);
      v17 = sub_23AA0DD54();

      v18 = v17 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

uint64_t sub_23A90C47C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23AA0DD14();

      sub_23AA0D1D4();
      v13 = sub_23AA0DD54();

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

unint64_t sub_23A90C644(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_23AA0D784();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
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
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_23A910260(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
      v25 = sub_23AA0D054();
      result = (*v40)(v10, v5);
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
          v30 = *(*(v39(0) - 8) + 72);
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

unint64_t sub_23A90C9AC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_23AA0DD14();

      sub_23A9102A8(v24, v10);

      result = sub_23AA0DD54();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_23AA0BFB4() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
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

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_23A90CB84(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23AA0D784() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v10);
      result = sub_23AA0DD54();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_23AA0BFB4() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
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

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_23A90CD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  sub_23AA0DD14();
  v7 = *(a1 + 16);
  v8 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v8);
  v9 = *(a1 + 24);
  v10 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v10);
  v11 = *(a1 + 32);
  v12 = sub_23AA0DD64();
  MEMORY[0x23EE907C0](v12);
  sub_23AA0DD54();
  v13 = -1 << *(a3 + 32);
  result = sub_23AA0D794();
  *(a3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a3 + 48) + 8 * result) = a1;
  *(*(a3 + 56) + 8 * result) = a2;
  ++*(a3 + 16);
  return result;
}

void *sub_23A90CE28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF20, &qword_23AA12838);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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

id sub_23A90D004()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEF60, &qword_23AA12868);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v19;

        v18 = v19;
        result = *(&v19 + 1);
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

void *sub_23A90D19C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF090, &unk_23AA1B300);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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

void *sub_23A90D30C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF80, &qword_23AA12888);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 16 * v14;
      *v20 = v18;
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

void *sub_23A90D480(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_23A90D5CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFC0, &qword_23AA128B8);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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

void *sub_23A90D728()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF040, &qword_23AA12908);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
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

char *sub_23A90D874()
{
  v1 = v0;
  v34 = sub_23AA0C0E4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA0, &qword_23AA128A0);
  v4 = *v0;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

char *sub_23A90DAF4()
{
  v1 = v0;
  v33 = sub_23AA0C0E4();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF70, &qword_23AA12878);
  v4 = *v0;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v35;
        v21 = *(v35 + 72) * v19;
        v23 = v32;
        v22 = v33;
        (*(v35 + 16))(v32, *(v4 + 48) + v21, v33);
        v19 *= 32;
        v24 = *(v4 + 56) + v19;
        v36 = *v24;
        v25 = *(v24 + 16);
        v26 = v34;
        result = (*(v20 + 32))(*(v34 + 48) + v21, v23, v22);
        v27 = *(v26 + 56) + v19;
        *v27 = v36;
        *(v27 + 16) = v25;
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v29 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_23A90DD94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_23A90DEE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF078, &qword_23AA1B2A0);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v24 = *(v4 + 56) + 40 * v17;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
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

void *sub_23A90E0A4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_23AA0C0E4();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_23AA0DA14();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_23A90E31C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1490, &qword_23AA12870);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
        sub_23A9100C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23A8EF9F0(v25, (*(v4 + 56) + v22));
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

void *sub_23A90E4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFF8, &qword_23AA128E8);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

char *sub_23A90E648()
{
  v1 = v0;
  v36 = sub_23AA0C0E4();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFF0, &qword_23AA128E0);
  v4 = *v0;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

void *sub_23A90E8E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_23A90EA34()
{
  v1 = v0;
  v33 = sub_23AA0BFB4();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFC8, &qword_23AA128C0);
  v4 = *v0;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v35 + 16;
    v29 = v4 + 64;
    for (i = v35 + 32; v13; v26[1] = v27)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v35;
      v20 = *(v35 + 72) * v18;
      v21 = v32;
      v22 = v33;
      (*(v35 + 16))(v32, *(v4 + 48) + v20, v33);
      v18 *= 32;
      v23 = (*(v4 + 56) + v18);
      v24 = *v23;
      v36 = v23[1];
      v37 = v24;
      v25 = v34;
      result = (*(v19 + 32))(*(v34 + 48) + v20, v21, v22);
      v26 = (*(v25 + 56) + v18);
      v27 = v36;
      *v26 = v37;
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

        v1 = v28;
        v6 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
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

char *sub_23A90ECB4()
{
  v1 = v0;
  v36 = sub_23AA0C0E4();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFE8, &qword_23AA128D8);
  v4 = *v0;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

id sub_23A90EF34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFA8, &qword_23AA128A8);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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

id sub_23A90F094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF90, &qword_23AA12898);
  v2 = *v0;
  v3 = sub_23AA0DA14();
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

void *sub_23A90F214(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_23A90F36C()
{
  v1 = v0;
  v32 = sub_23AA0C0E4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF50, &qword_23AA12858);
  v4 = *v0;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

char *sub_23A90F618(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v49 = a4;
  v7 = v4;
  v8 = a1(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v39 - v10;
  v46 = sub_23AA0C0E4();
  v51 = *(v46 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_23AA0DA14();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v40 = v7;
    v41 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v50 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v50;
    v42 = v51 + 32;
    v43 = v51 + 16;
    v44 = v13;
    v26 = v51;
    v27 = v49;
    if (v23)
    {
      do
      {
        v28 = __clz(__rbit64(v23));
        v52 = (v23 - 1) & v23;
LABEL_14:
        v31 = v28 | (v19 << 6);
        v32 = *(v26 + 72) * v31;
        v34 = v45;
        v33 = v46;
        (*(v26 + 16))(v45, *(v13 + 48) + v32, v46);
        v35 = *(v13 + 56);
        v36 = v47;
        v37 = *(v48 + 72) * v31;
        sub_23A910120(v35 + v37, v47, v27);
        (*(v26 + 32))(*(v25 + 48) + v32, v34, v33);
        v38 = v36;
        v13 = v44;
        result = sub_23A910188(v38, *(v25 + 56) + v37, v27);
        v23 = v52;
      }

      while (v52);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v40;
        v15 = v50;
        goto LABEL_18;
      }

      v30 = *(v41 + 8 * v19);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v52 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

char *sub_23A90F96C()
{
  v1 = v0;
  v34 = sub_23AA0C0E4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1510, &qword_23AA12850);
  v4 = *v0;
  v5 = sub_23AA0DA14();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_unknownObjectRetain();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_23A90FBEC()
{
  v1 = v0;
  v30 = sub_23AA0BFB4();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0A0, &qword_23AA12948);
  v4 = *v0;
  v5 = sub_23AA0DA14();
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

    v26 = v4 + 64;
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
    v27 = v32 + 32;
    for (i = v32 + 16; v13; result = )
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
      (*(v20 + 32))(*(v24 + 56) + v21, v23, v22);
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

void *sub_23A90FE5C()
{
  v1 = v0;
  v30 = sub_23AA0BFB4();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF098, &qword_23AA12940);
  v4 = *v0;
  v5 = sub_23AA0DA14();
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
      v19 = *(*(v4 + 48) + v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + v18) = v19;
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

uint64_t sub_23A9100C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23A910120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A910188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9101F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF008, &qword_23AA128F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A910260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A9102A8(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v18 = a1[2];
  v19 = v3;
  v20 = *(a1 + 8);
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  sub_23AA0DD54();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v14)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_23A910674(*(a2 + 48) + 40 * (v13 | (v12 << 6)), v15);
    sub_23A9106D0();
    v14 = sub_23AA0D054();
    result = sub_23A910724(v15);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x23EE907C0](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_23A910618(uint64_t a1)
{
  v2 = type metadata accessor for AnimationGraph();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A9106D0()
{
  result = qword_27DFAF0A8;
  if (!qword_27DFAF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF0A8);
  }

  return result;
}

uint64_t sub_23A910780(float a1)
{
  v5 = v1;
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 == 3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v3 = sub_23A975C9C(v3);
    goto LABEL_7;
  }

  v41 = *(v6 + 64);
  v42 = *(v6 + 32);
  v39 = *(v6 + 128);
  v40 = *(v6 + 96);
  *&v8 = sub_23A9E7734(*&v42, *(v6 + 64), *&v40, *(v6 + 128), 0.0);
  v45 = v8;
  *v9.f32 = sub_23A9E7804(*&v42, *&v41, *&v40, *&v39, 0.0);
  v10 = vmulq_f32(v9, v9);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v13 = vmuls_lane_f32(a1, v12, 2);
  v14 = vmul_n_f32(*v12.f32, a1);
  *&v41 = vsub_f32(*&v45, v14);
  v12.i64[0] = v41;
  v12.f32[2] = *(&v45 + 2) - v13;
  v12.i32[3] = 0;
  v44 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF110, &unk_23AA12A90);
  v1 = swift_allocObject();
  *&v15 = vadd_f32(*&v41, vmul_f32(v14, vdup_n_s32(0xBA83126F)));
  *(&v15 + 2) = (*(&v45 + 2) - v13) + (v13 * -0.001);
  HIDWORD(v15) = 0;
  *(v1 + 16) = xmmword_23AA11C20;
  *(v1 + 32) = v15;
  *(v1 + 48) = 0;
  LODWORD(v15) = *(v5 + 40);
  *(v1 + 64) = v44;
  *(v1 + 80) = v15;
  __asm { FMOV            V2.2S, #0.25 }

  *&v21 = vadd_f32(*&v45, vmul_f32(v14, _D2));
  *(&v21 + 2) = *(&v45 + 2) + (v13 * 0.25);
  HIDWORD(v21) = 0;
  *(v1 + 96) = v21;
  *(v1 + 112) = v15;
  *(v1 + 128) = v21;
  *(v1 + 144) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF120, &qword_23AA12AA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23AA11C10;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 32) = _D0;
  *(v2 + 40) = _D0;
  v3 = *(v5 + 32);
  v4 = *(v3 + 2);
  if (!v4)
  {
    goto LABEL_12;
  }

  v23 = *(v5 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  v25 = 0;
  v26 = *(v3 + 2);
  do
  {
    if (v25 >= v26)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v27 = &v3[2 * v25];
    v28 = *(v27 + 16) + 4;
    if ((v28 & 0x10000) != 0)
    {
      goto LABEL_14;
    }

    ++v25;
    *(v27 + 16) = v28;
  }

  while (v4 != v25);
  *(v5 + 32) = v3;
LABEL_12:
  v29 = *(v5 + 16);

  sub_23A9126A8(v30);
  v31 = *(v5 + 16);
  *(v5 + 16) = v1;

  v32 = *(v5 + 32);

  sub_23A9125BC(v33);
  v34 = *(v5 + 32);
  *(v5 + 32) = &unk_284D7FD18;

  swift_beginAccess();
  v35 = *(v5 + 24);

  sub_23A9124D0(v36);
  v37 = *(v5 + 24);
  *(v5 + 24) = v2;
}

uint64_t sub_23A910A78(float a1)
{
  v2 = v1;
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5 < 4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = (v4 + 32 * v5);
  v37 = *v6[-8].f32;
  v39 = *v6[-12].f32;
  v35 = *v6->f32;
  v36 = *v6[-4].f32;
  *&v7 = sub_23A9E7734(*&v39, v6[-8], *&v36, *v6, 1.0);
  v41 = v7;
  *v8.f32 = sub_23A9E7804(*&v39, *&v37, *&v36, *&v35, 1.0);
  v9 = vmulq_f32(v8, v8);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v11 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  v12 = vmuls_lane_f32(a1, v11, 2);
  v13 = vmul_n_f32(*v11.f32, a1);
  *v11.f32 = vadd_f32(*&v41, vmul_f32(v13, vdup_n_s32(0x3F7FBE77u)));
  *&v39 = v11.i64[0];
  v11.f32[2] = *(&v41 + 2) + (v12 * 0.999);
  v11.i32[3] = 0;
  v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF110, &unk_23AA12A90);
  v14 = swift_allocObject();
  __asm { FMOV            V1.2S, #-0.25 }

  *&v20 = vadd_f32(*&v41, vmul_f32(v13, _D1));
  *(&v20 + 2) = *(&v41 + 2) + (v12 * -0.25);
  HIDWORD(v20) = 0;
  v21 = *(v2 + 40);
  *(v14 + 16) = xmmword_23AA11C20;
  *(v14 + 32) = v20;
  *(v14 + 48) = v21;
  *(v14 + 64) = v20;
  *(v14 + 80) = v21;
  *(v14 + 96) = v38;
  *(v14 + 112) = v21;
  *&v22 = vadd_f32(vmul_f32(v13, vdup_n_s32(0x3C23D70Au)), *&v39);
  *(&v22 + 2) = (v12 * 0.01) + (*(&v41 + 2) + (v12 * 0.999));
  HIDWORD(v22) = 0;
  *(v14 + 128) = v22;
  *(v14 + 144) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF118, &unk_23AA14320);
  result = swift_initStackObject();
  *(result + 16) = xmmword_23AA12950;
  *(result + 34) = 0x1000300020001;
  *(result + 42) = 196610;
  *(result + 46) = 3;
  v23 = *(v2 + 32);
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v25 = *(v23 + 2 * v24 + 30) + 1;
  if ((v25 & 0x10000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 32) = v25;
  v26 = v25 + 1;
  if ((v26 & 0x10000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(result + 34) = v25 + 1;
  v27 = v25 + 2;
  if ((v27 & 0x10000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(result + 36) = v25 + 2;
  v28 = v25 + 3;
  if ((v28 & 0x10000) == 0)
  {
    *(result + 38) = v28;
    *(result + 40) = v26;
    *(result + 42) = v27;
    *(result + 44) = v28;
    *(result + 46) = v28;
    v29 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF120, &qword_23AA12AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23AA11C10;
    __asm { FMOV            V0.2S, #1.0 }

    *(inited + 32) = _D0;
    *(inited + 40) = _D0;

    sub_23A9126A8(v14);
    v32 = *(v2 + 16);
    *(v2 + 16) = v4;

    v43 = *(v2 + 32);

    sub_23A9125BC(v29);
    v33 = *(v2 + 32);
    *(v2 + 32) = v43;

    swift_beginAccess();
    v42 = *(v2 + 24);

    sub_23A9124D0(inited);
    v34 = *(v2 + 24);
    *(v2 + 24) = v42;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_23A910DD0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = v2[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v1;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_121;
    }

    result = swift_beginAccess();
    v50 = *(v2[2] + 16);
    if (!v50)
    {
      return result;
    }

    v51 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    while (1)
    {
      v53 = *(v2[2] + 16) - 1;
      if (*(v2[2] + 16) == 1)
      {
        break;
      }

      v54 = v51 % v53;
      if ((v51 % v53) >> 16)
      {
        goto LABEL_111;
      }

      v1 = v2[4];
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v1;
      if ((v55 & 1) == 0)
      {
        v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
        v2[4] = v1;
      }

      v57 = *(v1 + 2);
      v56 = *(v1 + 3);
      if (v57 >= v56 >> 1)
      {
        v1 = sub_23A93930C((v56 > 1), v57 + 1, 1, v1);
      }

      *(v1 + 2) = v57 + 1;
      *&v1[2 * v57 + 32] = v54;
      v2[4] = v1;
      v58 = *(v2[2] + 16) - 1;
      if (*(v2[2] + 16) == 1)
      {
        goto LABEL_112;
      }

      v59 = v51 + 1;
      v60 = v59 % v58;
      if ((v59 % v58) >> 16)
      {
        goto LABEL_113;
      }

      v62 = *(v1 + 2);
      v61 = *(v1 + 3);
      if (v62 >= v61 >> 1)
      {
        v1 = sub_23A93930C((v61 > 1), v62 + 1, 1, v1);
      }

      *(v1 + 2) = v62 + 1;
      *&v1[2 * v62 + 32] = v60;
      v2[4] = v1;
      v63 = *(v2[2] + 16) - 1;
      if (*(v2[2] + 16) == 1)
      {
        goto LABEL_114;
      }

      v64 = v59 + 1;
      v65 = v64 % v63;
      if ((v64 % v63) >> 16)
      {
        goto LABEL_115;
      }

      v67 = *(v1 + 2);
      v66 = *(v1 + 3);
      if (v67 >= v66 >> 1)
      {
        v1 = sub_23A93930C((v66 > 1), v67 + 1, 1, v1);
      }

      *(v1 + 2) = v67 + 1;
      *&v1[2 * v67 + 32] = v65;
      v2[4] = v1;
      v68 = v64 - 2;
      if (v64 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_116;
      }

      v69 = *(v2[2] + 16);
      v70 = v69 - 1;
      if (v69 == 1)
      {
        goto LABEL_117;
      }

      v71 = v64 + 1;
      if (v68 == 0x7FFFFFFFFFFFFFFDLL && !v69)
      {
        goto LABEL_120;
      }

      v72 = v71 % v70;
      if (v71 % v70 < 0)
      {
        goto LABEL_118;
      }

      if (v72 >> 16)
      {
        goto LABEL_119;
      }

      v74 = *(v1 + 2);
      v73 = *(v1 + 3);
      if (v74 >= v73 >> 1)
      {
        v1 = sub_23A93930C((v73 > 1), v74 + 1, 1, v1);
      }

      *(v1 + 2) = v74 + 1;
      *&v1[2 * v74 + 32] = v72;
      v2[4] = v1;
      swift_beginAccess();
      v1 = v2[3];
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v1;
      if ((v75 & 1) == 0)
      {
        v1 = sub_23A939208(0, *(v1 + 2) + 1, 1, v1);
        v2[3] = v1;
      }

      v77 = *(v1 + 2);
      v76 = *(v1 + 3);
      if (v77 >= v76 >> 1)
      {
        v1 = sub_23A939208((v76 > 1), v77 + 1, 1, v1);
      }

      *(v1 + 2) = v77 + 1;
      *&v1[8 * v77 + 32] = _D8;
      v2[3] = v1;
      result = swift_endAccess();
      v51 = v71 - 2;
      if (v51 == v50)
      {
        return result;
      }
    }
  }

  else
  {
    result = swift_beginAccess();
    v16 = *(v2[2] + 16);
    if (v16 < 3)
    {
      goto LABEL_123;
    }

    if (v16 == 3)
    {
      return result;
    }

    v35 = 3;
    __asm { FMOV            V8.2S, #1.0 }

    while (1)
    {
      v1 = v2[4];
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v1;
      if ((v37 & 1) == 0)
      {
        v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
        v2[4] = v1;
      }

      v39 = *(v1 + 2);
      v38 = *(v1 + 3);
      if (v39 >= v38 >> 1)
      {
        v1 = sub_23A93930C((v38 > 1), v39 + 1, 1, v1);
      }

      *(v1 + 2) = v39 + 1;
      *&v1[2 * v39 + 32] = v35 - 3;
      v2[4] = v1;
      v41 = *(v1 + 2);
      v40 = *(v1 + 3);
      if (v41 >= v40 >> 1)
      {
        v1 = sub_23A93930C((v40 > 1), v41 + 1, 1, v1);
      }

      *(v1 + 2) = v41 + 1;
      *&v1[2 * v41 + 32] = v35 - 2;
      v2[4] = v1;
      v43 = *(v1 + 2);
      v42 = *(v1 + 3);
      if (v43 >= v42 >> 1)
      {
        v1 = sub_23A93930C((v42 > 1), v43 + 1, 1, v1);
      }

      *(v1 + 2) = v43 + 1;
      *&v1[2 * v43 + 32] = v35 - 1;
      v2[4] = v1;
      if (v35 == 0x10000)
      {
        break;
      }

      v45 = *(v1 + 2);
      v44 = *(v1 + 3);
      if (v45 >= v44 >> 1)
      {
        v1 = sub_23A93930C((v44 > 1), v45 + 1, 1, v1);
      }

      *(v1 + 2) = v45 + 1;
      *&v1[2 * v45 + 32] = v35;
      v2[4] = v1;
      swift_beginAccess();
      v46 = v2[3];
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v46;
      if ((v47 & 1) == 0)
      {
        v46 = sub_23A939208(0, *(v46 + 2) + 1, 1, v46);
        v2[3] = v46;
      }

      v49 = *(v46 + 2);
      v48 = *(v46 + 3);
      if (v49 >= v48 >> 1)
      {
        v46 = sub_23A939208((v48 > 1), v49 + 1, 1, v46);
      }

      *(v46 + 2) = v49 + 1;
      *&v46[8 * v49 + 32] = _D8;
      v2[3] = v46;
      result = swift_endAccess();
      if (v16 == ++v35)
      {
        return result;
      }
    }

LABEL_109:
    __break(1u);
  }

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
  v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
  v2[4] = v1;
LABEL_4:
  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  if (v7 >= v6 >> 1)
  {
    v1 = sub_23A93930C((v6 > 1), v7 + 1, 1, v1);
  }

  *(v1 + 2) = v7 + 1;
  *&v1[2 * v7 + 32] = 0;
  v2[4] = v1;
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  if (v9 >= v8 >> 1)
  {
    v1 = sub_23A93930C((v8 > 1), v9 + 1, 1, v1);
  }

  *(v1 + 2) = v9 + 1;
  *&v1[2 * v9 + 32] = 1;
  v2[4] = v1;
  v11 = *(v1 + 2);
  v10 = *(v1 + 3);
  if (v11 >= v10 >> 1)
  {
    v1 = sub_23A93930C((v10 > 1), v11 + 1, 1, v1);
  }

  *(v1 + 2) = v11 + 1;
  *&v1[2 * v11 + 32] = 2;
  v2[4] = v1;
  v13 = *(v1 + 2);
  v12 = *(v1 + 3);
  if (v13 >= v12 >> 1)
  {
    v1 = sub_23A93930C((v12 > 1), v13 + 1, 1, v1);
  }

  *(v1 + 2) = v13 + 1;
  *&v1[2 * v13 + 32] = 3;
  v2[4] = v1;
  swift_beginAccess();
  v1 = v2[3];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v1;
  if ((v14 & 1) == 0)
  {
    v1 = sub_23A939208(0, *(v1 + 2) + 1, 1, v1);
    v2[3] = v1;
  }

  v16 = *(v1 + 2);
  v15 = *(v1 + 3);
  if (v16 >= v15 >> 1)
  {
    v1 = sub_23A939208((v15 > 1), v16 + 1, 1, v1);
  }

  *(v1 + 2) = v16 + 1;
  __asm { FMOV            V8.2S, #1.0 }

  *&v1[8 * v16 + 32] = _D8;
  v2[3] = v1;
  swift_endAccess();
  swift_beginAccess();
  v3 = *(v2[2] + 16);
  if (v3 < 3)
  {
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
    v2[4] = v1;
    goto LABEL_91;
  }

  v16 = 65537;
  if (v3 == 3)
  {
LABEL_89:
    LOWORD(v3) = 3;
  }

  else
  {
    for (i = 3; i != v3; ++i)
    {
      v1 = v2[4];
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v1;
      if ((v22 & 1) == 0)
      {
        v1 = sub_23A93930C(0, *(v1 + 2) + 1, 1, v1);
        v2[4] = v1;
      }

      v24 = *(v1 + 2);
      v23 = *(v1 + 3);
      if (v24 >= v23 >> 1)
      {
        v1 = sub_23A93930C((v23 > 1), v24 + 1, 1, v1);
      }

      *(v1 + 2) = v24 + 1;
      *&v1[2 * v24 + 32] = i - 3;
      v2[4] = v1;
      v26 = *(v1 + 2);
      v25 = *(v1 + 3);
      if (v26 >= v25 >> 1)
      {
        v1 = sub_23A93930C((v25 > 1), v26 + 1, 1, v1);
      }

      *(v1 + 2) = v26 + 1;
      *&v1[2 * v26 + 32] = i - 2;
      v2[4] = v1;
      v28 = *(v1 + 2);
      v27 = *(v1 + 3);
      if (v28 >= v27 >> 1)
      {
        v1 = sub_23A93930C((v27 > 1), v28 + 1, 1, v1);
      }

      *(v1 + 2) = v28 + 1;
      *&v1[2 * v28 + 32] = i - 1;
      v2[4] = v1;
      if (i == 0x10000)
      {
        __break(1u);
        goto LABEL_109;
      }

      v30 = *(v1 + 2);
      v29 = *(v1 + 3);
      if (v30 >= v29 >> 1)
      {
        v1 = sub_23A93930C((v29 > 1), v30 + 1, 1, v1);
      }

      *(v1 + 2) = v30 + 1;
      *&v1[2 * v30 + 32] = i;
      v2[4] = v1;
      swift_beginAccess();
      v1 = v2[3];
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v1;
      if ((v31 & 1) == 0)
      {
        v1 = sub_23A939208(0, *(v1 + 2) + 1, 1, v1);
        v2[3] = v1;
      }

      v33 = *(v1 + 2);
      v32 = *(v1 + 3);
      if (v33 >= v32 >> 1)
      {
        v1 = sub_23A939208((v32 > 1), v33 + 1, 1, v1);
      }

      *(v1 + 2) = v33 + 1;
      *&v1[8 * v33 + 32] = _D8;
      v2[3] = v1;
      swift_endAccess();
    }

    v3 = *(v2[2] + 16);
    if (v3 < 3)
    {
      goto LABEL_124;
    }

    if (v3 > 0x10002)
    {
      __break(1u);
      goto LABEL_89;
    }
  }

  v1 = v2[4];
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v2[4] = v1;
  if ((v78 & 1) == 0)
  {
    goto LABEL_125;
  }

LABEL_91:
  v80 = *(v1 + 2);
  v79 = *(v1 + 3);
  v81 = v80 + 1;
  if (v80 >= v79 >> 1)
  {
    v1 = sub_23A93930C((v79 > 1), v80 + 1, 1, v1);
  }

  *(v1 + 2) = v81;
  *&v1[2 * v80 + 32] = v3 - 3;
  v2[4] = v1;
  v82 = v2[2];
  v83 = *(v82 + 16);
  if (v83 < 2)
  {
    __break(1u);
  }

  else if (v83 <= v16)
  {
    v16 = *(v1 + 2);
    v82 = *(v1 + 3);
    v81 = v16 + 1;
    if (v16 < v82 >> 1)
    {
      goto LABEL_96;
    }

    goto LABEL_128;
  }

  __break(1u);
LABEL_128:
  v1 = sub_23A93930C((v82 > 1), v81, 1, v1);
LABEL_96:
  *(v1 + 2) = v81;
  *&v1[2 * v16 + 32] = v83 - 2;
  v2[4] = v1;
  v84 = v2[2];
  v85 = *(v84 + 16);
  if (v85)
  {
    if (v85 <= 0x10000)
    {
      v83 = *(v1 + 2);
      v84 = *(v1 + 3);
      v81 = v83 + 1;
      if (v83 < v84 >> 1)
      {
        goto LABEL_99;
      }

      goto LABEL_131;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_131:
  v1 = sub_23A93930C((v84 > 1), v81, 1, v1);
LABEL_99:
  *(v1 + 2) = v81;
  *&v1[2 * v83 + 32] = v85 - 1;
  v2[4] = v1;
  v86 = v2[2];
  v87 = *(v86 + 16);
  if (!v87)
  {
    __break(1u);
    goto LABEL_133;
  }

  if (v87 > 0x10000)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v83 = *(v1 + 2);
  v86 = *(v1 + 3);
  v81 = v83 + 1;
  if (v83 >= v86 >> 1)
  {
LABEL_134:
    v1 = sub_23A93930C((v86 > 1), v81, 1, v1);
  }

  *(v1 + 2) = v81;
  *&v1[2 * v83 + 32] = v87 - 1;
  v2[4] = v1;
  swift_beginAccess();
  v88 = v2[3];
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v88;
  if ((v89 & 1) == 0)
  {
    v88 = sub_23A939208(0, *(v88 + 2) + 1, 1, v88);
    v2[3] = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_23A939208((v90 > 1), v91 + 1, 1, v88);
  }

  *(v88 + 2) = v91 + 1;
  *&v88[8 * v91 + 32] = _D8;
  v2[3] = v88;
  return swift_endAccess();
}

uint64_t sub_23A9119A0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23A9388A8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23A911A8C(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23A9388BC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23A911BA4(uint64_t a1)
{
  v7 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_23AA0D7F4();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_23AA0D7F4();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_23A912E80(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = (*(v3 + 0x18) >> 1) - v14;
  result = sub_23A9F3C70(&v36, (v3 + 8 * v14 + 32), v15, a1);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_23A8CA904();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v3 = *(v3 + 16);
  v9 = v36;
  v4 = v37;
  v6 = v39;
  v33 = v38;
  v5 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_23AA0D824())
    {
      goto LABEL_11;
    }

    type metadata accessor for HullPointUUID();
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= (v39 + 1))
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v5 = 0;
        goto LABEL_32;
      }

      v5 = *(v37 + 8 * v20);
      ++v6;
      if (v5)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v5));
  v5 &= v5 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));

  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v5;
  v6 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v3 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_23AA0D314();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v3 > v27)
  {
    v27 = v3;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v3 == v34)
      {
        v3 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v3++) = v21;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_23AA0D824())
      {
        type metadata accessor for HullPointUUID();
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v5)
    {
      break;
    }

    v28 = v6;
LABEL_56:
    v31 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v21 = *(*(v9 + 48) + ((v28 << 9) | (8 * v31)));

    v30 = v28;
LABEL_41:
    v36 = v9;
    v37 = v4;
    v38 = v33;
    v39 = v30;
    v6 = v30;
    v40 = v5;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v3;
      goto LABEL_11;
    }
  }

  if (v26 <= (v6 + 1))
  {
    v29 = v6 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v5 = 0;
      goto LABEL_41;
    }

    v5 = *(v4 + 8 * v28);
    ++v6;
    if (v5)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_23A911F44(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23A938A28(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23A912078@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 16);
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v9 = *(v5 + 24) >> 1, v9 < v7))
  {
    if (v6 <= v7)
    {
      v10 = v6 + v4;
    }

    else
    {
      v10 = v6;
    }

    result = sub_23A9388BC(result, v10, 1, v5);
    v5 = result;
    v9 = *(result + 24) >> 1;
  }

  v6 = *(v5 + 16);
  a2 = *(v3 + 16);
  v11 = v9 - v6;
  if (v9 != v6)
  {
    if (v11 < 1)
    {
      __break(1u);
    }

    else if (a2)
    {
      v12 = (v5 + 4 * v6);
      v13 = v12 + 2;
      v14 = a2 - 1;
      v15 = v9 + ~v6;
      if (a2 - 1 >= v15)
      {
        v16 = v9 + ~v6;
      }

      else
      {
        v16 = a2 - 1;
      }

      v17 = v16 + 1;
      if (v17 <= 0x14)
      {
        goto LABEL_37;
      }

      if (v14 >= v15)
      {
        v14 = v9 + ~v6;
      }

      if (v13 < v3 + 4 * a2 + 32 && 4 * a2 - 4 * v14 + v3 + 28 < v5 + 4 * (v6 + v14) + 36)
      {
LABEL_37:
        v20 = 1;
        v21 = *(v3 + 16);
      }

      else
      {
        v18 = v17 & 7;
        if ((v17 & 7) == 0)
        {
          v18 = 8;
        }

        v19 = v17 - v18;
        v20 = v17 - v18 + 1;
        v13 = (v13 + 4 * v19);
        v21 = a2 - v19;
        v22 = (v3 + 4 * a2 + 16);
        v23 = v12 + 3;
        do
        {
          v24 = vrev64q_s32(*v22);
          v25 = vrev64q_s32(v22[-1]);
          v23[-1] = vextq_s8(v24, v24, 8uLL);
          *v23 = vextq_s8(v25, v25, 8uLL);
          v22 -= 2;
          v23 += 2;
          v19 -= 8;
        }

        while (v19);
      }

      v26 = v20 + v6 - v9;
      while (1)
      {
        v27 = v21 - 1;
        v13->i32[0] = *(v3 + 28 + 4 * v21);
        if (!v26)
        {
          break;
        }

        v13 = (v13 + 4);
        ++v26;
        --v21;
        if (!v27)
        {
          goto LABEL_26;
        }
      }

      a2 = v11;
LABEL_26:
      if (a2 >= v4)
      {
        if (a2 > 0)
        {
          v28 = __OFADD__(v6, a2);
          v6 += a2;
          if (v28)
          {
            goto LABEL_57;
          }

          *(v5 + 16) = v6;
        }

        v29 = a2;
        a2 = v27;
        if (v29 != v11)
        {
          goto LABEL_34;
        }

        goto LABEL_42;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v27 = 0;
    goto LABEL_26;
  }

  if (v4)
  {
    goto LABEL_41;
  }

  if (v11)
  {
    goto LABEL_34;
  }

LABEL_42:
  if (!a2)
  {
LABEL_34:

LABEL_35:
    *v2 = v5;
    return result;
  }

  v30 = a2 - 1;
  if (a2 - 1 >= *(v3 + 16))
  {
    goto LABEL_58;
  }

  v31 = *(v3 + 4 * v30 + 32);
  v32 = v3 + 28;
LABEL_46:
  while (1)
  {
    v33 = *(v5 + 24);
    v34 = v33 >> 1;
    if ((v33 >> 1) < v6 + 1)
    {
      break;
    }

    v35 = v6 - v34;
    if (v6 < v34)
    {
      goto LABEL_48;
    }

LABEL_45:
    *(v5 + 16) = v6;
  }

  v38 = v5;
  v39 = v32;
  v40 = v31;
  result = sub_23A9388BC((v33 > 1), v6 + 1, 1, v38);
  v31 = v40;
  v32 = v39;
  v5 = result;
  v34 = *(result + 24) >> 1;
  v35 = v6 - v34;
  if (v6 >= v34)
  {
    goto LABEL_45;
  }

LABEL_48:
  v36 = 0;
  v37 = 4 * v6 + 32;
  while (1)
  {
    *(v5 + v37) = v31;
    if (!(v30 + v36))
    {

      *(v5 + 16) = v6 - v36 + 1;
      goto LABEL_35;
    }

    if (v30 + v36 - 1 >= *(v3 + 16))
    {
      break;
    }

    v31 = *(v32 + 4 * v30 + 4 * v36--);
    v37 += 4;
    if (v35 == v36)
    {
      v30 += v36;
      v6 = v34;
      *(v5 + 16) = v34;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_23A91238C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_23A9124D0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23A939208(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23A9125BC(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23A93930C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 2 * v8 + 32), (v6 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23A9126A8(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23A939408(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v8 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23A912794(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23A93964C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23A9128B0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_23AA0D7F4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_23AA0D7F4();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_23A912E80(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_23A9129A8(unint64_t result)
{
  v2 = result;
  v3 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = v3;
  v4 = (v1 + 2);
  v1[4] = v3;
  if (result >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v6 = v2 & 0xC000000000000001;
    if (!i)
    {
      break;
    }

    if (v6)
    {
      if (i >= 1)
      {
        v7 = 0;
        do
        {
          v8 = MEMORY[0x23EE90360](v7, v2);
          swift_beginAccess();
          swift_beginAccess();
          v9 = *(v8 + 16);
          swift_beginAccess();
          v10 = *v4;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v4 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v10 = sub_23A93941C(0, v10[2] + 1, 1, v10);
            *v4 = v10;
          }

          v13 = v10[2];
          v12 = v10[3];
          if (v13 >= v12 >> 1)
          {
            v10 = sub_23A93941C((v12 > 1), v13 + 1, 1, v10);
          }

          ++v7;
          v10[2] = v13 + 1;
          v10[v13 + 4] = v9;
          *v4 = v10;
          swift_endAccess();
          swift_unknownObjectRelease();
        }

        while (i != v7);
LABEL_16:
        v19 = *(MEMORY[0x23EE90360](0, v2) + 24);

        v16 = v30;
        v20 = *(v30 + 24);
        *(v30 + 24) = v19;

        v18 = MEMORY[0x23EE90360](0, v2);
LABEL_17:

        swift_beginAccess();
        v21 = *(v18 + 32);

        v22 = *(v16 + 32);
        *(v16 + 32) = v21;

        return v16;
      }

      goto LABEL_30;
    }

    if (i < 1)
    {
      goto LABEL_31;
    }

    v23 = 0;
    while (v23 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v2 + 32 + 8 * v23);
      swift_beginAccess();
      swift_beginAccess();
      v25 = *(v24 + 16);
      swift_beginAccess();
      v26 = *v4;

      v27 = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v26;
      if ((v27 & 1) == 0)
      {
        v26 = sub_23A93941C(0, v26[2] + 1, 1, v26);
        *v4 = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_23A93941C((v28 > 1), v29 + 1, 1, v26);
      }

      ++v23;
      v26[2] = v29 + 1;
      v26[v29 + 4] = v25;
      *v4 = v26;
      swift_endAccess();

      if (i == v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    result = sub_23AA0D7F4();
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v2 + 32);

    v15 = *(v14 + 24);

    v16 = v30;
    v17 = *(v30 + 24);
    *(v30 + 24) = v15;

    v18 = *(v2 + 32);

    goto LABEL_17;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23A912D84()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy20_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A912E20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A912E40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t sub_23A912E80(uint64_t a1)
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
    sub_23AA0D7F4();
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
  result = sub_23AA0D8D4();
  *v1 = result;
  return result;
}

uint64_t sub_23A912F20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF150, &qword_27DFAF148, &unk_23AA12AB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF148, &unk_23AA12AB8);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for DistanceAngleHullPoint();
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

uint64_t sub_23A9130B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF130, &qword_27DFAF128, &qword_23AA12AA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF128, &qword_23AA12AA8);
            v9 = sub_23A9DC280(v13, i, a3);
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
        type metadata accessor for HullPoint();
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

uint64_t sub_23A913240(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF140, &qword_27DFAF138, &qword_23AA12AB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF138, &qword_23AA12AB0);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for HullPointUUID();
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

uint64_t sub_23A9133D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF108, &qword_27DFAF100, &unk_23AA19360);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF100, &unk_23AA19360);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for CDTEdge();
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

uint64_t sub_23A913560(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0F8, &qword_27DFAF0F0, &unk_23AA12A80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0F0, &unk_23AA12A80);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for CDTTriangle();
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

uint64_t sub_23A9136F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0E8, &qword_27DFAF0E0, &qword_23AA12A78);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0E0, &qword_23AA12A78);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for CDTTriangleEdge();
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

uint64_t sub_23A913880(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0D8, &qword_27DFAF0D0, &qword_23AA12A70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0D0, &qword_23AA12A70);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for OpeningElement();
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

uint64_t sub_23A913A10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0C8, &qword_27DFAF0C0, &qword_23AA12A68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0C0, &qword_23AA12A68);
            v9 = sub_23A9DC200(v13, i, a3);
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
        type metadata accessor for RoomCaptureQuad();
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

uint64_t sub_23A913BA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23AA0D7F4();
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
      result = sub_23AA0D7F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A914008(&qword_27DFAF0B8, &qword_27DFAF0B0, &qword_23AA12A60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF0B0, &qword_23AA12A60);
            v9 = sub_23A9DC390(v13, i, a3);
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
        sub_23A913FBC();
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

uint64_t sub_23A913D30(unint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v4 = (v1 + 2);
  v1[3] = v3;
  v1[4] = v3;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v6 = 0;
    LOWORD(v7) = 0;
    v26 = v2;
    v27 = v2 & 0xC000000000000001;
    v22 = v2 + 32;
    v23 = v2 & 0xFFFFFFFFFFFFFF8;
    v24 = i;
    v25 = v4;
    while (1)
    {
      if (v27)
      {
        v8 = MEMORY[0x23EE90360](v6, v2);
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 >= *(v23 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(v22 + 8 * v6);

        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          goto LABEL_22;
        }
      }

      swift_beginAccess();
      v10 = v8[2];
      swift_beginAccess();

      sub_23A9126A8(v11);
      swift_endAccess();
      v12 = v8[4];
      v13 = *(v12 + 16);
      if (v13)
      {
        break;
      }

      v14 = MEMORY[0x277D84F90];
LABEL_18:
      sub_23A9125BC(v14);
      swift_beginAccess();
      v18 = v8[3];
      swift_beginAccess();

      sub_23A9124D0(v19);
      swift_endAccess();

      v7 = *(*v4 + 16);
      if (v7 >> 16)
      {
        goto LABEL_23;
      }

      if (v6 == i)
      {
        return v21;
      }
    }

    v28 = MEMORY[0x277D84F90];

    sub_23A975F64(0, v13, 0);
    v14 = v28;
    v15 = 32;
    while (1)
    {
      v16 = *(v12 + v15) + v7;
      if ((v16 & 0x10000) != 0)
      {
        break;
      }

      v4 = *(v28 + 16);
      v17 = *(v28 + 24);
      v2 = v4 + 1;
      if (v4 >= v17 >> 1)
      {
        sub_23A975F64((v17 > 1), v4 + 1, 1);
      }

      *(v28 + 16) = v2;
      *(v28 + 2 * v4 + 32) = v16;
      v15 += 2;
      if (!--v13)
      {

        v4 = v25;
        v2 = v26;
        i = v24;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return v21;
}

unint64_t sub_23A913FBC()
{
  result = qword_27DFB13E0;
  if (!qword_27DFB13E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFB13E0);
  }

  return result;
}

uint64_t sub_23A914008(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A91408C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v124 = type metadata accessor for ScanItemStrut();
  v6 = *(v124 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v124);
  v116 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_23AA0C0E4();
  v9 = *(v126 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v126);
  v115 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v114 = &v108 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v108 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v108 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v108 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v108 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v112 = &v108 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v111 = &v108 - v29;
  MEMORY[0x28223BE20](v28);
  v110 = &v108 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v123 = &v108 - v33;
  v34 = type metadata accessor for CapturedRoom.Surface(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v122 = &v108 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v121 = &v108 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v141 = &v108 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v120 = &v108 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v127 = &v108 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v108 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v128 = &v108 - v51;
  MEMORY[0x28223BE20](v50);
  v132 = &v108 - v52;
  if (qword_27DFAE370 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v53 = sub_23A8D7840(v3, a1, a2);
    v145 = MEMORY[0x277D84F98];
    v146 = MEMORY[0x277D84F98];
    v131 = v53;
    if (v53 >> 62)
    {
      break;
    }

    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v54)
    {
      goto LABEL_46;
    }

LABEL_4:
    v139 = a1;
    a1 = 0;
    v137 = *(a2 + 24);
    v138 = a2 + 24;
    v134 = v131 & 0xC000000000000001;
    v129 = v131 + 32;
    v130 = v131 & 0xFFFFFFFFFFFFFF8;
    v118 = (v9 + 16);
    v117 = (v6 + 48);
    v6 = v131;
    v119 = (v9 + 8);
    v9 = v3;
    v109 = v16;
    v125 = v25;
    v133 = v54;
    v135 = v3;
    v136 = a2;
    while (1)
    {
      if (v134)
      {
        v55 = MEMORY[0x23EE90360](a1, v6);
        v3 = v139;
        v56 = __OFADD__(a1++, 1);
        if (v56)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v3 = v139;
        if (a1 >= *(v130 + 16))
        {
          goto LABEL_43;
        }

        v57 = *(v129 + 8 * a1);

        v56 = __OFADD__(a1++, 1);
        if (v56)
        {
          goto LABEL_42;
        }
      }

      v143 = v55;
      v140 = a1;
      v9 = v137(v3, a2);
      v3 = *(v9 + 16);
      if (v3)
      {
        break;
      }

LABEL_5:

      v9 = v135;
      a2 = v136;
LABEL_6:
      a1 = v140;
      if (v140 == v133)
      {

        return v146;
      }
    }

    v25 = 0;
    v16 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
    while (v25 < *(v9 + 16))
    {
      a2 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      a1 = *(v35 + 72);
      sub_23A8D7948(v9 + a2 + a1 * v25, v49);
      v58 = &v49[*(v34 + 44)];
      if (sub_23AA0C094())
      {

        v6 = v128;
        sub_23A914F20(v49, v128, type metadata accessor for CapturedRoom.Surface);
        sub_23A914F20(v6, v132, type metadata accessor for CapturedRoom.Surface);
        v59 = v137(v139, v136);
        v9 = v59;
        v3 = *(v59 + 16);
        if (v3)
        {
          v25 = 0;
          v142 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID;
          a2 += v59;
          while (1)
          {
            if (v25 >= *(v9 + 16))
            {
              goto LABEL_41;
            }

            v16 = v49;
            v60 = v35;
            v61 = v34;
            v62 = v141;
            sub_23A8D7948(a2, v141);
            v6 = v61;
            v63 = v62 + *(v61 + 44);
            if (sub_23AA0C094())
            {
              break;
            }

            ++v25;
            sub_23A8D7A84(v62);
            a2 += a1;
            v34 = v61;
            v35 = v60;
            v49 = v16;
            if (v3 == v25)
            {
              goto LABEL_24;
            }
          }

          v64 = v120;
          sub_23A914F20(v62, v120, type metadata accessor for CapturedRoom.Surface);
          v65 = v127;
          sub_23A914F20(v64, v127, type metadata accessor for CapturedRoom.Surface);
          v34 = v61;
          v66 = v123;
          sub_23A8D5194(v65 + *(v61 + 52), v123, &qword_27DFAEB38, &unk_23AA11B60);
          v67 = type metadata accessor for CapturedRoom.Surface.Curve(0);
          v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
          sub_23A8D50D0(v66, &qword_27DFAEB38, &unk_23AA11B60);
          v35 = v60;
          if (v68 == 1)
          {
            v69 = v132;
            v70 = v121;
            sub_23A8D7948(v132, v121);
            v71 = v122;
            sub_23A8D7948(v65, v122);
            v72 = v143;

            sub_23A8E9B30(v70, v71, v72, v125);
            v73 = v69;
            v74 = *(v69 + 80);
            v75 = v72[2];
            v75.i32[1] = HIDWORD(*(v69 + 80));
            *v74.f32 = vsub_f32(v75, *v74.f32);
            v74.f32[2] = COERCE_FLOAT(HIDWORD(*&v72[2])) - COERCE_FLOAT(*(v69 + 88));
            v76 = vmulq_f32(*(v69 + 32), v74);
            v77 = v76.f32[2] + vaddv_f32(*v76.f32);
            v78 = *v118;
            a2 = v136;
            v79 = v126;
            v25 = v115;
            v80 = v114;
            v81 = v113;
            v49 = v16;
            v82 = v73 + *(v34 + 44);
            if (v77 > 0.0)
            {
              (v78)(v114, v82, v126, v77);
              sub_23A8D5194(v125, v81, &unk_27DFAF020, &unk_23AA12300);
              v16 = v79;
              v25 = v80;
              if ((*v117)(v81, 1, v124) == 1)
              {
                sub_23A8D50D0(v81, &unk_27DFAF020, &unk_23AA12300);
                v83 = v112;
                sub_23A9056A8(v80, v112);

                sub_23A8D50D0(v83, &unk_27DFAF020, &unk_23AA12300);
                (*v119)(v80, v79);
                v84 = v125;
LABEL_34:
                sub_23A8D50D0(v84, &unk_27DFAF020, &unk_23AA12300);
                sub_23A8D7A84(v127);
                sub_23A8D7A84(v132);
                v9 = v135;
                goto LABEL_25;
              }

              v100 = v81;
              v101 = v116;
              sub_23A914F20(v100, v116, type metadata accessor for ScanItemStrut);
              v102 = v145;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v144 = v102;
              sub_23A9DA990(v101, v25, isUniquelyReferenced_nonNull_native);

              (*v119)(v25, v79);
              sub_23A8D50D0(v125, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D7A84(v127);
              sub_23A8D7A84(v132);
              v145 = v144;
              v9 = v135;
              goto LABEL_25;
            }

            (v78)(v115, v82, v126, v77);
            v94 = v108;
            sub_23A8D5194(v125, v108, &unk_27DFAF020, &unk_23AA12300);
            v16 = v79;
            if ((*v117)(v94, 1, v124) == 1)
            {
              sub_23A8D50D0(v94, &unk_27DFAF020, &unk_23AA12300);
              v95 = v112;
              sub_23A9056A8(v25, v112);

              sub_23A8D50D0(v95, &unk_27DFAF020, &unk_23AA12300);
              (*v119)(v25, v79);
              v84 = v125;
              goto LABEL_34;
            }

            v104 = v116;
            sub_23A914F20(v94, v116, type metadata accessor for ScanItemStrut);
            v105 = v146;
            v106 = swift_isUniquelyReferenced_nonNull_native();
            v144 = v105;
            sub_23A9DA990(v104, v25, v106);

            (*v119)(v25, v79);
            v99 = v125;
          }

          else
          {
            v85 = v65;
            v86 = v65;
            v87 = v121;
            sub_23A8D7948(v85, v121);
            v88 = v122;
            sub_23A8D7948(v132, v122);
            v89 = v143;

            v90 = v110;
            sub_23A8E9EBC(v87, v88, v89, v110);
            v25 = v109;
            (*v118)(v109, v86 + *(v34 + 44), v126);
            v91 = v111;
            sub_23A8D5194(v90, v111, &unk_27DFAF020, &unk_23AA12300);
            v92 = (*v117)(v91, 1, v124);
            a2 = v136;
            v49 = v16;
            if (v92 == 1)
            {
              v16 = &unk_23AA12300;
              sub_23A8D50D0(v91, &unk_27DFAF020, &unk_23AA12300);
              v93 = v112;
              sub_23A9056A8(v25, v112);

              sub_23A8D50D0(v93, &unk_27DFAF020, &unk_23AA12300);
              (*v119)(v25, v126);
              v84 = v90;
              goto LABEL_34;
            }

            v16 = &unk_27DFAF020;
            v96 = v116;
            sub_23A914F20(v91, v116, type metadata accessor for ScanItemStrut);
            v97 = v146;
            v98 = swift_isUniquelyReferenced_nonNull_native();
            v144 = v97;
            sub_23A9DA990(v96, v25, v98);

            (*v119)(v25, v126);
            v99 = v90;
          }

          sub_23A8D50D0(v99, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D7A84(v127);
          sub_23A8D7A84(v132);
          v146 = v144;
          v9 = v135;
        }

        else
        {
LABEL_24:

          sub_23A8D7A84(v132);
          v9 = v135;
          a2 = v136;
        }

LABEL_25:
        v6 = v131;
        goto LABEL_6;
      }

      ++v25;
      sub_23A8D7A84(v49);
      if (v3 == v25)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v54 = sub_23AA0D7F4();
  if (v54)
  {
    goto LABEL_4;
  }

LABEL_46:

  return MEMORY[0x277D84F98];
}

uint64_t sub_23A914F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A914FAC()
{
  v1 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HullPointUUID()
{
  result = qword_27DFAF158;
  if (!qword_27DFAF158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A91509C()
{
  result = sub_23AA0C0E4();
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

uint64_t sub_23A915140()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0C0B4();
  return sub_23AA0DD54();
}

uint64_t sub_23A9151C0()
{
  sub_23AA0DD14();
  v1 = *v0 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid;
  sub_23AA0C0B4();
  return sub_23AA0DD54();
}

BOOL sub_23A91520C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (sub_23AA0C094() & 1) != 0 && *(v2 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) == *(v3 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
}

id sub_23A91532C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for HullPointType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HullPointType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A915584()
{
  result = qword_27DFAF188;
  if (!qword_27DFAF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF188);
  }

  return result;
}

unint64_t sub_23A9155DC()
{
  result = qword_27DFAF190;
  if (!qword_27DFAF190)
  {
    type metadata accessor for HullPointUUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF190);
  }

  return result;
}

uint64_t sub_23A915648()
{
  v0 = type metadata accessor for FramerateLogManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_23A91620C();
  qword_27DFC0670 = v3;
  return result;
}

uint64_t sub_23A915688(char *a1, char *a2)
{
  if (qword_23AA12E30[*a1] == qword_23AA12E30[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_23AA0DBD4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_23A9156F0()
{
  v1 = *v0;
  sub_23AA0DD14();
  v2 = qword_23AA12E30[v1];
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A91574C()
{
  v1 = qword_23AA12E30[*v0];
  sub_23AA0D1D4();
}

uint64_t sub_23A91578C()
{
  v1 = *v0;
  sub_23AA0DD14();
  v2 = qword_23AA12E30[v1];
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A9157E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A916454();
  *a2 = result;
  return result;
}

uint64_t sub_23A915830(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
    v3 = *(v1 + 40);
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_23A9166C8;
    *(v5 + 24) = v4;
    v8[4] = sub_23A9166DC;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23AA08C40;
    v8[3] = &block_descriptor_46;
    v6 = _Block_copy(v8);

    dispatch_sync(v3, v6);
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23A91598C(uint64_t a1, float a2)
{
  *(a1 + 48) = a2;
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v4 = off_27DFB17B0;
  result = swift_beginAccess();
  if (v4[37] <= a2)
  {
    v7 = 2;
  }

  else
  {
    v6 = *(a1 + 48);
    result = swift_beginAccess();
    if (v6 >= v4[38])
    {
      return result;
    }

    v7 = 1;
  }

  *(a1 + 52) = v7;
  return result;
}

uint64_t sub_23A915A50(double a1)
{
  if (*(v1 + 72))
  {
    v3 = 0;
LABEL_4:
    *(v1 + 64) = a1;
    *(v1 + 72) = 0;
    return sub_23A9165FC(v3);
  }

  v4 = *(v1 + 64);
  v5 = *(v1 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = a1;
  *(v6 + 32) = v4;
  v7 = swift_allocObject();
  v3 = sub_23A916644;
  *(v7 + 16) = sub_23A916644;
  *(v7 + 24) = v6;
  v10[4] = sub_23A916670;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23AA08C40;
  v10[3] = &block_descriptor_0;
  v8 = _Block_copy(v10);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A915BE0(uint64_t a1, float a2)
{
  v4 = sub_23AA0C064();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  *(a1 + 80) = 1.0 / a2;
  sub_23AA0C044();
  v12 = OBJC_IVAR____TtC8RoomPlan19FramerateLogManager_lastDisplayTime;
  swift_beginAccess();
  (*(v5 + 16))(v8, a1 + v12, v4);
  sub_23AA0C014();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  result = (v15)(v11, v4);
  if (v14 >= 0.1)
  {
    v17 = *(a1 + 48);
    v18 = *(a1 + 52);
    v19 = *(a1 + 56);
    v20 = *(a1 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_23AA11C10;
    v22 = qword_23AA12E30[v18];
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_23A9165A8();
    v23 = MEMORY[0x277D83A90];
    *(v21 + 32) = v22;
    *(v21 + 40) = 0xE300000000000000;
    v24 = MEMORY[0x277D83B08];
    *(v21 + 96) = v23;
    *(v21 + 104) = v24;
    *(v21 + 72) = v17;
    v39 = sub_23AA0D164();
    v40 = v25;
    v26 = swift_allocObject();
    v38 = xmmword_23AA10FC0;
    v27 = MEMORY[0x277D839F8];
    *(v26 + 16) = xmmword_23AA10FC0;
    v28 = MEMORY[0x277D83A80];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = v19;
    v29 = sub_23AA0D164();
    MEMORY[0x23EE8FCA0](v29);

    v30 = swift_allocObject();
    *(v30 + 16) = v38;
    *(v30 + 56) = v27;
    *(v30 + 64) = v28;
    *(v30 + 32) = v20;
    v31 = sub_23AA0D164();
    MEMORY[0x23EE8FCA0](v31);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = v39;
      v34 = v40;
      v35 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v35 + 8);
        ObjectType = swift_getObjectType();
        (*(v36 + 32))(v33, v34, ObjectType, v36);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    *(a1 + 52) = 0;
    sub_23AA0C044();
    swift_beginAccess();
    (*(v5 + 40))(a1 + v12, v11, v4);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_23A915FC0()
{
  sub_23A8E9694((v0 + 2));

  v1 = OBJC_IVAR____TtC8RoomPlan19FramerateLogManager_lastDisplayTime;
  v2 = sub_23AA0C064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FramerateLogManager()
{
  result = qword_27DFAF1A0;
  if (!qword_27DFAF1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9160C0()
{
  result = sub_23AA0C064();
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

unint64_t sub_23A9161B8()
{
  result = qword_27DFAF1B0;
  if (!qword_27DFAF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF1B0);
  }

  return result;
}

uint64_t sub_23A91620C()
{
  v10[0] = sub_23AA0D524();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D504();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_23AA0CF24();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  sub_23A9164A0();
  sub_23AA0CEE4();
  v10[1] = MEMORY[0x277D84F90];
  sub_23A9164EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A916544();
  sub_23AA0D764();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v10[0]);
  *(v0 + 40) = sub_23AA0D554();
  *(v0 + 48) = 0;
  *(v0 + 52) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  sub_23AA0C044();
  return v0;
}

uint64_t sub_23A916454()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23A9164A0()
{
  result = qword_27DFAF820;
  if (!qword_27DFAF820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFAF820);
  }

  return result;
}

unint64_t sub_23A9164EC()
{
  result = qword_27DFB1150;
  if (!qword_27DFB1150)
  {
    sub_23AA0D504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1150);
  }

  return result;
}

unint64_t sub_23A916544()
{
  result = qword_27DFB1160;
  if (!qword_27DFB1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFAF830, &qword_23AA14A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1160);
  }

  return result;
}

unint64_t sub_23A9165A8()
{
  result = qword_27DFAF1B8;
  if (!qword_27DFAF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF1B8);
  }

  return result;
}

uint64_t sub_23A9165FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A91660C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double sub_23A916644()
{
  result = 1.0 / (*(v0 + 24) - *(v0 + 32));
  *(*(v0 + 16) + 56) = result;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A916690()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_23A9166E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF200, &qword_23AA12ED0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = (&v17 - v7);
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v6 + 56);

    return v12(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v6;
      v13 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v8 = v16;
      result = sub_23A930548(v14, v8 + v15, type metadata accessor for CapturedRoom.Surface);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_23A930208(v8, a1, &qword_27DFAF200, &qword_23AA12ED0);
        return (*(v18 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23A9168D4(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    sub_23A9301E0(v36);
    v5 = *&v36[144];
    *(a1 + 128) = *&v36[128];
    *(a1 + 144) = v5;
    *(a1 + 160) = v36[160];
    v6 = *&v36[80];
    *(a1 + 64) = *&v36[64];
    *(a1 + 80) = v6;
    v7 = *&v36[112];
    *(a1 + 96) = *&v36[96];
    *(a1 + 112) = v7;
    v8 = *&v36[16];
    *a1 = *v36;
    *(a1 + 16) = v8;
    v9 = *&v36[48];
    *(a1 + 32) = *&v36[32];
    *(a1 + 48) = v9;
    return;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *v1 + 160 * v3;
  v11 = *(v10 + 48);
  v26 = *(v10 + 32);
  v27 = v11;
  v12 = *(v10 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 112);
  v30 = *(v10 + 96);
  v31 = v14;
  v28 = v12;
  v29 = v13;
  v15 = *(v10 + 128);
  v16 = *(v10 + 144);
  v17 = *(v10 + 160);
  LOBYTE(v10) = *(v10 + 176);
  v35 = v10;
  v33 = v16;
  v34 = v17;
  v32 = v15;
  v1[1] = v3 + 1;
  v18 = v1[2];
  *&v25[104] = v32;
  *&v25[120] = v33;
  *&v25[136] = v34;
  v25[152] = v10;
  *&v25[40] = v28;
  *&v25[56] = v29;
  *&v25[72] = v30;
  *&v25[88] = v31;
  *&v25[8] = v26;
  *&v25[24] = v27;
  if (__OFADD__(v18, 1))
  {
LABEL_8:
    __break(1u);
    return;
  }

  *&v36[104] = *&v25[96];
  *&v36[120] = *&v25[112];
  *&v36[136] = *&v25[128];
  *&v36[145] = *&v25[137];
  *&v36[40] = *&v25[32];
  *&v36[56] = *&v25[48];
  *&v36[72] = *&v25[64];
  *&v36[88] = *&v25[80];
  v19 = *&v25[16];
  *&v36[8] = *v25;
  v1[2] = v18 + 1;
  *&v36[24] = v19;
  *v36 = v18;
  nullsub_1(v36);
  v20 = *&v36[144];
  *(a1 + 128) = *&v36[128];
  *(a1 + 144) = v20;
  *(a1 + 160) = v36[160];
  v21 = *&v36[80];
  *(a1 + 64) = *&v36[64];
  *(a1 + 80) = v21;
  v22 = *&v36[112];
  *(a1 + 96) = *&v36[96];
  *(a1 + 112) = v22;
  v23 = *&v36[16];
  *a1 = *v36;
  *(a1 + 16) = v23;
  v24 = *&v36[48];
  *(a1 + 32) = *&v36[32];
  *(a1 + 48) = v24;
  sub_23A93010C(&v26, v25);
}

double sub_23A916A74(float32x4_t *a1, __n128 a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v6 = a1[1].i64[0];
  if (v6)
  {
    v22 = MEMORY[0x277D84F90];
    v18 = a2;
    sub_23A975EA4(0, v6, 0);
    v8 = v18;
    v7 = a3;
    v10 = a4;
    v9 = a5;
    v11 = v22;
    v12 = a1 + 2;
    do
    {
      v13 = *v12;
      v23 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = *v12;
        sub_23A975EA4((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v8 = v18;
        v7 = a3;
        v10 = a4;
        v9 = a5;
        v11 = v23;
      }

      a2.n128_u64[0] = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, v13.f32[0]), v7, *v13.f32, 1), v10, v13, 2), v9).u64[0];
      *(v11 + 16) = v15 + 1;
      *(v11 + 8 * v15 + 32) = a2.n128_u64[0];
      ++v12;
      --v6;
    }

    while (v6);
  }

  return a2.n128_f64[0];
}

uint64_t sub_23A916B68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for CapturedRoom.Object(0);
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(v21, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v22 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v21[0];
    v14 = v21[2];
    v19 = v21[3];
    v20 = v21[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = v14;
    if ((result & 1) == 0)
    {
      result = sub_23A938D78(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_23A938D78((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 16) = v17;
    v18 = (v8 + 32 * v16);
    v18[4] = v13;
    v18[5] = v20;
    v18[6] = v23;
    v18[7] = v19;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_23A916D14()
{
  sub_23AA0BF94();
  sub_23A92F104();
  v0 = sub_23AA0D694();

  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_9:

    return 0;
  }

  v2 = 0;
  v3 = (v0 + 40);
  while (1)
  {
    result = *(v3 - 1);
    if (result == 0x737465737361 && *v3 == 0xE600000000000000)
    {
      break;
    }

    result = sub_23AA0DBD4();
    if (result)
    {
      break;
    }

    ++v2;
    v3 += 2;
    if (v1 == v2)
    {
      goto LABEL_9;
    }
  }

  if (v2)
  {
    v6 = *(v0 + 16);
    v7 = v6 - v2;
    if (v6 < v2)
    {
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v7 > *(v0 + 24) >> 1)
    {
      if (v6 <= v7)
      {
        v9 = v6 - v2;
      }

      else
      {
        v9 = v6;
      }

      sub_23A9388F4(isUniquelyReferenced_nonNull_native, v9, 1, v0);
    }

    sub_23A946238(0, v2, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1E0, &qword_23AA12EC0);
  sub_23A92FE18();
  v10 = sub_23AA0D074();
  v12 = v11;

  MEMORY[0x23EE8FCA0](v10, v12);

  return 12078;
}

uint64_t sub_23A916EC8()
{
  v0 = sub_23AA0BCF4();
  __swift_allocate_value_buffer(v0, qword_27DFC0678);
  __swift_project_value_buffer(v0, qword_27DFC0678);
  return sub_23AA0BCA4();
}

uint64_t sub_23A916F1C()
{
  v0 = sub_23AA0BCF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  __swift_allocate_value_buffer(v6, qword_27DFC0690);
  __swift_project_value_buffer(v0, qword_27DFC0690);
  sub_23AA0BCA4();
  sub_23AA0BCA4();
  sub_23AA0BCB4();
  if (qword_27DFAE418 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27DFC0678);
  sub_23AA0BCE4();
  sub_23AA0BCC4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  return (v9)(v8, v0);
}

unint64_t sub_23A9170B0()
{
  v1 = v0;
  v2 = sub_23AA0BFB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for USDModel.Error();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A930548(v1, v10, type metadata accessor for USDModel.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        (*(v3 + 32))(v6, v10, v2);
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_23AA0D8A4();
        v17 = sub_23AA0BF94();
        MEMORY[0x23EE8FCA0](v17);

        v18 = "and .usdz file types.";
        v19 = 0xD000000000000054;
      }

      else
      {
        (*(v3 + 32))(v6, v10, v2);
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_23AA0D8A4();
        v23 = sub_23AA0BF94();
        MEMORY[0x23EE8FCA0](v23);

        v18 = "son and .plist file types.";
        v19 = 0xD000000000000055;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v6, v10, v2);
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_23AA0D8A4();

        v27 = 0xD000000000000012;
        v28 = 0x800000023AA1EA70;
        v16 = sub_23AA0BF94();
        MEMORY[0x23EE8FCA0](v16);

LABEL_20:
        v24 = v27;
        (*(v3 + 8))(v6, v2);
        return v24;
      }

      (*(v3 + 32))(v6, v10, v2);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_23AA0D8A4();
      MEMORY[0x23EE8FCA0](0xD000000000000013, 0x800000023AA1EA20);
      v22 = sub_23AA0BF94();
      MEMORY[0x23EE8FCA0](v22);

      v18 = "Invalid file path (";
      v19 = 0xD00000000000002CLL;
    }

LABEL_19:
    MEMORY[0x23EE8FCA0](v19, v18 | 0x8000000000000000);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      (*(v3 + 32))(v6, v10, v2);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_23AA0D8A4();
      v20 = sub_23AA0BF94();
      MEMORY[0x23EE8FCA0](v20);

      v18 = "json and .plist file types.";
      v19 = 0xD00000000000004ALL;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_23AA0D8A4();
      v25 = sub_23AA0BF94();
      MEMORY[0x23EE8FCA0](v25);

      v18 = " .usdc file type";
      v19 = 0xD00000000000004BLL;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 6)
  {
    (*(v3 + 32))(v6, v10, v2);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_23AA0D8A4();
    MEMORY[0x23EE8FCA0](0x7461206C65646F4DLL, 0xE900000000000020);
    v21 = sub_23AA0BF94();
    MEMORY[0x23EE8FCA0](v21);

    v18 = "D node at path: ";
    v19 = 0xD000000000000040;
    goto LABEL_19;
  }

  v12 = *v10;
  v13 = v10[1];
  v27 = 0;
  v28 = 0xE000000000000000;
  if (EnumCaseMultiPayload == 7)
  {
    sub_23AA0D8A4();

    v14 = 0x800000023AA1E840;
    v15 = 0xD000000000000020;
  }

  else
  {
    sub_23AA0D8A4();

    v14 = 0x800000023AA1E820;
    v15 = 0xD000000000000013;
  }

  v27 = v15;
  v28 = v14;
  MEMORY[0x23EE8FCA0](v12, v13);

  return v27;
}

uint64_t sub_23A917634(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v275 = a1;
  v293 = *MEMORY[0x277D85DE8];
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  v286 = v10;
  v287 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v268 = &v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF220, &qword_23AA12EF8);
  v14 = *(*(v285 - 8) + 64);
  MEMORY[0x28223BE20](v285);
  v284 = &v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v283 = &v233 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF228, &qword_23AA12F00);
  v281 = *(v18 - 8);
  v282 = v18;
  v19 = *(v281 + 64);
  MEMORY[0x28223BE20](v18);
  v280 = &v233 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v263 = &v233 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v267 = &v233 - v25;
  MEMORY[0x28223BE20](v26);
  v269 = &v233 - v27;
  MEMORY[0x28223BE20](v28);
  v265 = &v233 - v29;
  MEMORY[0x28223BE20](v30);
  v264 = &v233 - v31;
  MEMORY[0x28223BE20](v32);
  v278 = &v233 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v233 - v35;
  v37 = sub_23AA0BFB4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v273 = &v233 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v266 = &v233 - v42;
  MEMORY[0x28223BE20](v43);
  v274 = &v233 - v44;
  MEMORY[0x28223BE20](v45);
  v276 = &v233 - v46;
  MEMORY[0x28223BE20](v47);
  v277 = &v233 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v233 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF208, &qword_23AA12ED8);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v279 = &v233 - v54;
  v55 = *(a4 + 8);
  v272 = *a4;
  v271 = v55;
  v270 = *a5;
  if ((sub_23AA0BEA4() & 1) == 0)
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    (*(v38 + 16))(v57, a2, v37);
    goto LABEL_12;
  }

  v259 = v38;
  if (sub_23AA0BEF4())
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    (*(v259 + 16))(v56, a2, v37);
LABEL_12:
    swift_storeEnumTagMultiPayload();
LABEL_13:
    result = swift_willThrow();
LABEL_14:
    v79 = *MEMORY[0x277D85DE8];
    return result;
  }

  v262 = a3;
  v251 = v51;
  v248 = v5;
  v257 = v37;
  v291 = sub_23AA0BEC4();
  v292 = v58;
  v289 = 6583157;
  v290 = 0xE300000000000000;
  v59 = sub_23AA0C104();
  v60 = *(v59 - 8);
  v61 = *(v60 + 56);
  v62 = v60 + 56;
  v63 = v279;
  v61(v279, 1, 1, v59);
  v64 = sub_23A92F104();
  v65 = sub_23AA0D6D4();
  sub_23A8D50D0(v63, &qword_27DFAF208, &qword_23AA12ED8);

  if (v65)
  {
    v291 = sub_23AA0BEC4();
    v292 = v66;
    v289 = 1633973109;
    v290 = 0xE400000000000000;
    v61(v63, 1, 1, v59);
    v67 = sub_23AA0D6D4();
    sub_23A8D50D0(v63, &qword_27DFAF208, &qword_23AA12ED8);

    if (v67)
    {
      v291 = sub_23AA0BEC4();
      v292 = v68;
      v289 = 1667527541;
      v290 = 0xE400000000000000;
      v61(v63, 1, 1, v59);
      v69 = sub_23AA0D6D4();
      sub_23A8D50D0(v63, &qword_27DFAF208, &qword_23AA12ED8);

      if (v69)
      {
        v291 = sub_23AA0BEC4();
        v292 = v70;
        v289 = 2053403509;
        v290 = 0xE400000000000000;
        v61(v63, 1, 1, v59);
        v71 = sub_23AA0D6D4();
        sub_23A8D50D0(v63, &qword_27DFAF208, &qword_23AA12ED8);

        if (v71)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v250 = v62;
  v249 = v59;
  v291 = sub_23AA0BED4();
  v292 = v72;
  v73 = sub_23AA0D6C4();
  v75 = v74;

  if (v75)
  {
    v291 = v73;
    v292 = v75;
    v289 = 92;
    v290 = 0xE100000000000000;
    v76 = sub_23AA0D6E4();

    if (v76)
    {
LABEL_11:
      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      (*(v259 + 16))(v77, a2, v257);
      goto LABEL_12;
    }
  }

  v291 = sub_23AA0BEC4();
  v292 = v80;
  v289 = 1633973109;
  v290 = 0xE400000000000000;
  v81 = v249;
  v61(v63, 1, 1, v249);
  v82 = sub_23AA0D6D4();
  sub_23A8D50D0(v63, &qword_27DFAF208, &qword_23AA12ED8);

  v247 = v64;
  v246 = v61;
  if (v82)
  {
    v291 = sub_23AA0BEC4();
    v292 = v83;
    v289 = 1667527541;
    v290 = 0xE400000000000000;
    v61(v63, 1, 1, v81);
    v84 = sub_23AA0D6D4();
    sub_23A8D50D0(v63, &qword_27DFAF208, &qword_23AA12ED8);

    v86 = v288 + 4;
    v85 = v288[4];
    if (v84)
    {
      v87 = 1633973109;
    }

    else
    {
      v87 = 1667527541;
    }

    v288[3] = v87;
  }

  else
  {
    v86 = v288 + 4;
    v88 = v288[4];
    v288[3] = 1633973109;
  }

  *v86 = 0xE400000000000000;

  v89 = objc_opt_self();
  v90 = [v89 defaultManager];
  sub_23AA0BF94();
  v91 = sub_23AA0D104();

  v92 = [v90 fileExistsAtPath_];

  v93 = v257;
  if (v92)
  {
    v94 = [v89 defaultManager];
    v95 = sub_23AA0BF14();
    v291 = 0;
    v96 = [v94 removeItemAtURL:v95 error:&v291];

    if (!v96)
    {
      v145 = v291;
      sub_23AA0BE74();

      goto LABEL_13;
    }

    v97 = v291;
  }

  v291 = sub_23AA0BEC4();
  v292 = v98;
  v289 = 2053403509;
  v290 = 0xE400000000000000;
  v99 = v279;
  v246(v279, 1, 1, v249);
  v242 = sub_23AA0D6D4();
  sub_23A8D50D0(v99, &qword_27DFAF208, &qword_23AA12ED8);

  v100 = v89;
  v101 = v259;
  v102 = v259 + 16;
  v103 = *(v259 + 16);
  v103(v251, a2, v93);
  v104 = v277;
  v239 = v102;
  v238 = v103;
  (v103)();
  v105 = *(v101 + 56);
  v243 = v101 + 56;
  v241 = v105;
  v105(v36, 1, 1, v93);
  v237 = v100;
  v106 = [v100 byte_278B6563B];
  v107 = v276;
  sub_23AA0BF64();
  v108 = sub_23AA0BF14();
  v109 = *(v101 + 8);
  v109(v107, v93);
  v291 = 0;
  LODWORD(v107) = [v106 createDirectoryAtURL:v108 withIntermediateDirectories:1 attributes:0 error:&v291];

  if (!v107)
  {
    v144 = v291;
    sub_23AA0BE74();

    swift_willThrow();
    sub_23A8D50D0(v36, &qword_27DFAF210, &qword_23AA12EE8);
    v109(v104, v93);
    result = (v109)(v251, v93);
    goto LABEL_14;
  }

  v110 = v104;
  v244 = v109;
  v240 = v101 + 8;
  v111 = v291;
  v112 = sub_23A92B6F8(v275);
  v113 = v288;
  v114 = v288[2];
  v288[2] = v112;

  v115 = v278;
  sub_23A8D5194(v262, v278, &qword_27DFAF210, &qword_23AA12EE8);
  v235 = *(v101 + 48);
  v236 = v101 + 48;
  v116 = v235(v115, 1, v93);
  v258 = v36;
  v117 = v93;
  if (v116 == 1)
  {
    sub_23A8D50D0(v115, &qword_27DFAF210, &qword_23AA12EE8);
    v118 = v269;
    v119 = v110;
    goto LABEL_27;
  }

  (*(v101 + 32))(v274, v115, v93);
  v233 = sub_23AA0BEC4();
  v234 = v146;
  v147 = v113[2];
  v148 = *(v147 + 16);
  v119 = MEMORY[0x277D84F90];
  if (v148)
  {
    v291 = MEMORY[0x277D84F90];

    sub_23A976110(0, v148, 0);
    v119 = v291;
    v117 = v147 + 64;
    v149 = -1 << *(v147 + 32);
    v150 = sub_23AA0D774();
    v151 = 0;
    v278 = *(v147 + 36);
    v255 = v287 + 16;
    v254 = v287 + 32;
    v245 = v147 + 72;
    v152 = 1;
    v252 = v148;
    v256 = v147 + 64;
    v253 = v147;
    while ((v150 & 0x8000000000000000) == 0 && v150 < 1 << *(v147 + 32))
    {
      if ((*(v117 + 8 * (v150 >> 6)) & (1 << v150)) == 0)
      {
        goto LABEL_81;
      }

      if (v278 != *(v147 + 36))
      {
        goto LABEL_82;
      }

      v261 = 1 << v150;
      v262 = v150 >> 6;
      v260 = v151;
      v154 = v287;
      v155 = *(v147 + 48) + *(v287 + 72) * v150;
      v156 = *(v287 + 16);
      v157 = v147;
      v158 = v283;
      v113 = v119;
      v159 = v286;
      v156(v283, v155, v286);
      v160 = (*(v157 + 56) + 16 * v150);
      v162 = *v160;
      v161 = v160[1];
      v163 = *(v154 + 32);
      v164 = v284;
      v165 = v158;
      v166 = v280;
      v163(v284, v165, v159);
      v167 = (v164 + *(v285 + 48));
      *v167 = v162;
      v167[1] = v161;
      v168 = v159;
      v119 = v113;
      v156(&v166[*(v282 + 48)], v164, v168);
      *v166 = v162;
      *(v166 + 1) = v161;
      swift_bridgeObjectRetain_n();
      sub_23A8D50D0(v164, &qword_27DFAF220, &qword_23AA12EF8);
      v291 = v113;
      v148 = v113[2];
      v169 = v113[3];
      if (v148 >= v169 >> 1)
      {
        sub_23A976110(v169 > 1, v148 + 1, 1);
        v119 = v291;
      }

      v119[2] = v148 + 1;
      sub_23A930208(v166, v119 + ((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v148, &qword_27DFAF228, &qword_23AA12F00);
      v147 = v253;
      v152 = 1;
      v153 = 1 << *(v253 + 32);
      v117 = v256;
      if (v150 >= v153)
      {
        goto LABEL_83;
      }

      v170 = *(v256 + 8 * v262);
      if ((v170 & v261) == 0)
      {
        goto LABEL_84;
      }

      if (v278 != *(v253 + 36))
      {
        goto LABEL_85;
      }

      v171 = v170 & (-2 << (v150 & 0x3F));
      if (v171)
      {
        v153 = __clz(__rbit64(v171)) | v150 & 0x7FFFFFFFFFFFFFC0;
        v113 = v288;
      }

      else
      {
        v172 = v262 << 6;
        v173 = v262 + 1;
        v174 = (v245 + 8 * v262);
        v113 = v288;
        while (v173 < (v153 + 63) >> 6)
        {
          v176 = *v174++;
          v175 = v176;
          v172 += 64;
          ++v173;
          if (v176)
          {
            sub_23A8CA9CC(v150, v278, 0);
            v153 = __clz(__rbit64(v175)) + v172;
            goto LABEL_38;
          }
        }

        sub_23A8CA9CC(v150, v278, 0);
      }

LABEL_38:
      v151 = v260 + 1;
      v150 = v153;
      v148 = v252;
      v36 = v258;
      if (v260 + 1 == v252)
      {

        goto LABEL_55;
      }
    }

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
    __break(1u);
    goto LABEL_86;
  }

LABEL_55:
  v177 = v119;
  v178 = v119[2];
  v179 = v277;
  v180 = v244;
  if (v178)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEFE8, &qword_23AA128D8);
    v181 = sub_23AA0DA44();
  }

  else
  {
    v181 = MEMORY[0x277D84F98];
  }

  v291 = v181;
  v191 = v248;
  sub_23A92CFAC(v177, 1, &v291);
  v125 = v191;
  if (v191)
  {
    goto LABEL_90;
  }

  v192 = v291;
  v193 = v234;
  v194 = HIBYTE(v234) & 0xF;
  v195 = v233;
  if ((v234 & 0x2000000000000000) == 0)
  {
    v194 = v233 & 0xFFFFFFFFFFFFLL;
  }

  if (!v194)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    v205 = v274;
    v206 = v257;
    v238(v207, v274, v257);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v180(v205, v206);
    sub_23A8D50D0(v36, &qword_27DFAF210, &qword_23AA12EE8);
    v180(v179, v206);
    result = (v180)(v251, v206);
    goto LABEL_14;
  }

  v285 = 0;
  v291 = v233;
  v292 = v234;
  v288 = v192;
  v289 = 1852797802;
  v290 = 0xE400000000000000;
  v196 = v279;
  v197 = v249;
  v198 = v246;
  v246(v279, 1, 1, v249);
  v199 = sub_23AA0D6D4();
  sub_23A8D50D0(v196, &qword_27DFAF208, &qword_23AA12ED8);
  if (v199)
  {
    v291 = v195;
    v292 = v193;
    v289 = 0x7473696C70;
    v290 = 0xE500000000000000;
    v198(v196, 1, 1, v197);
    v200 = sub_23AA0D6D4();
    sub_23A8D50D0(v196, &qword_27DFAF208, &qword_23AA12ED8);

    if (v200)
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      v201 = v274;
      v202 = v257;
      v238(v203, v274, v257);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v204 = v244;
      v244(v201, v202);
      sub_23A8D50D0(v258, &qword_27DFAF210, &qword_23AA12EE8);
      v204(v277, v202);
      result = (v204)(v251, v202);
      goto LABEL_14;
    }

    v218 = sub_23AA0BE64();
    v219 = *(v218 + 48);
    v220 = *(v218 + 52);
    swift_allocObject();
    sub_23AA0BE54();
    v291 = v288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF230, &qword_23AA12F08);
    sub_23A930270();
    v221 = v285;
    v222 = sub_23AA0BE44();
    v215 = v244;
    v224 = v277;
    v117 = v257;
    if (v221)
    {

      v215(v274, v117);
      sub_23A8D50D0(v258, &qword_27DFAF210, &qword_23AA12EE8);
      v215(v224, v117);
      v216 = v251;
      v217 = v117;
      goto LABEL_75;
    }

    v225 = v222;
    v226 = v223;
    sub_23AA0BFF4();
  }

  else
  {

    v208 = sub_23AA0BC34();
    v209 = *(v208 + 48);
    v210 = *(v208 + 52);
    swift_allocObject();
    sub_23AA0BC24();
    v291 = v288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF230, &qword_23AA12F08);
    sub_23A930270();
    v211 = v285;
    v212 = sub_23AA0BC14();
    if (v211)
    {

      v214 = v257;
      v215 = v244;
      v244(v274, v257);
      sub_23A8D50D0(v258, &qword_27DFAF210, &qword_23AA12EE8);
      v215(v277, v214);
      v216 = v251;
      v217 = v214;
LABEL_75:
      v215(v216, v217);

      goto LABEL_14;
    }

    v225 = v212;
    v226 = v213;
    sub_23AA0BFF4();
    v117 = v257;
  }

  sub_23A8EFA00(v225, v226);

  v228 = sub_23AA0BE64();
  v229 = *(v228 + 48);
  v230 = *(v228 + 52);
  swift_allocObject();
  sub_23AA0BE54();
  v291 = v288;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF230, &qword_23AA12F08);
  sub_23A930270();
  v231 = sub_23AA0BE44();
  v119 = v277;
  v147 = v231;
  v148 = v232;

  v152 = v274;
  sub_23AA0BFF4();
  v248 = 0;
LABEL_86:
  v244(v152, v117);
  sub_23A8EFA00(v147, v148);

  v36 = v258;
  v118 = v269;
LABEL_27:
  if (v242)
  {
LABEL_31:
    v138 = v273;
    v139 = v251;
    sub_23AA0BF64();
    sub_23AA0BF24();
    v291 = v272;
    v292 = v271;
    LODWORD(v289) = v270;
    v140 = v248;
    v141 = sub_23A91998C(v275, v139, v138, &v291, &v289);
    if (v140)
    {
      v142 = v138;
      v143 = v244;
      v244(v142, v117);
      sub_23A8D50D0(v258, &qword_27DFAF210, &qword_23AA12EE8);
      v143(v119, v117);
      result = (v143)(v139, v117);
      goto LABEL_14;
    }

    if (v242)
    {
LABEL_61:

      v190 = v244;
      v244(v138, v117);
      sub_23A8D50D0(v258, &qword_27DFAF210, &qword_23AA12EE8);
      v190(v119, v117);
      result = (v190)(v251, v117);
      goto LABEL_14;
    }

    v182 = v141;
    v183 = sub_23AA0BF14();
    v125 = v182;
    [v182 saveAndCreateUSDZPackageWithURL_];

    v184 = [v237 defaultManager];
    v185 = v263;
    sub_23A8D5194(v258, v263, &qword_27DFAF210, &qword_23AA12EE8);
    if (v235(v185, 1, v117) != 1)
    {
      v186 = sub_23AA0BF14();
      v187 = v244;
      v244(v185, v117);
      v291 = 0;
      v188 = [v184 removeItemAtURL:v186 error:&v291];

      if (!v188)
      {
        v227 = v291;
        sub_23AA0BE74();

        swift_willThrow();
        v187(v273, v117);
        sub_23A8D50D0(v258, &qword_27DFAF210, &qword_23AA12EE8);
        v187(v119, v117);
        result = (v187)(v251, v117);
        goto LABEL_14;
      }

      v189 = v291;
      v141 = v125;
      v138 = v273;
      goto LABEL_61;
    }

    goto LABEL_89;
  }

  v120 = v276;
  sub_23AA0BF34();
  v288 = sub_23AA0BF04();
  v285 = v121;
  v244(v120, v117);
  v122 = [v237 defaultManager];
  v123 = [v122 temporaryDirectory];

  v124 = v264;
  sub_23AA0BF74();

  v125 = &qword_23AA12EE8;
  sub_23A8D50D0(v36, &qword_27DFAF210, &qword_23AA12EE8);
  v241(v124, 0, 1, v117);
  sub_23A930208(v124, v36, &qword_27DFAF210, &qword_23AA12EE8);
  sub_23A8D5194(v36, v118, &qword_27DFAF210, &qword_23AA12EE8);
  if (v235(v118, 1, v117) == 1)
  {
    __break(1u);
  }

  else
  {
    v126 = v118;
    v127 = v268;
    sub_23AA0C0D4();
    sub_23AA0C074();
    (*(v287 + 8))(v127, v286);
    v128 = v265;
    sub_23AA0BF44();

    v125 = &qword_23AA12EE8;
    sub_23A8D50D0(v36, &qword_27DFAF210, &qword_23AA12EE8);
    v129 = v244;
    v244(v126, v117);
    v241(v128, 0, 1, v117);
    sub_23A930208(v128, v36, &qword_27DFAF210, &qword_23AA12EE8);
    v130 = v267;
    sub_23A8D5194(v36, v267, &qword_27DFAF210, &qword_23AA12EE8);
    if (v235(v130, 1, v117) != 1)
    {
      v131 = v266;
      v132 = v288;
      v133 = v285;
      sub_23AA0BF44();
      v129(v130, v117);
      v291 = v132;
      v292 = v133;
      MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
      v135 = v113[3];
      v134 = v113[4];

      MEMORY[0x23EE8FCA0](v135, v134);

      v136 = v276;
      sub_23AA0BF44();

      v129(v131, v117);
      v137 = v251;
      v129(v251, v117);
      (*(v259 + 32))(v137, v136, v117);
      v119 = v277;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:

  __break(1u);
  return result;
}

id sub_23A91998C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5)
{
  v168 = a3;
  v172 = a1;
  v9 = sub_23AA0BFB4();
  v169 = *(v9 - 8);
  v10 = *(v169 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v157 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v157 - v17;
  v20 = *a4;
  v19 = a4[1];
  v21 = *a5;
  v22 = sub_23A92D2EC(a2);
  if (!v5)
  {
    v163 = v15;
    v164 = v18;
    v165 = v21;
    v160 = v19;
    v161 = v20;
    v162 = v12;
    v167 = 0;
    v23 = 1836019538;
    v24 = sub_23AA0D104();
    v25 = [v22 metadataWithKey_];

    if (v25 && (v26 = [v25 stringValue], v25, v26))
    {
      v23 = sub_23AA0D134();
      v28 = v27;
    }

    else
    {
      v28 = 0xE400000000000000;
    }

    v29 = [v22 rootNode];
    v30 = sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
    v31 = [v22 rootNode];
    v166 = v30;
    v32 = sub_23AA0D634();

    if ((v32 & 1) != 0 || (v33 = [v29 path], v34 = objc_msgSend(v33, sel_stringValue), v33, !v34))
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      v35 = sub_23AA0D134();
      v37 = v36;
    }

    v170 = v35;
    v171 = v37;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v23, v28);

    v39 = v170;
    v38 = v171;
    v40 = objc_allocWithZone(MEMORY[0x277D77888]);
    v41 = sub_23AA0D104();
    v42 = [v40 initWithString_];

    if (v42)
    {
      v158 = v9;
      v43 = *MEMORY[0x277D77980];
      v44 = [v22 newNodeAtPath:v42 type:*MEMORY[0x277D77980]];
      if (v44)
      {
        v45 = v44;
        v159 = v43;

        v46 = sub_23AA0D104();
        v47 = objc_allocWithZone(MEMORY[0x277D778B0]);
        v48 = sub_23AA0D104();
        v49 = [v47 byte_278B65578];

        v50 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
        [v45 setMetadataWithKey:v46 value:v50];

        v51 = [v22 rootNode];
        v52 = sub_23AA0D634();

        v53 = v45;
        if (v52)
        {
          v54 = 0;
          v55 = 0xE000000000000000;
          v56 = &off_278B65000;
          v57 = 0x277D77000;
        }

        else
        {
          v60 = [v45 path];
          v61 = [v60 stringValue];

          v57 = 0x277D77000uLL;
          if (v61)
          {
            v54 = sub_23AA0D134();
            v55 = v62;
          }

          else
          {
            v54 = 0;
            v55 = 0xE000000000000000;
          }

          v56 = &off_278B65000;
        }

        v170 = v54;
        v171 = v55;

        MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

        MEMORY[0x23EE8FCA0](0x5F6E6F6974636553, 0xEB00000000707267);

        v64 = v170;
        v63 = v171;
        v65 = objc_allocWithZone(*(v57 + 2184));
        v66 = sub_23AA0D104();
        v67 = [v65 *(v56 + 469)];

        if (!v67)
        {
          type metadata accessor for USDModel.Error();
          sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
          swift_allocError();
          *v81 = v64;
          v81[1] = v63;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return v22;
        }

        v68 = [v22 newNodeAtPath:v67 type:v159];
        if (!v68)
        {
          type metadata accessor for USDModel.Error();
          sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
          swift_allocError();
          *v83 = v64;
          v83[1] = v63;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return v22;
        }

        v69 = v68;

        v70 = sub_23AA0D104();
        v71 = objc_allocWithZone(MEMORY[0x277D778B0]);
        v72 = sub_23AA0D104();
        v73 = v56;
        v74 = v72;
        v75 = [v71 v73 + 1400];

        v76 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
        [v69 setMetadataWithKey:v70 value:v76];

        v77 = v172[3];
        v78 = v172[4];
        __swift_project_boxed_opaque_existential_1(v172, v77);
        v79 = (*(v78 + 72))(v77, v78);
        v80 = v167;
        sub_23A92DFB8(v79, v69, v22);
        v167 = v80;
        if (v80)
        {

          return v22;
        }

        v84 = v165;
        if ((v165 & 2) != 0)
        {
          v87 = [v22 rootNode];
          v88 = sub_23AA0D634();

          v157 = v53;
          if ((v88 & 1) != 0 || (v89 = [v53 path], v90 = objc_msgSend(v89, sel_stringValue), v89, !v90))
          {
            v91 = 0;
            v93 = 0xE000000000000000;
          }

          else
          {
            v91 = sub_23AA0D134();
            v93 = v92;
          }

          v170 = v91;
          v171 = v93;

          MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

          MEMORY[0x23EE8FCA0](0x7072675F6873654DLL, 0xE800000000000000);

          v95 = v170;
          v94 = v171;
          v96 = objc_allocWithZone(MEMORY[0x277D77888]);
          v97 = sub_23AA0D104();
          v98 = [v96 initWithString_];

          if (!v98)
          {
            type metadata accessor for USDModel.Error();
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
            swift_allocError();
            *v108 = v95;
            v108[1] = v94;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return v22;
          }

          v99 = [v22 newNodeAtPath:v98 type:v159];
          if (!v99)
          {
            type metadata accessor for USDModel.Error();
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
            swift_allocError();
            *v109 = v95;
            v109[1] = v94;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return v22;
          }

          v100 = v99;

          v101 = sub_23AA0D104();
          v102 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v103 = sub_23AA0D104();
          v104 = [v102 byte_278B65578];

          v105 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
          [v100 setMetadataWithKey:v101 value:v105];

          v106 = v164;
          sub_23AA0BF44();
          v170 = 0;
          v171 = 0;
          v107 = v167;
          sub_23A91ADB0(v172, v100, v22, v106, &v170);
          v167 = v107;
          if (v107)
          {
            (*(v169 + 8))(v106, v158);

            goto LABEL_51;
          }

          (*(v169 + 8))(v106, v158);

          v85 = &off_278B65000;
          v53 = v157;
          v84 = v165;
          v86 = v159;
          if ((v165 & 1) == 0)
          {
LABEL_29:
            if ((v84 & 4) == 0)
            {
              goto LABEL_30;
            }

LABEL_55:
            v164 = v69;
            v133 = [v22 rootNode];
            v134 = sub_23AA0D634();

            if (v134)
            {
              v135 = 0;
              v136 = 0xE000000000000000;
            }

            else
            {
              v137 = [v53 path];
              v138 = [v137 stringValue];

              if (v138)
              {
                v135 = sub_23AA0D134();
                v136 = v139;
              }

              else
              {
                v135 = 0;
                v136 = 0xE000000000000000;
              }

              v86 = v159;
            }

            v170 = v135;
            v171 = v136;

            MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

            MEMORY[0x23EE8FCA0](0x72675F6C65646F4DLL, 0xE900000000000070);

            v141 = v170;
            v140 = v171;
            v142 = objc_allocWithZone(MEMORY[0x277D77888]);
            v143 = sub_23AA0D104();
            v144 = [v142 *(v85 + 469)];

            if (v144)
            {
              v145 = [v22 newNodeAtPath:v144 type:v86];
              if (v145)
              {
                v69 = v145;

                v146 = sub_23AA0D104();
                v147 = objc_allocWithZone(MEMORY[0x277D778B0]);
                v148 = sub_23AA0D104();
                v149 = v85;
                v150 = v148;
                v151 = [v147 v149 + 1400];

                v152 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
                [v69 setMetadataWithKey:v146 value:v152];

                v153 = v162;
                sub_23AA0BF44();
                v170 = v161;
                v171 = v160;
                v154 = v167;
                sub_23A91ADB0(v172, v69, v22, v153, &v170);
                v167 = v154;
                if (v154)
                {
                  (*(v169 + 8))(v153, v158);

                  goto LABEL_31;
                }

                (*(v169 + 8))(v153, v158);

                v69 = v164;
LABEL_30:
                [v22 save];

LABEL_31:
                return v22;
              }

              type metadata accessor for USDModel.Error();
              sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
              swift_allocError();
              *v156 = v141;
              v156[1] = v140;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
            }

            else
            {
              type metadata accessor for USDModel.Error();
              sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
              swift_allocError();
              *v155 = v141;
              v155[1] = v140;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
            }

LABEL_67:

            return v22;
          }
        }

        else
        {
          v85 = &off_278B65000;
          v86 = v159;
          if ((v165 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v164 = v69;
        v110 = [v22 rootNode];
        v111 = sub_23AA0D634();

        v157 = v53;
        if ((v111 & 1) != 0 || (v112 = [v53 path], v113 = objc_msgSend(v112, sel_stringValue), v112, !v113))
        {
          v114 = 0;
          v116 = 0xE000000000000000;
        }

        else
        {
          v114 = sub_23AA0D134();
          v116 = v115;
        }

        v170 = v114;
        v171 = v116;

        MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

        MEMORY[0x23EE8FCA0](0x7274656D61726150, 0xEE007072675F6369);

        v118 = v170;
        v117 = v171;
        v119 = objc_allocWithZone(MEMORY[0x277D77888]);
        v120 = sub_23AA0D104();
        v121 = [v119 *(v85 + 469)];

        if (!v121)
        {
          type metadata accessor for USDModel.Error();
          sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
          swift_allocError();
          *v131 = v118;
          v131[1] = v117;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_67;
        }

        v122 = [v22 newNodeAtPath:v121 type:v159];
        if (!v122)
        {
          type metadata accessor for USDModel.Error();
          sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
          swift_allocError();
          *v132 = v118;
          v132[1] = v117;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_67;
        }

        v100 = v122;

        v123 = sub_23AA0D104();
        v124 = objc_allocWithZone(MEMORY[0x277D778B0]);
        v125 = v85;
        v126 = sub_23AA0D104();
        v127 = [v124 v125 + 1400];

        v128 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
        [v100 setMetadataWithKey:v123 value:v128];

        v129 = v163;
        sub_23AA0BF44();
        v130 = v167;
        sub_23A926A94(v172, v100, v22, v129);
        v167 = v130;
        if (!v130)
        {
          (*(v169 + 8))(v129, v158);

          v85 = v125;
          v53 = v157;
          v69 = v164;
          v86 = v159;
          if ((v165 & 4) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_55;
        }

        (*(v169 + 8))(v129, v158);

LABEL_51:
        return v22;
      }

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v59 = v39;
      v59[1] = v38;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v58 = v39;
      v58[1] = v38;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  return v22;
}

void sub_23A91ADB0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v799 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v771 = &v760 - v11;
  v775 = sub_23AA0C0E4();
  v765 = *(v775 - 8);
  v12 = *(v765 + 64);
  MEMORY[0x28223BE20](v775);
  v770 = &v760 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0990, &qword_23AA12EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v778 = &v760 - v16;
  v774 = type metadata accessor for CapturedRoom.Object(0);
  v784 = *(v774 - 8);
  v17 = *(v784 + 64);
  MEMORY[0x28223BE20](v774 - 8);
  v783 = &v760 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v766 = &v760 - v20;
  MEMORY[0x28223BE20](v21);
  v779 = &v760 - v22;
  MEMORY[0x28223BE20](v23);
  v776 = &v760 - v24;
  v856 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v25 = *(v856 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v856);
  v767 = &v760 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v796 = &v760 - v29;
  MEMORY[0x28223BE20](v30);
  v793 = &v760 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v773 = &v760 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v813 = &v760 - v36;
  MEMORY[0x28223BE20](v37);
  v806 = &v760 - v38;
  MEMORY[0x28223BE20](v39);
  v807 = &v760 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v785 = &v760 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v786 = &v760 - v45;
  MEMORY[0x28223BE20](v46);
  v831 = &v760 - v47;
  MEMORY[0x28223BE20](v48);
  v830 = &v760 - v49;
  MEMORY[0x28223BE20](v50);
  v824 = &v760 - v51;
  MEMORY[0x28223BE20](v52);
  v823 = &v760 - v53;
  MEMORY[0x28223BE20](v54);
  v841.i64[0] = &v760 - v55;
  MEMORY[0x28223BE20](v56);
  v840 = &v760 - v57;
  MEMORY[0x28223BE20](v58);
  v832 = &v760 - v59;
  MEMORY[0x28223BE20](v60);
  v833 = &v760 - v61;
  v853 = type metadata accessor for CapturedRoom.Surface(0);
  v859 = *(v853 - 8);
  v62 = *(v859 + 8);
  MEMORY[0x28223BE20](v853);
  v787 = &v760 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v852.i64[0] = &v760 - v65;
  MEMORY[0x28223BE20](v66);
  v842 = &v760 - v67;
  MEMORY[0x28223BE20](v68);
  v851.i64[0] = &v760 - v69;
  MEMORY[0x28223BE20](v70);
  v854.i64[0] = &v760 - v71;
  MEMORY[0x28223BE20](v72);
  v849.i64[0] = &v760 - v73;
  MEMORY[0x28223BE20](v74);
  v847 = (&v760 - v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1F8, &qword_23AA12EC8);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v817 = &v760 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v816 = (&v760 - v80);
  v846 = sub_23AA0BFB4();
  v81 = *(v846 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v846);
  v777 = &v760 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v772 = (&v760 - v85);
  MEMORY[0x28223BE20](v86);
  v782 = &v760 - v87;
  MEMORY[0x28223BE20](v88);
  v781 = &v760 - v89;
  MEMORY[0x28223BE20](v90);
  v780 = &v760 - v91;
  MEMORY[0x28223BE20](v92);
  v843 = (&v760 - v93);
  MEMORY[0x28223BE20](v94);
  v835 = (&v760 - v95);
  MEMORY[0x28223BE20](v96);
  v839 = &v760 - v97;
  MEMORY[0x28223BE20](v98);
  v826 = &v760 - v99;
  MEMORY[0x28223BE20](v100);
  v819 = &v760 - v101;
  MEMORY[0x28223BE20](v102);
  *&v848 = &v760 - v103;
  MEMORY[0x28223BE20](v104);
  v827 = &v760 - v105;
  v106 = a5[1];
  v769 = *a5;
  v768 = v106;
  v107 = a1[3];
  v108 = a1[4];
  v820 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v107);
  v829 = sub_23A91408C(v107, v108);
  v834 = v109;
  v110 = sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v837 = a3;
  v111 = a3;
  v112 = a2;
  v113 = [v111 rootNode];
  v836 = v110;
  LOBYTE(v110) = sub_23AA0D634();

  if ((v110 & 1) != 0 || (v114 = [a2 path], v115 = objc_msgSend(v114, sel_stringValue), v114, !v115))
  {
    v116 = 0;
    v118 = 0xE000000000000000;
  }

  else
  {
    v116 = sub_23AA0D134();
    v118 = v117;
  }

  v869 = v116;
  v870 = v118;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x7072675F68637241, 0xE800000000000000);

  v120 = v869;
  v119 = v870;
  v121 = objc_allocWithZone(MEMORY[0x277D77888]);
  v122 = sub_23AA0D104();
  v123 = [v121 initWithString_];

  if (!v123)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v467 = v120;
    v467[1] = v119;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v794 = *MEMORY[0x277D77980];
  v124 = [v837 newNodeAtPath:v123 type:?];
  if (!v124)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v468 = v120;
    v468[1] = v119;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v761 = v112;
  v125 = v124;

  v126 = sub_23AA0D104();
  v127 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v128 = sub_23AA0D104();
  v129 = [v127 initWithString_];

  v130 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  v805 = v125;
  [v125 setMetadataWithKey:v126 value:v130];

  sub_23AA0BF44();
  v131 = v820[3];
  v132 = v820[4];
  __swift_project_boxed_opaque_existential_1(v820, v131);
  v133 = (*(v132 + 24))(v131, v132);
  v809 = "modelPositionAndDimensionsCache";
  v870 = 0;
  v871 = 0;
  v855 = (v25 + 48);
  v764 = (v81 + 32);
  v869 = v133;
  v812 = *MEMORY[0x277D77968];
  v810 = *MEMORY[0x277D77948];
  v845 = (v81 + 8);
  v808 = xmmword_23AA11BB0;
  v792 = xmmword_23AA11AF0;
  while (1)
  {
    v134 = v817;
    sub_23A9166E4(v817);
    v135 = v816;
    sub_23A930208(v134, v816, &qword_27DFAF1F8, &qword_23AA12EC8);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF200, &qword_23AA12ED0);
    if ((*(*(v136 - 8) + 48))(v135, 1, v136) == 1)
    {
      break;
    }

    v137 = *v135;
    sub_23A92FF30(v135 + *(v136 + 48), v847, type metadata accessor for CapturedRoom.Surface);
    *&v868 = 0x5F6C6C6157;
    *(&v868 + 1) = 0xE500000000000000;
    v872 = v137;
    v138 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v138);

    MEMORY[0x23EE8FCA0](1886545759, 0xE400000000000000);
    v139 = v868;
    v140 = [v837 rootNode];
    v141 = v805;
    v142 = sub_23AA0D634();

    if ((v142 & 1) != 0 || (v143 = [v141 path], v144 = objc_msgSend(v143, sel_stringValue), v143, !v144))
    {
      v145 = 0;
      v147 = 0xE000000000000000;
    }

    else
    {
      v145 = sub_23AA0D134();
      v147 = v146;
    }

    *&v868 = v145;
    *(&v868 + 1) = v147;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v139, *(&v139 + 1));

    v148 = v868;
    v149 = objc_allocWithZone(MEMORY[0x277D77888]);
    v150 = sub_23AA0D104();
    v151 = [v149 initWithString_];

    if (!v151)
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v500 = v148;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v501 = v805;
LABEL_207:

      (*v845)(v827, v846);
      sub_23A92FED0(v847, type metadata accessor for CapturedRoom.Surface);
      return;
    }

    v152 = [v837 newNodeAtPath:v151 type:v794];
    if (!v152)
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      swift_allocError();
      *v502 = v148;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v501 = v151;
      goto LABEL_207;
    }

    v153 = v152;

    v154 = sub_23AA0D104();
    v155 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v156 = sub_23AA0D104();
    v157 = [v155 initWithString_];

    v158 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    v844 = v153;
    [v153 setMetadataWithKey:v154 value:v158];

    *&v868 = 1819042135;
    *(&v868 + 1) = 0xE400000000000000;
    v872 = v137;
    v159 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v159);

    sub_23AA0BF44();

    v160 = v820;
    v161 = v820[3];
    v162 = v820[4];
    __swift_project_boxed_opaque_existential_1(v820, v161);
    v163 = (*(v162 + 32))(v161, v162);
    MEMORY[0x28223BE20](v163);
    v164 = v847;
    *(&v760 - 2) = v847;
    v165 = v858;
    sub_23A9BD114(sub_23A9305E0, (&v760 - 4), v166);
    v168 = v167;
    v169 = v165;
    v170 = v160[3];
    v171 = v160[4];
    __swift_project_boxed_opaque_existential_1(v160, v170);
    v172 = (*(v171 + 40))(v170, v171);
    MEMORY[0x28223BE20](v172);
    *(&v760 - 2) = v164;
    sub_23A9BD114(sub_23A9300A4, (&v760 - 4), v173);
    v175 = v174;
    v176 = v160[3];
    v177 = v160[4];
    __swift_project_boxed_opaque_existential_1(v160, v176);
    v178 = (*(v177 + 48))(v176, v177);
    MEMORY[0x28223BE20](v178);
    *(&v760 - 2) = v164;
    sub_23A9BD114(sub_23A9305E0, (&v760 - 4), v179);
    v181 = v180;
    v182 = v160[3];
    v183 = v160[4];
    __swift_project_boxed_opaque_existential_1(v160, v182);
    v184 = (*(v183 + 56))(v182, v183);
    MEMORY[0x28223BE20](v184);
    *(&v760 - 2) = v164;
    sub_23A9BD16C(sub_23A9300C4, (&v760 - 4), v185);
    v818 = v186;
    *&v868 = v168;

    sub_23A911B78(v187);

    v838 = v181;
    sub_23A911B78(v188);
    v189 = v164[1];
    v803 = v189;
    v825 = v168;
    v828 = v175;
    if (v189.f32[2] <= 0.0)
    {
      v190 = 0.0;
      v193 = v829;
      v194 = v853;
      if ((v164->i8[0] - 2) > 3u)
      {
        v191 = 0.08;
      }

      else
      {
        v191 = flt_23AA11F40[(v164->i8[0] - 2)];
      }

      v192 = v834;
    }

    else
    {
      v190 = v189.f32[2] * 0.5;
      v191 = v189.f32[2] * 0.5;
      v192 = v834;
      v193 = v829;
      v194 = v853;
    }

    v857 = v868;
    v195 = *(v194 + 44);
    if (*(v193 + 16) && (v196 = sub_23A9EDD28(v847 + v195), (v197 & 1) != 0))
    {
      v198 = v196;
      v199 = *(v193 + 56);
      v200 = type metadata accessor for ScanItemStrut();
      v201 = *(v200 - 8);
      v202 = v199 + *(v201 + 72) * v198;
      v192 = v834;
      v203 = v833;
      sub_23A930548(v202, v833, type metadata accessor for ScanItemStrut);
      (*(v201 + 56))(v203, 0, 1, v200);
    }

    else
    {
      v204 = type metadata accessor for ScanItemStrut();
      (*(*(v204 - 8) + 56))(v833, 1, 1, v204);
    }

    v205 = v826;
    if (*(v192 + 16) && (v206 = sub_23A9EDD28(v847 + v195), (v207 & 1) != 0))
    {
      v208 = v206;
      v209 = *(v192 + 56);
      v210 = type metadata accessor for ScanItemStrut();
      v211 = *(v210 - 8);
      v212 = v209 + *(v211 + 72) * v208;
      v213 = v832;
      sub_23A930548(v212, v832, type metadata accessor for ScanItemStrut);
      (*(v211 + 56))(v213, 0, 1, v210);
      v205 = v826;
    }

    else
    {
      v214 = type metadata accessor for ScanItemStrut();
      (*(*(v214 - 8) + 56))(v832, 1, 1, v214);
    }

    v215 = v850[2];
    v216 = *(v215 + 16);

    if (!v216 || (v217 = sub_23A9EDD28(v847 + v195), (v218 & 1) == 0))
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      v470 = swift_allocError();
      v472 = v471;
      v473 = v847;
      *v471 = sub_23AA0C074();
      v472[1] = v474;
      swift_storeEnumTagMultiPayload();
      v858 = v470;
      swift_willThrow();

      sub_23A8D50D0(v832, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v833, &unk_27DFAF020, &unk_23AA12300);
      v475 = *v845;
      v476 = &v866;
      goto LABEL_191;
    }

    v219 = (*(v215 + 56) + 16 * v217);
    v221 = *v219;
    v220 = v219[1];

    *&v868 = v221;
    *(&v868 + 1) = v220;

    MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
    v222 = v850[3];
    v223 = v850[4];

    MEMORY[0x23EE8FCA0](v222, v223);

    sub_23AA0BF44();

    v224 = sub_23A92D2EC(v205);
    if (v169)
    {
      v858 = v169;

      v503 = *v845;
      v504 = v846;
      (*v845)(v205, v846);
      sub_23A8D50D0(v832, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v833, &unk_27DFAF020, &unk_23AA12300);
      v503(v848, v504);

      v503(v827, v504);
      goto LABEL_212;
    }

    v225 = v224;
    v226 = sub_23AA0BF04();
    v228 = v227;
    v229 = [v225 rootNode];
    v230 = sub_23A92EC38(v221, v220, v226, v228, v229, v225);
    v858 = 0;
    v231 = v230;
    v814.i64[0] = v221;
    v815.i64[0] = v220;

    v232 = sub_23AA0D104();
    v821.i64[0] = v231;
    v233 = v847;
    sub_23AA0C074();
    v822.n128_u64[0] = v225;
    v234 = objc_allocWithZone(MEMORY[0x277D77878]);
    v235 = sub_23AA0D104();

    v236 = [v234 initWithString_];

    [v821.i64[0] setCustomMetadata:v232 value:v236];
    v237 = sub_23AA0D104();
    v238 = v233->i8[0];
    v239 = v821.i64[0];
    LOBYTE(v868) = v238;
    *&v868 = sub_23AA0D1A4();
    *(&v868 + 1) = v240;
    v791 = sub_23A92F104();
    sub_23AA0D6A4();

    v241 = objc_allocWithZone(MEMORY[0x277D77878]);
    v242 = sub_23AA0D104();

    v243 = [v241 initWithString_];

    [v239 setCustomMetadata:v237 value:v243];
    v244 = [v822.n128_u64[0] rootNode];
    LOBYTE(v242) = sub_23AA0D634();

    if (v242)
    {
      v245 = 0;
      v246 = 0xE000000000000000;
      v247 = v847;
      v248 = v807;
    }

    else
    {
      v249 = [v239 path];
      v250 = [v249 stringValue];

      v248 = v807;
      if (v250)
      {
        v245 = sub_23AA0D134();
        v246 = v251;
      }

      else
      {
        v245 = 0;
        v246 = 0xE000000000000000;
      }

      v247 = v847;
    }

    v252 = v815.i64[0];
    v253 = v814.i64[0];
    *&v868 = v245;
    *(&v868 + 1) = v246;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v253, v252);

    v254 = v868;
    v255 = objc_allocWithZone(MEMORY[0x277D77888]);
    v256 = sub_23AA0D104();
    v257 = [v255 initWithString_];

    if (!v257)
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      v505 = swift_allocError();
      *v506 = v254;
      swift_storeEnumTagMultiPayload();
      v858 = v505;
      swift_willThrow();
      v507 = v805;
      v257 = v239;
      v239 = v844;
LABEL_211:

      v510 = *v845;
      v511 = v846;
      (*v845)(v826, v846);
      sub_23A8D50D0(v832, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v833, &unk_27DFAF020, &unk_23AA12300);
      v510(v848, v511);
      v510(v827, v511);
LABEL_212:
      v512 = &v865;
LABEL_213:
      v478 = *(v512 - 32);
LABEL_214:
      v499 = type metadata accessor for CapturedRoom.Surface;
      goto LABEL_215;
    }

    v258 = [v822.n128_u64[0] newNodeAtPath:v257 type:v812];
    if (!v258)
    {

      type metadata accessor for USDModel.Error();
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
      v508 = swift_allocError();
      *v509 = v254;
      swift_storeEnumTagMultiPayload();
      v858 = v508;
      swift_willThrow();

      v507 = v844;
      goto LABEL_211;
    }

    v259 = v258;

    v260 = sub_23AA0D104();
    v811.i64[0] = v259;
    v261 = [v259 newPropertyWithName:v260 type:v810 role:0];

    if (!v261)
    {
      goto LABEL_359;
    }

    v790 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v262 = swift_allocObject();
    *(v262 + 16) = v808;
    v263 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v264 = sub_23AA0D104();
    v265 = [v263 initWithString_];

    *(v262 + 32) = v265;
    v789 = sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
    v266 = sub_23AA0D2E4();

    v802.i64[0] = v261;
    [v261 setTokenArray_];

    v873.columns[1] = *(v247 + 48);
    v873.columns[2] = *(v247 + 64);
    v873.columns[3] = *(v247 + 80);
    v801 = *(v247 + 32);
    v873.columns[0] = v801;
    v800 = v873.columns[1];
    v798 = v873.columns[2];
    v797 = v873.columns[3];
    v874 = __invert_f4(v873);
    *&v868 = MEMORY[0x277D84F90];
    v268 = v857[2];
    v269 = v853;
    v864 = v874.columns[0];
    v863 = v874.columns[1];
    v862 = v874.columns[2];
    v861 = v874.columns[3];
    if (v268)
    {
      *&v270 = MEMORY[0x28223BE20](v267);
      *(&v760 - 5) = v270;
      *(&v760 - 4) = v271;
      *(&v760 - 3) = v272;
      *(&v760 - 2) = v273;
      *(&v760 - 2) = v247;
      v274 = v858;
      v276 = sub_23A97E54C(sub_23A9305B0, (&v760 - 12), v275);
      v858 = v274;
      v267 = sub_23A912880(v276);
    }

    v277 = v849.i64[0];
    if (*(v818 + 16))
    {
      MEMORY[0x28223BE20](v267);
      v278 = v863;
      *(&v760 - 5) = v864;
      *(&v760 - 4) = v278;
      v279 = v861;
      *(&v760 - 3) = v862;
      *(&v760 - 2) = v279;
      *(&v760 - 2) = v247;
      v280 = v858;
      v282 = sub_23A96611C(sub_23A9305B0, (&v760 - 12), v281);
      v858 = v280;
      v267 = sub_23A912880(v282);
    }

    v283 = v857;
    v860.i64[0] = v857[2];
    if (v860.i64[0])
    {
      v284 = 0;
      v285 = MEMORY[0x277D84F90];
      while (v284 < v283[2])
      {
        v286 = (v859[80] + 32) & ~v859[80];
        v287 = *(v859 + 9);
        sub_23A930548(v283 + v286 + v287 * v284, v277, type metadata accessor for CapturedRoom.Surface);
        v247 = v269;
        sub_23A8D5194(v277 + v269[13], v248, &qword_27DFAEB38, &unk_23AA11B60);
        if ((*v855)(v248, 1, v856) == 1)
        {
          sub_23A92FED0(v277, type metadata accessor for CapturedRoom.Surface);
          v267 = sub_23A8D50D0(v248, &qword_27DFAEB38, &unk_23AA11B60);
        }

        else
        {
          sub_23A8D50D0(v248, &qword_27DFAEB38, &unk_23AA11B60);
          sub_23A92FF30(v277, v854.i64[0], type metadata accessor for CapturedRoom.Surface);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v872 = v285;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23A976018(0, *(v285 + 16) + 1, 1);
            v285 = v872;
          }

          v290 = *(v285 + 16);
          v289 = *(v285 + 24);
          if (v290 >= v289 >> 1)
          {
            sub_23A976018(v289 > 1, v290 + 1, 1);
            v285 = v872;
          }

          *(v285 + 16) = v290 + 1;
          v267 = sub_23A92FF30(v854.i64[0], v285 + v286 + v290 * v287, type metadata accessor for CapturedRoom.Surface);
          v269 = v853;
          v277 = v849.i64[0];
        }

        ++v284;
        v283 = v857;
        if (v860.i64[0] == v284)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_219:
      v494 = 0;
      v495 = 0xE000000000000000;
      goto LABEL_220;
    }

    v285 = MEMORY[0x277D84F90];
LABEL_57:
    if (*(v285 + 16))
    {
      *&v291 = MEMORY[0x28223BE20](v267);
      *(&v760 - 5) = v291;
      *(&v760 - 4) = v292;
      *(&v760 - 3) = v293;
      *(&v760 - 2) = v294;
      v295 = v847;
      *(&v760 - 2) = v847;
      v296 = v858;
      v297 = sub_23A97E54C(sub_23A9305C8, (&v760 - 12), v285);
      v858 = v296;
    }

    else
    {

      v297 = MEMORY[0x277D84F90];
      v295 = v847;
    }

    v298 = v811.i64[0];
    v299 = v806;
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v300 = off_27DFB17B0;
    swift_beginAccess();
    v864.i64[0] = v300;
    v301 = (v300[138] & 1) == 0 && v295->i8[0] != 5;
    sub_23A8D5194(v295 + v269[13], v299, &qword_27DFAEB38, &unk_23AA11B60);
    v788 = *v855;
    if (v788(v299, 1, v856) == 1)
    {
      v863 = vaddq_f32(v803, 0);

      sub_23A8D50D0(v299, &qword_27DFAEB38, &unk_23AA11B60);
      v302 = *(v295->i64 + v269[15]);
      if (*(v302 + 16))
      {
        v303 = v301;
      }

      else
      {
        v303 = 1;
      }

      if (v303)
      {
        v304 = sub_23A8F89D0(v868, v833, v832, v863, v190, v191);
      }

      else
      {
        type metadata accessor for RoomCaptureGeometryManager();
        swift_initStaticObject();
        v304 = sub_23A8F0290(v302, v868, 0, 1, v833, v832, v863, v190, v191, 0.0);
      }

      v310 = v304;

      v311 = v822.n128_u64[0];
      v312 = v815.i64[0];
      v313 = v814.i64[0];
      v298 = v811.i64[0];
    }

    else
    {
      v305 = v803.i32[1];

      v306 = v793;
      sub_23A92FF30(v299, v793, type metadata accessor for CapturedRoom.Surface.Curve);
      v307.n128_u32[0] = v305;
      v308.n128_f32[0] = v190;
      v309.n128_f32[0] = v191;
      v310 = sub_23A8FA5A0(v306, v297, v307, v308, v309, v833, v832, 0x3C8EFA35uLL, 1);

      sub_23A92FED0(v306, type metadata accessor for CapturedRoom.Surface.Curve);
      v311 = v822.n128_u64[0];
      v312 = v815.i64[0];
      v313 = v814.i64[0];
    }

    sub_23A92F158(v298, v310, v801, v800, v798, v797);

    v314 = v295->u8[0];
    v315 = *&v792;
    if (v314 != 5)
    {
      v315 = *&v792;
      if (v314 != 2)
      {
        v315 = 0.0;
      }
    }

    if (v314 == 5 || v314 == 2)
    {
      v317 = 1.0;
    }

    else
    {
      v317 = 0.0;
    }

    sub_23A92F638(v298, v313, v312, v311, v315, v317);

    [v311 save];

    v318 = v846;
    (*v764)(v819, v826, v846);
    sub_23A916D14();
    if (v319)
    {
      v320 = sub_23AA0D104();
    }

    else
    {
      v320 = 0;
    }

    v321 = v844;
    [v844 addReferenceWithPath:v320 nodePath:0];

    v322 = v864.i64[0];
    swift_beginAccess();
    if ((*(v322 + 136) & 1) != 0 || (v323 = v864.i64[0], swift_beginAccess(), *(v323 + 137) == 1))
    {
      v324 = *(v295->i64 + v269[16]);
      if (*(v324 + 16))
      {
        v325 = *(v295->i64 + v269[16]);
      }

      else
      {
        sub_23A9BAE80(*v803.i64);
        v327 = v326;
        MEMORY[0x28223BE20](v326);
        *(&v760 - 2) = v295;
        v328 = v858;
        v324 = sub_23A965E88(sub_23A9300E4, (&v760 - 4), v327);
        v858 = v328;

        v318 = v846;
      }
    }

    else
    {
      v324 = 0;
    }

    if (*(v864.i64[0] + 136) == 1)
    {
      v763 = *(v825 + 16);
      if (v763)
      {
        v329 = 0;
        v330 = MEMORY[0x277D84F90];
        v762 = v324;
        while (v329 < *(v825 + 16))
        {
          v332 = v851.i64[0];
          sub_23A930548(v825 + ((v859[80] + 32) & ~v859[80]) + *(v859 + 9) * v329, v851.i64[0], type metadata accessor for CapturedRoom.Surface);
          v875.columns[1] = *(v332 + 48);
          v875.columns[2] = *(v332 + 64);
          v875.columns[3] = *(v332 + 80);
          v803 = *(v332 + 32);
          v875.columns[0] = v803;
          v802 = v875.columns[1];
          v801 = v875.columns[2];
          v800 = v875.columns[3];
          v876 = __invert_f4(v875);
          if (!v324)
          {
            goto LABEL_357;
          }

          v814 = v876.columns[3];
          v815 = v876.columns[2];
          v821 = v876.columns[1];
          v822 = v876.columns[0];
          v333 = *(v324 + 16);
          if (v333)
          {
            *&v868 = v330;

            sub_23A975EA4(0, v333, 0);
            v334 = v868;
            v335 = *(v868 + 16);
            v336 = 32;
            v337 = v822;
            v338 = v821;
            v339 = v815;
            v340 = v814;
            do
            {
              v341 = *(v324 + v336);
              *&v868 = v334;
              v342 = v334[3];
              if (v335 >= v342 >> 1)
              {
                v863 = v341;
                sub_23A975EA4((v342 > 1), v335 + 1, 1);
                v341 = v863;
                v340 = v814;
                v339 = v815;
                v338 = v821;
                v337 = v822;
                v334 = v868;
              }

              v334[2] = v335 + 1;
              v334[v335 + 4] = vaddq_f32(v340, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v341.f32[0]), v338, *v341.f32, 1), v339, v341, 2)).u64[0];
              v336 += 16;
              ++v335;
              --v333;
            }

            while (v333);

            v269 = v853;
          }

          else
          {
            v334 = v330;
          }

          v343 = COERCE_FLOAT(*(v851.i64[0] + 24));
          v811 = *(v851.i64[0] + 16);
          if (v343 <= 0.0)
          {
            v344 = 0.0;
            if ((*v851.i64[0] - 2) > 3u)
            {
              v345 = 0.08;
            }

            else
            {
              v345 = flt_23AA11F40[(*v851.i64[0] - 2)];
            }
          }

          else
          {
            v344 = v343 * 0.5;
            v345 = v343 * 0.5;
          }

          v346 = type metadata accessor for ScanItemStrut();
          v347 = *(*(v346 - 8) + 56);
          v347(v840, 1, 1, v346);
          v347(v841.i64[0], 1, 1, v346);
          v348 = v269[11];
          v349 = v850[2];
          if (!*(v349 + 16))
          {
            goto LABEL_195;
          }

          v350 = v850[2];

          v351 = sub_23A9EDD28(v851.i64[0] + v348);
          if ((v352 & 1) == 0)
          {

LABEL_195:
            type metadata accessor for USDModel.Error();
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
            v481 = swift_allocError();
            v483 = v482;
            v484 = v851.i64[0];
            *v482 = sub_23AA0C074();
            v483[1] = v485;
            swift_storeEnumTagMultiPayload();
            v858 = v481;
            swift_willThrow();

            v486 = v846;
            v487 = v845;
LABEL_202:
            v488 = v844;
LABEL_203:

            sub_23A8D50D0(v841.i64[0], &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v840, &unk_27DFAF020, &unk_23AA12300);
            sub_23A92FED0(v484, type metadata accessor for CapturedRoom.Surface);
            v498 = *v487;
            (*v487)(v819, v486);
            sub_23A8D50D0(v832, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v833, &unk_27DFAF020, &unk_23AA12300);
            v498(v848, v486);

            v498(v827, v486);
            goto LABEL_204;
          }

          v353 = (*(v349 + 56) + 16 * v351);
          v354 = *v353;
          v355 = v353[1];

          *&v868 = v354;
          *(&v868 + 1) = v355;

          MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
          v356 = v850[3];
          v357 = v850[4];

          MEMORY[0x23EE8FCA0](v356, v357);

          v358 = v839;
          sub_23AA0BF44();

          v359 = v858;
          v360 = sub_23A92D2EC(v358);
          if (v359)
          {
            v858 = v359;
            v487 = v845;
            v486 = v846;
            (*v845)(v358, v846);

            v484 = v851.i64[0];
            v488 = v844;
            goto LABEL_203;
          }

          v361 = v360;
          v797.i64[0] = v329;
          v863.n128_u64[0] = sub_23AA0BF04();
          v363 = v362;
          v364 = [v361 rootNode];
          v862.i64[0] = v354;
          v365 = sub_23A92EC38(v354, v355, v863.n128_i64[0], v363, v364, v361);
          v858 = 0;
          v861.n128_u64[0] = v355;
          v366 = v365;

          v367 = sub_23AA0D104();
          sub_23AA0C074();
          v863.n128_u64[0] = v361;
          v368 = objc_allocWithZone(MEMORY[0x277D77878]);
          v369 = sub_23AA0D104();

          v370 = [v368 initWithString_];

          [v366 setCustomMetadata:v367 value:v370];
          v371 = sub_23AA0D104();
          LOBYTE(v868) = *v851.i64[0];
          *&v868 = sub_23AA0D1A4();
          *(&v868 + 1) = v372;
          sub_23AA0D6A4();

          v373 = v863.n128_u64[0];
          v374 = objc_allocWithZone(MEMORY[0x277D77878]);
          v375 = sub_23AA0D104();

          v376 = v366;
          v377 = [v374 initWithString_];

          [v366 setCustomMetadata:v371 value:v377];
          v378 = [v373 rootNode];
          LOBYTE(v375) = sub_23AA0D634();

          v324 = v762;
          v798.i64[0] = v376;
          if ((v375 & 1) != 0 || (v379 = [v376 path], v380 = objc_msgSend(v379, sel_stringValue), v379, !v380))
          {
            v381 = 0;
            v383 = 0xE000000000000000;
          }

          else
          {
            v381 = sub_23AA0D134();
            v383 = v382;
          }

          v384 = v861.n128_u64[0];
          *&v868 = v381;
          *(&v868 + 1) = v383;

          MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

          MEMORY[0x23EE8FCA0](v862.i64[0], v384);

          v385 = v868;
          v386 = objc_allocWithZone(MEMORY[0x277D77888]);
          v387 = sub_23AA0D104();
          v388 = [v386 initWithString_];

          if (!v388)
          {

            type metadata accessor for USDModel.Error();
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
            v489 = swift_allocError();
            *v490 = v385;
            swift_storeEnumTagMultiPayload();
            v858 = v489;
            swift_willThrow();
            v388 = v798.i64[0];
LABEL_201:

            v487 = v845;
            v486 = v846;
            (*v845)(v839, v846);

            v484 = v851.i64[0];
            goto LABEL_202;
          }

          v389 = [v373 newNodeAtPath:v388 type:v812];
          if (!v389)
          {

            type metadata accessor for USDModel.Error();
            sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
            v496 = swift_allocError();
            *v497 = v385;
            swift_storeEnumTagMultiPayload();
            v858 = v496;
            swift_willThrow();

            goto LABEL_201;
          }

          v390 = v389;

          v391 = sub_23AA0D104();
          v392 = [v390 newPropertyWithName:v391 type:v810 role:0];

          if (!v392)
          {
            goto LABEL_358;
          }

          v393 = swift_allocObject();
          *(v393 + 16) = v808;
          v394 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v395 = sub_23AA0D104();
          v396 = [v394 initWithString_];

          *(v393 + 32) = v396;
          v397 = sub_23AA0D2E4();

          v795 = v392;
          [v392 setTokenArray_];

          v399 = MEMORY[0x277D84F90];
          if (*(MEMORY[0x277D84F90] + 16))
          {
            MEMORY[0x28223BE20](v398);
            v400 = v821;
            *(&v760 - 5) = v822;
            *(&v760 - 4) = v400;
            v401 = v814;
            *(&v760 - 3) = v815;
            *(&v760 - 2) = v401;
            *(&v760 - 2) = v851.i64[0];
            v402 = v858;
            v403 = sub_23A97E54C(sub_23A9305C8, (&v760 - 12), v399);
            v858 = v402;
          }

          else
          {

            v403 = v399;
          }

          v404 = *(v864.i64[0] + 138);
          v405 = v813;
          v860.i64[0] = v390;
          if (v404)
          {
            v406 = 0;
            v407 = v851.i64[0];
          }

          else
          {
            v407 = v851.i64[0];
            v406 = *v851.i64[0] != 5;
          }

          v408 = v853;
          sub_23A8D5194(v407 + *(v853 + 52), v813, &qword_27DFAEB38, &unk_23AA11B60);
          if (v788(v405, 1, v856) == 1)
          {
            v822 = vaddq_f32(v811, 0);

            sub_23A8D50D0(v405, &qword_27DFAEB38, &unk_23AA11B60);
            v409 = *(v407 + *(v408 + 60));
            if (*(v409 + 16))
            {
              v410 = v406;
            }

            else
            {
              v410 = 1;
            }

            if (v410)
            {
              sub_23A9BAE80(v822.n128_f64[0]);
              v412 = v411;
              type metadata accessor for RoomCaptureGeometryManager();
              swift_initStaticObject();
              v413 = MEMORY[0x277D84F90];
              v414 = sub_23A8F0290(v412, MEMORY[0x277D84F90], v334, 1, v840, v841.i64[0], v822, v344, v345, 0.0);
              v330 = v413;
            }

            else
            {
              type metadata accessor for RoomCaptureGeometryManager();
              swift_initStaticObject();
              v330 = MEMORY[0x277D84F90];
              v414 = sub_23A8F0290(v409, MEMORY[0x277D84F90], v334, 1, v840, v841.i64[0], v822, v344, v345, 0.0);
            }
          }

          else
          {
            v415 = v811.i32[1];
            v416 = v796;
            sub_23A92FF30(v405, v796, type metadata accessor for CapturedRoom.Surface.Curve);
            v417.n128_u32[0] = v415;
            v418.n128_f32[0] = v344;
            v419.n128_f32[0] = v345;
            v414 = sub_23A8FA5A0(v416, v403, v417, v418, v419, v840, v841.i64[0], 0x3C8EFA35uLL, 1);

            sub_23A92FED0(v416, type metadata accessor for CapturedRoom.Surface.Curve);
            v330 = MEMORY[0x277D84F90];
          }

          v321 = v844;
          v420 = v797.i64[0];
          v421 = v862.i64[0];

          sub_23A92F158(v860.i64[0], v414, v803, v802, v801, v800);

          v422 = *v851.i64[0];
          v423 = 0.00781250185;
          if (v422 != 5 && v422 != 2)
          {
            v423 = 0.0;
          }

          if (v422 == 5 || v422 == 2)
          {
            v425 = 1.0;
          }

          else
          {
            v425 = 0.0;
          }

          v426 = v860.i64[0];
          v427 = v421;
          v298 = v861.n128_u64[0];
          v428 = v863.n128_u64[0];
          sub_23A92F638(v860.i64[0], v427, v861.n128_i64[0], v863.n128_u64[0], v423, v425);

          [v428 save];

          sub_23A8D50D0(v841.i64[0], &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v840, &unk_27DFAF020, &unk_23AA12300);
          sub_23A916D14();
          if (v429)
          {
            v331 = sub_23AA0D104();
          }

          else
          {
            v331 = 0;
          }

          v269 = v853;
          v329 = v420 + 1;
          [v321 addReferenceWithPath:v331 nodePath:0];

          v318 = v846;
          (*v845)(v839, v846);
          sub_23A92FED0(v851.i64[0], type metadata accessor for CapturedRoom.Surface);
          if (v329 == v763)
          {
            goto LABEL_146;
          }
        }

        __break(1u);
LABEL_348:

        type metadata accessor for USDModel.Error();
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
        swift_allocError();
        *v756 = v269;
        v756[1] = v330;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_350:

        v758 = *v845;
        v759 = v846;
        (*v845)(v772, v846);
        v758(v780, v759);
        v758(v827, v759);
        return;
      }

LABEL_146:
      v822.n128_u64[0] = *(v828 + 16);
      if (v822.n128_u64[0])
      {
        v430 = 0;
        v247 = v842;
        while (v430 < *(v828 + 16))
        {
          sub_23A930548(v828 + ((v859[80] + 32) & ~v859[80]) + *(v859 + 9) * v430, v247, type metadata accessor for CapturedRoom.Surface);
          if (!v324)
          {
            goto LABEL_356;
          }

          v877 = __invert_f4(*(v247 + 32));
          v863 = v877.columns[0];
          v862 = v877.columns[1];
          v861 = v877.columns[2];
          v860 = v877.columns[3];

          v433 = v858;
          sub_23A916A74(v432, v863, v862, v861, v860);
          v435 = v434;

          v436 = *(v247 + 24);
          if (v436 <= 0.0)
          {
            v437 = 0.0;
            if ((*v247 - 2) > 3u)
            {
              v438 = 0.08;
            }

            else
            {
              v438 = flt_23AA11F40[(*v247 - 2)];
            }
          }

          else
          {
            v437 = v436 * 0.5;
            v438 = v436 * 0.5;
          }

          v439 = type metadata accessor for ScanItemStrut();
          v440 = *(*(v439 - 8) + 56);
          v441 = v823;
          v440(v823, 1, 1, v439);
          v442 = v824;
          v440(v824, 1, 1, v439);
          v298 = v835;
          sub_23A922980(v842, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v435, 1, v441, v442, v835, v437, v438, 0.0);
          v858 = v433;
          if (v433)
          {

            sub_23A8D50D0(v442, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v441, &unk_27DFAF020, &unk_23AA12300);
            v469 = &v863;
LABEL_193:
            sub_23A92FED0(v469[-16].n128_i64[0], type metadata accessor for CapturedRoom.Surface);
            v479 = *v845;
            v480 = v846;
            (*v845)(v819, v846);
            sub_23A8D50D0(v832, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v833, &unk_27DFAF020, &unk_23AA12300);
            v479(v848, v480);

            v479(v827, v480);
LABEL_204:
            v478 = v847;
            v499 = type metadata accessor for CapturedRoom.Surface;
LABEL_215:
            sub_23A92FED0(v478, v499);
            return;
          }

          sub_23A8D50D0(v442, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v441, &unk_27DFAF020, &unk_23AA12300);
          sub_23A916D14();
          v321 = v844;
          if (v443)
          {
            v431 = sub_23AA0D104();
            v298 = v835;
          }

          else
          {
            v431 = 0;
          }

          v247 = v842;
          ++v430;
          [v321 addReferenceWithPath:v431 nodePath:0];

          v318 = v846;
          (*v845)(v298, v846);
          sub_23A92FED0(v247, type metadata accessor for CapturedRoom.Surface);
          if (v822.n128_u64[0] == v430)
          {
            goto LABEL_160;
          }
        }

        __break(1u);
LABEL_299:

        v653 = MEMORY[0x277D84F90];
        goto LABEL_300;
      }
    }

LABEL_160:
    v444 = v864.i64[0];
    swift_beginAccess();
    if (*(v444 + 137) == 1)
    {
      v445 = v838;
      v446 = *(v838 + 16);
      if (v446)
      {
        v298 = 0;
        while (v298 < *(v445 + 16))
        {
          v449 = v852.i64[0];
          sub_23A930548(v445 + ((v859[80] + 32) & ~v859[80]) + *(v859 + 9) * v298, v852.i64[0], type metadata accessor for CapturedRoom.Surface);
          v878 = __invert_f4(*(v449 + 32));
          v863 = v878.columns[0];
          v862 = v878.columns[1];
          v861 = v878.columns[2];
          v860 = v878.columns[3];
          if (!v324)
          {
            goto LABEL_355;
          }

          v450 = *(v324 + 16);
          if (v450)
          {
            *&v868 = MEMORY[0x277D84F90];

            sub_23A92B598(v450);
            v451 = v868;
            v452 = 32;
            do
            {
              v864 = *(v324 + v452);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23A975EA4(0, v451[2] + 1, 1);
                v451 = v868;
              }

              v454 = v451[2];
              v453 = v451[3];
              if (v454 >= v453 >> 1)
              {
                sub_23A975EA4((v453 > 1), v454 + 1, 1);
                v451 = v868;
              }

              v455 = vaddq_f32(v860, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v863, v864.f32[0]), v862, *v864.f32, 1), v861, v864, 2)).u64[0];
              v451[2] = v454 + 1;
              v451[v454 + 4] = v455;
              v452 += 16;
              --v450;
            }

            while (v450);
          }

          else
          {
            v451 = MEMORY[0x277D84F90];
          }

          v456 = *(v852.i64[0] + 24);
          if (v456 <= 0.0)
          {
            v457 = 0.0;
            if ((*v852.i64[0] - 2) > 3u)
            {
              v458 = 0.08;
            }

            else
            {
              v458 = flt_23AA11F40[(*v852.i64[0] - 2)];
            }
          }

          else
          {
            v457 = v456 * 0.5;
            v458 = v456 * 0.5;
          }

          v459 = type metadata accessor for ScanItemStrut();
          v460 = *(*(v459 - 8) + 56);
          v461 = v830;
          v460(v830, 1, 1, v459);
          v462 = v831;
          v460(v831, 1, 1, v459);
          v448 = v843;
          v463 = v858;
          sub_23A922980(v852.i64[0], MEMORY[0x277D84F90], MEMORY[0x277D84F90], v451, 1, v461, v462, v843, v457, v458, 0.0);
          v858 = v463;
          if (v463)
          {

            sub_23A8D50D0(v462, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v461, &unk_27DFAF020, &unk_23AA12300);
            v469 = &v867;
            goto LABEL_193;
          }

          sub_23A8D50D0(v462, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v461, &unk_27DFAF020, &unk_23AA12300);
          sub_23A916D14();
          if (v464)
          {
            v447 = sub_23AA0D104();
            v448 = v843;
          }

          else
          {
            v447 = 0;
          }

          v321 = v844;
          ++v298;
          [v844 addReferenceWithPath:v447 nodePath:0];

          v318 = v846;
          (*v845)(v448, v846);
          sub_23A92FED0(v852.i64[0], type metadata accessor for CapturedRoom.Surface);
          v445 = v838;
          if (v298 == v446)
          {
            goto LABEL_185;
          }
        }

        __break(1u);
LABEL_291:

LABEL_292:

        type metadata accessor for USDModel.Error();
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
        v665 = swift_allocError();
        v667 = v666;
        v473 = v787;
        *v666 = sub_23AA0C074();
        v667[1] = v668;
        swift_storeEnumTagMultiPayload();
        v858 = v665;
        swift_willThrow();

        sub_23A8D50D0(v785, &unk_27DFAF020, &unk_23AA12300);
        sub_23A8D50D0(v786, &unk_27DFAF020, &unk_23AA12300);
        v475 = *v845;
        v476 = &v804;
LABEL_191:
        v477 = v846;
        v475(*(v476 - 32), v846);
        v475(v827, v477);
        v478 = v473;
        goto LABEL_214;
      }

LABEL_185:

      v465 = v847;
    }

    else
    {

      v465 = v847;
    }

    v466 = *v845;
    (*v845)(v819, v318);
    sub_23A8D50D0(v832, &unk_27DFAF020, &unk_23AA12300);
    sub_23A8D50D0(v833, &unk_27DFAF020, &unk_23AA12300);
    v466(v848, v318);
    sub_23A92FED0(v465, type metadata accessor for CapturedRoom.Surface);
  }

  v247 = &off_278B65000;
  v491 = [v837 rootNode];
  v492 = v761;
  v493 = sub_23AA0D634();

  if (v493)
  {
    v494 = 0;
    v495 = 0xE000000000000000;
    v269 = v853;
  }

  else
  {
    v513 = [v492 path];
    v514 = [v513 stringValue];

    v269 = v853;
    if (!v514)
    {
      goto LABEL_219;
    }

    v494 = sub_23AA0D134();
    v495 = v515;
  }

LABEL_220:
  v869 = v494;
  v870 = v495;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x72675F726F6F6C46, 0xE900000000000070);

  v517 = v869;
  v516 = v870;
  v518 = objc_allocWithZone(MEMORY[0x277D77888]);
  v519 = sub_23AA0D104();
  v520 = [v518 initWithString_];

  if (!v520)
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v626 = v517;
    v626[1] = v516;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v627 = v805;
LABEL_274:

    (*v845)(v827, v846);
    return;
  }

  v521 = [v837 newNodeAtPath:v520 type:v794];
  if (!v521)
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v628 = v517;
    v628[1] = v516;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v627 = v520;
    goto LABEL_274;
  }

  v298 = v521;

  v522 = sub_23AA0D104();
  v523 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v524 = sub_23AA0D104();
  v525 = [v523 initWithString_];

  v526 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  [v298 setMetadataWithKey:v522 value:v526];

  sub_23AA0BF44();
  v527 = v820[3];
  v528 = v820[4];
  __swift_project_boxed_opaque_existential_1(v820, v527);
  v529 = (*(v528 + 64))(v527, v528);
  v530 = v529;
  v843 = *(v529 + 16);
  if (v843)
  {
    v531 = 0;
    v844 = (v529 + ((v859[80] + 32) & ~v859[80]));
    v841 = vdupq_n_s32(0x3EA3D70Au);
    v848 = xmmword_23AA11AF0;
    v532 = v787;
    v847 = v298;
    v842 = v529;
    while (1)
    {
      if (v531 >= *(v530 + 16))
      {
LABEL_353:
        __break(1u);
        goto LABEL_354;
      }

      sub_23A930548(v844 + *(v859 + 9) * v531, v532, type metadata accessor for CapturedRoom.Surface);
      v534 = *(v532 + 16);
      v861 = v534;
      if (v534.n128_f32[2] <= 0.0)
      {
        v535 = 0.0;
        if ((*v532 - 2) > 3u)
        {
          v536 = 0.08;
        }

        else
        {
          v536 = flt_23AA11F40[(*v532 - 2)];
        }
      }

      else
      {
        v535 = v534.n128_f32[2] * 0.5;
        v536 = v534.n128_f32[2] * 0.5;
      }

      v537 = type metadata accessor for ScanItemStrut();
      v538 = *(*(v537 - 8) + 56);
      v538(v786, 1, 1, v537);
      v538(v785, 1, 1, v537);
      v539 = v269[11];
      v540 = v850[2];
      if (!*(v540 + 16))
      {
        goto LABEL_292;
      }

      v541 = v850[2];

      v542 = sub_23A9EDD28(&v787[v539]);
      if ((v543 & 1) == 0)
      {
        goto LABEL_291;
      }

      v860.i64[0] = v539;
      v544 = (*(v540 + 56) + 16 * v542);
      v546 = *v544;
      v545 = v544[1];

      *&v868 = v546;
      *(&v868 + 1) = v545;

      MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
      v548 = v850[3];
      v547 = v850[4];

      MEMORY[0x23EE8FCA0](v548, v547);

      v549 = v782;
      sub_23AA0BF44();
      v550 = v549;

      v551 = v858;
      v552 = sub_23A92D2EC(v549);
      if (v551)
      {
        v858 = v551;

        v669 = *v845;
        v670 = v550;
        goto LABEL_297;
      }

      v553 = v552;
      v554 = sub_23AA0BF04();
      v556 = v555;
      v557 = [v553 *(v247 + 3744)];
      v863.n128_u64[0] = v546;
      v864.i64[0] = v545;
      v558 = sub_23A92EC38(v546, v545, v554, v556, v557, v553);
      v858 = 0;
      v559 = v558;
      v857 = v531;

      v560 = sub_23AA0D104();
      v862.i64[0] = v553;
      v561 = v787;
      sub_23AA0C074();
      v562 = objc_allocWithZone(MEMORY[0x277D77878]);
      v563 = sub_23AA0D104();

      v564 = [v562 initWithString_];

      [(float32x4_t *)v559 setCustomMetadata:v560 value:v564];
      v565 = sub_23AA0D104();
      v566 = *v561;
      v567 = v862.i64[0];
      LOBYTE(v868) = v566;
      *&v868 = sub_23AA0D1A4();
      *(&v868 + 1) = v568;
      sub_23A92F104();
      sub_23AA0D6A4();

      v569 = objc_allocWithZone(MEMORY[0x277D77878]);
      v570 = sub_23AA0D104();

      v571 = [v569 initWithString_];

      [(float32x4_t *)v559 setCustomMetadata:v565 value:v571];
      v572 = [v567 rootNode];
      LOBYTE(v570) = sub_23AA0D634();

      if (v570)
      {
        v573 = 0;
        v574 = 0xE000000000000000;
        v575 = v787;
        v576 = v864.i64[0];
        v577 = v863.n128_u64[0];
      }

      else
      {
        v578 = [(float32x4_t *)v559 path];
        v579 = [v578 stringValue];

        v576 = v864.i64[0];
        v577 = v863.n128_u64[0];
        if (v579)
        {
          v573 = sub_23AA0D134();
          v574 = v580;
        }

        else
        {
          v573 = 0;
          v574 = 0xE000000000000000;
        }

        v575 = v787;
      }

      *&v868 = v573;
      *(&v868 + 1) = v574;

      MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

      MEMORY[0x23EE8FCA0](v577, v576);

      v581 = v868;
      v582 = objc_allocWithZone(MEMORY[0x277D77888]);
      v583 = sub_23AA0D104();
      v584 = [v582 initWithString_];

      if (!v584)
      {

        type metadata accessor for USDModel.Error();
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
        v671 = swift_allocError();
        *v672 = v581;
        swift_storeEnumTagMultiPayload();
        v858 = v671;
        swift_willThrow();
        v673 = v847;
        goto LABEL_296;
      }

      v585 = [v567 newNodeAtPath:v584 type:v812];
      if (!v585)
      {
        break;
      }

      v586 = v585;

      v587 = sub_23AA0D104();
      v588 = [v586 newPropertyWithName:v587 type:v810 role:0];

      if (!v588)
      {
        goto LABEL_360;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v589 = swift_allocObject();
      *(v589 + 16) = v808;
      v590 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v591 = sub_23AA0D104();
      v592 = [v590 initWithString_];

      *(v589 + 32) = v592;
      sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
      v593 = sub_23AA0D2E4();

      [v588 setTokenArray_];

      v879.columns[1] = *(v575 + 3);
      v879.columns[2] = *(v575 + 4);
      v879.columns[3] = *(v575 + 5);
      v854 = *(v575 + 2);
      v879.columns[0] = v854;
      v852 = v879.columns[1];
      v851 = v879.columns[2];
      v849 = v879.columns[3];
      __invert_f4(v879);
      v595 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
        *&v596 = MEMORY[0x28223BE20](v594);
        *(&v760 - 5) = v596;
        *(&v760 - 4) = v597;
        *(&v760 - 3) = v598;
        *(&v760 - 2) = v599;
        *(&v760 - 2) = v575;
        v600 = v858;
        v601 = sub_23A97E54C(sub_23A9305C8, (&v760 - 12), v595);
        v858 = v600;
      }

      else
      {

        v601 = v595;
      }

      v602 = v773;
      v603 = v857;
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v857 = v559;
      v604 = off_27DFB17B0;
      swift_beginAccess();
      v605 = v604[138];
      v860.i64[0] = v588;
      v606 = (v605 & 1) == 0 && *v575 != 5;
      v607 = v853;
      sub_23A8D5194(&v575[*(v853 + 52)], v602, &qword_27DFAEB38, &unk_23AA11B60);
      if ((*v855)(v602, 1, v856) == 1)
      {
        v861 = vaddq_f32(v861, v841);

        sub_23A8D50D0(v602, &qword_27DFAEB38, &unk_23AA11B60);
        v608 = *&v575[*(v607 + 60)];
        if (*(v608 + 16))
        {
          v609 = v606;
        }

        else
        {
          v609 = 1;
        }

        if (v609)
        {
          v610 = sub_23A8F89D0(MEMORY[0x277D84F90], v786, v785, v861, v535, v536);
        }

        else
        {
          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          v610 = sub_23A8F0290(v608, MEMORY[0x277D84F90], 0, 0, v786, v785, v861, v535, v536, 0.16);
        }

        v616 = v610;
      }

      else
      {
        v611 = v861.n128_u32[1];
        v612 = v767;
        sub_23A92FF30(v602, v767, type metadata accessor for CapturedRoom.Surface.Curve);
        v613.n128_u32[0] = v611;
        v614.n128_f32[0] = v535;
        v615.n128_f32[0] = v536;
        v616 = sub_23A8FA5A0(v612, v601, v613, v614, v615, v786, v785, 0x3C8EFA35uLL, 1);

        sub_23A92FED0(v612, type metadata accessor for CapturedRoom.Surface.Curve);
      }

      v617 = v846;
      v618 = v862.i64[0];
      v619 = v857;
      v530 = v842;

      sub_23A92F158(v586, v616, v854, v852, v851, v849);

      v620 = *v575;
      v621 = *&v848;
      v622 = v782;
      if (v620 != 5)
      {
        v621 = *&v848;
        if (v620 != 2)
        {
          v621 = 0.0;
        }
      }

      if (v620 == 5 || v620 == 2)
      {
        v624 = 1.0;
      }

      else
      {
        v624 = 0.0;
      }

      sub_23A92F638(v586, v863.n128_i64[0], v864.i64[0], v618, v621, v624);

      [v618 save];

      sub_23A8D50D0(v785, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v786, &unk_27DFAF020, &unk_23AA12300);
      (*v764)(v781, v622, v617);
      sub_23A916D14();
      if (v625)
      {
        v533 = sub_23AA0D104();
      }

      else
      {
        v533 = 0;
      }

      v247 = &off_278B65000;
      v269 = v853;
      v298 = v847;
      v531 = v603 + 1;
      [(float32x4_t *)v847 addReferenceWithPath:v533 nodePath:0];

      (*v845)(v781, v617);
      v532 = v787;
      sub_23A92FED0(v787, type metadata accessor for CapturedRoom.Surface);
      if (v843 == v531)
      {
        goto LABEL_275;
      }
    }

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    v674 = swift_allocError();
    *v675 = v581;
    swift_storeEnumTagMultiPayload();
    v858 = v674;
    swift_willThrow();

    v673 = v559;
    v559 = v584;
LABEL_296:

    v669 = *v845;
    v670 = v782;
LABEL_297:
    v676 = v846;
    v669(v670, v846);
    sub_23A8D50D0(v785, &unk_27DFAF020, &unk_23AA12300);
    sub_23A8D50D0(v786, &unk_27DFAF020, &unk_23AA12300);
    v669(v780, v676);
    v669(v827, v676);
    v512 = &v810;
    goto LABEL_213;
  }

LABEL_275:

  v629 = [v837 *(v247 + 3744)];
  v630 = v761;
  v631 = sub_23AA0D634();

  if ((v631 & 1) != 0 || (v632 = [v630 path], v633 = objc_msgSend(v632, sel_stringValue), v632, !v633))
  {
    v634 = 0;
    v636 = 0xE000000000000000;
  }

  else
  {
    v634 = sub_23AA0D134();
    v636 = v635;
  }

  *&v868 = v634;
  *(&v868 + 1) = v636;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x675F7463656A624FLL, 0xEA00000000007072);

  v637 = v868;
  v638 = objc_allocWithZone(MEMORY[0x277D77888]);
  v639 = sub_23AA0D104();
  v640 = [v638 initWithString_];

  if (!v640)
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v660 = v637;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v661 = v805;
LABEL_289:

    v663 = *v845;
    v664 = v846;
    (*v845)(v780, v846);
    v663(v827, v664);
    return;
  }

  v641 = [v837 newNodeAtPath:v640 type:v794];
  if (!v641)
  {
    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v662 = v637;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v661 = v298;
    v298 = v640;
    goto LABEL_289;
  }

  v642 = v641;

  v643 = sub_23AA0D104();
  v644 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v645 = sub_23AA0D104();
  v646 = [v644 initWithString_];

  v647 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  v854.i64[0] = v642;
  [v642 setMetadataWithKey:v643 value:v647];

  v648 = v820[3];
  v649 = v820[4];
  __swift_project_boxed_opaque_existential_1(v820, v648);
  v650 = (*(v649 + 56))(v648, v649);
  v651 = *(v650 + 16);
  if (!v651)
  {
    goto LABEL_299;
  }

  v652 = v298;
  *&v868 = MEMORY[0x277D84F90];
  sub_23A97609C(0, v651, 0);
  v653 = v868;
  v654 = v650 + ((*(v784 + 80) + 32) & ~*(v784 + 80));
  v655 = *(v784 + 72);
  do
  {
    v656 = v776;
    sub_23A930548(v654, v776, type metadata accessor for CapturedRoom.Object);
    v657 = *v656;
    sub_23A92FED0(v656, type metadata accessor for CapturedRoom.Object);
    *&v868 = v653;
    v659 = *(v653 + 16);
    v658 = *(v653 + 24);
    if (v659 >= v658 >> 1)
    {
      sub_23A97609C((v658 > 1), v659 + 1, 1);
      v653 = v868;
    }

    *(v653 + 16) = v659 + 1;
    *(v653 + v659 + 32) = v657;
    v654 += v655;
    --v651;
  }

  while (v651);

  v247 = 0x1FB471000;
  v298 = v652;
LABEL_300:
  v677 = sub_23A9F506C(v653);

  v678 = 0;
  v679 = v677 + 56;
  v680 = 1 << *(v677 + 32);
  v681 = -1;
  if (v680 < 64)
  {
    v681 = ~(-1 << v680);
  }

  v682 = v681 & *(v677 + 56);
  v683 = (v680 + 63) >> 6;
  v862.i64[0] = v765 + 48;
  v857 = (v765 + 32);
  v861.n128_u64[0] = v784 + 56;
  v856 = (v765 + 8);
  v684 = v846;
  v685 = v820;
  v847 = v298;
  v853 = v677;
  v849.i64[0] = v677 + 56;
  *&v848 = v683;
  while (1)
  {
    do
    {
      if (!v682)
      {
        v686 = v845;
        while (1)
        {
          v687 = v678 + 1;
          if (__OFADD__(v678, 1))
          {
            goto LABEL_352;
          }

          if (v687 >= v683)
          {

            v753 = *v686;
            v753(v780, v684);
            v753(v827, v684);

            return;
          }

          v682 = *(v679 + 8 * v687);
          ++v678;
          if (v682)
          {
            v678 = v687;
            break;
          }
        }
      }

      v688 = __clz(__rbit64(v682));
      v682 &= v682 - 1;
      v689 = *(*(v677 + 48) + (v688 | (v678 << 6)));
    }

    while (v689 == 15);
    v851.i64[0] = v682;
    v852.i64[0] = v678;
    v690 = v685[3];
    v691 = v685[4];
    __swift_project_boxed_opaque_existential_1(v685, v690);
    v692 = (*(v691 + 56))(v690, v691);
    v693 = *(v692 + 16);
    if (v693)
    {
      v694 = 0;
      v864.i64[0] = MEMORY[0x277D84F90];
      v695 = v766;
      while (v694 < *(v692 + 16))
      {
        v696 = (*(v784 + 80) + 32) & ~*(v784 + 80);
        v697 = *(v784 + 72);
        v698 = v779;
        sub_23A930548(v692 + v696 + v697 * v694, v779, type metadata accessor for CapturedRoom.Object);
        if (*v698 == v689)
        {
          sub_23A92FF30(v698, v695, type metadata accessor for CapturedRoom.Object);
          v699 = v864.i64[0];
          v700 = swift_isUniquelyReferenced_nonNull_native();
          v701 = v699;
          *&v868 = v699;
          if ((v700 & 1) == 0)
          {
            sub_23A9760CC(0, *(v699 + 16) + 1, 1);
            v695 = v766;
            v701 = v868;
          }

          v703 = *(v701 + 16);
          v702 = *(v701 + 24);
          if (v703 >= v702 >> 1)
          {
            sub_23A9760CC(v702 > 1, v703 + 1, 1);
            v695 = v766;
            v701 = v868;
          }

          *(v701 + 16) = v703 + 1;
          v864.i64[0] = v701;
          sub_23A92FF30(v695, v701 + v696 + v703 * v697, type metadata accessor for CapturedRoom.Object);
        }

        else
        {
          sub_23A92FED0(v698, type metadata accessor for CapturedRoom.Object);
        }

        ++v694;
        v247 = 0x1FB471000;
        if (v693 == v694)
        {
          goto LABEL_322;
        }
      }

      __break(1u);
LABEL_352:
      __break(1u);
      goto LABEL_353;
    }

    v864.i64[0] = MEMORY[0x277D84F90];
LABEL_322:

    v860.i64[0] = *(v864.i64[0] + 16);
    if (v860.i64[0])
    {
      break;
    }

    v684 = v846;
LABEL_344:
    v685 = v820;
    v298 = v847;
    v677 = v853;
    v679 = v849.i64[0];
    v678 = v852.i64[0];
    v683 = v848;
    v682 = v851.i64[0];
  }

  LOBYTE(v868) = v689;
  *&v868 = sub_23AA0D1A4();
  *(&v868 + 1) = v704;
  sub_23A92F104();
  v705 = sub_23AA0D6A4();
  v707 = v706;

  *&v868 = v705;
  *(&v868 + 1) = v707;

  MEMORY[0x23EE8FCA0](1886545759, 0xE400000000000000);
  v708 = v868;
  sub_23AA0BF44();

  v709 = [v837 (v247 + 969)];
  v710 = v854.i64[0];
  v711 = sub_23AA0D634();

  if ((v711 & 1) != 0 || (v712 = [v710 path], v713 = objc_msgSend(v712, sel_stringValue), v712, !v713))
  {
    v714 = 0;
    v716 = 0xE000000000000000;
  }

  else
  {
    v714 = sub_23AA0D134();
    v716 = v715;
  }

  *&v868 = v714;
  *(&v868 + 1) = v716;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v708, *(&v708 + 1));

  v330 = *(&v868 + 1);
  v269 = v868;
  v717 = objc_allocWithZone(MEMORY[0x277D77888]);
  v718 = sub_23AA0D104();
  v719 = [v717 initWithString_];

  if (!v719)
  {
    goto LABEL_348;
  }

  v720 = [v837 newNodeAtPath:v719 type:v794];
  if (!v720)
  {

    type metadata accessor for USDModel.Error();
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error);
    swift_allocError();
    *v757 = v269;
    v757[1] = v330;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v847 = v854.i64[0];
    v854.i64[0] = v719;
    goto LABEL_350;
  }

  v721 = v720;

  v722 = sub_23AA0D104();
  v723 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v724 = sub_23AA0D104();
  v725 = [v723 initWithString_];

  v726 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  [v721 setMetadataWithKey:v722 value:v726];

  v727 = 0;
  v728 = v864.i64[0];
  v855 = ((*(v784 + 80) + 32) & ~*(v784 + 80));
  v859 = v855 + v864.i64[0];
  while (v727 < *(v728 + 16))
  {
    v732 = v783;
    sub_23A930548(&v859[*(v784 + 72) * v727], v783, type metadata accessor for CapturedRoom.Object);
    v733 = v820;
    v734 = v820[3];
    v735 = v820[4];
    __swift_project_boxed_opaque_existential_1(v820, v734);
    v736 = (*(v735 + 56))(v734, v735);
    MEMORY[0x28223BE20](v736);
    *(&v760 - 2) = v732;
    v737 = v858;
    sub_23A9BD16C(sub_23A93000C, (&v760 - 4), v738);
    v863.n128_u64[0] = v739;
    v740 = v774;
    v741 = v771;
    sub_23A8D5194(v732 + *(v774 + 44), v771, &unk_27DFB0970, &qword_23AA14E00);
    v742 = v775;
    if ((*v862.i64[0])(v741, 1, v775) == 1)
    {
      sub_23A8D50D0(v741, &unk_27DFB0970, &qword_23AA14E00);
      v743 = v778;
      (*v861.n128_u64[0])(v778, 1, 1, v740);
      v730 = v845;
    }

    else
    {
      v744 = v770;
      (*v857)(v770, v741, v742);
      v746 = v733[3];
      v745 = v733[4];
      __swift_project_boxed_opaque_existential_1(v733, v746);
      v747 = (*(v745 + 56))(v746, v745);
      MEMORY[0x28223BE20](v747);
      *(&v760 - 2) = v744;
      sub_23A9BD16C(sub_23A93002C, (&v760 - 4), v748);
      if (*(v749 + 16))
      {
        v743 = v778;
        sub_23A930548(v855 + v749, v778, type metadata accessor for CapturedRoom.Object);
        v750 = 0;
        v730 = v845;
      }

      else
      {
        v750 = 1;
        v730 = v845;
        v743 = v778;
      }

      v751 = v774;

      (*v861.n128_u64[0])(v743, v750, 1, v751);
      (*v856)(v770, v775);
    }

    *&v868 = v769;
    *(&v868 + 1) = v768;
    sub_23A924514(v772, v783, v743, v863.n128_i64[0], &v868, v777);
    v858 = v737;
    if (v737)
    {

      sub_23A8D50D0(v778, &qword_27DFB0990, &qword_23AA12EE0);
      v754 = *v730;
      v755 = v846;
      v754(v772, v846);
      v754(v780, v755);
      v754(v827, v755);
      v499 = type metadata accessor for CapturedRoom.Object;
      v478 = v783;
      goto LABEL_215;
    }

    sub_23A916D14();
    if (v752)
    {
      v729 = sub_23AA0D104();
      v730 = v845;
    }

    else
    {
      v729 = 0;
    }

    v247 = 0x1FB471000;
    ++v727;
    [v721 addReferenceWithPath:v729 nodePath:0];

    v731 = *v730;
    v731(v777, v846);
    sub_23A8D50D0(v778, &qword_27DFB0990, &qword_23AA12EE0);
    sub_23A92FED0(v783, type metadata accessor for CapturedRoom.Object);
    v728 = v864.i64[0];
    if (v860.i64[0] == v727)
    {

      v684 = v846;
      v731(v772, v846);
      goto LABEL_344;
    }
  }

LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
}