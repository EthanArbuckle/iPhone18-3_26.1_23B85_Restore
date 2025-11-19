uint64_t sub_1DD9AFD28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DDA14180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178]);
  v36 = a2;
  v13 = sub_1DDA14AC0();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1DD9B48D0(&qword_1ECD837D8, 255, MEMORY[0x1E69C6178]);
      v23 = sub_1DDA14AF0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1DD9B0750(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1DD9B0010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E8, &qword_1DDA1B3D0);
  result = sub_1DDA15040();
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
      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
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

uint64_t sub_1DD9B0270(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DDA14180();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E0, &qword_1DDA1B3C8);
  result = sub_1DDA15040();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178]);
      result = sub_1DDA14AC0();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1DD9B05D0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DD9B0010(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DD9B09FC();
      goto LABEL_16;
    }

    sub_1DD9B0D90(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  result = sub_1DDA155B0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DDA15440();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DDA154F0();
  __break(1u);
  return result;
}

uint64_t sub_1DD9B0750(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1DDA14180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DD9B0270(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DD9B0B58();
      goto LABEL_12;
    }

    sub_1DD9B0FC8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178]);
  v15 = sub_1DDA14AC0();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1DD9B48D0(&qword_1ECD837D8, 255, MEMORY[0x1E69C6178]);
      v23 = sub_1DDA14AF0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DDA154F0();
  __break(1u);
  return result;
}

void *sub_1DD9B09FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E8, &qword_1DDA1B3D0);
  v2 = *v0;
  v3 = sub_1DDA15030();
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

void *sub_1DD9B0B58()
{
  v1 = v0;
  v2 = sub_1DDA14180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E0, &qword_1DDA1B3C8);
  v7 = *v0;
  v8 = sub_1DDA15030();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1DD9B0D90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E8, &qword_1DDA1B3D0);
  result = sub_1DDA15040();
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
      sub_1DDA15570();

      sub_1DDA14BC0();
      result = sub_1DDA155B0();
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

uint64_t sub_1DD9B0FC8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DDA14180();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E0, &qword_1DDA1B3C8);
  v10 = sub_1DDA15040();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178]);
      result = sub_1DDA14AC0();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

void sub_1DD9B12E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A68, &qword_1DDA16E78);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1DD9B13C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DD92BD10;

  return sub_1DD9B776C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DD9B1494(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD947EA0(a1, v5);
}

uint64_t sub_1DD9B154C(uint64_t a1, uint64_t a2)
{
  v66[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1DDA14180();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  i = v52 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_31;
  }

  v66[0] = a1;
  v13 = *(a1 + 16);

  v54 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v56 = a1;
  v57 = a1 + ((v17 + 32) & ~v17);
  v63 = *(v15 + 56);
  v64 = v16;
  v61 = (a2 + 56);
  v62 = a2;
  v65 = v15;
  v18 = (v15 - 8);
  v53 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v14 + 1;
    v66[1] = v14 + 1;
    v64(i, v57 + v63 * v14, v4);
    v19 = *(a2 + 40);
    v55 = sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178]);
    v20 = sub_1DDA14AC0();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v64(v11, *(v62 + 48) + v22 * v63, v4);
    sub_1DD9B48D0(&qword_1ECD837D8, 255, MEMORY[0x1E69C6178]);
    v26 = sub_1DDA14AF0();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v62;
  v30 = *(v62 + 32);
  v52[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v52[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    MEMORY[0x1EEE9AC00](v28);
    v33 = v52 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v61, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v53 = v33;
    v54 = (v34 - 1);
    v35 = *(v56 + 16);
    v36 = v58;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_1DD9B2010(v53, v52[0], v54, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v56 + 16))
      {
        break;
      }

      v58 = v36;
      v64(v60, v57 + v36 * v63, v4);
      v38 = *(v29 + 40);
      v39 = sub_1DDA14AC0();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v61[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v11, *(v62 + 48) + v22 * v63, v4);
      v41 = sub_1DDA14AF0();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v61[v22 >> 6]) == 0)
          {
            break;
          }

          v64(v11, *(v62 + 48) + v22 * v63, v4);
          v43 = sub_1DDA14AF0();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v60, v4);
        v29 = v62;
LABEL_16:
        v37 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v27(v60, v4);
      v44 = v53[v24];
      v53[v24] = v44 & ~v23;
      v29 = v62;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v54 - 1;
      v37 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v45)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v31;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v62;

      v29 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v61, v49);
  a2 = sub_1DD9B1C14(v51, v52[0], v62, v22, v66);

  MEMORY[0x1E12B8CE0](v51, -1, -1);
LABEL_30:

LABEL_31:
  v46 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1DD9B1C14(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = sub_1DDA14180();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v37 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_1DD9B2010(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178]);
    v27 = sub_1DDA14AC0();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_1DD9B48D0(&qword_1ECD837D8, 255, MEMORY[0x1E69C6178]);
      v34 = sub_1DDA14AF0();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return MEMORY[0x1E69E7CD0];
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DD9B2010(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1DDA14180();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837E0, &qword_1DDA1B3C8);
  result = sub_1DDA15050();
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
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178]);
    result = sub_1DDA14AC0();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
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
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1DD9B233C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1DD9B2384(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1DD9B2478;

  return v6(v2 + 16);
}

uint64_t sub_1DD9B2478()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1DD9B25A8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1DD9B4FD8;

  return v6(v2 + 16);
}

uint64_t sub_1DD9B269C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD9B25A8(a1, v5);
}

uint64_t sub_1DD9B2754(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD9165BC;

  return sub_1DD98B7AC(a1, v6, v7, a3);
}

unint64_t sub_1DD9B2808()
{
  result = qword_1ECD83660;
  if (!qword_1ECD83660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83660);
  }

  return result;
}

uint64_t sub_1DD9B28CC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for Instrumentation() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v2 + 16);
  v16 = *(v2 + v11);
  v17 = *(v2 + v14);
  v18 = *(v2 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v4 + 16) = v19;
  *v19 = v4;
  v19[1] = sub_1DD92BD10;

  return sub_1DD9A3424(a1, a2, v15, v2 + v7, v2 + v10, v16, v2 + v13, v17);
}

uint64_t sub_1DD9B2AFC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83648, &qword_1DDA1B1B8) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD98FE60(a1, v6, v1 + v5);
}

uint64_t sub_1DD9B2BEC(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD92BD10;

  return sub_1DD9A32B8(a1, v1);
}

uint64_t sub_1DD9B2D50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD9B2D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DD92BD10;

  return sub_1DD9B7D54(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD9B2E6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD9B2EF0(uint64_t a1)
{
  v2 = sub_1DDA14180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1DD9B48D0(&qword_1ECD837D0, 255, MEMORY[0x1E69C6178]);
  result = MEMORY[0x1E12B7D10](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1DD9AFD28(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1DD9B30AC(uint64_t a1)
{
  v18 = *(v1 + 24);
  v19 = *(v1 + 16);
  v16 = *(v1 + 40);
  v17 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120) | (*(v1 + 124) << 32);
  v10 = *(v1 + 128);
  v11 = *(v1 + 136);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DD92BD10;

  return sub_1DD9B5C58(a1, v19, v18, v17, v16, v4, v5, v6);
}

unint64_t sub_1DD9B31DC()
{
  result = qword_1ECD836E0;
  if (!qword_1ECD836E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD836E0);
  }

  return result;
}

uint64_t sub_1DD9B3230(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DD9165BC;

  return sub_1DD9B2754(a1, a2, v2 + 16);
}

uint64_t sub_1DD9B32E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD9165BC;

  return sub_1DD98BBB4(a1);
}

uint64_t sub_1DD9B3384(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1DD9B3394(a1, a2);
  }

  return a1;
}

uint64_t sub_1DD9B3394(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DD9B33A8(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1DD9B33B8(a1, a2);
  }

  return a1;
}

uint64_t sub_1DD9B33B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DD9B33CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DD9B3410(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_1DD9B3454@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD989844(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v9);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    result = *v9;
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v10;
  }

  return result;
}

uint64_t sub_1DD9B34B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD947CB0(a1, v5);
}

uint64_t sub_1DD9B356C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9BB8B0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1DD9B3634()
{
  result = qword_1ECD837B0;
  if (!qword_1ECD837B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD837B0);
  }

  return result;
}

uint64_t sub_1DD9B3688(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DDA14180() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DD92BD10;

  return sub_1DD9BA694(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1DD9B37CC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DD92BD10;

  return sub_1DD99DAD0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1DD9B3894(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9B9020(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD9B395C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD9B2384(a1, v5);
}

uint64_t sub_1DD9B3A14(uint64_t a1)
{
  v4 = *(sub_1DDA14180() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DD92BD10;

  return sub_1DD99EE60(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1DD9B3B20(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v15 = *(v2 + 64);
  v12 = *(v2 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DD92BD10;

  return sub_1DD9924B0(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD9B3C20(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1DDA134E0() - 8);
  v28 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v5 = (*(v4 + 64) + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 87) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v11 = (*(v10 + 80) + v9 + 16) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270) - 8);
  v14 = (v12 + *(v13 + 80) + v11) & ~*(v13 + 80);
  v26 = v1[3];
  v27 = v1[2];
  v24 = *(v1 + v5);
  v25 = v1[4];
  v15 = *(v1 + v6);
  v16 = v1 + v8;
  v17 = *(v1 + v8);
  v18 = *(v16 + 1);
  v19 = v1 + v9;
  v21 = *(v1 + v9);
  v20 = *(v19 + 1);
  v22 = swift_task_alloc();
  *(v3 + 16) = v22;
  *v22 = v3;
  v22[1] = sub_1DD92BD10;

  return sub_1DD993834(a1, v27, v26, v25, v1 + v28, v24, v15, v1 + v7);
}

uint64_t sub_1DD9B3E64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD947EA0(a1, v5);
}

uint64_t sub_1DD9B3F1C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1DDA134E0() - 8);
  v5 = ((*(v4 + 80) + 160) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v19 = v1[3];
  v20 = v1[2];
  v18 = v1[4];
  v11 = v1[15];
  v12 = v1[16];
  v14 = v1[17];
  v13 = v1[18];
  v15 = v1[19];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DD92BD10;

  return sub_1DD9995D8(a1, v20, v19, v18, (v1 + 5), v11, v12, v14);
}

uint64_t sub_1DD9B412C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1DD9B4144(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1DD9B4144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

uint64_t sub_1DD9B41AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (result)
  {

    return a4(a3);
  }

  return result;
}

uint64_t sub_1DD9B4200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD99CF0C(a1, v4, v5, v6);
}

uint64_t sub_1DD9B42C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DDA14180() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DD92BD10;

  return sub_1DD9B9A88(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1DD9B4408(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD92BD10;

  return sub_1DD99CBCC(a1, v1);
}

void sub_1DD9B44A0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(sub_1DDA134E0() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = *(v9 + 64);
  v13 = (v12 + v10 + v11) & ~v10;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488) - 8);
  v15 = (v13 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1DD98F464(a1, a2, a3, a4, v4 + v11, v4 + v13, v4 + v15, v16);
}

unint64_t sub_1DD9B45E4()
{
  result = qword_1ECD83828;
  if (!qword_1ECD83828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD83828);
  }

  return result;
}

unint64_t sub_1DD9B4630()
{
  result = qword_1ECD83830;
  if (!qword_1ECD83830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83830);
  }

  return result;
}

unint64_t sub_1DD9B4684()
{
  result = qword_1ECD83840;
  if (!qword_1ECD83840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83840);
  }

  return result;
}

unint64_t sub_1DD9B4734()
{
  result = qword_1ECD83848;
  if (!qword_1ECD83848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83848);
  }

  return result;
}

uint64_t objectdestroy_227Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD9B481C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9994CC(a1, v4, v5, v6);
}

uint64_t sub_1DD9B48D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DD9B4918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD9B4978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_103Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t objectdestroy_223Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DDA134E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DD9B4B9C()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(*(sub_1DDA134E0() - 8) + 80);
  return sub_1DD99CDB8();
}

uint64_t sub_1DD9B4C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_141Tm()
{
  v1 = sub_1DDA14180();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1DD9B4DE0(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD92BD10;

  return sub_1DD9994AC(a1, v1);
}

uint64_t sub_1DD9B4E78(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8) - 8);
  v10 = (*(v9 + 64) + ((*(v9 + 80) + 16) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1DDA134E0() - 8);
  v12 = v4 + ((v10 + *(v11 + 80) + 57) & ~*(v11 + 80));

  return sub_1DD98CDE0(a1, a2, a3, a4);
}

void *sub_1DD9B4FE0()
{
  type metadata accessor for SessionRegistry();
  swift_allocObject();
  result = sub_1DD9B5038(0xD000000000000011, 0x80000001DDA28CC0, 0);
  qword_1ECDA2158 = result;
  return result;
}

void *sub_1DD9B5038(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v80) = a3;
  v82[2] = *MEMORY[0x1E69E9840];
  v7 = *v4;
  v73 = v4;
  v67 = v7;
  v8 = sub_1DDA149E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DDA14A00();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DDA13420();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DDA134E0();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v70 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v66 - v28;
  sub_1DDA13480();
  v82[0] = a1;
  v82[1] = a2;
  v71 = a2;

  MEMORY[0x1E12B7AB0](0x6574696C71732ELL, 0xE700000000000000);
  (*(v16 + 104))(v19, *MEMORY[0x1E6968F70], v15);
  sub_1DD9313D4();
  sub_1DDA134D0();
  (*(v16 + 8))(v19, v15);
  v30 = v20;

  v74 = v21[1];
  v75 = v21 + 1;
  v74(v27, v20);
  v76 = v14;
  v77 = v29;
  v72 = v20;
  if (v80)
  {
    sub_1DDA149F0();
  }

  else
  {
    v31 = v21[2];
    v31(v27, v29, v30);
    sub_1DDA149D0();
    sub_1DDA14A10();
    if (qword_1ECD827C8 != -1)
    {
      swift_once();
    }

    v32 = sub_1DDA14810();
    __swift_project_value_buffer(v32, qword_1ECDA2140);
    v33 = v70;
    v31(v70, v29, v30);
    v34 = sub_1DDA147F0();
    v35 = sub_1DDA14F00();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v82[0] = v37;
      *v36 = 136315138;
      sub_1DD9BFAA8(&qword_1ECD82CE8, MEMORY[0x1E6968FB0]);
      v38 = sub_1DDA15400();
      v40 = v39;
      v74(v33, v30);
      v41 = sub_1DD93FA54(v38, v40, v82);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1DD8F8000, v34, v35, "Database url: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E12B8CE0](v37, -1, -1);
      MEMORY[0x1E12B8CE0](v36, -1, -1);
    }

    else
    {

      v74(v33, v30);
    }

    v14 = v76;
  }

  v42 = sub_1DDA14930();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD839C8, &qword_1DDA1B9C8);
  v43 = swift_allocObject();
  v80 = xmmword_1DDA16320;
  *(v43 + 16) = xmmword_1DDA16320;
  v44 = type metadata accessor for Entry(0);
  v45 = sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  v68 = v44;
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD839D0, &unk_1DDA1B9D0);
  v46 = swift_allocObject();
  *(v46 + 16) = v80;
  v47 = v79;
  *(v46 + 56) = v79;
  *(v46 + 64) = sub_1DD9BFAA8(&qword_1ECD839D8, MEMORY[0x1E697BC88]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v46 + 32));
  (*(v78 + 16))(boxed_opaque_existential_1, v14, v47);
  v70 = v42;
  v49 = sub_1DDA14920();

  v50 = v73;
  v73[2] = v49;
  v51 = sub_1DDA14900();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();

  v50[3] = sub_1DDA14910();
  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v54 = sub_1DDA14810();
  __swift_project_value_buffer(v54, qword_1ECDA2140);
  v55 = sub_1DDA147F0();
  v56 = sub_1DDA14F00();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v79;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v82[0] = v60;
    *v59 = 136315138;
    v81 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD839E0, &qword_1DDA1B9E0);
    v61 = sub_1DDA14B70();
    v63 = sub_1DD93FA54(v61, v62, v82);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_1DD8F8000, v55, v56, "%s database ready!", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1E12B8CE0](v60, -1, -1);
    MEMORY[0x1E12B8CE0](v59, -1, -1);
  }

  (*(v78 + 8))(v76, v58);
  v74(v77, v72);
  v64 = *MEMORY[0x1E69E9840];
  return v50;
}

uint64_t sub_1DD9B5C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 217) = v21;
  *(v8 + 480) = v19;
  *(v8 + 488) = v20;
  *(v8 + 448) = v17;
  *(v8 + 464) = v18;
  *(v8 + 432) = v16;
  *(v8 + 416) = a7;
  *(v8 + 424) = a8;
  *(v8 + 400) = a5;
  *(v8 + 408) = a6;
  *(v8 + 392) = a4;
  v9 = sub_1DDA13680();
  *(v8 + 496) = v9;
  v10 = *(v9 - 8);
  *(v8 + 504) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  sub_1DDA14D40();
  *(v8 + 520) = sub_1DDA14D30();
  v13 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B5D78, v13, v12);
}

uint64_t sub_1DD9B5D78()
{
  v148 = v0;
  v1 = *(v0 + 520);

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA2140);

  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14F00();

  if (os_log_type_enabled(v6, v7))
  {
    v141 = *(v0 + 432);
    v9 = *(v0 + 416);
    v8 = *(v0 + 424);
    v10 = *(v0 + 400);
    v11 = *(v0 + 408);
    v12 = *(v0 + 392);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v147[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_1DD93FA54(v12, v10, v147);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1DD93FA54(v11, v9, v147);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_1DD93FA54(v8, v141, v147);
    _os_log_impl(&dword_1DD8F8000, v6, v7, "Registering localID:%s and remoteID:%s for groupID:%s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v14, -1, -1);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
  }

  v15 = *(v0 + 440);
  v16 = sub_1DD9B7394(*(v0 + 424), *(v0 + 432));
  if (v16)
  {
    v17 = *(v0 + 472);
    v18 = *(v0 + 416);
    v19 = *(v0 + 400);

    v20 = sub_1DDA147F0();
    v21 = sub_1DDA14F00();

    v22 = &qword_1ECD83000;
    if (os_log_type_enabled(v20, v21))
    {
      v135 = *(v0 + 217);
      v133 = *(v0 + 488);
      v123 = *(v0 + 472);
      v127 = *(v0 + 480);
      v116 = *(v0 + 416);
      v119 = *(v0 + 464);
      v109 = *(v0 + 400);
      v113 = *(v0 + 408);
      v106 = *(v0 + 392);
      v23 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v147[0] = v142;
      *v23 = 136316674;
      *(v0 + 360) = v16;
      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
      sub_1DDA149B0();

      v24 = sub_1DD93FA54(*(v0 + 176), *(v0 + 184), v147);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2080;
      *(v0 + 368) = v16;
      swift_getKeyPath();
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DDA149B0();

      v25 = sub_1DD93FA54(*(v0 + 80), *(v0 + 88), v147);

      *(v23 + 14) = v25;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_1DD93FA54(v106, v109, v147);
      *(v23 + 32) = 2080;
      *(v23 + 34) = sub_1DD93FA54(v113, v116, v147);
      *(v23 + 42) = 2080;
      *(v0 + 64) = v119;
      *(v0 + 72) = v123;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
      v26 = sub_1DDA14B70();
      v28 = sub_1DD93FA54(v26, v27, v147);

      *(v23 + 44) = v28;
      *(v23 + 52) = 2080;
      *(v0 + 228) = v127;
      *(v0 + 232) = BYTE4(v127) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FB0, &qword_1DDA18980);
      v29 = sub_1DDA14B70();
      v31 = sub_1DD93FA54(v29, v30, v147);

      *(v23 + 54) = v31;
      *(v23 + 62) = 2080;
      *(v0 + 208) = v133;
      *(v0 + 216) = v135 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83770, &qword_1DDA1B920);
      v32 = sub_1DDA14B70();
      v34 = sub_1DD93FA54(v32, v33, v147);

      *(v23 + 64) = v34;
      v22 = &qword_1ECD83000;
      _os_log_impl(&dword_1DD8F8000, v20, v21, "Updating existing entry groupID:%s userID:%s, localID:%s, remoteID:%s, credentialsID:%s, auditID:%s, timeToLive:%s", v23, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v142, -1, -1);
      MEMORY[0x1E12B8CE0](v23, -1, -1);
    }

    v134 = *(v0 + 512);
    v139 = *(v0 + 504);
    loga = *(v0 + 217);
    v144 = *(v0 + 496);
    v125 = *(v0 + 480);
    v129 = *(v0 + 488);
    v118 = *(v0 + 464);
    v121 = *(v0 + 472);
    v107 = *(v0 + 456);
    v64 = *(v0 + 448);
    v136 = *(v0 + 440);
    v111 = *(v0 + 408);
    v115 = *(v0 + 416);
    v66 = *(v0 + 392);
    v65 = *(v0 + 400);
    v67 = v22[273];
    *(v0 + 304) = v16;
    swift_getKeyPath();
    v68 = swift_task_alloc();
    v68[2] = v16;
    v68[3] = v66;
    v68[4] = v65;
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
    sub_1DDA13770();

    *(v0 + 312) = v16;
    swift_getKeyPath();
    v69 = swift_task_alloc();
    v69[2] = v16;
    v69[3] = v64;
    v69[4] = v107;
    sub_1DDA13770();

    *(v0 + 320) = v16;
    swift_getKeyPath();
    v70 = swift_task_alloc();
    v70[2] = v16;
    v70[3] = v111;
    v70[4] = v115;
    sub_1DDA13770();

    *(v0 + 328) = v16;
    swift_getKeyPath();
    v71 = swift_task_alloc();
    v71[2] = v16;
    v71[3] = v118;
    v71[4] = v121;
    sub_1DDA13770();

    *(v0 + 336) = v16;
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v16;
    *(v72 + 24) = v125;
    *(v72 + 28) = BYTE4(v125) & 1;
    sub_1DDA13770();

    *(v0 + 344) = v16;
    swift_getKeyPath();
    v73 = swift_task_alloc();
    *(v73 + 16) = v16;
    *(v73 + 24) = v129;
    *(v73 + 32) = loga & 1;
    sub_1DDA13770();

    sub_1DDA13670();
    *(v0 + 352) = v16;
    swift_getKeyPath();
    v74 = swift_task_alloc();
    *(v74 + 16) = v16;
    *(v74 + 24) = v134;
    sub_1DDA13770();

    (*(v139 + 8))(v134, v144);
    v75 = *(v136 + 24);
    sub_1DDA148C0();
  }

  else
  {
    v35 = *(v0 + 432);

    v36 = sub_1DDA147F0();
    v37 = sub_1DDA14F00();

    if (os_log_type_enabled(v36, v37))
    {
      v39 = *(v0 + 424);
      v38 = *(v0 + 432);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v147[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1DD93FA54(v39, v38, v147);
      _os_log_impl(&dword_1DD8F8000, v36, v37, "Creating a new entry because no existing one was found for groupID:%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1E12B8CE0](v41, -1, -1);
      MEMORY[0x1E12B8CE0](v40, -1, -1);
    }

    v120 = *(v0 + 512);
    v143 = *(v0 + 504);
    log = *(v0 + 217);
    v124 = *(v0 + 496);
    v128 = *(v0 + 488);
    v117 = *(v0 + 472);
    v110 = *(v0 + 480);
    v114 = *(v0 + 464);
    v102 = *(v0 + 448);
    v103 = *(v0 + 456);
    v138 = *(v0 + 440);
    v98 = *(v0 + 424);
    v99 = *(v0 + 432);
    v104 = *(v0 + 408);
    v105 = *(v0 + 416);
    v100 = *(v0 + 392);
    v101 = *(v0 + 400);
    v42 = type metadata accessor for Entry(0);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    v45 = swift_allocObject();
    *(v45 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83948, &qword_1DDA1B938);
    v46 = sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    *(v0 + 16) = v42;
    *(v0 + 24) = v42;
    *(v0 + 32) = v46;
    *(v0 + 40) = v46;
    *(v45 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v45 + 24));
    sub_1DDA14970();
    *(v45 + 16) = 257;
    v47 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    v48 = MEMORY[0x1E69E7CC0];
    *(v0 + 384) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD9C03AC();
    sub_1DDA148B0();

    v49 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 376) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83908, &qword_1DDA1B928);
    sub_1DD9C02F4(&qword_1ECD83900, &qword_1ECD83910);
    sub_1DDA148B0();

    *(v45 + 18) = 1;
    sub_1DDA13790();
    v50 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 96) = v98;
    *(v0 + 104) = v99;
    sub_1DDA148B0();

    v51 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 112) = v100;
    *(v0 + 120) = v101;
    sub_1DDA148B0();

    v52 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 128) = v102;
    *(v0 + 136) = v103;
    sub_1DDA148B0();

    v53 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 144) = v104;
    *(v0 + 152) = v105;
    sub_1DDA148B0();

    v54 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 160) = v114;
    *(v0 + 168) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
    sub_1DD9C05D4();
    sub_1DDA148B0();

    *(v45 + 16) = 0;
    v55 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 220) = v110;
    *(v0 + 224) = BYTE4(v110) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FB0, &qword_1DDA18980);
    sub_1DD9C04BC();
    sub_1DDA148B0();

    *(v45 + 17) = 0;
    v56 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    v57 = MEMORY[0x1E69E7CC0];
    *(v0 + 296) = MEMORY[0x1E69E7CC0];
    sub_1DDA148B0();

    v58 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 288) = v57;
    sub_1DDA148B0();

    v59 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    *(v0 + 248) = v128;
    *(v0 + 256) = log & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83770, &qword_1DDA1B920);
    sub_1DD9C01C0();
    sub_1DDA148B0();

    *(v45 + 18) = 0;
    sub_1DDA13670();
    v60 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD829A0, MEMORY[0x1E6969530]);
    sub_1DDA148B0();

    v61 = *(v143 + 8);
    v61(v120, v124);
    sub_1DDA13670();
    v62 = *(v45 + 56);
    __swift_project_boxed_opaque_existential_1((v45 + 24), *(v45 + 48));
    swift_getKeyPath();
    sub_1DDA148B0();

    v61(v120, v124);
    v63 = *(v138 + 24);
    sub_1DDA148F0();
    sub_1DDA148C0();
    v79 = *(v0 + 472);
    v80 = *(v0 + 432);
    v81 = *(v0 + 416);

    v82 = sub_1DDA147F0();
    v83 = sub_1DDA14F00();

    if (os_log_type_enabled(v82, v83))
    {
      v140 = *(v0 + 217);
      v137 = *(v0 + 488);
      v126 = *(v0 + 472);
      v130 = *(v0 + 480);
      v122 = *(v0 + 464);
      v146 = v83;
      v86 = *(v0 + 424);
      v85 = *(v0 + 432);
      v108 = *(v0 + 408);
      v112 = *(v0 + 416);
      v87 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v147[0] = v145;
      *v87 = 136316418;
      *(v87 + 4) = sub_1DD93FA54(v86, v85, v147);
      *(v87 + 12) = 2080;
      *(v0 + 280) = v45;
      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DDA149B0();

      v88 = sub_1DD93FA54(*(v0 + 48), *(v0 + 56), v147);

      *(v87 + 14) = v88;
      *(v87 + 22) = 2080;
      *(v87 + 24) = sub_1DD93FA54(v108, v112, v147);
      *(v87 + 32) = 2080;
      *(v0 + 192) = v122;
      *(v0 + 200) = v126;

      v89 = sub_1DDA14B70();
      v91 = sub_1DD93FA54(v89, v90, v147);

      *(v87 + 34) = v91;
      *(v87 + 42) = 2080;
      *(v0 + 236) = v130;
      *(v0 + 240) = BYTE4(v130) & 1;
      v92 = sub_1DDA14B70();
      v94 = sub_1DD93FA54(v92, v93, v147);

      *(v87 + 44) = v94;
      *(v87 + 52) = 2080;
      *(v0 + 264) = v137;
      *(v0 + 272) = v140 & 1;
      v95 = sub_1DDA14B70();
      v97 = sub_1DD93FA54(v95, v96, v147);

      *(v87 + 54) = v97;
      _os_log_impl(&dword_1DD8F8000, v82, v146, "Created entry with groupID:%s userID:%s, remoteID:%s, credentialsID:%s, auditID:%s, timeToLive:%s", v87, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v145, -1, -1);
      MEMORY[0x1E12B8CE0](v87, -1, -1);
    }

    else
    {
    }
  }

  v76 = *(v0 + 512);

  v77 = *(v0 + 8);

  return v77();
}

unint64_t sub_1DD9B7394(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83950, &qword_1DDA1B950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83958, &qword_1DDA1B958);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23[-v15];
  v24 = a1;
  v25 = a2;
  v26 = type metadata accessor for Entry(0);
  sub_1DDA13760();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83960, &qword_1DDA1B960);
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DDA14960();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83968, &qword_1DDA1B968);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DDA1B510;
  *(v18 + 32) = swift_getKeyPath();
  *(v18 + 40) = swift_getKeyPath();
  *(v18 + 48) = swift_getKeyPath();
  *(v18 + 56) = swift_getKeyPath();
  *(v18 + 64) = swift_getKeyPath();
  *(v18 + 72) = swift_getKeyPath();
  *(v18 + 80) = swift_getKeyPath();
  *(v18 + 88) = swift_getKeyPath();
  *(v18 + 96) = swift_getKeyPath();
  *(v18 + 104) = swift_getKeyPath();
  sub_1DDA14940();
  sub_1DDA14950();
  v19 = *(v5 + 24);
  result = sub_1DDA148D0();
  if (v3)
  {
    goto LABEL_10;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    v4 = 0;
    goto LABEL_10;
  }

  v21 = result;
  v22 = sub_1DDA15190();
  result = v21;
  if (!v22)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12B7F50](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(result + 32);

LABEL_7:

LABEL_10:
    (*(v13 + 8))(v16, v12);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD9B776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  sub_1DDA14D40();
  v7[7] = sub_1DDA14D30();
  v9 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B7808, v9, v8);
}

uint64_t sub_1DD9B7808()
{
  v32 = v0;
  v1 = v0[7];

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_1DDA14810();
  __swift_project_value_buffer(v4, qword_1ECDA2140);

  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14F00();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136315394;
    v12 = MEMORY[0x1E12B7B70](v9, MEMORY[0x1E69E6158]);
    v14 = sub_1DD93FA54(v12, v13, v31);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DD93FA54(v8, v7, v31);
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Updating previousCandidateIDs to: %s for entry with groupID: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
  }

  v15 = v0[6];
  v16 = sub_1DD9B7394(v0[4], v0[5]);
  if (v16)
  {
    v19 = v0[6];
    v20 = v0[3];
    v0[2] = v16;
    v21 = v16;
    swift_getKeyPath();
    v22 = swift_task_alloc();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
    sub_1DDA13770();

    v23 = *(v19 + 24);
    sub_1DDA148C0();
  }

  else
  {
    v24 = v0[5];

    v25 = sub_1DDA147F0();
    v26 = sub_1DDA14EE0();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v0[4];
      v27 = v0[5];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DD93FA54(v28, v27, v31);
      _os_log_impl(&dword_1DD8F8000, v25, v26, "No entry found for groupID:%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12B8CE0](v30, -1, -1);
      MEMORY[0x1E12B8CE0](v29, -1, -1);
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DD9B7D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  sub_1DDA14D40();
  v8[8] = sub_1DDA14D30();
  v10 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B7DF4, v10, v9);
}

uint64_t sub_1DD9B7DF4()
{
  v36 = v0;
  v1 = v0[8];

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = v0[4];
  v4 = sub_1DDA14810();
  __swift_project_value_buffer(v4, qword_1ECDA2140);

  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14F00();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[5];
    v7 = v0[6];
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DD93FA54(v10, v9, v35);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DD93FA54(v8, v7, v35);
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Appending previousCandidateID: %s for entry with groupID: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  v13 = v0[7];
  v14 = sub_1DD9B7394(v0[5], v0[6]);
  v17 = v14;
  if (v14)
  {
    v18 = v0[4];
    v0[2] = v14;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);

    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    sub_1DD9C0428();
    sub_1DDA149B0();

    v19 = v0[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1DD908634(0, *(v19 + 2) + 1, 1, v19);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1DD908634((v20 > 1), v21 + 1, 1, v19);
    }

    v22 = v0[7];
    v24 = v0[3];
    v23 = v0[4];
    *(v19 + 2) = v21 + 1;
    v25 = &v19[16 * v21];
    *(v25 + 4) = v24;
    *(v25 + 5) = v23;
    v0[2] = v17;
    swift_getKeyPath();
    v26 = swift_task_alloc();
    *(v26 + 16) = v17;
    *(v26 + 24) = v19;
    sub_1DDA13770();

    v27 = *(v22 + 24);
    sub_1DDA148C0();
  }

  else
  {
    v28 = v0[6];

    v29 = sub_1DDA147F0();
    v30 = sub_1DDA14EE0();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = v0[5];
      v31 = v0[6];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1DD93FA54(v32, v31, v35);
      _os_log_impl(&dword_1DD8F8000, v29, v30, "No entry found for groupID:%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1E12B8CE0](v34, -1, -1);
      MEMORY[0x1E12B8CE0](v33, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DD9B8424()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C0428();
  sub_1DDA149B0();

  return v0;
}

uint64_t sub_1DD9B852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  sub_1DDA14D40();
  v6[7] = sub_1DDA14D30();
  v8 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B85C8, v8, v7);
}

uint64_t sub_1DD9B85C8()
{
  v23 = v0;
  v1 = *(v0 + 56);

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA2140);

  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14F00();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DD93FA54(v7, v6, v22);
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Fetching previous candidateIDs for groupID:%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  v10 = *(v0 + 48);
  v11 = sub_1DD9B7394(*(v0 + 32), *(v0 + 40));
  if (v11)
  {
    *(v0 + 16) = v11;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    sub_1DD9C0428();
    sub_1DDA149B0();

    v12 = *(v0 + 16);
  }

  else
  {
    v15 = *(v0 + 40);

    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14ED0();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 32);
      v18 = *(v0 + 40);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DD93FA54(v19, v18, v22);
      _os_log_impl(&dword_1DD8F8000, v16, v17, "No entry found for groupID:%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 24) = v12;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DD9B8A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1DDA13680();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  sub_1DDA14D40();
  v6[9] = sub_1DDA14D30();
  v11 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B8B64, v11, v10);
}

uint64_t sub_1DD9B8B64()
{
  v30 = v0;
  v1 = v0[9];

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA2140);

  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14ED0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DD93FA54(v7, v6, v29);
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Updating expiration for entry with groupID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  v10 = v0[5];
  v11 = sub_1DD9B7394(v0[3], v0[4]);
  if (v11)
  {
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    v28 = v0[5];
    v18 = v11;
    sub_1DDA13670();
    v0[2] = v18;
    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = v15;
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
    sub_1DDA13770();

    (*(v16 + 8))(v15, v17);
    v20 = *(v28 + 24);
    sub_1DDA148C0();
  }

  else
  {
    v21 = v0[4];

    v22 = sub_1DDA147F0();
    v23 = sub_1DDA14ED0();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v0[3];
      v24 = v0[4];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1DD93FA54(v25, v24, v29);
      _os_log_impl(&dword_1DD8F8000, v22, v23, "No entry exists for groupID:%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12B8CE0](v27, -1, -1);
      MEMORY[0x1E12B8CE0](v26, -1, -1);
    }
  }

  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DD9B9020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  v7 = sub_1DDA134E0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Entry.AttachedDocument(0);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_1DDA14180();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  sub_1DDA14D40();
  v6[17] = sub_1DDA14D30();
  v17 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B91D0, v17, v16);
}

uint64_t sub_1DD9B91D0()
{
  v56 = v0;
  v1 = *(v0 + 136);

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA2140);

  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14ED0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DD93FA54(v7, v6, v55);
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Fetching attached documents for groupID:%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  v10 = *(v0 + 56);
  v11 = sub_1DD9B7394(*(v0 + 40), *(v0 + 48));
  if (v11)
  {
    *(v0 + 16) = v11;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920);
    sub_1DDA149B0();

    v12 = *(v0 + 24);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v0 + 120);
      v15 = *(v0 + 96);
      v52 = *(v0 + 88);
      v53 = *(v0 + 104);
      v16 = *(v0 + 72);
      v55[0] = MEMORY[0x1E69E7CC0];
      sub_1DD9AF1DC(0, v13, 0);
      v17 = v55[0];
      v18 = v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v50 = (v16 + 16);
      v51 = *(v15 + 72);
      v54 = v14;
      do
      {
        v19 = *(v0 + 128);
        v20 = *(v0 + 104);
        v21 = *(v0 + 80);
        v22 = *(v0 + 64);
        sub_1DD9C0ADC(v18, v20);
        v23 = *v20;
        v24 = *(v53 + 8);
        (*v50)(v21, &v20[*(v52 + 20)], v22);

        sub_1DDA14150();
        sub_1DD9C0A1C(v20);
        v55[0] = v17;
        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DD9AF1DC(v25 > 1, v26 + 1, 1);
          v17 = v55[0];
        }

        v27 = *(v0 + 128);
        v28 = *(v0 + 112);
        *(v17 + 16) = v26 + 1;
        (*(v54 + 32))(v17 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v26, v27, v28);
        v18 += v51;
        --v13;
      }

      while (v13);
    }

    else
    {
      v36 = *(v0 + 24);

      v17 = MEMORY[0x1E69E7CC0];
    }

    v37 = sub_1DDA147F0();
    v38 = sub_1DDA14ED0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 112);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55[0] = v41;
      *v40 = 136315138;
      v42 = MEMORY[0x1E12B7B70](v17, v39);
      v44 = sub_1DD93FA54(v42, v43, v55);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1DD8F8000, v37, v38, "Attached documents: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1E12B8CE0](v41, -1, -1);
      MEMORY[0x1E12B8CE0](v40, -1, -1);
    }
  }

  else
  {
    v29 = *(v0 + 48);

    v30 = sub_1DDA147F0();
    v31 = sub_1DDA14ED0();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = *(v0 + 40);
      v32 = *(v0 + 48);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v55[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1DD93FA54(v33, v32, v55);
      _os_log_impl(&dword_1DD8F8000, v30, v31, "No entry found for groupID:%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1E12B8CE0](v35, -1, -1);
      MEMORY[0x1E12B8CE0](v34, -1, -1);
    }

    v17 = MEMORY[0x1E69E7CC0];
  }

  v45 = *(v0 + 128);
  v46 = *(v0 + 104);
  v47 = *(v0 + 80);
  **(v0 + 32) = v17;

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1DD9B9948()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920);
  sub_1DDA149B0();

  return v0;
}

uint64_t sub_1DD9B9A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for Entry.AttachedDocument(0);
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v11 = sub_1DDA14180();
  v7[15] = v11;
  v12 = *(v11 - 8);
  v7[16] = v12;
  v13 = *(v12 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  sub_1DDA14D40();
  v7[20] = sub_1DDA14D30();
  v15 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9B9C00, v15, v14);
}

uint64_t sub_1DD9B9C00()
{
  v91 = v0;
  v1 = v0[20];

  if (qword_1ECD827C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[9];
  v6 = v0[7];
  v7 = sub_1DDA14810();
  __swift_project_value_buffer(v7, qword_1ECDA2140);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);

  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[19];
  v13 = v0[15];
  v14 = v0[16];
  if (v11)
  {
    log = v0[8];
    v81 = v0[9];
    v15 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v90[0] = v87;
    *v15 = 136315394;
    v16 = sub_1DDA14160();
    v83 = v8;
    v18 = v17;
    v86 = *(v14 + 8);
    v86(v12, v13);
    v19 = sub_1DD93FA54(v16, v18, v90);
    v8 = v83;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1DD93FA54(log, v81, v90);
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Attaching document:%s to groupID:%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v87, -1, -1);
    MEMORY[0x1E12B8CE0](v15, -1, -1);
  }

  else
  {

    v86 = *(v14 + 8);
    v86(v12, v13);
  }

  v20 = v0[10];
  v21 = sub_1DD9B7394(v0[8], v0[9]);
  if (v21)
  {
    v84 = v8;
    v88 = v0[14];
    v22 = v0[12];
    v0[2] = v21;
    v23 = v21;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920);
    v82 = v23;
    sub_1DDA149B0();

    v24 = 0;
    v25 = v0[3];
    v26 = *(v25 + 16);
    while (v26 != v24)
    {
      if (v24 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v27 = v0[14];
      v28 = v0[7];
      sub_1DD9C0ADC(v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v24, v27);
      v29 = *v27;
      v30 = *(v88 + 8);
      v31 = sub_1DDA14160();
      v33 = v0[14];
      if (v29 == v31 && v30 == v32)
      {

        sub_1DD9C0A1C(v33);
LABEL_28:
        v64 = v0[18];
        v65 = v0[15];
        v66 = v0[9];
        v67 = v0[7];

        v84(v64, v67, v65);

        v68 = sub_1DDA147F0();
        v69 = sub_1DDA14EE0();

        v70 = os_log_type_enabled(v68, v69);
        v71 = v0[18];
        v72 = v0[15];
        v73 = v0[16];
        if (v70)
        {
          v89 = v0[9];
          v85 = v0[8];
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v90[0] = v75;
          *v74 = 136315394;
          v76 = sub_1DDA14160();
          v78 = v77;
          v86(v71, v72);
          v79 = sub_1DD93FA54(v76, v78, v90);

          *(v74 + 4) = v79;
          *(v74 + 12) = 2080;
          *(v74 + 14) = sub_1DD93FA54(v85, v89, v90);
          _os_log_impl(&dword_1DD8F8000, v68, v69, "document:%s is already attached to groupID:%s", v74, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12B8CE0](v75, -1, -1);
          MEMORY[0x1E12B8CE0](v74, -1, -1);
        }

        else
        {

          v86(v71, v72);
        }

        goto LABEL_17;
      }

      ++v24;
      v35 = sub_1DDA15440();

      sub_1DD9C0A1C(v33);
      if (v35)
      {
        goto LABEL_28;
      }
    }

    v50 = v0[13];
    v51 = v0[11];
    v52 = v0[7];

    v53 = sub_1DDA14160();
    v55 = v54;
    v56 = v50 + *(v51 + 20);
    sub_1DDA14170();
    *v50 = v53;
    v50[1] = v55;
    v0[4] = v82;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DDA149B0();

    v57 = v0[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1DD9092D0(0, v57[2] + 1, 1, v57);
    }

    v59 = v57[2];
    v58 = v57[3];
    if (v59 >= v58 >> 1)
    {
      v57 = sub_1DD9092D0(v58 > 1, v59 + 1, 1, v57);
    }

    v60 = v0[13];
    v61 = v0[10];
    v57[2] = v59 + 1;
    sub_1DD9C0A78(v60, v57 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v59);
    v0[6] = v82;
    swift_getKeyPath();
    v62 = swift_task_alloc();
    *(v62 + 16) = v82;
    *(v62 + 24) = v57;
    sub_1DDA13770();

    v63 = *(v61 + 24);
    sub_1DDA148C0();
  }

  else
  {
    v43 = v0[9];

    v44 = sub_1DDA147F0();
    v45 = sub_1DDA14EE0();

    if (os_log_type_enabled(v44, v45))
    {
      v47 = v0[8];
      v46 = v0[9];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v90[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1DD93FA54(v47, v46, v90);
      _os_log_impl(&dword_1DD8F8000, v44, v45, "No entry found for groupID:%s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E12B8CE0](v49, -1, -1);
      MEMORY[0x1E12B8CE0](v48, -1, -1);
    }
  }

LABEL_17:
  v37 = v0[18];
  v36 = v0[19];
  v38 = v0[17];
  v40 = v0[13];
  v39 = v0[14];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1DD9BA694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = *(*(type metadata accessor for Entry.AttachedDocument(0) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v9 = sub_1DDA14180();
  v7[12] = v9;
  v10 = *(v9 - 8);
  v7[13] = v10;
  v11 = *(v10 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  sub_1DDA14D40();
  v7[17] = sub_1DDA14D30();
  v13 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9BA7D0, v13, v12);
}

uint64_t sub_1DD9BA7D0()
{
  v67 = v0;
  v1 = v0[17];

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[7];
  v7 = sub_1DDA14810();
  __swift_project_value_buffer(v7, qword_1ECDA2140);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);

  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[16];
  v13 = v0[12];
  v14 = v0[13];
  if (v11)
  {
    log = v0[8];
    v60 = v0[9];
    v15 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v66[0] = v62;
    *v15 = 136315394;
    v16 = sub_1DDA14160();
    v63 = v8;
    v18 = v17;
    v65 = *(v14 + 8);
    v65(v12, v13);
    v19 = sub_1DD93FA54(v16, v18, v66);
    v8 = v63;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1DD93FA54(log, v60, v66);
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Removing document:%s from groupID:%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v62, -1, -1);
    MEMORY[0x1E12B8CE0](v15, -1, -1);
  }

  else
  {

    v65 = *(v14 + 8);
    v65(v12, v13);
  }

  v20 = v0[10];
  v21 = sub_1DD9B7394(v0[8], v0[9]);
  if (v21)
  {
    v22 = v0[7];
    v0[2] = v21;
    v23 = v21;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920);
    sub_1DDA149B0();

    v24 = v0[3];
    v25 = swift_task_alloc();
    *(v25 + 16) = v22;
    v26 = sub_1DD9BB1D8(sub_1DD9C09FC, v25, v24);
    LOBYTE(v22) = v27;

    if (v22)
    {
      v28 = v0[9];
      v8(v0[15], v0[7], v0[12]);

      v29 = sub_1DDA147F0();
      v30 = sub_1DDA14EE0();

      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[15];
      v34 = v0[12];
      v33 = v0[13];
      if (v31)
      {
        v64 = v0[9];
        v61 = v0[8];
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v66[0] = v36;
        *v35 = 136315394;
        v37 = sub_1DDA14160();
        v39 = v38;
        v65(v32, v34);
        v40 = sub_1DD93FA54(v37, v39, v66);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_1DD93FA54(v61, v64, v66);
        _os_log_impl(&dword_1DD8F8000, v29, v30, "documentIdentifier:%s is not attached to groupID:%s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12B8CE0](v36, -1, -1);
        MEMORY[0x1E12B8CE0](v35, -1, -1);
      }

      else
      {

        v65(v32, v34);
      }
    }

    else
    {
      v54 = v0[11];
      v58 = v0[10];
      v0[4] = v23;
      swift_getKeyPath();
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DDA149B0();

      v66[0] = v0[5];
      sub_1DD9BB2C4(v26, v54);
      sub_1DD9C0A1C(v54);
      v55 = v66[0];
      v0[6] = v23;
      swift_getKeyPath();
      v56 = swift_task_alloc();
      *(v56 + 16) = v23;
      *(v56 + 24) = v55;
      sub_1DDA13770();

      v57 = *(v58 + 24);
      sub_1DDA148C0();
    }
  }

  else
  {
    v47 = v0[9];

    v48 = sub_1DDA147F0();
    v49 = sub_1DDA14EE0();

    if (os_log_type_enabled(v48, v49))
    {
      v51 = v0[8];
      v50 = v0[9];
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v66[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_1DD93FA54(v51, v50, v66);
      _os_log_impl(&dword_1DD8F8000, v48, v49, "No entry found for groupID:%s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1E12B8CE0](v53, -1, -1);
      MEMORY[0x1E12B8CE0](v52, -1, -1);
    }
  }

  v42 = v0[15];
  v41 = v0[16];
  v43 = v0[14];
  v44 = v0[11];

  v45 = v0[1];

  return v45();
}

uint64_t sub_1DD9BB160(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_1DDA14160() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DDA15440();
  }

  return v5 & 1;
}

uint64_t sub_1DD9BB1D8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Entry.AttachedDocument(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

size_t sub_1DD9BB2C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DD9C4D00(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Entry.AttachedDocument(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1DD9C0A78(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD9BB3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1DDA14D40();
  v6[5] = sub_1DDA14D30();
  v8 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9BB480, v8, v7);
}

uint64_t sub_1DD9BB480()
{
  v22 = v0;
  v1 = v0[5];

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA2140);

  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14F00();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DD93FA54(v7, v6, v21);
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Deleting entry for groupID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  v10 = v0[4];
  if (sub_1DD9B7394(v0[2], v0[3]))
  {
    v13 = *(v0[4] + 24);
    type metadata accessor for Entry(0);
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    sub_1DDA148E0();
    sub_1DDA148C0();
  }

  else
  {
    v14 = v0[3];

    v15 = sub_1DDA147F0();
    v16 = sub_1DDA14EE0();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[2];
      v17 = v0[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1DD93FA54(v18, v17, v21);
      _os_log_impl(&dword_1DD8F8000, v15, v16, "No entry to delete for groupID: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DD9BB8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a4;
  v7 = sub_1DDA13680();
  v6[30] = v7;
  v8 = *(v7 - 8);
  v6[31] = v8;
  v9 = *(v8 + 64) + 15;
  v6[32] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0) - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  sub_1DDA14D40();
  v6[34] = sub_1DDA14D30();
  v12 = sub_1DDA14CD0();

  return MEMORY[0x1EEE6DFA0](sub_1DD9BB9E0, v12, v11);
}

uint64_t sub_1DD9BB9E0()
{
  v54 = v0;
  v1 = *(v0 + 272);

  if (qword_1ECD827C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA2140);

  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14F00();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DD93FA54(0xD000000000000011, 0x80000001DDA28CA0, v53);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1DD93FA54(v7, v6, v53);
    _os_log_impl(&dword_1DD8F8000, v4, v5, "%s groupID:%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  v10 = *(v0 + 232);
  v11 = sub_1DD9B7394(*(v0 + 216), *(v0 + 224));
  v12 = v11;
  if (v11)
  {

    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14F00();

    if (os_log_type_enabled(v13, v14))
    {
      v49 = v14;
      v15 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53[0] = v51;
      *v15 = 136315394;
      *(v0 + 192) = v12;
      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
      sub_1DDA149B0();

      v16 = sub_1DD93FA54(*(v0 + 80), *(v0 + 88), v53);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2080;
      *(v0 + 200) = v12;
      swift_getKeyPath();
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DDA149B0();

      v17 = sub_1DD93FA54(*(v0 + 96), *(v0 + 104), v53);

      *(v15 + 14) = v17;
      _os_log_impl(&dword_1DD8F8000, v13, v49, "Found entry with remoteID:%s userID:%s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v51, -1, -1);
      MEMORY[0x1E12B8CE0](v15, -1, -1);
    }

    *(v0 + 136) = v12;
    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    sub_1DDA149B0();

    v18 = *(v0 + 16);
    v52 = *(v0 + 24);
    *(v0 + 144) = v12;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DDA149B0();

    v48 = *(v0 + 40);
    v50 = *(v0 + 32);
    *(v0 + 152) = v12;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DDA149B0();

    v19 = *(v0 + 48);
    v47 = *(v0 + 56);
    *(v0 + 160) = v12;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9C0650();
    sub_1DDA149B0();

    v45 = *(v0 + 72);
    v46 = *(v0 + 64);
    *(v0 + 168) = v12;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9C0538();
    sub_1DDA149B0();

    v43 = *(v0 + 128);
    v44 = *(v0 + 124);
    *(v0 + 176) = v12;
    swift_getKeyPath();
    sub_1DDA13780();

    swift_getKeyPath();
    sub_1DD9C023C();
    sub_1DDA149B0();

    if (*(v0 + 120))
    {

      v20 = 1;
    }

    else
    {
      v30 = *(v0 + 112);
      v31 = *(v0 + 256);
      v42 = v19;
      v32 = *(v0 + 248);
      v40 = *(v0 + 264);
      v41 = *(v0 + 240);
      *(v0 + 184) = v12;
      swift_getKeyPath();
      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD82990, MEMORY[0x1E6969530]);
      sub_1DDA149B0();

      sub_1DDA135F0();

      (*(v32 + 8))(v31, v41);
      v19 = v42;
      v20 = 0;
    }

    v33 = *(v0 + 264);
    v34 = *(v0 + 208);
    (*(*(v0 + 248) + 56))(v33, v20, 1, *(v0 + 240));
    *v34 = v18;
    *(v34 + 8) = v52;
    *(v34 + 16) = v50;
    *(v34 + 24) = v48;
    *(v34 + 32) = v19;
    *(v34 + 40) = v47;
    *(v34 + 48) = v46;
    *(v34 + 56) = v45;
    *(v34 + 64) = v44;
    *(v34 + 68) = v43;
    v35 = type metadata accessor for SessionRegistry.SessionInfo(0);
    sub_1DD9C098C(v33, v34 + *(v35 + 36));
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else
  {
    v23 = *(v0 + 224);

    v24 = sub_1DDA147F0();
    v25 = sub_1DDA14F00();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 216);
      v26 = *(v0 + 224);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DD93FA54(v27, v26, v53);
      _os_log_impl(&dword_1DD8F8000, v24, v25, "No registry entry for groupID:%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12B8CE0](v29, -1, -1);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
    }

    v21 = *(v0 + 208);
    v22 = type metadata accessor for SessionRegistry.SessionInfo(0);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  }

  v37 = *(v0 + 256);
  v36 = *(v0 + 264);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1DD9BC514()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DDA149B0();

  return v0;
}

uint64_t sub_1DD9BC610()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C0650();
  sub_1DDA149B0();

  return v0;
}

unint64_t sub_1DD9BC718()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C0538();
  sub_1DDA149B0();

  return v1 | (v2 << 32);
}

uint64_t sub_1DD9BC830()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C023C();
  sub_1DDA149B0();

  return v0;
}

uint64_t sub_1DD9BC948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1DDA13680();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83950, &qword_1DDA1B950) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83958, &qword_1DDA1B958);
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9BCAB4, 0, 0);
}

uint64_t sub_1DD9BCAB4()
{
  v1 = v0;
  if (qword_1ECD827C8 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v2 = sub_1DDA14810();
    __swift_project_value_buffer(v2, qword_1ECDA2140);
    v3 = sub_1DDA147F0();
    v4 = sub_1DDA14F00();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DD8F8000, v3, v4, "Cleaning up expired entries", v5, 2u);
      MEMORY[0x1E12B8CE0](v5, -1, -1);
    }

    v6 = *(v1 + 112);
    v7 = *(v1 + 88);
    v8 = *(v1 + 48);

    v9 = *(v8 + 24);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83960, &qword_1DDA1B960);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for Entry(0);
    sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
    v11 = MEMORY[0x1E69E7CC0];
    sub_1DDA14960();
    v36 = sub_1DDA148D0();
    (*(*(v1 + 104) + 8))(*(v1 + 112), *(v1 + 96));
    v38 = v11;
    if (!(v36 >> 62))
    {
      v12 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        break;
      }

      goto LABEL_6;
    }

    v12 = sub_1DDA15190();
    if (!v12)
    {
      break;
    }

LABEL_6:
    v13 = 0;
    v33 = (*(v1 + 64) + 8);
    v34 = v12;
    v35 = v1;
    while ((v36 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E12B7F50](v13, v36);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v11 = v38;
        goto LABEL_21;
      }

LABEL_12:
      v37 = v15;
      *(v1 + 32) = v14;
      swift_getKeyPath();
      sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);

      sub_1DDA13780();

      swift_getKeyPath();
      sub_1DD9C023C();
      sub_1DDA149B0();

      if (*(v1 + 24))
      {
      }

      else
      {
        v16 = *(v1 + 16);
        v17 = *(v1 + 72);
        v18 = *(v1 + 80);
        v19 = *(v1 + 56);
        *(v1 + 40) = v14;
        swift_getKeyPath();
        sub_1DDA13780();

        swift_getKeyPath();
        sub_1DD9BFAA8(&qword_1ECD82990, MEMORY[0x1E6969530]);
        sub_1DDA149B0();

        sub_1DDA135F0();
        v20 = *v33;
        (*v33)(v17, v19);
        sub_1DDA13670();
        v21 = sub_1DDA13610();
        v20(v17, v19);
        v20(v18, v19);

        if (v21)
        {
          sub_1DDA15100();
          v22 = *(v38 + 16);
          sub_1DDA15130();
          sub_1DDA15140();
          sub_1DDA15110();
        }

        else
        {
        }

        v1 = v35;
        v12 = v34;
      }

      ++v13;
      if (v37 == v12)
      {
        goto LABEL_20;
      }
    }

    if (v13 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v36 + 8 * v13 + 32);

      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_21:

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v23 = sub_1DDA15190();
  }

  else
  {
    v23 = *(v11 + 16);
  }

  swift_retain_n();
  if (v23)
  {
    v24 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12B7F50](v24, v11);
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v24 >= *(v11 + 16))
        {
          goto LABEL_38;
        }

        v25 = *(v11 + 8 * v24 + 32);

        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_33:
          __break(1u);
          break;
        }
      }

      sub_1DDA148E0();

      ++v24;
    }

    while (v26 != v23);
  }

  sub_1DDA148C0();
  v27 = *(v1 + 112);
  v28 = *(v1 + 80);
  v29 = *(v1 + 88);
  v30 = *(v1 + 72);

  v31 = *(v1 + 8);

  return v31();
}

uint64_t sub_1DD9BD1DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83970, &qword_1DDA1B970);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83978, &qword_1DDA1B978);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83980, &qword_1DDA1B980);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  sub_1DD90D2A4(&qword_1ECD83988, &qword_1ECD83978, &qword_1DDA1B978);
  sub_1DDA133E0();
  swift_getKeyPath();
  sub_1DDA133C0();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  sub_1DDA133D0();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83990, &qword_1DDA1B988);
  a4[4] = sub_1DD9C0774();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_1DD90D2A4(&qword_1ECD839B8, &qword_1ECD83980, &qword_1DDA1B980);
  sub_1DD90D2A4(&qword_1ECD839C0, &qword_1ECD83970, &qword_1DDA1B970);
  v22 = v26;
  sub_1DDA133B0();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

double sub_1DD9BD548@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C0650();
  sub_1DDA149B0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1DD9BD658@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C0538();
  sub_1DDA149B0();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1DD9BD770(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13770();
}

uint64_t sub_1DD9BD850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C0428();
  sub_1DDA149B0();

  *a2 = v4;
  return result;
}

uint64_t sub_1DD9BD960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C02F4(&qword_1ECD83918, &qword_1ECD83920);
  sub_1DDA149B0();

  *a2 = v4;
  return result;
}

uint64_t sub_1DD9BDAA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13770();
}

uint64_t sub_1DD9BDB6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C023C();
  sub_1DDA149B0();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1DD9BDC84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13770();
}

uint64_t sub_1DD9BDD6C()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9BFAA8(&qword_1ECD82990, MEMORY[0x1E6969530]);
  sub_1DDA149B0();
}

uint64_t sub_1DD9BDE9C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9BFAA8(&qword_1ECD82990, MEMORY[0x1E6969530]);
  sub_1DDA149B0();
}

uint64_t sub_1DD9BDFD0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  v14 = *a2;
  v9 = v14;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13770();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DD9BE154()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DD9BE1B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13780();

  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DDA149B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DD9BE2C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838B0, type metadata accessor for Entry);
  sub_1DDA13770();
}

uint64_t sub_1DD9BE388()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE438()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C05D4();
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE4F0()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C04BC();
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE5A4()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C03AC();
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE650()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C02F4(&qword_1ECD83900, &qword_1ECD83910);
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE734()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9C01C0();
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE7F4()
{
  swift_getKeyPath();
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  sub_1DD9BFAA8(&qword_1ECD829A0, MEMORY[0x1E6969530]);
  sub_1DDA149C0();
}

uint64_t sub_1DD9BE8C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83A10, &qword_1DDA1BAF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9C0D78();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v13 = *(type metadata accessor for Entry.AttachedDocument(0) + 20);
    v15[14] = 1;
    sub_1DDA134E0();
    sub_1DD9BFAA8(&qword_1ECD83A20, MEMORY[0x1E6968FB0]);
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9BEA80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1DDA134E0();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83A28, &qword_1DDA1BAF8);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Entry.AttachedDocument(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9C0D78();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_1DDA15280();
  v13[1] = v17;
  v25 = 1;
  sub_1DD9BFAA8(&qword_1ECD83A30, MEMORY[0x1E6968FB0]);
  sub_1DDA152C0();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_1DD9C0ADC(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DD9C0A1C(v13);
}

uint64_t sub_1DD9BEDA4()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9BEDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DD9BEEA0(uint64_t a1)
{
  v2 = sub_1DD9C0D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9BEEDC(uint64_t a1)
{
  v2 = sub_1DD9C0D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9BEF18(uint64_t a1)
{
  sub_1DDA15570();
  v3 = *v1;
  v4 = v1[1];
  sub_1DDA14BC0();
  v5 = *(a1 + 20);
  sub_1DDA134E0();
  sub_1DD9BFAA8(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9BEFC0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1DDA14BC0();
  v6 = *(a2 + 20);
  sub_1DDA134E0();
  sub_1DD9BFAA8(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9BF04C(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  v4 = *v2;
  v5 = v2[1];
  sub_1DDA14BC0();
  v6 = *(a2 + 20);
  sub_1DDA134E0();
  sub_1DD9BFAA8(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9BF120(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_1DDA13490();
}

void *sub_1DD9BF1A4(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83948, &qword_1DDA1B938);
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  v2[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 3);
  sub_1DDA14970();
  *(v2 + 8) = 257;
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
  sub_1DD9C03AC();
  sub_1DDA148B0();

  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83908, &qword_1DDA1B928);
  sub_1DD9C02F4(&qword_1ECD83900, &qword_1ECD83910);
  sub_1DDA148B0();

  *(v2 + 18) = 1;
  sub_1DDA13790();
  *(v2 + 8) = 0;
  *(v2 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 3);
  sub_1DD8FEEB0(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1DD9BF420()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtC5AnvilP33_C92465279110962981D4F23E0DACDF495Entry___observationRegistrar;
  v2 = sub_1DDA137A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1DD9BF4EC()
{
  result = sub_1DDA137A0();
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

void *sub_1DD9BF5C4(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DD9BF1A4(a1);
}

uint64_t sub_1DD9BF648(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1DD8FEEB0(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1DD9BF6A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1DD929A28(v1 + 24, v4);
  return sub_1DD9BF730;
}

void sub_1DD9BF730(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1DD929A28(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1DD8FEEB0((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1DD8FEEB0(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1DD9BF7EC()
{
  v2 = *v0;
  sub_1DDA15570();
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9BF850()
{
  v1 = *v0;
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  return sub_1DDA149A0();
}

uint64_t sub_1DD9BF8C4()
{
  v2 = *v0;
  sub_1DDA15570();
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9BF924()
{
  v1 = *v0;
  sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);
  return sub_1DDA14990();
}

uint64_t sub_1DD9BF998(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1DD9BFAA8(&qword_1ECD838C8, type metadata accessor for Entry);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t sub_1DD9BFAA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD9BFC10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD838D0, &qword_1DDA1B750);
  v0 = *(sub_1DDA14A30() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DDA1B520;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD838D8, &qword_1DDA1B780);
  v4 = *(sub_1DDA14A50() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1DDA16320;
  sub_1DDA14A40();
  v7 = sub_1DDA14A60();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DDA14A70();
  sub_1DD9BFAA8(&qword_1ECD838E0, MEMORY[0x1E697BD30]);
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD838E8, &qword_1DDA1B878);
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  swift_getKeyPath();
  sub_1DDA14A20();
  return v3;
}

uint64_t sub_1DD9C0158()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD9BE7F4();
}

uint64_t sub_1DD9C017C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD9BE7F4();
}

uint64_t sub_1DD9C01A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1DD9BE734();
}

unint64_t sub_1DD9C01C0()
{
  result = qword_1ECD838F0;
  if (!qword_1ECD838F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83770, &qword_1DDA1B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD838F0);
  }

  return result;
}

unint64_t sub_1DD9C023C()
{
  result = qword_1ECD838F8;
  if (!qword_1ECD838F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83770, &qword_1DDA1B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD838F8);
  }

  return result;
}

uint64_t sub_1DD9C02B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD9BE650();
}

uint64_t sub_1DD9C02F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83908, &qword_1DDA1B928);
    sub_1DD9BFAA8(a2, type metadata accessor for Entry.AttachedDocument);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD9C0390()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD9BE5A4();
}

unint64_t sub_1DD9C03AC()
{
  result = qword_1ECD83458;
  if (!qword_1ECD83458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82818, &qword_1DDA1A780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83458);
  }

  return result;
}

unint64_t sub_1DD9C0428()
{
  result = qword_1ECD83428;
  if (!qword_1ECD83428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82818, &qword_1DDA1A780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83428);
  }

  return result;
}

unint64_t sub_1DD9C04BC()
{
  result = qword_1ECD83928;
  if (!qword_1ECD83928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FB0, &qword_1DDA18980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83928);
  }

  return result;
}

unint64_t sub_1DD9C0538()
{
  result = qword_1ECD83930;
  if (!qword_1ECD83930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FB0, &qword_1DDA18980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83930);
  }

  return result;
}

uint64_t sub_1DD9C05B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DD9BE438();
}

unint64_t sub_1DD9C05D4()
{
  result = qword_1ECD83938;
  if (!qword_1ECD83938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FA8, &qword_1DDA1B930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83938);
  }

  return result;
}

unint64_t sub_1DD9C0650()
{
  result = qword_1ECD83940;
  if (!qword_1ECD83940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FA8, &qword_1DDA1B930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83940);
  }

  return result;
}

uint64_t sub_1DD9C06CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DD9BE388();
}

uint64_t sub_1DD9C06F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DD9BE388();
}

uint64_t sub_1DD9C071C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DD9BE388();
}

uint64_t sub_1DD9C0744()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DD9BE388();
}

unint64_t sub_1DD9C0774()
{
  result = qword_1ECD83998;
  if (!qword_1ECD83998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83990, &qword_1DDA1B988);
    sub_1DD9C0800();
    sub_1DD9C08B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83998);
  }

  return result;
}

unint64_t sub_1DD9C0800()
{
  result = qword_1ECD839A0;
  if (!qword_1ECD839A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83980, &qword_1DDA1B980);
    sub_1DD90D2A4(&qword_1ECD839A8, &qword_1ECD83978, &qword_1DDA1B978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD839A0);
  }

  return result;
}

unint64_t sub_1DD9C08B0()
{
  result = qword_1ECD839B0;
  if (!qword_1ECD839B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83970, &qword_1DDA1B970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD839B0);
  }

  return result;
}

uint64_t sub_1DD9C0934()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1DD9BE4F0();
}

uint64_t sub_1DD9C098C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD9C0A1C(uint64_t a1)
{
  v2 = type metadata accessor for Entry.AttachedDocument(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD9C0A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entry.AttachedDocument(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD9C0ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entry.AttachedDocument(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DD9C0B68()
{
  sub_1DD979EB8(319, &unk_1EE16F3B8);
  if (v0 <= 0x3F)
  {
    sub_1DD979EB8(319, &qword_1EE16F0E0);
    if (v1 <= 0x3F)
    {
      sub_1DD9C0C34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD9C0C34()
{
  if (!qword_1EE16F8F0)
  {
    sub_1DDA13680();
    v0 = sub_1DDA14F50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE16F8F0);
    }
  }
}

uint64_t sub_1DD9C0CB4()
{
  result = sub_1DDA134E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DD9C0D78()
{
  result = qword_1ECD83A18;
  if (!qword_1ECD83A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A18);
  }

  return result;
}

unint64_t sub_1DD9C0DE0()
{
  result = qword_1ECD83A38;
  if (!qword_1ECD83A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A38);
  }

  return result;
}

unint64_t sub_1DD9C0E38()
{
  result = qword_1ECD83A40;
  if (!qword_1ECD83A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A40);
  }

  return result;
}

unint64_t sub_1DD9C0E90()
{
  result = qword_1ECD83A48;
  if (!qword_1ECD83A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A48);
  }

  return result;
}

unint64_t sub_1DD9C0FBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DDA15070();

    v8 = 0xD000000000000016;
    v4 = sub_1DDA14AB0();
    MEMORY[0x1E12B7AB0](v4);

    MEMORY[0x1E12B7AB0](41, 0xE100000000000000);
  }

  else
  {
    sub_1DDA15070();

    v8 = 0xD000000000000014;
    v6 = sub_1DD9C10C4(a1, a2);
    MEMORY[0x1E12B7AB0](v6);
  }

  return v8;
}

uint64_t sub_1DD9C10C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 1769105747;
    }

    if (a2 == 1)
    {
      return 0x54676E6974697257;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 0xD000000000000010;
      case 3:
        return 0xD000000000000012;
      case 4:
        return 0x74756374726F6853;
    }
  }

  MEMORY[0x1E12B7AB0]();
  MEMORY[0x1E12B7AB0](41, 0xE100000000000000);
  return 0x282073726568744FLL;
}

uint64_t sub_1DD9C11D4(uint64_t a1)
{
  sub_1DD9313D4();
  if (sub_1DDA14FA0() & 1) != 0 || (sub_1DDA14FA0() & 1) != 0 || (sub_1DDA14FA0() & 1) != 0 || (sub_1DDA14FA0() & 1) != 0 || (sub_1DDA14FA0())
  {

    return 0;
  }

  return a1;
}

unint64_t sub_1DD9C13D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[4] = *MEMORY[0x1E69E9840];
  if ((a1 != 0xD000000000000017 || 0x80000001DDA28DB0 != a2) && (sub_1DDA15440() & 1) == 0)
  {

    result = sub_1DD9C11D4(a1);
    goto LABEL_13;
  }

  if (!*(a3 + 16) || (v5 = sub_1DD96AC38(0xD000000000000025, 0x80000001DDA28DD0), (v6 & 1) == 0))
  {

    goto LABEL_11;
  }

  v7 = (*(a3 + 56) + 16 * v5);
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_1DDA13520();
  v12 = v11;

  if (v12 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v13 = objc_opt_self();
  v14 = sub_1DDA13570();
  v22[0] = 0;
  v15 = [v13 JSONObjectWithData:v14 options:0 error:v22];

  if (!v15)
  {
    v19 = v22[0];
    v20 = sub_1DDA13410();

    swift_willThrow();
    sub_1DD90D440(v10, v12);

    goto LABEL_11;
  }

  v16 = v22[0];
  sub_1DDA14FB0();
  sub_1DD90D440(v10, v12);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83620, &qword_1DDA1AFA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  result = v21;
LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD9C1620(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83A70, &qword_1DDA1BE08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9C2124();
  sub_1DDA15650();
  v16 = 0;
  sub_1DDA15340();
  if (!v5)
  {
    v15 = 1;
    sub_1DDA15340();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DD9C17B4()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9C1828()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9C187C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DDA151E0();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DD9C1930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DDA28E70 == a2 || (sub_1DDA15440() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DDA28E90 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DD9C1A18(uint64_t a1)
{
  v2 = sub_1DD9C2124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9C1A54(uint64_t a1)
{
  v2 = sub_1DD9C2124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9C1A90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD9C2178(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9C1AE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1DDA14B60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v15 = sub_1DD96D708(), (v16 & 1) == 0))
  {

    sub_1DD90D440(a3, a4);

    goto LABEL_6;
  }

  v43 = a3;
  v17 = (*(a1 + 56) + 16 * v15);
  v18 = *v17;
  v19 = v17[1];

  sub_1DDA14B50();
  v20 = sub_1DDA14B20();
  v22 = v21;

  (*(v11 + 8))(v14, v10);
  if (v22 >> 60 == 15)
  {

    result = sub_1DD90D440(v43, a4);
LABEL_6:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_7;
  }

  v30 = sub_1DDA13190();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1DDA13180();
  sub_1DD9C1EB4();
  sub_1DDA13170();

  v39 = v46;
  v40 = v45;
  v41 = v20;
  v42 = v22;
  if (a4 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    v37 = v44;
    v33 = *(v30 + 48);
    v34 = *(v30 + 52);
    swift_allocObject();
    v35 = v43;
    sub_1DD909CD4(v43, a4);
    sub_1DDA13180();
    sub_1DD956064();
    sub_1DDA13170();
    sub_1DD90D440(v35, a4);

    v38 = v47;
    v36 = v48;

    sub_1DD940E20(v36);
  }

  [a2 statusCode];
  v29 = 0x80000001DDA28E40;
  v24 = sub_1DDA14B00();
  v25 = sub_1DDA14B00();

  v26 = sub_1DDA14E60();
  v27 = sub_1DDA14B00();
  sub_1DD90D440(v41, v42);

  sub_1DD90D440(v43, a4);

  v28 = 0xD00000000000002ALL;
LABEL_7:
  *a5 = v24;
  a5[1] = v25;
  a5[2] = v26;
  a5[3] = v27;
  a5[4] = v28;
  a5[5] = v29;
  return result;
}

unint64_t sub_1DD9C1EB4()
{
  result = qword_1ECD83A50;
  if (!qword_1ECD83A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A50);
  }

  return result;
}

uint64_t sub_1DD9C1F28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD9C1F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD9C1FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DD9C2014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD9C2068()
{
  result = qword_1ECD83A58;
  if (!qword_1ECD83A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83A60, qword_1DDA1BCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A58);
  }

  return result;
}

unint64_t sub_1DD9C20D0()
{
  result = qword_1ECD83A68;
  if (!qword_1ECD83A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A68);
  }

  return result;
}

unint64_t sub_1DD9C2124()
{
  result = qword_1ECD83A78;
  if (!qword_1ECD83A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A78);
  }

  return result;
}

uint64_t sub_1DD9C2178(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83A80, &qword_1DDA1BE10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9C2124();
  sub_1DDA15620();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DDA15280();
    v11 = 1;
    sub_1DDA15280();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DD9C2370()
{
  result = qword_1ECD83A88;
  if (!qword_1ECD83A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A88);
  }

  return result;
}

unint64_t sub_1DD9C23C8()
{
  result = qword_1ECD83A90;
  if (!qword_1ECD83A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A90);
  }

  return result;
}

unint64_t sub_1DD9C2420()
{
  result = qword_1ECD83A98;
  if (!qword_1ECD83A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83A98);
  }

  return result;
}

uint64_t sub_1DD9C2474(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DDA15120();
    v9 = *(sub_1DDA143D0() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v14, v10, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1DDA15100();
      v12 = *(v15 + 16);
      sub_1DDA15130();
      sub_1DDA15140();
      sub_1DDA15110();
      v10 += v11;
      if (!--v6)
      {
        return v15;
      }
    }
  }

  return result;
}

uint64_t sub_1DD9C25C0(unint64_t a1)
{
  v87 = a1;
  v86 = sub_1DDA143D0();
  v80 = *(v86 - 8);
  v1 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v79 = (v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1DDA14440();
  v3 = *(v78 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1DDA144A0();
  v85 = *(v82 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83010, &qword_1DDA18A40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v74 - v11;
  v13 = sub_1DDA144B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v81 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v74 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v74 - v21;
  v23 = v14 + 16;
  v24 = *(v14 + 16);
  v24(v74 - v21, v87, v13);
  v25 = (*(v14 + 88))(v22, v13);
  if (v25 == *MEMORY[0x1E69A0B78])
  {
    (*(v14 + 96))(v22, v13);
    v26 = *v22;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83018, &qword_1DDA18A48);
    v28 = swift_projectBox();
    v29 = *v28;
    sub_1DD9C64C4(v28 + *(v27 + 48), v12);
    v30 = sub_1DDA14450();
    if ((*(*(v30 - 8) + 48))(v12, 1, v30) == 1)
    {
      v23 = sub_1DD96D7E4(v29);
    }

    else
    {
      v50 = sub_1DDA13840();
      sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
      swift_allocError();
      v52 = v51;
      sub_1DDA13800();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69DA4B0], v50);
      swift_willThrow();
    }

    sub_1DD90D378(v12, &qword_1ECD83010, &qword_1DDA18A40);

    return v23;
  }

  v83 = v13;
  if (v25 == *MEMORY[0x1E69A0B70])
  {
    (*(v14 + 96))(v22, v83);
    v31 = *(*v22 + 16);
    v32 = *(v31 + 16);
    v33 = MEMORY[0x1E69E7CC0];
    if (!v32)
    {
LABEL_23:
      v23 = sub_1DD96D8DC(v33);

      return v23;
    }

    v74[1] = *v22;
    v89 = MEMORY[0x1E69E7CC0];
    sub_1DD9AF15C(0, v32, 0);
    v34 = 0;
    v35 = v84;
    v78 = v31 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v36 = v88;
    v87 = v89;
    v76 = v31;
    v77 = v85 + 16;
    v79 = (v14 + 8);
    v80 = v85 + 8;
    v75 = v32;
    while (v34 < *(v31 + 16))
    {
      v37 = v82;
      (*(v85 + 16))(v35, v78 + *(v85 + 72) * v34, v82);
      v22 = sub_1DDA14470();
      v86 = v38;
      v23 = sub_1DDA14460();
      v40 = v39;
      v41 = v81;
      sub_1DDA14480();
      v42 = sub_1DD9C25C0(v41);
      if (v36)
      {

        (*v79)(v41, v83);
        (*v80)(v35, v37);

        return v23;
      }

      v43 = v42;
      v88 = 0;
      (*v79)(v41, v83);
      v44 = sub_1DDA14490();
      (*v80)(v35, v37);
      v45 = v87;
      v89 = v87;
      v47 = *(v87 + 16);
      v46 = *(v87 + 24);
      v14 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        sub_1DD9AF15C((v46 > 1), v47 + 1, 1);
        v45 = v89;
      }

      ++v34;
      *(v45 + 16) = v14;
      v87 = v45;
      v48 = v45 + 48 * v47;
      v49 = v86;
      *(v48 + 32) = v22;
      *(v48 + 40) = v49;
      *(v48 + 48) = v23;
      *(v48 + 56) = v40;
      *(v48 + 64) = v43;
      *(v48 + 72) = (v44 & 1) == 0;
      v31 = v76;
      v36 = v88;
      v35 = v84;
      if (v75 == v34)
      {
        v33 = v87;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    v23 = sub_1DDA13840();
    sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    v72 = v71;
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1DDA15070();

    v89 = 0xD000000000000015;
    v90 = 0x80000001DDA28EB0;
    v91 = &type metadata for TransformUtils;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AA0, &qword_1DDA1BF30);
    v73 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v73);

    sub_1DDA13800();
    (*(*(v23 - 8) + 104))(v72, *MEMORY[0x1E69DA4B0], v23);
    swift_willThrow();
    (*(v14 + 8))(v22, v34);
    return v23;
  }

  v34 = v83;
  if (v25 == *MEMORY[0x1E69A0B58])
  {
    (*(v14 + 96))(v22, v83);
    v53 = *v22;
    v54 = swift_projectBox();
    v24(v20, v54, v34);
    v55 = v88;
    v56 = sub_1DD9C25C0(v20);
    if (!v55)
    {
      v23 = sub_1DD96D84C(v56);
    }

    (*(v14 + 8))(v20, v34);
  }

  else
  {
    if (v25 == *MEMORY[0x1E69A0B50] || v25 == *MEMORY[0x1E69A0B60] || v25 == *MEMORY[0x1E69A0B90])
    {
      (*(v14 + 8))(v22, v83);
      v57 = sub_1DDA13840();
      sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
      swift_allocError();
      v59 = v58;
      sub_1DDA13800();
      (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69DA4B0], v57);
      swift_willThrow();
      return v23;
    }

    if (v25 != *MEMORY[0x1E69A0B48])
    {
      if (v25 == *MEMORY[0x1E69A0B80])
      {
        sub_1DD96D774();
        return v68;
      }

      if (v25 == *MEMORY[0x1E69A0B88])
      {
        sub_1DD96D77C();
        return v69;
      }

      if (v25 == *MEMORY[0x1E69A0B68])
      {
        sub_1DD96D784();
        return v70;
      }

      goto LABEL_39;
    }

    (*(v14 + 96))(v22, v83);
    v61 = *v22;
    v62 = swift_projectBox();
    v63 = v3;
    v64 = v78;
    (*(v3 + 16))(v6, v62, v78);
    v65 = v79;
    sub_1DDA14430();
    v66 = v88;
    sub_1DD9C3368(v65, 0);
    if (!v66)
    {
      v23 = v67;
    }

    (*(v80 + 8))(v65, v86);
    (*(v63 + 8))(v6, v64);
  }

  return v23;
}

uint64_t sub_1DD9C32BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_1DD9C3368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DDA143A0();
  v178 = *(v6 - 8);
  v179 = v6;
  v7 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1DDA143C0();
  v166 = *(v167 - 8);
  v9 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v191 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1DDA14300();
  v175 = *(v176 - 8);
  v11 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AA8, &qword_1DDA1BF38);
  v13 = *(*(v182 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v182);
  v181 = (&v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v180 = &v160 - v16;
  v169 = sub_1DDA14350();
  v168 = *(v169 - 8);
  v17 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v183 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1DDA14320();
  v172 = *(v173 - 8);
  v19 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DDA14370();
  v187 = *(v21 - 8);
  v188 = v21;
  v22 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v186 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DDA143D0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v165 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v162 = &v160 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v163 = &v160 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v170 = &v160 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v192 = &v160 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v189 = &v160 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v160 - v39;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v41 = sub_1DDA14810();
  v42 = __swift_project_value_buffer(v41, qword_1ECDA20E0);
  v43 = (v25 + 16);
  v44 = *(v25 + 16);
  v193 = a1;
  v44(v40, a1, v24);

  v164 = v42;
  v45 = sub_1DDA147F0();
  v46 = sub_1DDA14ED0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v184 = v2;
    v48 = v47;
    v49 = swift_slowAlloc();
    v190 = v25;
    v194 = a2;
    v195 = v49;
    v161 = v49;
    *v48 = 136315394;
    v44(v189, v40, v24);
    v50 = sub_1DDA14B70();
    v52 = v51;
    v185 = *(v190 + 8);
    v185(v40, v24);
    v53 = sub_1DD93FA54(v50, v52, &v195);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    v197 = v194;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AB0, &qword_1DDA1BF40);
    v54 = sub_1DDA14B70();
    v56 = sub_1DD93FA54(v54, v55, &v195);

    *(v48 + 14) = v56;
    _os_log_impl(&dword_1DD8F8000, v45, v46, "Trying to convert schema: %s, with definitions: %s", v48, 0x16u);
    v57 = v161;
    swift_arrayDestroy();
    v58 = v57;
    a2 = v194;
    v25 = v190;
    MEMORY[0x1E12B8CE0](v58, -1, -1);
    v59 = v48;
    v3 = v184;
    MEMORY[0x1E12B8CE0](v59, -1, -1);
  }

  else
  {

    v185 = *(v25 + 8);
    v185(v40, v24);
  }

  v61 = v192;
  v60 = v193;
  v44(v192, v193, v24);
  v62 = (*(v25 + 88))(v61, v24);
  v63 = v191;
  if (v62 == *MEMORY[0x1E69A0AB8])
  {
    (*(v25 + 96))(v61, v24);
    v64 = *v61;
    v65 = swift_projectBox();
    v67 = v186;
    v66 = v187;
    v68 = v188;
    v69 = (*(v187 + 16))(v186, v65, v188);
    v70 = MEMORY[0x1E12B7220](v69);
    sub_1DD96D7E4(v70);

    (*(v66 + 8))(v67, v68);
LABEL_53:

    return;
  }

  if (v62 == *MEMORY[0x1E69A0AC0])
  {
    v185(v61, v24);
    sub_1DD96D774();
    return;
  }

  if (v62 == *MEMORY[0x1E69A0AC8])
  {
    v185(v61, v24);
    sub_1DD96D77C();
    return;
  }

  if (v62 == *MEMORY[0x1E69A0AA8])
  {
    v185(v61, v24);
    sub_1DD96D784();
    return;
  }

  if (v62 == *MEMORY[0x1E69A0AE8])
  {
    (*(v25 + 96))(v61, v24);
    v71 = *v61;
    v72 = swift_projectBox();
    v74 = v177;
    v73 = v178;
    v75 = v179;
    (*(v178 + 16))(v177, v72, v179);
    v76 = sub_1DDA14390();
    v78 = v77;
    sub_1DDA14380();
    sub_1DD96DC58(v76, v78);

    (*(v73 + 8))(v74, v75);
    goto LABEL_53;
  }

  if (v62 == *MEMORY[0x1E69A0A98])
  {
    (*(v25 + 96))(v61, v24);
    v79 = *v61;
    v80 = swift_projectBox();
    v81 = v175;
    v82 = v174;
    v83 = v176;
    v84 = (*(v175 + 16))(v174, v80, v176);
    v85 = MEMORY[0x1E12B71A0](v84);
    MEMORY[0x1EEE9AC00](v85);
    *(&v160 - 2) = v82;
    v86 = sub_1DD9C2474(sub_1DD9C6534, (&v160 - 4), v85);
    if (!v3)
    {
      v125 = v86;

      sub_1DD96DBE4(v125);
    }

    (*(v81 + 8))(v82, v83);
    goto LABEL_53;
  }

  if (v62 == *MEMORY[0x1E69A0AA0])
  {
    (*(v25 + 96))(v61, v24);
    v193 = *v61;
    v87 = swift_projectBox();
    v88 = v172;
    v89 = v171;
    v90 = v173;
    v91 = (*(v172 + 16))(v171, v87, v173);
    v92 = v170;
    MEMORY[0x1E12B71D0](v91);
    v93 = sub_1DD9C3368(v92, a2);
    if (v3)
    {
      v185(v92, v24);
    }

    else
    {
      v136 = v93;
      v185(v92, v24);
      sub_1DD96D84C(v136);
    }

    (*(v88 + 8))(v89, v90);
    goto LABEL_53;
  }

  if (v62 == *MEMORY[0x1E69A0AB0])
  {
    v94 = a2;
    v179 = v44;
    v185 = v43;
    (*(v25 + 96))(v61, v24);
    v174 = *v61;
    v95 = swift_projectBox();
    v96 = (*(v168 + 16))(v183, v95, v169);
    v97 = MEMORY[0x1E12B71F0](v96);
    v98 = *(v97 + 16);
    if (v98)
    {
      v178 = v24;
      v197 = MEMORY[0x1E69E7CC0];
      sub_1DD9AF15C(0, v98, 0);
      v99 = v197;
      v100 = v97 + 64;
      v101 = -1 << *(v97 + 32);
      v102 = sub_1DDA14FD0();
      v176 = v25 + 32;
      v177 = v97;
      v194 = v94;
      v190 = v25;
      v175 = v97 + 64;
      while ((v102 & 0x8000000000000000) == 0 && v102 < 1 << *(v97 + 32))
      {
        v192 = v98;
        v193 = v99;
        v191 = v102 >> 6;
        v103 = *(v100 + 8 * (v102 >> 6));
        v189 = 1 << v102;
        if ((v103 & (1 << v102)) == 0)
        {
          goto LABEL_55;
        }

        LODWORD(v188) = *(v97 + 36);
        v104 = v182;
        v105 = *(v182 + 48);
        v106 = (*(v97 + 48) + 16 * v102);
        v107 = *v106;
        v108 = v106[1];
        v109 = v190;
        v110 = *(v97 + 56) + *(v190 + 72) * v102;
        v111 = v180;
        v112 = v178;
        v179(&v180[v105], v110, v178);
        v113 = v181;
        *v181 = v107;
        v113[1] = v108;
        v114 = *(v104 + 48);
        v115 = *(v109 + 32);
        v116 = v113;
        v115(v113 + v114, &v111[v105], v112);

        v117 = sub_1DD9C3368(v116 + v114, v194);
        if (v3)
        {
          sub_1DD90D378(v116, &qword_1ECD83AA8, &qword_1DDA1BF38);

          (*(v168 + 8))(v183, v169);
          goto LABEL_53;
        }

        v118 = v117;
        v119 = *(v117 + 24);
        v187 = *(v117 + 16);

        v120 = sub_1DDA14340();
        v195 = v107;
        v196 = v108;
        MEMORY[0x1EEE9AC00](v120);
        *(&v160 - 2) = &v195;
        LODWORD(v186) = sub_1DD9C32BC(sub_1DD9C6554, (&v160 - 4), v120);
        v184 = 0;

        sub_1DD90D378(v116, &qword_1ECD83AA8, &qword_1DDA1BF38);
        v99 = v193;
        v197 = v193;
        v122 = *(v193 + 16);
        v121 = *(v193 + 24);
        if (v122 >= v121 >> 1)
        {
          sub_1DD9AF15C((v121 > 1), v122 + 1, 1);
          v99 = v197;
        }

        *(v99 + 16) = v122 + 1;
        v123 = v99 + 48 * v122;
        *(v123 + 32) = v107;
        *(v123 + 40) = v108;
        *(v123 + 48) = v187;
        *(v123 + 56) = v119;
        *(v123 + 64) = v118;
        *(v123 + 72) = (v186 & 1) == 0;
        v97 = v177;
        if (v102 >= -(-1 << v177[32]))
        {
          goto LABEL_56;
        }

        v100 = v175;
        v124 = v192;
        v3 = v184;
        if ((*(v175 + 8 * v191) & v189) == 0)
        {
          goto LABEL_57;
        }

        if (v188 != *(v177 + 9))
        {
          goto LABEL_58;
        }

        v102 = sub_1DDA14FF0();
        v98 = (v124 - 1);
        if (!v98)
        {

          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    else
    {

      v99 = MEMORY[0x1E69E7CC0];
LABEL_48:
      sub_1DD96D8DC(v99);

      (*(v168 + 8))(v183, v169);
    }
  }

  else
  {
    if (v62 == *MEMORY[0x1E69A0AF0])
    {
      (*(v25 + 96))(v61, v24);
      v193 = *v61;
      v126 = swift_projectBox();
      (*(v166 + 16))(v63, v126, v167);
      v127 = a2;
      if (a2)
      {
        v128 = sub_1DDA143B0();
        if (*(a2 + 16))
        {
          v130 = sub_1DD96AC38(v128, v129);
          v132 = v131;
          v63 = v191;

          if (v132)
          {
            v133 = *(v127 + 56) + *(v25 + 72) * v130;
            v134 = v162;
            v44(v162, v133, v24);
            v135 = v163;
            (*(v25 + 32))(v163, v134, v24);
            sub_1DD9C3368(v135, v127);
            v185(v135, v24);
            (*(v166 + 8))(v63, v167);
            goto LABEL_53;
          }
        }

        else
        {
        }
      }

      v154 = v63;
      v155 = sub_1DDA13840();
      sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
      swift_allocError();
      v157 = v156;
      v195 = 0;
      v196 = 0xE000000000000000;
      sub_1DDA15070();
      MEMORY[0x1E12B7AB0](0xD000000000000021, 0x80000001DDA29010);
      v158 = sub_1DDA143B0();
      MEMORY[0x1E12B7AB0](v158);

      MEMORY[0x1E12B7AB0](0xD00000000000001DLL, 0x80000001DDA29040);
      v197 = v127;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AB0, &qword_1DDA1BF40);
      v159 = sub_1DDA14B70();
      MEMORY[0x1E12B7AB0](v159);

      sub_1DDA13800();
      (*(*(v155 - 8) + 104))(v157, *MEMORY[0x1E69DA4B0], v155);
      swift_willThrow();
      (*(v166 + 8))(v154, v167);
      goto LABEL_53;
    }

    v137 = v165;
    v44(v165, v60, v24);
    v138 = sub_1DDA147F0();
    v139 = sub_1DDA14ED0();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v195 = v141;
      *v140 = 136315138;
      v44(v189, v137, v24);
      v142 = sub_1DDA14B70();
      v143 = v137;
      v144 = v142;
      v146 = v145;
      v147 = v185;
      v185(v143, v24);
      v148 = sub_1DD93FA54(v144, v146, &v195);

      *(v140 + 4) = v148;
      _os_log_impl(&dword_1DD8F8000, v138, v139, "Unsupported Schema: %s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v141);
      v149 = v141;
      v150 = v147;
      v61 = v192;
      MEMORY[0x1E12B8CE0](v149, -1, -1);
      MEMORY[0x1E12B8CE0](v140, -1, -1);
    }

    else
    {

      v150 = v185;
      v185(v137, v24);
    }

    v151 = sub_1DDA13840();
    sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    v153 = v152;
    v195 = 0;
    v196 = 0xE000000000000000;
    sub_1DDA15070();
    MEMORY[0x1E12B7AB0](0xD000000000000037, 0x80000001DDA28FD0);
    sub_1DDA15160();
    sub_1DDA13800();
    (*(*(v151 - 8) + 104))(v153, *MEMORY[0x1E69DA4B0], v151);
    swift_willThrow();
    v150(v61, v24);
  }
}

uint64_t sub_1DD9C4944@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1DDA142F0();
  v8 = sub_1DD9C3368(a1, v7);

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1DD9C49C4(size_t a1)
{
  v2 = sub_1DDA13E40();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v30 = v24 - v9;
  v10 = *(a1 + 16);
  if (v10 < 2)
  {
    return a1;
  }

  v11 = 0;
  v12 = v10 >> 1;
  v13 = v10 - 1;
  v25 = v10 >> 1;
  v26 = v8;
  v24[1] = v8 + 16;
  v27 = (v8 + 40);
  while (1)
  {
    if (v11 == v13)
    {
      goto LABEL_5;
    }

    v14 = *(a1 + 16);
    if (v11 >= v14)
    {
      break;
    }

    v15 = v6;
    v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = a1 + v29;
    v17 = *(v8 + 72);
    v18 = a1;
    v19 = *(v8 + 16);
    v28 = v17 * v11;
    result = v19(v30, v16 + v17 * v11, v2);
    if (v13 >= v14)
    {
      goto LABEL_14;
    }

    v20 = v17 * v13;
    v21 = v16 + v17 * v13;
    v6 = v15;
    v19(v15, v21, v2);
    a1 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1DD9C4CEC(v18);
    }

    v22 = a1 + v29;
    v23 = *v27;
    result = (*v27)(a1 + v29 + v28, v6, v2);
    if (v13 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    result = v23(v22 + v20, v30, v2);
    v12 = v25;
    v8 = v26;
LABEL_5:
    ++v11;
    --v13;
    if (v12 == v11)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

size_t sub_1DD9C4BF0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A20, &qword_1DDA16E40);
  v4 = *(sub_1DDA13E40() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD9C4D14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
LABEL_13:
    v12 = 0;
    v14 = a4;
LABEL_17:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v14;
    return v12;
  }

  if (!a3)
  {
    v14 = a4;
LABEL_15:
    v12 = a3;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = a4 - a5;
    v13 = 1;
    v14 = a4;
    while (1)
    {
      if (v14 == a5)
      {
        v14 = a5;
        goto LABEL_17;
      }

      if (v14 <= a5)
      {
        break;
      }

      if (v14-- < 1)
      {
        goto LABEL_19;
      }

      if (v14 >= *(a6 + 16))
      {
        goto LABEL_20;
      }

      v16 = sub_1DDA13E40();
      v17 = *(v16 - 8);
      v18 = *(v17 + 72);
      result = (*(v17 + 16))(v11, a6 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v18 * v14, v16);
      if (v13 == a3)
      {
        goto LABEL_15;
      }

      v11 += v18;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD9C4E40(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440() & 1;
  }
}

void *sub_1DD9C4E98(void *a1)
{
  v2 = sub_1DDA13830();
  v105 = *(v2 - 8);
  v3 = *(v105 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v104 - v7;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v9 = sub_1DDA14810();
  __swift_project_value_buffer(v9, qword_1ECDA20E0);
  v10 = a1;
  v11 = sub_1DDA147F0();
  v12 = sub_1DDA14ED0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1DD8F8000, v11, v12, "Transforming error: %@", v13, 0xCu);
    sub_1DD90D378(v14, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
  }

  v120 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v110 = v116;
    v111 = v117;
    v112 = v118;
    v113 = v119;
    v108 = v114;
    v109 = v115;
    v18 = v116;
    if (*(&v116 + 1))
    {

      v19 = sub_1DD9FFD28();
      switch(v19)
      {
        case 3:
        case 12:
        case 24:
        case 25:
        case 35:
        case 36:
        case 37:
        case 38:
          v78 = sub_1DDA147F0();
          v79 = sub_1DDA14F00();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v107[0] = v81;
            *v80 = 136315138;
            v82 = sub_1DD9CEEC4(v19);
            v84 = sub_1DD93FA54(v82, v83, v107);

            *(v80 + 4) = v84;
            _os_log_impl(&dword_1DD8F8000, v78, v79, "Converted error code %s to TokenGenerationError.invalidParameters", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v81);
            MEMORY[0x1E12B8CE0](v81, -1, -1);
            MEMORY[0x1E12B8CE0](v80, -1, -1);
          }

          v27 = v105;
          v107[0] = 0;
          v107[1] = 0xE000000000000000;
          sub_1DDA15070();

          v107[0] = 0xD00000000000001ELL;
          v107[1] = 0x80000001DDA29080;
          v85 = sub_1DD9CEEC4(v19);
          MEMORY[0x1E12B7AB0](v85);

          sub_1DD956120();
          swift_allocError();
          v86 = v109;
          *v87 = v108;
          *(v87 + 16) = v86;
          v89 = v111;
          v88 = v112;
          v90 = v110;
          *(v87 + 80) = v113;
          *(v87 + 48) = v89;
          *(v87 + 64) = v88;
          *(v87 + 32) = v90;
          sub_1DDA13800();
          v60 = sub_1DDA13840();
          sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
          a1 = swift_allocError();
          v62 = v91;
          (*(v27 + 16))(v91, v8, v2);
          v63 = MEMORY[0x1E69DA4C0];
          goto LABEL_27;
        case 6:
        case 7:
        case 8:
        case 10:
        case 11:
        case 13:
        case 17:
        case 18:
        case 19:
          v47 = sub_1DDA147F0();
          v48 = sub_1DDA14F00();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v107[0] = v50;
            *v49 = 136315138;
            v51 = sub_1DD9CEEC4(v19);
            v53 = sub_1DD93FA54(v51, v52, v107);

            *(v49 + 4) = v53;
            _os_log_impl(&dword_1DD8F8000, v47, v48, "Converted error code %s to TokenGenerationError.authenticationFailed", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            MEMORY[0x1E12B8CE0](v50, -1, -1);
            MEMORY[0x1E12B8CE0](v49, -1, -1);
          }

          v27 = v105;
          strcpy(v107, "Token issue: ");
          HIWORD(v107[1]) = -4864;
          v54 = sub_1DD9CEEC4(v19);
          MEMORY[0x1E12B7AB0](v54);

          goto LABEL_20;
        case 21:
          v93 = sub_1DDA147F0();
          v94 = sub_1DDA14F00();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v107[0] = v96;
            *v95 = 136315138;
            v97 = sub_1DD9CEEC4(21);
            v99 = sub_1DD93FA54(v97, v98, v107);

            *(v95 + 4) = v99;
            _os_log_impl(&dword_1DD8F8000, v93, v94, "Converted error code %s to TokenGenerationError.accountError", v95, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v96);
            MEMORY[0x1E12B8CE0](v96, -1, -1);
            MEMORY[0x1E12B8CE0](v95, -1, -1);
          }

          v100 = v105;
          sub_1DD9CEEC4(21);

          sub_1DDA137F0();
          sub_1DD957334(&v108);
          v101 = sub_1DDA13840();
          sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
          a1 = swift_allocError();
          v103 = v102;
          (*(v100 + 16))(v102, v8, v2);
          (*(*(v101 - 8) + 104))(v103, *MEMORY[0x1E69DA488], v101);
          (*(v100 + 8))(v8, v2);
          return a1;
        case 22:
        case 23:
        case 26:
        case 27:
        case 30:
        case 31:
        case 32:
        case 33:
          v64 = sub_1DDA147F0();
          v65 = sub_1DDA14F00();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v107[0] = v67;
            *v66 = 136315138;
            v68 = sub_1DD9CEEC4(v19);
            v70 = sub_1DD93FA54(v68, v69, v107);

            *(v66 + 4) = v70;
            _os_log_impl(&dword_1DD8F8000, v64, v65, "Converted error code %s to TokenGenerationError.invalidated", v66, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v67);
            MEMORY[0x1E12B8CE0](v67, -1, -1);
            MEMORY[0x1E12B8CE0](v66, -1, -1);
          }

          v27 = v105;
          v107[0] = 0;
          v107[1] = 0xE000000000000000;
          sub_1DDA15070();

          v107[0] = 0xD000000000000021;
          v107[1] = 0x80000001DDA290A0;
          v71 = sub_1DD9CEEC4(v19);
          MEMORY[0x1E12B7AB0](v71);

          sub_1DD956120();
          swift_allocError();
          v72 = v109;
          *v73 = v108;
          *(v73 + 16) = v72;
          v75 = v111;
          v74 = v112;
          v76 = v110;
          *(v73 + 80) = v113;
          *(v73 + 48) = v75;
          *(v73 + 64) = v74;
          *(v73 + 32) = v76;
          sub_1DDA13800();
          v60 = sub_1DDA13840();
          sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
          a1 = swift_allocError();
          v62 = v77;
          (*(v27 + 16))(v77, v8, v2);
          v63 = MEMORY[0x1E69DA4A0];
          goto LABEL_27;
        case 39:
          goto LABEL_12;
        default:
          v20 = sub_1DDA147F0();
          v21 = sub_1DDA14F00();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v107[0] = v23;
            *v22 = 136315138;
            v24 = sub_1DD9CEEC4(v19);
            v26 = sub_1DD93FA54(v24, v25, v107);

            *(v22 + 4) = v26;
            _os_log_impl(&dword_1DD8F8000, v20, v21, "Converted error code %s to TokenGenerationError.authenticationFailed", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v23);
            MEMORY[0x1E12B8CE0](v23, -1, -1);
            MEMORY[0x1E12B8CE0](v22, -1, -1);
          }

          v27 = v105;
          sub_1DD9CEEC4(v19);
LABEL_20:
          sub_1DD956120();
          swift_allocError();
          v55 = v109;
          *v56 = v108;
          *(v56 + 16) = v55;
          v58 = v111;
          v57 = v112;
          v59 = v110;
          *(v56 + 80) = v113;
          *(v56 + 48) = v58;
          *(v56 + 64) = v57;
          *(v56 + 32) = v59;
          sub_1DDA13800();
          v60 = sub_1DDA13840();
          sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
          a1 = swift_allocError();
          v62 = v61;
          (*(v27 + 16))(v61, v8, v2);
          v63 = MEMORY[0x1E69DA4C8];
LABEL_27:
          (*(*(v60 - 8) + 104))(v62, *v63, v60);
          (*(v27 + 8))(v8, v2);
          break;
      }
    }

    else
    {
LABEL_12:
      sub_1DD9572FC(&v108, v107);
      v29 = sub_1DDA147F0();
      v30 = sub_1DDA14EE0();
      sub_1DD957334(&v108);
      v31 = os_log_type_enabled(v29, v30);
      v104 = v2;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v106 = v33;
        v107[0] = v18;
        *v32 = 136446210;
        v107[1] = *(&v18 + 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
        v34 = sub_1DDA14B70();
        v36 = sub_1DD93FA54(v34, v35, &v106);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_1DD8F8000, v29, v30, "Unrecognized error code: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x1E12B8CE0](v33, -1, -1);
        MEMORY[0x1E12B8CE0](v32, -1, -1);
      }

      if (v113)
      {

        sub_1DDA137F0();
        sub_1DD957334(&v108);
        v37 = sub_1DDA13840();
        sub_1DD9C65AC(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
        a1 = swift_allocError();
        v39 = v38;
        v40 = v104;
        v41 = v105;
        (*(v105 + 16))(v38, v6, v104);
        (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69DA480], v37);
        (*(v41 + 8))(v6, v40);
      }

      else
      {
        sub_1DD956120();
        a1 = swift_allocError();
        v42 = v109;
        *v43 = v108;
        *(v43 + 16) = v42;
        v45 = v111;
        v44 = v112;
        v46 = v110;
        *(v43 + 80) = v113;
        *(v43 + 48) = v45;
        *(v43 + 64) = v44;
        *(v43 + 32) = v46;
      }
    }
  }

  else
  {
    v28 = a1;
  }

  return a1;
}

uint64_t sub_1DD9C5CA4(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AB8, &qword_1DDA1BF48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v65 = &v61 - v4;
  v5 = sub_1DDA13DF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v74 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - v10;
  v12 = sub_1DDA13E40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v61 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v61 = &v61 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v62 = &v61 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v66 = &v61 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - v25;
  v27 = 0;
  v69 = a1;
  v28 = *(a1 + 2);
  v75 = v13 + 16;
  LODWORD(v68) = *MEMORY[0x1E69DA7B8];
  v29 = (v6 + 8);
  v72 = (v13 + 8);
  v73 = (v6 + 104);
  v70 = v28;
  v71 = v13;
  do
  {
    v30 = v27;
    if (!(v28 + v27))
    {
      break;
    }

    --v27;
    (*(v13 + 16))(v26, &v69[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * (v30 - 1 + v28)], v12);
    sub_1DDA13E00();
    v31 = v74;
    (*v73)(v74, v68, v5);
    sub_1DD9C65AC(&qword_1ECD83738, MEMORY[0x1E69DA7C0]);
    v32 = sub_1DDA14AF0();
    v33 = v12;
    v34 = *v29;
    (*v29)(v31, v5);
    v34(v11, v5);
    v12 = v33;
    v13 = v71;
    (*(v71 + 8))(v26, v12);
    v28 = v70;
  }

  while ((v32 & 1) == 0);
  if (v30)
  {
    v35 = sub_1DD9C4BF0(-v30, 0);
    v36 = sub_1DD9C4D14(v76, v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), -v30, v70, v70 + v30, v69);

    if (&v36[v30])
    {
LABEL_25:
      __break(1u);
LABEL_26:
      v36 = sub_1DD908874(0, *(v36 + 2) + 1, 1, v36);
      goto LABEL_20;
    }

    v37 = v35;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v38 = *(v37 + 16);

  v36 = v66;
  v68 = v38;
  if (v38)
  {
    v40 = 0;
    LODWORD(v67) = *MEMORY[0x1E69DA7A0];
    v41 = v74;
    while (v40 < *(v39 + 16))
    {
      v42 = v39;
      (*(v13 + 16))(v36, v39 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v40, v12);
      sub_1DDA13E00();
      (*v73)(v41, v67, v5);
      v43 = sub_1DDA13DE0();
      v44 = v12;
      v45 = *v29;
      (*v29)(v41, v5);
      v45(v11, v5);
      if (v43)
      {

        v55 = v71;
        v56 = v65;
        (*(v71 + 32))(v65, v36, v44);
        (*(v55 + 56))(v56, 0, 1, v44);
        v54 = v42;
        sub_1DD90D378(v56, &qword_1ECD83AB8, &qword_1DDA1BF48);
        return sub_1DD9C49C4(v54);
      }

      ++v40;
      (*v72)(v36, v44);
      v12 = v44;
      v13 = v71;
      v39 = v42;
      if (v68 == v40)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v66 = v39;

  v46 = v65;
  (*(v13 + 56))(v65, 1, 1, v12);
  sub_1DD90D378(v46, &qword_1ECD83AB8, &qword_1DDA1BF48);
  v47 = v70;
  if (!v70)
  {
LABEL_17:
    v54 = v66;
    return sub_1DD9C49C4(v54);
  }

  v48 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v67 = *(v13 + 72);
  v65 = v48;
  v49 = &v69[v48];
  LODWORD(v68) = *MEMORY[0x1E69DA7A0];
  v69 = *(v13 + 16);
  v50 = v64;
  while (1)
  {
    (v69)(v50, v49, v12);
    sub_1DDA13E00();
    v51 = v74;
    (*v73)(v74, v68, v5);
    v52 = sub_1DDA13DE0();
    v13 = v12;
    v53 = *v29;
    (*v29)(v51, v5);
    v53(v11, v5);
    if (v52)
    {
      break;
    }

    (*v72)(v50, v13);
    v49 += v67;
    --v47;
    v12 = v13;
    if (!v47)
    {
      goto LABEL_17;
    }
  }

  v29 = *(v71 + 32);
  v57 = v61;
  (v29)(v61, v50, v13);
  v11 = v62;
  (v29)(v62, v57, v13);
  v5 = v63;
  (v69)(v63, v11, v13);
  v36 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v59 = *(v36 + 2);
  v58 = *(v36 + 3);
  v54 = v36;
  if (v59 >= v58 >> 1)
  {
    v54 = sub_1DD908874(v58 > 1, v59 + 1, 1, v36);
  }

  (*v72)(v11, v13);
  *(v54 + 16) = v59 + 1;
  (v29)(&v65[v54 + v59 * v67], v5, v13);
  return sub_1DD9C49C4(v54);
}

uint64_t sub_1DD9C64C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83010, &qword_1DDA18A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD9C6554(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440() & 1;
  }
}

uint64_t sub_1DD9C65AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD9C6604()
{
  v37[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1DDA134E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v36 - v6;
  type metadata accessor for SessionRegistry();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_1DDA14B00();
  v11 = sub_1DDA14B00();
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    sub_1DDA134A0();

    (*(v1 + 32))(v7, v5, v0);
    v27 = sub_1DDA13500();
    v29 = v28;
    v30 = objc_opt_self();
    v31 = sub_1DDA13570();
    v37[0] = 0;
    v32 = [v30 propertyListWithData:v31 options:0 format:0 error:v37];

    if (v32)
    {
      v33 = v37[0];
      sub_1DDA14FB0();
      sub_1DD909D28(v27, v29);
      swift_unknownObjectRelease();
      (*(v1 + 8))(v7, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83620, &qword_1DDA1AFA0);
      if (swift_dynamicCast())
      {
        result = v36[2];
        goto LABEL_15;
      }
    }

    else
    {
      v34 = v37[0];
      v35 = sub_1DDA13410();

      swift_willThrow();
      sub_1DD909D28(v27, v29);
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DDA14810();
      __swift_project_value_buffer(v13, qword_1ECDA20F8);
      v14 = v35;
      v15 = sub_1DDA147F0();
      v16 = sub_1DDA14EE0();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v35;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_1DD8F8000, v15, v16, "Unable to get property list due to: %@", v17, 0xCu);
        sub_1DD9420B4(v18);
        MEMORY[0x1E12B8CE0](v18, -1, -1);
        MEMORY[0x1E12B8CE0](v17, -1, -1);
      }

      else
      {
      }

      (*(v1 + 8))(v7, v0);
    }
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DDA14810();
    __swift_project_value_buffer(v21, qword_1ECDA20F8);
    v22 = sub_1DDA147F0();
    v23 = sub_1DDA14EE0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DD8F8000, v22, v23, "Unable to access list of authorized use case IDs", v24, 2u);
      MEMORY[0x1E12B8CE0](v24, -1, -1);
    }
  }

  result = 0;
LABEL_15:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD9C6AF0()
{
  result = sub_1DD9C6604();
  if (!result)
  {
    result = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  qword_1ECDA2160 = result;
  return result;
}

void sub_1DD9C6B38()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    byte_1EE16F3D0 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD9C6B80(uint64_t a1)
{
  if (a1 < 27)
  {
    goto LABEL_5;
  }

  if (qword_1EE16F3C8 != -1)
  {
    swift_once();
  }

  if ((byte_1EE16F3D0 & 1) == 0)
  {
LABEL_5:
    sub_1DDA15070();

    v1 = sub_1DDA15400();
    MEMORY[0x1E12B7AB0](v1);

    MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
    v2 = sub_1DDA15400();
    MEMORY[0x1E12B7AB0](v2);

    MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
    v3 = sub_1DDA15400();
    MEMORY[0x1E12B7AB0](v3);
  }

  return 0x206E6F6973726556;
}

uint64_t sub_1DD9C6CFC(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  bzero(&v19, 0x500uLL);
  uname(&v19);
  MEMORY[0x1E12B7A60](v19.machine);
  if (!v4)
  {
    __break(1u);
  }

  v5 = [objc_opt_self() processInfo];
  [v5 operatingSystemVersion];

  if (a2)
  {
    if (qword_1ECD827E0 != -1)
    {
      swift_once();
    }

    v6 = 0xEC000000736C6F6FLL;
    v7 = qword_1ECDA2160;
    if (*(qword_1ECDA2160 + 16) && (v8 = sub_1DD96AC38(a1, a2), (v9 & 1) != 0))
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v11 = *v10;
      v6 = v10[1];
    }

    else
    {
      v11 = 0x54676E6974697257;
    }

    MEMORY[0x1E12B7AB0](32, 0xE100000000000000);
    MEMORY[0x1E12B7AB0](v11, v6);

    a2 = 0;
  }

  if (sub_1DDA14C50())
  {

    v12 = 0xE600000000000000;
    v13 = 0x656E6F685069;
  }

  else
  {
    v13 = 6512973;
    if (sub_1DDA14C50() & 1) != 0 || (sub_1DDA14C50())
    {

      v12 = 0xE300000000000000;
    }

    else
    {
      v13 = 1684099177;
      v14 = sub_1DDA14C50();

      if (v14)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v13 = 0x656E6F685069;
        v12 = 0xE600000000000000;
      }
    }
  }

  MEMORY[0x1E12B7AB0](v13, v12);

  MEMORY[0x1E12B7AB0](2108704, 0xE300000000000000);
  v15 = sub_1DD9C6B80(v18);
  MEMORY[0x1E12B7AB0](v15);

  MEMORY[0x1E12B7AB0](41, 0xE100000000000000);

  MEMORY[0x1E12B7AB0](40, 0xE100000000000000);

  result = a2;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD9C7010()
{
  result = sub_1DDA14810();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD9C70C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1DD9CB364(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1DD96AC38(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1DD9C9D00();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1DD9CAB74(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1DD9C71D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    sub_1DD9C82D4(a3, a4, a5, a6, &v16);

    return sub_1DD90D440(v16, *(&v16 + 1));
  }

  else
  {
    v10 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16 = *v6;
    sub_1DD9CB4EC(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v16;
  }

  return result;
}

uint64_t sub_1DD9C72B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1DD9CB6A0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1DD96AC38(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1DD9CA414(&qword_1ECD83090, &qword_1DDA1C120);
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1DD9CB1B4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1DD9C73C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1DD9CB840(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1DD96AC38(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1DD9CA70C(&qword_1ECD830B8, &qword_1DDA18D48);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1DD9CB1B4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_1DD9C74C8(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for UserDefaultsValueStore(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AE0, &unk_1DDA1C168);
  sub_1DDA14B70();
  sub_1DDA14800();

  if ((a1 & 0x100000000) == 0)
  {
    MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
    v5 = sub_1DDA15400();
    MEMORY[0x1E12B7AB0](v5);
  }

  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1DDA14B00();

  v8 = [v6 initWithSuiteName_];

  if (v8)
  {

    *a2 = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD9C7628()
{
  v1 = v0;
  v2 = *v0;
  sub_1DDA15070();

  strcpy(v6, "Vault.Value<");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  v3 = *(v2 + 80);
  v4 = sub_1DDA15680();
  MEMORY[0x1E12B7AB0](v4);

  MEMORY[0x1E12B7AB0](2112062, 0xE300000000000000);
  MEMORY[0x1E12B7AB0](v1[4], v1[5]);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](v1[2], v1[3]);
  return v6[0];
}

void *sub_1DD9C7708()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v3 = v0[12];

  v4 = v0[14];

  v5 = qword_1EE16F638;
  v6 = sub_1DDA14810();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1DD9C7790()
{
  sub_1DD9C7708();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD9C7870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v26[2] = a4;
  v26[1] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D08, &unk_1DDA185D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  v13 = sub_1DDA14050();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1DDA14040();
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v19 = type metadata accessor for ManagedKeychainValueStore(0);
    if (a6 >> 60 == 15)
    {
      v20 = (v6 + *(v19 + 28));
      v21 = *v20;
      v28 = *(v20 + 4);
      sub_1DDA14190();
      return (*(v14 + 8))(v17, v13);
    }

    else
    {
      v22 = *(v19 + 24);
      v23 = (v6 + *(v19 + 28));
      v24 = *v23;
      v25 = *(v23 + 4);
      sub_1DD909CD4(a5, a6);
      v27 = v25;
      sub_1DDA141B0();
      (*(v14 + 8))(v17, v13);
      return sub_1DD90D440(a5, a6);
    }
  }

  return result;
}

uint64_t sub_1DD9C7AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D08, &unk_1DDA185D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_1DDA14050();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1DDA14040();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = (v5 + *(a5 + 28));
    v18 = *v17;
    v21 = *(v17 + 4);
    v19 = sub_1DDA141A0();
    (*(v12 + 8))(v15, v11);
    return v19;
  }

  return result;
}

uint64_t sub_1DD9C7CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;

  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](a3, a4);
  v8 = sub_1DDA14B00();

  v9 = [v7 dataForKey_];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1DDA13590();

  return v10;
}

void sub_1DD9C7D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = *v6;
  if (a6 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1DDA13570();
  }

  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](a3, a4);
  v13 = sub_1DDA14B00();

  [v11 setValue:v12 forKey:{v13, a1, a2}];
  swift_unknownObjectRelease();
}

uint64_t sub_1DD9C7EA8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9C7F10()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9C7F60()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9C7FC4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DDA15440(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DDA15440();
    }
  }

  return result;
}

uint64_t sub_1DD9C8068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (*(v9 + 16) && (v10 = sub_1DD96ACB0(a1, a2, a3, a4), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 16 * v10;
    v13 = *v12;
    sub_1DD909CD4(*v12, *(v12 + 8));
  }

  else
  {
    v13 = 0;
  }

  swift_endAccess();
  return v13;
}

uint64_t sub_1DD9C8120()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1DD9C8190()
{
  result = qword_1ECD83AC0;
  if (!qword_1ECD83AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83AC0);
  }

  return result;
}

uint64_t sub_1DD9C8208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v13 = *v6;
  swift_beginAccess();

  sub_1DD9C82C0(a5, a6);
  sub_1DD9C71D0(a5, a6, a1, a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1DD9C82C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD909CD4(a1, a2);
  }

  return a1;
}

double sub_1DD9C82D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = sub_1DD96ACB0(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v19 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DD9C9E78();
      v14 = v19;
    }

    v15 = *(v14 + 48) + 32 * v11;
    v16 = *(v15 + 8);
    v17 = *(v15 + 24);

    *a5 = *(*(v14 + 56) + 16 * v11);
    sub_1DD9CAD24(v11, v14);
    *v6 = v14;
  }

  else
  {
    result = 0.0;
    *a5 = xmmword_1DDA195F0;
  }

  return result;
}

uint64_t sub_1DD9C838C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
  v40 = a2;
  result = sub_1DDA151B0();
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
      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
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

uint64_t sub_1DD9C864C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AC8, &qword_1DDA1C118);
  v38 = a2;
  result = sub_1DDA151B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v40 = v23[2];
      v39 = *(v22 + 16 * v21);
      if ((v38 & 1) == 0)
      {

        sub_1DD909CD4(v39, *(&v39 + 1));
      }

      v27 = *(v8 + 40);
      sub_1DDA15570();
      sub_1DDA14BC0();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v40;
      v17[3] = v26;
      *(*(v8 + 56) + 16 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DD9C8930(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1DDA134E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F90, &qword_1DDA18930);
  v44 = a2;
  result = sub_1DDA151B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v48 = v6;
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v46 = (v7 + 32);
    v20 = result + 64;
    v21 = v45;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v46)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      v30 = *(v13 + 40);
      sub_1DD9CBEC0();
      result = sub_1DDA14AC0();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v45;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v13 + 48) + v47 * v22, v21, v48);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
      v10 = v42;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1DD9C8CDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AD8, &qword_1DDA1C138);
  v34 = a2;
  result = sub_1DDA151B0();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v33 = v3;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = (*(v5 + 56) + 16 * (v18 | (v9 << 6)));
      v22 = *v21;
      v23 = v21[1];
      if ((v34 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v22;
      v17[1] = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DD9C8FA8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1DDA151B0();
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
      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
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

uint64_t sub_1DD9C9248(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83080, &unk_1DDA1C150);
  v40 = a2;
  result = sub_1DDA151B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      if ((v40 & 1) == 0)
      {

        sub_1DD940DF4();
      }

      v29 = *(v8 + 40);
      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v26;
      v18[1] = v27;
      v18[2] = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

uint64_t sub_1DD9C9528(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_1DDA151B0();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
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
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
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

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}