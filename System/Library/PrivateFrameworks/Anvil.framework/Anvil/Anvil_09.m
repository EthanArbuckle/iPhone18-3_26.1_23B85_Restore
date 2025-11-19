uint64_t sub_1DD9C97C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AD0, &unk_1DDA1C128);
  v36 = a2;
  result = sub_1DDA151B0();
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_1DDA15560();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DD9C9A48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83070, &unk_1DDA1C140);
  v36 = a2;
  result = sub_1DDA151B0();
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
        sub_1DD940DE4(v25, v37);
      }

      else
      {
        sub_1DD9410C8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1DDA15570();
      sub_1DDA14BC0();
      result = sub_1DDA155B0();
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
      result = sub_1DD940DE4(v37, (*(v8 + 56) + 32 * v16));
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

void *sub_1DD9C9D00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
  v2 = *v0;
  v3 = sub_1DDA151A0();
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

void *sub_1DD9C9E78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AC8, &qword_1DDA1C118);
  v2 = *v0;
  v3 = sub_1DDA151A0();
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v17 *= 16;
        v23 = (*(v4 + 48) + v18);
        v24 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        *(*(v4 + 56) + v17) = v24;

        result = sub_1DD909CD4(v24, *(&v24 + 1));
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

char *sub_1DD9CA010()
{
  v1 = v0;
  v34 = sub_1DDA134E0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F90, &qword_1DDA18930);
  v4 = *v0;
  v5 = sub_1DDA151A0();
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

void *sub_1DD9CA290()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AD8, &qword_1DDA1C138);
  v2 = *v0;
  v3 = sub_1DDA151A0();
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
        v18 = (*(v2 + 56) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 56) + v17);
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

void *sub_1DD9CA414(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DDA151A0();
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
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

void *sub_1DD9CA574()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83080, &unk_1DDA1C150);
  v2 = *v0;
  v3 = sub_1DDA151A0();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;

        result = sub_1DD940DF4();
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

id sub_1DD9CA70C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DDA151A0();
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
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

void *sub_1DD9CA868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83AD0, &unk_1DDA1C128);
  v2 = *v0;
  v3 = sub_1DDA151A0();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1DD9CA9D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83070, &unk_1DDA1C140);
  v2 = *v0;
  v3 = sub_1DDA151A0();
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
        sub_1DD9410C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DD940DE4(v25, (*(v4 + 56) + v22));
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

uint64_t sub_1DD9CAB74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DDA14FE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DDA15570();

      sub_1DDA14BC0();
      v13 = sub_1DDA155B0();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_1DD9CAD24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DDA14FE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      sub_1DDA15570();

      sub_1DDA14BC0();
      sub_1DDA14BC0();
      v15 = sub_1DDA155B0();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 16 * v3);
        v23 = (v21 + 16 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

unint64_t sub_1DD9CAEFC(int64_t a1, uint64_t a2)
{
  v4 = sub_1DDA134E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1DDA14FE0();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_1DD9CBEC0();
      v23 = sub_1DDA14AC0();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

uint64_t sub_1DD9CB1B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DDA14FE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DDA15570();

      sub_1DDA14BC0();
      v13 = sub_1DDA155B0();

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

uint64_t sub_1DD9CB364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DD96AC38(a3, a4);
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
      sub_1DD9C838C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1DD96AC38(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DD9C9D00();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_1DD9CB4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1DD96ACB0(a3, a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1DD9C864C(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_1DD96ACB0(a3, a4, a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1DD9C9E78();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 16 * v17);
    v30 = *v29;
    v31 = v29[1];
    *v29 = a1;
    v29[1] = a2;

    return sub_1DD909D28(v30, v31);
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v33 = (v28[6] + 32 * v17);
  *v33 = a3;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v34 = (v28[7] + 16 * v17);
  *v34 = a1;
  v34[1] = a2;
  v35 = v28[2];
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;
}

uint64_t sub_1DD9CB6A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DD96AC38(a2, a3);
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
      sub_1DD9C8FA8(v16, a4 & 1, &qword_1ECD83090, &qword_1DDA1C120);
      v20 = *v5;
      v11 = sub_1DD96AC38(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DD9CA414(&qword_1ECD83090, &qword_1DDA1C120);
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

uint64_t sub_1DD9CB840(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DD96AC38(a2, a3);
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
      sub_1DD9C9528(v16, a4 & 1, &qword_1ECD830B8, &qword_1DDA18D48);
      v20 = *v5;
      v11 = sub_1DD96AC38(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1DDA15500();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1DD9CA70C(&qword_1ECD830B8, &qword_1DDA18D48);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_1DD9CB9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DD96AC38(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1DD9C9248(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_1DD96AC38(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1DD9CA574();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;

    return sub_1DD94A02C();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v32 = (v26[6] + 16 * v15);
  *v32 = a4;
  v32[1] = a5;
  v33 = (v26[7] + 24 * v15);
  *v33 = a1;
  v33[1] = a2;
  v33[2] = a3;
  v34 = v26[2];
  v19 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v35;
}

unint64_t sub_1DD9CBB84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DD96AE9C(a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DD9C97C4(v16, a4 & 1);
      v20 = *v5;
      result = sub_1DD96AE9C(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1DDA15500();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DD9CA868();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

_OWORD *sub_1DD9CBCE4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DD96AC38(a2, a3);
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
      sub_1DD9CA9D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DD9C9A48(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DD96AC38(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DDA15500();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1DD940DE4(a1, v23);
  }

  else
  {
    sub_1DD9CBE34(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1DD9CBE34(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DD940DE4(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1DD9CBEC0()
{
  result = qword_1ECD83488;
  if (!qword_1ECD83488)
  {
    sub_1DDA134E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83488);
  }

  return result;
}

unint64_t sub_1DD9CBF50()
{
  result = sub_1DD9CBFD4();
  if (v1 <= 0x3F)
  {
    result = sub_1DDA14810();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DD9CBFD4()
{
  result = qword_1EE16F388;
  if (!qword_1EE16F388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE16F388);
  }

  return result;
}

void sub_1DD9CC068()
{
  sub_1DDA141D0();
  if (v0 <= 0x3F)
  {
    sub_1DDA14050();
    if (v1 <= 0x3F)
    {
      sub_1DDA14060();
      if (v2 <= 0x3F)
      {
        sub_1DD9CC11C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD9CC11C()
{
  if (!qword_1EE16F0E0)
  {
    v0 = sub_1DDA14F50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE16F0E0);
    }
  }
}

unint64_t sub_1DD9CC1B4()
{
  result = sub_1DD9CC248();
  if (v1 <= 0x3F)
  {
    result = sub_1DDA14810();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DD9CC248()
{
  result = qword_1EE16F8E0;
  if (!qword_1EE16F8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE16F8E0);
  }

  return result;
}

unint64_t sub_1DD9CC2B0()
{
  result = qword_1ECD83AE8;
  if (!qword_1ECD83AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83AE8);
  }

  return result;
}

void sub_1DD9CC34C()
{
  sub_1DD9CD674(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD9CC404()
{
  type metadata accessor for CreateSessionResponse(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChatChunk.FileUploadResponse(319);
    if (v1 <= 0x3F)
    {
      sub_1DD9CDA20(319, &qword_1ECD83B00, &type metadata for ChatChunk.Notice, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ChatChunk.ChoiceResource(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ChatChunk.ChoiceItemMessageContent(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ChatChunk.TextValueAnnotation(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ChatChunk.RateLimits(319);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1DD9CC6F0()
{
  sub_1DD9CDA20(319, &qword_1ECD83B18, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FileGeneratorCall.File(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 28);
  v7 = a4(0);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1 + v6, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *(a4 + 28);
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, a2, a2, v8);
}

uint64_t __swift_get_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DD9CCA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil9InputItemO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DD9CCB34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DD9CCB7C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1DD9CCC24()
{
  result = type metadata accessor for TextAnnotation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CCD04()
{
  result = type metadata accessor for TextAnnotation.URLCitation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CCDC4()
{
  result = sub_1DDA134E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CCE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD9CCEA0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1DD9CCF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CD038()
{
  result = type metadata accessor for ImageURLItem(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ImageGeneratorImage(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FileGeneratorFile(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_119Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DDA134E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_120Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DDA134E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD9CD2D0()
{
  result = sub_1DDA134E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9CD3C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 65))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 64);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DD9CD408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD9CD4B8()
{
  result = type metadata accessor for ChatChunk.Choice(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD9CD55C()
{
  sub_1DD9CDA20(319, &qword_1ECD83C00, &type metadata for InputItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DD9CDA20(319, &qword_1ECD83C08, &type metadata for ChatChunk.IncompleteDetail, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DD9CD674(319, &qword_1ECD83C10, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD9CD674(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DDA14F50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DD9CD6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DD9CD720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD9CD774(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1DD9CD7F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1DD9CD840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DD9CD8D4()
{
  sub_1DD9CD674(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1DD9CDA20(319, &qword_1ECD83C28, &type metadata for ChatChunk.FileUploadResponse.Status, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DD9CDA20(319, &unk_1EE16F3B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DD9CDA20(319, &qword_1ECD83C30, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD9CDA20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD9CDAA8()
{
  sub_1DDA13680();
  if (v0 <= 0x3F)
  {
    sub_1DD9CD674(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionExpirationOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionExpirationOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1DD9CDBF4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1DD9CDC08(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1DD9CDC64()
{
  sub_1DD9CD674(319, qword_1EE16F4D8, type metadata accessor for ChatChunk.RateLimits.Limits);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1DD9CDCF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1DD928DC0(a2, a3);
  sub_1DDA14BC0();
}

uint64_t sub_1DD9CDE0C()
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD9CDF44()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE064()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE1A8()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE2CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1DDA15570();
  sub_1DD928DC0(a2, a3);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE3F8()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE544()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9CE658()
{
  v1 = 0xEA00000000006E6FLL;
  v51 = type metadata accessor for MessageContent(0);
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0 + *(type metadata accessor for ChatChunk.ChoiceResource(0) + 20);
  if (*(v6 + 16) && *(v6 + 16) == 1)
  {
  }

  else
  {
    v8 = sub_1DDA15440();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v6 + 56) != 1)
  {
    v21 = *(v6 + 32);
    v22 = *(v6 + 40);
    v23 = 0x6974617265646F6DLL;
    v49 = *(v6 + 48);
    v50 = v21;
    if (v22 <= 1)
    {
      v33 = 0x6974617265646F6DLL;
      v34 = 0xEA00000000006E6FLL;
      if (!v22)
      {
LABEL_32:
        if (v33 == 0x6974617265646F6DLL && v34 == 0xEA00000000006E6FLL)
        {
          goto LABEL_47;
        }

LABEL_34:
        v35 = sub_1DDA15440();
        sub_1DD928DC0(v50, v22);

        if (v35)
        {
          goto LABEL_49;
        }

        if (v22 <= 1)
        {
          if (v22 <= 1)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v22 == 2)
          {
            v36 = 0x5F746E65746E6F63;
            v37 = 0xEE007265746C6966;
LABEL_45:
            if (v36 != 0x5F746E65746E6F63 || v37 != 0xEE007265746C6966)
            {
              goto LABEL_48;
            }

LABEL_47:
            sub_1DD928DC0(v50, v22);

            goto LABEL_49;
          }

          if (v22 == 3 || v22 == 4)
          {
LABEL_48:
            v38 = sub_1DDA15440();
            sub_1DD928DC0(v50, v22);

            if ((v38 & 1) == 0)
            {
              goto LABEL_6;
            }

LABEL_49:
            v39 = sub_1DDA13840();
            sub_1DD9E4B98(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
            v40 = swift_allocError();
            v42 = v41;
            v43 = *MEMORY[0x1E69A0960];
            v44 = sub_1DDA142D0();
            (*(*(v44 - 8) + 104))(v42, v43, v44);
            v52 = 0;
            v53 = 0xE000000000000000;
            sub_1DDA15070();

            v52 = 0xD00000000000001DLL;
            v53 = 0x80000001DDA29CC0;
            if (v22 <= 1)
            {
              if (!v22)
              {
                goto LABEL_60;
              }

              if (v22 == 1)
              {
                v1 = 0xE500000000000000;
                v23 = 0x726568746FLL;
                goto LABEL_60;
              }
            }

            else
            {
              switch(v22)
              {
                case 2:
                  v23 = 0x5F746E65746E6F63;
                  v1 = 0xEE007265746C6966;
                  goto LABEL_60;
                case 3:
                  v1 = 0x80000001DDA28030;
                  v23 = 0xD00000000000001BLL;
                  goto LABEL_60;
                case 4:
                  v1 = 0x80000001DDA28010;
                  v23 = 0xD00000000000001CLL;
LABEL_60:
                  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84260, &qword_1DDA1E360) + 48);
                  sub_1DD928DC0(v50, v22);
                  MEMORY[0x1E12B7AB0](v23, v1);

                  sub_1DDA137F0();
                  (*(*(v39 - 8) + 104))(v42, *MEMORY[0x1E69DA4B8], v39);
                  return v40;
              }
            }

            v23 = v50;
            v1 = v22;
            goto LABEL_60;
          }
        }

        v36 = v50;
        v37 = v22;
        goto LABEL_45;
      }

      if (v22 == 1)
      {
        goto LABEL_34;
      }
    }

    else if (v22 == 2 || v22 == 3 || v22 == 4)
    {
      goto LABEL_34;
    }

    v33 = v50;
    v34 = v22;
    goto LABEL_32;
  }

LABEL_6:
  v9 = *(v6 + 24);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  while (v11 < *(v9 + 16))
  {
    v12 = v9 + 32 + 56 * v11;
    if (!*(v12 + 48))
    {
      v13 = *(v12 + 24);
      if (v13)
      {
        v14 = *v12;
        v15 = *(v12 + 8);
        v16 = *(v12 + 16);
        v18 = *(v12 + 32);
        v17 = *(v12 + 40);
        v50 = v18;
        v48 = v14;
        v49 = v17;
        v19 = *(v15 + 16);
        v47 = v16;
        result = sub_1DD96E3D8();
        if (v19)
        {
          v20 = 0;
          while (v20 < *(v15 + 16))
          {
            sub_1DD9FF500(v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, v5, type metadata accessor for MessageContent);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              sub_1DD96E310(v48, v15, v47, v13, v50, v49, 0);
              v25 = *v5;
              v24 = v5[1];
              v26 = sub_1DDA13840();
              sub_1DD9E4B98(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
              v27 = swift_allocError();
              v29 = v28;
              v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84260, &qword_1DDA1E360) + 48);
              v31 = *MEMORY[0x1E69A0960];
              v32 = sub_1DDA142D0();
              (*(*(v32 - 8) + 104))(v29, v31, v32);
              v52 = 0;
              v53 = 0xE000000000000000;
              sub_1DDA15070();

              v52 = 0xD000000000000023;
              v53 = 0x80000001DDA29C90;
              MEMORY[0x1E12B7AB0](v25, v24);
              sub_1DDA137F0();
              (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69DA4B8], v26);
              return v27;
            }

            ++v20;
            result = sub_1DD9FF568(v5, type metadata accessor for MessageContent);
            if (v19 == v20)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:
        result = sub_1DD96E310(v48, v15, v47, v13, v50, v49, 0);
      }
    }

    if (++v11 == v10)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD9CEEC4(char a1)
{
  result = 0x5F746E65736E6F63;
  switch(a1)
  {
    case 1:
      return 0x61665F6E69676F6CLL;
    case 2:
      return 0x665F70756E676973;
    case 3:
    case 15:
    case 16:
    case 17:
      return 0x5F64696C61766E69;
    case 4:
    case 5:
    case 13:
      v3 = 10;
      goto LABEL_25;
    case 6:
    case 29:
      v3 = 5;
      goto LABEL_25;
    case 7:
      v3 = 9;
LABEL_25:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
    case 10:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
    case 12:
    case 20:
      result = 0x5F676E697373696DLL;
      break;
    case 14:
    case 19:
    case 23:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x78655F6E656B6F74;
      break;
    case 21:
    case 28:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 24:
    case 36:
      result = 0xD000000000000026;
      break;
    case 25:
      result = 0xD000000000000024;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
    case 34:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x655F64616F6C7075;
      break;
    case 35:
      result = 0xD000000000000020;
      break;
    case 37:
      result = 0xD000000000000025;
      break;
    case 38:
      result = 0xD000000000000030;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD9CF2B0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DD9CF2E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_1DD9CF2F4()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_1DD9CF300(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1DD9CF310(uint64_t a1)
{
  v2 = sub_1DD9FEF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9CF34C(uint64_t a1)
{
  v2 = sub_1DD9FEF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9CF38C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84218, &qword_1DDA1E348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA06610();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    SessionResponse = type metadata accessor for CreateSessionResponse(0);
    v14 = SessionResponse[5];
    LOBYTE(v18) = 1;
    sub_1DDA13680();
    sub_1DD9E4B98(&qword_1ECD829A0, MEMORY[0x1E6969530]);
    sub_1DDA15380();
    v15 = SessionResponse[6];
    LOBYTE(v18) = 2;
    sub_1DDA15380();
    v16 = SessionResponse[7];
    LOBYTE(v18) = 3;
    sub_1DDA15330();
    v18 = *(v3 + SessionResponse[8]);
    v19 = 4;
    sub_1DDA066B8();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9CF600()
{
  v1 = v0;
  v2 = sub_1DDA13680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_1DDA14BC0();
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v14 = SessionResponse[5];
  sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
  sub_1DDA14AD0();
  v15 = v1 + SessionResponse[6];
  sub_1DDA14AD0();
  sub_1DD90ADB4(v1 + SessionResponse[7], v10, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1DDA15590();
    sub_1DDA14AD0();
    (*(v3 + 8))(v6, v2);
  }

  v16 = v1 + SessionResponse[8];
  if (*v16 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 1);
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  return MEMORY[0x1E12B8440](v17);
}

uint64_t sub_1DD9CF8CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v33 - v5;
  v6 = sub_1DDA13680();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84200, &qword_1DDA1E340);
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v18 = *(*(SessionResponse - 8) + 64);
  v20 = *(MEMORY[0x1EEE9AC00](SessionResponse) + 28);
  v21 = *(v7 + 56);
  v45 = (&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = v20;
  v21(v45 + v20, 1, 1, v6);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA06610();
  v43 = v16;
  v23 = v44;
  sub_1DDA15620();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DD90D378(v45 + v46, &qword_1ECD82838, &unk_1DDA185F0);
  }

  else
  {
    v24 = v41;
    v44 = a1;
    v36 = v7;
    v37 = SessionResponse;
    LOBYTE(v47) = 0;
    v25 = sub_1DDA15280();
    v26 = v45;
    *v45 = v25;
    *(v26 + 8) = v27;
    v35 = v27;
    LOBYTE(v47) = 1;
    sub_1DD9E4B98(&qword_1ECD82990, MEMORY[0x1E6969530]);
    sub_1DDA152C0();
    v28 = v26 + v37[5];
    v34 = *(v36 + 32);
    v34(v28, v12, v6);
    LOBYTE(v47) = 2;
    v29 = v40;
    sub_1DDA152C0();
    v34(v26 + v37[6], v29, v6);
    LOBYTE(v47) = 3;
    sub_1DDA15260();
    sub_1DD90AE1C(v39, v26 + v46, &qword_1ECD82838, &unk_1DDA185F0);
    v48 = 4;
    sub_1DDA06664();
    sub_1DDA152C0();
    v30 = v44;
    (*(v24 + 8))(v43, v42);
    v31 = v38;
    *(v26 + v37[8]) = v47;
    sub_1DD9FF500(v26, v31, type metadata accessor for CreateSessionResponse);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return sub_1DD9FF568(v26, type metadata accessor for CreateSessionResponse);
  }
}

uint64_t sub_1DD9CFEC0(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD847A8, &qword_1DDA227A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C338();
  sub_1DDA15650();
  v15 = a2 & 1;
  v14 = 0;
  sub_1DDA0C3E0();
  sub_1DDA15380();
  if (!v2)
  {
    v13 = 1;
    sub_1DDA15370();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9D006C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D0164()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D0248()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D033C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA01600();
  *a2 = result;
  return result;
}

void sub_1DD9D036C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEE0074615F657669;
  v6 = 0x7463615F7473616CLL;
  v7 = 0xEA00000000007461;
  if (v2 != 3)
  {
    v7 = 0xED00007265746661;
  }

  if (v2 != 2)
  {
    v6 = 0x5F73657269707865;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F64657461657263;
    v3 = 0xEA00000000007461;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1DD9D0420()
{
  v1 = 25705;
  v2 = 0x7463615F7473616CLL;
  if (*v0 != 2)
  {
    v2 = 0x5F73657269707865;
  }

  if (*v0)
  {
    v1 = 0x5F64657461657263;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9D04D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA01600();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9D04F8(uint64_t a1)
{
  v2 = sub_1DDA06610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D0534(uint64_t a1)
{
  v2 = sub_1DDA06610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D05D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7463615F7473616CLL;
  }

  else
  {
    v4 = 0x5F64657461657263;
  }

  if (v3)
  {
    v5 = 0xEA00000000007461;
  }

  else
  {
    v5 = 0xEE0074615F657669;
  }

  if (*a2)
  {
    v6 = 0x7463615F7473616CLL;
  }

  else
  {
    v6 = 0x5F64657461657263;
  }

  if (*a2)
  {
    v7 = 0xEE0074615F657669;
  }

  else
  {
    v7 = 0xEA00000000007461;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

void sub_1DD9D0698(uint64_t *a1@<X8>)
{
  v2 = 0x5F64657461657263;
  if (*v1)
  {
    v2 = 0x7463615F7473616CLL;
  }

  v3 = 0xEA00000000007461;
  if (*v1)
  {
    v3 = 0xEE0074615F657669;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9D0798()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D082C()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D08AC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D093C()
{
  if (*v0)
  {
    result = 0x73646E6F636573;
  }

  else
  {
    result = 0x726F68636E61;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9D0974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000)
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

uint64_t sub_1DD9D0A4C(uint64_t a1)
{
  v2 = sub_1DDA0C338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D0A88(uint64_t a1)
{
  v2 = sub_1DDA0C338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D0AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DDA0164C(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1DD9D0B18()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1DDA15570();
  sub_1DDA14BC0();

  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D0BC4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1DDA14BC0();

  return MEMORY[0x1E12B8440](v2);
}

uint64_t sub_1DD9D0C54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1DDA15570();
  sub_1DDA14BC0();

  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D0D18(void *a1, char a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  if (a2 == 2)
  {
    sub_1DDA15470();
  }

  else
  {
    sub_1DDA06760();
    sub_1DDA154A0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1DD9D0E58()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1DDA15570();
  v3 = 0;
  if (v1 != 2)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();

    v3 = v2;
  }

  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D0F1C()
{
  if (*v0 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 8);
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  return MEMORY[0x1E12B8440](v1);
}

uint64_t sub_1DD9D0FCC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1DDA15570();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D10A4(char a1)
{
  result = 0x72756769666E6F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
      result = 0x7463757274736E69;
      break;
    case 4:
      result = 0x7475706E69;
      break;
    case 5:
      result = 0x69685F7475706E69;
      break;
    case 6:
      v3 = 0x746E65696C63;
      goto LABEL_15;
    case 7:
      v3 = 0x726576726573;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      break;
    case 8:
      result = 0x6F68635F6C6F6F74;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x74617265706D6574;
      break;
    case 11:
      result = 0x6974636964657270;
      break;
    case 12:
      result = 0x65736E6F70736572;
      break;
    case 13:
      result = 0x6D6165727473;
      break;
    case 14:
      result = 0x6564756C636E69;
      break;
    case 15:
      result = 0x6E696E6F73616572;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1DD9D128C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD847B8, &qword_1DDA227A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C434();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v33) = 0;
  sub_1DDA15300();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v33 = *(v3 + 1);
    v34 = v13;
    *&v35[0] = v3[6];
    LOBYTE(v30[0]) = 1;
    sub_1DDA0C488();
    sub_1DDA15330();
    v14 = v3[7];
    v15 = v3[8];
    LOBYTE(v33) = 2;
    sub_1DDA15300();
    v16 = v3[9];
    v17 = v3[10];
    LOBYTE(v33) = 3;
    sub_1DDA15300();
    *&v33 = v3[11];
    LOBYTE(v30[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84118, &qword_1DDA1E308);
    sub_1DDA0C4DC();
    sub_1DDA15380();
    LOBYTE(v33) = *(v3 + 96);
    LOBYTE(v30[0]) = 5;
    sub_1DDA0C5B4();
    sub_1DDA15330();
    *&v33 = v3[13];
    LOBYTE(v30[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD847E8, &qword_1DDA227B0);
    sub_1DDA0C608();
    sub_1DDA15380();
    *&v33 = v3[14];
    LOBYTE(v30[0]) = 7;
    sub_1DDA15380();
    v33 = *(v3 + 15);
    LOBYTE(v30[0]) = 8;
    sub_1DDA0C6E0();
    sub_1DDA15330();
    *&v33 = v3[17];
    LOBYTE(v30[0]) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84808, &qword_1DDA227B8);
    sub_1DDA0C734();
    sub_1DDA15330();
    v18 = v3[18];
    v19 = *(v3 + 152);
    LOBYTE(v33) = 10;
    sub_1DDA15320();
    v20 = *(v3 + 11);
    v33 = *(v3 + 10);
    v34 = v20;
    LOBYTE(v30[0]) = 11;
    sub_1DDA0C80C();
    sub_1DDA15330();
    v21 = *(v3 + 13);
    v36[0] = *(v3 + 12);
    v36[1] = v21;
    v23 = *(v3 + 12);
    v22 = *(v3 + 13);
    v37[0] = *(v3 + 14);
    *(v37 + 9) = *(v3 + 233);
    v33 = v23;
    v34 = v22;
    v35[0] = *(v3 + 14);
    *(v35 + 9) = *(v3 + 233);
    v32 = 12;
    sub_1DD90ADB4(v36, v30, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DDA0C860();
    sub_1DDA15330();
    v30[0] = v33;
    v30[1] = v34;
    *v31 = v35[0];
    *&v31[9] = *(v35 + 9);
    sub_1DD90D378(v30, &qword_1ECD83748, &unk_1DDA227C0);
    v24 = *(v3 + 249);
    LOBYTE(v29) = 13;
    sub_1DDA15350();
    v29 = v3[32];
    v28[7] = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD9C03AC();
    sub_1DDA15330();
    v25 = v3[33];
    v26 = v3[34];
    LOBYTE(v29) = 15;
    sub_1DDA15300();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9D1854(__int128 *a1)
{
  v2 = v1;
  if (!v1[1])
  {
    sub_1DDA15590();
    if (!v1[3])
    {
      goto LABEL_11;
    }

LABEL_5:
    v6 = v1[5];
    v5 = v1[6];
    v7 = v1[4];
    v8 = v1[2];
    sub_1DDA15590();
    sub_1DDA14BC0();
    sub_1DD96CFA8(a1, v7);
    if (v6)
    {
      sub_1DDA15590();
      sub_1DD96C990(a1, v6);
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1DDA15590();
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    sub_1DDA15590();
    sub_1DD96C724(a1, v5);
    if (v1[8])
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v4 = *v1;
  sub_1DDA15590();
  sub_1DDA14BC0();
  if (v1[3])
  {
    goto LABEL_5;
  }

LABEL_11:
  sub_1DDA15590();
  if (v1[8])
  {
LABEL_12:
    v9 = v1[7];
    sub_1DDA15590();
    sub_1DDA14BC0();
    if (v1[10])
    {
      goto LABEL_13;
    }

LABEL_9:
    sub_1DDA15590();
    goto LABEL_14;
  }

LABEL_8:
  sub_1DDA15590();
  if (!v1[10])
  {
    goto LABEL_9;
  }

LABEL_13:
  v10 = v1[9];
  sub_1DDA15590();
  sub_1DDA14BC0();
LABEL_14:
  sub_1DD96BCC4(a1, v1[11]);
  if (*(v1 + 96) == 3)
  {
    sub_1DDA15590();
  }

  else
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  sub_1DD96CB44(a1, v1[13]);
  sub_1DD96CB44(a1, v1[14]);
  v11 = v1[16];
  if (v11 != 3)
  {
    v13 = v1[15];
    sub_1DDA15590();
    if (v11)
    {
      if (v11 == 1)
      {
        v14 = 1;
      }

      else
      {
        if (v11 != 2)
        {
          MEMORY[0x1E12B8440](3);
          sub_1DDA14BC0();
          v12 = v1[17];
          if (!v12)
          {
            goto LABEL_35;
          }

          goto LABEL_27;
        }

        v14 = 2;
      }
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1E12B8440](v14);
    v12 = v1[17];
    if (!v12)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  sub_1DDA15590();
  v12 = v1[17];
  if (!v12)
  {
LABEL_35:
    sub_1DDA15590();
    if ((v1[19] & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_31:
    sub_1DDA15590();
    if (!v2[21])
    {
      goto LABEL_40;
    }

LABEL_32:
    v22 = v2[22];
    v21 = v2[23];
    v23 = v2[20];
    sub_1DDA15590();
    sub_1DDA14BC0();
    sub_1DDA14BC0();
    if (!v2[25])
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

LABEL_27:
  sub_1DDA15590();
  v15 = *(v12 + 16);
  MEMORY[0x1E12B8440](v15);
  if (v15)
  {
    v16 = (v12 + 56);
    do
    {
      v17 = *(v16 - 3);
      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;

      sub_1DDA14BC0();
      sub_1DDA14BC0();

      v16 += 4;
      --v15;
    }

    while (v15);
  }

  if (v2[19])
  {
    goto LABEL_31;
  }

LABEL_36:
  v30 = v2[18];
  sub_1DDA15590();
  if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  MEMORY[0x1E12B8460](v31);
  if (v2[21])
  {
    goto LABEL_32;
  }

LABEL_40:
  sub_1DDA15590();
  if (v2[25])
  {
LABEL_33:
    v40 = *(v2 + 248);
    v25 = v2[29];
    v24 = v2[30];
    v27 = v2[27];
    v26 = v2[28];
    v28 = v2[26];
    v29 = v2[24];
    sub_1DDA15590();
    sub_1DDA14BC0();
    sub_1DDA14BC0();
    sub_1DD965608(a1);
    sub_1DDA14BC0();
  }

LABEL_41:
  sub_1DDA15590();
  v32 = *(v2 + 249);
  sub_1DDA15590();
  v33 = v2[32];
  if (v33)
  {
    sub_1DDA15590();
    v34 = *(v33 + 16);
    MEMORY[0x1E12B8440](v34);
    if (v34)
    {
      v35 = (v33 + 40);
      do
      {
        v36 = *(v35 - 1);
        v37 = *v35;

        sub_1DDA14BC0();

        v35 += 2;
        --v34;
      }

      while (v34);
    }

    if (v2[34])
    {
      goto LABEL_46;
    }

    return sub_1DDA15590();
  }

  sub_1DDA15590();
  if (!v2[34])
  {
    return sub_1DDA15590();
  }

LABEL_46:
  v38 = v2[33];
  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9D1E00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA01C74();
  *a2 = result;
  return result;
}

uint64_t sub_1DD9D1E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD9D10A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD9D1E78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA01C74();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9D1EAC(uint64_t a1)
{
  v2 = sub_1DDA0C434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D1EE8(uint64_t a1)
{
  v2 = sub_1DDA0C434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D1F3C()
{
  sub_1DDA15570();
  sub_1DD9D1854(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D1F80()
{
  sub_1DDA15570();
  sub_1DD9D1854(v1);
  return sub_1DDA155B0();
}

BOOL sub_1DD9D1FBC(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1DD9F9430(v4, __dst);
}

uint64_t sub_1DD9D2014()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9D2048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1DD9D2124(uint64_t a1)
{
  v2 = sub_1DDA11258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D2160(uint64_t a1)
{
  v2 = sub_1DDA11258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D219C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA01CC0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9D2224(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000001DDA26AC0;
  if (v2 == 1)
  {
    v5 = 0x80000001DDA26AC0;
  }

  else
  {
    v3 = 0x74756374726F6873;
    v5 = 0xE900000000000073;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6764656C776F6E6BLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x74756374726F6873;
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6764656C776F6E6BLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9D231C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D23C8()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D2460()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D2508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA01E8C();
  *a2 = result;
  return result;
}

void sub_1DD9D2538(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0x80000001DDA26AC0;
  v5 = 0xD000000000000010;
  if (v3 != 1)
  {
    v5 = 0x74756374726F6873;
    v4 = 0xE900000000000073;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6764656C776F6E6BLL;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1DD9D265C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D2724()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D27D8()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D289C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA01ED8();
  *a2 = result;
  return result;
}

void sub_1DD9D28CC(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7972657571;
  v4 = 0x80000001DDA26B10;
  v5 = 0xD000000000000026;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x80000001DDA26B30;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001FLL;
    v2 = 0x80000001DDA26AE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DD9D2950()
{
  v1 = 0x7972657571;
  v2 = 0xD000000000000026;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9D29D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA01ED8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9D29F8(uint64_t a1)
{
  v2 = sub_1DDA0EB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D2A34(uint64_t a1)
{
  v2 = sub_1DDA0EB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D2A70(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      sub_1DDA15470();
    }

    else
    {
      v10 = a2;
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
      sub_1DD9C03AC();
      sub_1DDA154A0();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    if (a4)
    {
      sub_1DDA15490();
    }

    else
    {
      sub_1DDA15480();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DD9D2BDC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      MEMORY[0x1E12B8440](2);

      return sub_1DDA14BC0();
    }

    else
    {
      MEMORY[0x1E12B8440](3);
      v6 = *(a2 + 16);
      result = MEMORY[0x1E12B8440](v6);
      if (v6)
      {
        v7 = (a2 + 40);
        do
        {
          v8 = *(v7 - 1);
          v9 = *v7;

          sub_1DDA14BC0();

          v7 += 2;
          --v6;
        }

        while (v6);
      }
    }
  }

  else if (a4)
  {
    MEMORY[0x1E12B8440](1);
    return MEMORY[0x1E12B8440](a2);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    return sub_1DDA15590();
  }

  return result;
}

uint64_t sub_1DD9D2CD8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD848F8, &qword_1DDA22818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0E76C();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = *(v3 + 32);
    v14[15] = 1;
    sub_1DDA0E7C0();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9D2E7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1DDA15570();
  sub_1DD9D2BDC(v5, v1, v2, v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D2EE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1DDA15570();
  sub_1DD9D2BDC(v5, v1, v2, v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D2F58()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9D2F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD9D3060(uint64_t a1)
{
  v2 = sub_1DDA0E76C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D309C(uint64_t a1)
{
  v2 = sub_1DDA0E76C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D30F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD9D2BDC(v7, v3, v4, v5);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3168(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  sub_1DDA14BC0();

  return sub_1DD9D2BDC(a1, v5, v6, v7);
}

uint64_t sub_1DD9D31C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD9D2BDC(v7, v3, v4, v5);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3234(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = sub_1DDA15440(), result = 0, (v9 & 1) != 0))
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        if (v7 != 2 || (v2 != v5 || v3 != v6) && (sub_1DDA15440() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7 != 3 || (sub_1DD967B14(v2, v5) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v4)
    {
      if (v7 != 1 || v2 != v5)
      {
        return 0;
      }
    }

    else if (v7 || ((v5 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1DD9D334C()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D3460@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA01F24();
  *a2 = result;
  return result;
}

void sub_1DD9D3490(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE700000000000000;
  v6 = 0x746C7561666564;
  if (v2 != 5)
  {
    v6 = 0x766F5F776F6C6C61;
    v5 = 0xEF73656469727265;
  }

  v7 = 0x656C7069746C756DLL;
  if (v2 != 3)
  {
    v7 = 0x6465726975716572;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1701869940;
  if (v2 != 1)
  {
    v9 = 0x736E6F6974706FLL;
    v8 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1DD9D356C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x746C7561666564;
  if (v1 != 5)
  {
    v3 = 0x766F5F776F6C6C61;
  }

  v4 = 0x656C7069746C756DLL;
  if (v1 != 3)
  {
    v4 = 0x6465726975716572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DD9D3644@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA01F24();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9D366C(uint64_t a1)
{
  v2 = sub_1DDA0E814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D36A8(uint64_t a1)
{
  v2 = sub_1DDA0E814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D36E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84910, &qword_1DDA22820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0E814();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v19) = 1;
    sub_1DDA15340();
    *&v19 = v3[4];
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A0, &qword_1DDA1B228);
    sub_1DDA0E868();
    sub_1DDA15330();
    v16 = *(v3 + 40);
    LOBYTE(v19) = 3;
    sub_1DDA15350();
    v17 = *(v3 + 41);
    LOBYTE(v19) = 4;
    sub_1DDA15350();
    v19 = *(v3 + 3);
    v20 = *(v3 + 64);
    v21 = 5;
    sub_1DDA0E7C0();
    sub_1DDA15330();
    v18 = *(v3 + 65);
    LOBYTE(v19) = 6;
    sub_1DDA15350();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9D3980(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  sub_1DDA14BC0();
  v6 = v2[2];
  v7 = v2[3];
  sub_1DDA14BC0();
  v8 = v2[4];
  if (v8)
  {
    sub_1DDA15590();
    v9 = *(v8 + 16);
    MEMORY[0x1E12B8440](v9);
    if (v9)
    {
      v10 = (v8 + 32);
      do
      {
        v11 = *v10++;

        sub_1DD96CE3C(a1, v11);

        --v9;
      }

      while (v9);
    }
  }

  else
  {
    sub_1DDA15590();
  }

  v12 = *(v2 + 40);
  sub_1DDA15590();
  v13 = *(v2 + 41);
  sub_1DDA15590();
  v14 = *(v2 + 64);
  if (v14 == 255)
  {
    sub_1DDA15590();
  }

  else
  {
    v16 = v2[6];
    v15 = v2[7];
    sub_1DDA15590();
    sub_1DD9D2BDC(a1, v16, v15, v14);
  }

  v17 = *(v2 + 65);
  return sub_1DDA15590();
}

uint64_t sub_1DD9D3A7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84970, &qword_1DDA22840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0EB0C();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v15 = v3[2];
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84980, &qword_1DDA22848);
    sub_1DDA0EB60();
    sub_1DDA15380();
    v15 = v3[3];
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84990, &qword_1DDA22850);
    sub_1DDA0EBEC();
    sub_1DDA15330();
    v15 = v3[4];
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD849A8, &qword_1DDA22858);
    sub_1DDA0ECC4();
    sub_1DDA15330();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9D3CB4()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD96CFA8(v8, v4);
  if (!v5)
  {
    sub_1DDA15590();
    v6 = v1[4];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DDA15590();
    return sub_1DDA155B0();
  }

  sub_1DDA15590();
  sub_1DD96C990(v8, v5);
  v6 = v1[4];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DDA15590();
  sub_1DD96C724(v8, v6);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3D9C()
{
  sub_1DDA15570();
  sub_1DD9D3980(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3DE0()
{
  sub_1DDA15570();
  sub_1DD9D3980(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D3E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DD9FAA64(v7, v9) & 1;
}

uint64_t sub_1DD9D3E94(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  sub_1DDA14BC0();
  sub_1DD96CFA8(a1, v6);
  if (!v5)
  {
    sub_1DDA15590();
    if (v7)
    {
      goto LABEL_3;
    }

    return sub_1DDA15590();
  }

  sub_1DDA15590();
  sub_1DD96C990(a1, v5);
  if (!v7)
  {
    return sub_1DDA15590();
  }

LABEL_3:
  sub_1DDA15590();

  return sub_1DD96C724(a1, v7);
}

uint64_t sub_1DD9D3F54()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD96CFA8(v7, v4);
  if (!v3)
  {
    sub_1DDA15590();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DDA15590();
    return sub_1DDA155B0();
  }

  sub_1DDA15590();
  sub_1DD96C990(v7, v3);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DDA15590();
  sub_1DD96C724(v7, v5);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD9F8C2C(v5, v7) & 1;
}

uint64_t sub_1DD9D4060(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6863735F6E6F736ALL;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEB00000000616D65;
  }

  if (*a2)
  {
    v6 = 0x6863735F6E6F736ALL;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xEB00000000616D65;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

uint64_t sub_1DD9D4108()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D418C()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D41FC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9D4288(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x6863735F6E6F736ALL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000616D65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9D42C8()
{
  if (*v0)
  {
    result = 0x6863735F6E6F736ALL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9D4310(uint64_t a1)
{
  v2 = sub_1DDA0ED9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D434C(uint64_t a1)
{
  v2 = sub_1DDA0ED9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D4388(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D58, &qword_1DDA24C70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11744();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v18 = v3[2];
    v17[15] = 1;
    type metadata accessor for JSONSchema();
    sub_1DD9E4B98(&qword_1ECD83450, type metadata accessor for JSONSchema);
    sub_1DDA15380();
    v13 = v3[3];
    v14 = v3[4];
    v17[14] = 2;
    sub_1DDA15340();
    v15 = *(v3 + 40);
    v17[13] = 3;
    sub_1DDA15350();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9D458C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD849D8, &qword_1DDA22868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0ED9C();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v16 = *(v3 + 1);
    v17[0] = v13;
    *(v17 + 9) = *(v3 + 41);
    v15[15] = 1;
    sub_1DDA0EEAC();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9D471C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D47D0()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D4870()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4920@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA01F70();
  *a2 = result;
  return result;
}

void sub_1DD9D4950(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0x80000001DDA26BA0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x746369727473;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x616D65686373;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DD9D49C0()
{
  v1 = 1701667182;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 0x616D65686373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9D4A2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA01F70();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9D4A54(uint64_t a1)
{
  v2 = sub_1DDA11744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D4A90(uint64_t a1)
{
  v2 = sub_1DDA11744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9D4ACC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DDA01FBC(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DD9D4B28()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD965608(v8);
  sub_1DDA14BC0();
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4BC0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  sub_1DDA14BC0();
  sub_1DD965608(a1);
  sub_1DDA14BC0();
  return sub_1DDA15590();
}

uint64_t sub_1DD9D4C2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DD965608(v8);
  sub_1DDA14BC0();
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1DDA15440()) && (sub_1DD96D458(v2, v7) & 1) != 0 && (v3 == v6 && v4 == v8 || (sub_1DDA15440()))
  {
    return v5 ^ v9 ^ 1u;
  }

  else
  {
    return 0;
  }
}

double sub_1DD9D4D84@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DDA022C0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DD9D4DE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(v10);
  sub_1DDA14BC0();
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4E9C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 56);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(a1);
  sub_1DDA14BC0();
  return sub_1DDA15590();
}

uint64_t sub_1DD9D4F24()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(v10);
  sub_1DDA14BC0();
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D4FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v12 = sub_1DDA15440(), result = 0, (v12 & 1) != 0))
  {
    if ((v2 != v7 || v4 != v8) && (sub_1DDA15440() & 1) == 0 || (sub_1DD96D458(v3, v10) & 1) == 0)
    {
      return 0;
    }

    if (v5 == v9 && v6 == v11)
    {
      if (v15 != v14)
      {
        return 0;
      }
    }

    else if (sub_1DDA15440() & 1) == 0 || ((v15 ^ v14))
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1DD9D5100(void *a1)
{
  v3 = v1;
  v5 = v3[1];
  v20 = *v3;
  v21 = v5;
  v6 = v3[3];
  v30 = v3[2];
  v7 = v3[5];
  v18 = v3[4];
  v19 = v6;
  v17 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84070, &qword_1DDA1E2B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FEF7C();
  sub_1DDA15650();
  v14 = *(v3 + 48);
  v22[0] = 1701869940;
  v22[1] = 0xE400000000000000;
  v23 = 0;
  LOBYTE(v24) = 1;
  sub_1DDA15340();
  if (v2)
  {
  }

  else
  {

    if (v14 <= 1)
    {
      if (v14)
      {
        v22[0] = v20;
        v22[1] = v21;
        v23 = v30;
        v24 = v19;
        v25 = v18;
        v26 = v17;
        strcpy(v27, "function_call");
        HIWORD(v27[1]) = -4864;
        v28 = 0;
        v29 = 1;
        sub_1DDA062BC();
      }

      else
      {
        LOBYTE(v22[0]) = v20;
        v22[1] = v21;
        v23 = v30;
        LOBYTE(v24) = v19 & 1;
        strcpy(v27, "message");
        v27[1] = 0xE700000000000000;
        v28 = 0;
        v29 = 1;
        sub_1DDA06310();
      }
    }

    else if (v14 == 2)
    {
      v22[0] = v20;
      v22[1] = v21;
      v23 = v30;
      v24 = v19;
      v25 = v18;
      v27[0] = 0xD000000000000014;
      v27[1] = 0x80000001DDA29BF0;
      v28 = 0;
      v29 = 1;
      sub_1DDA061C0();
    }

    else if (v14 == 3)
    {
      v27[0] = v20;
      v27[1] = v21;
      v28 = v30;
      v22[0] = 0xD000000000000013;
      v22[1] = 0x80000001DDA29C10;
      v23 = 0;
      LOBYTE(v24) = 1;
      sub_1DDA0616C();
    }

    else if (v30 | v21 | v20 | v19 | v18 | v17)
    {
      v22[0] = 0xD000000000000010;
      v22[1] = 0x80000001DDA29BD0;
      v23 = 0;
      LOBYTE(v24) = 1;
      sub_1DDA06214();
    }

    else
    {
      strcpy(v22, "browser_call");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      v23 = 0;
      LOBYTE(v24) = 1;
      sub_1DDA06268();
    }

    sub_1DDA15380();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DD9D55C0(uint64_t a1)
{
  v3 = type metadata accessor for FileGeneratorCall.File(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageGeneratorCall.Image(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 8);
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 48);
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      MEMORY[0x1E12B8440](4);
      sub_1DDA14BC0();
      sub_1DDA14BC0();
      v22 = *(v14 + 16);
      result = MEMORY[0x1E12B8440](v22);
      if (v22)
      {
        v23 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v24 = *(v8 + 72);
        do
        {
          sub_1DD9FF500(v23, v11, type metadata accessor for ImageGeneratorCall.Image);
          sub_1DDA134E0();
          sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
          sub_1DDA14AD0();
          result = sub_1DD9FF568(v11, type metadata accessor for ImageGeneratorCall.Image);
          v23 += v24;
          --v22;
        }

        while (v22);
      }
    }

    else if (v15 == 3)
    {
      v16 = *(v1 + 16);
      MEMORY[0x1E12B8440](5);
      sub_1DDA14BC0();
      v17 = *(v16 + 16);
      result = MEMORY[0x1E12B8440](v17);
      if (v17)
      {
        v19 = v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v20 = *(v27 + 72);
        do
        {
          sub_1DD9FF500(v19, v6, type metadata accessor for FileGeneratorCall.File);
          sub_1DDA134E0();
          sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
          sub_1DDA14AD0();
          result = sub_1DD9FF568(v6, type metadata accessor for FileGeneratorCall.File);
          v19 += v20;
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      if (*(v1 + 16) | v12 | *v1 | v13 | v14 | *(v1 + 40))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      return MEMORY[0x1E12B8440](v25);
    }

    return result;
  }

  v21 = *(v1 + 16);
  if (*(v1 + 48))
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();

    if (v13)
    {
      MEMORY[0x1E12B8440](1);

      return sub_1DD96B794(a1, v12);
    }

    MEMORY[0x1E12B8440](0);
  }

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9D5AA4()
{
  sub_1DDA15570();
  sub_1DD9D55C0(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9D5AE8()
{
  sub_1DDA15570();
  sub_1DD9D55C0(v1);
  return sub_1DDA155B0();
}

BOOL sub_1DD9D5B24(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return sub_1DD9FAFE8(v5, v7);
}

uint64_t sub_1DD9D5B80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E65746E6F63;
  }

  else
  {
    v4 = 1701605234;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E65746E6F63;
  }

  else
  {
    v6 = 1701605234;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

uint64_t sub_1DD9D5C20()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D5C9C()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9D5D04()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9D5D88(uint64_t *a1@<X8>)
{
  v2 = 1701605234;
  if (*v1)
  {
    v2 = 0x746E65746E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9D5DC0()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 1701605234;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9D5E00(uint64_t a1)
{
  v2 = sub_1DDA0BF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9D5E3C(uint64_t a1)
{
  v2 = sub_1DDA0BF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9D5E78(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  if (a4)
  {
    v10 = a2;
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84C68, &qword_1DDA24C20);
    sub_1DDA11150();
    sub_1DDA154A0();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    sub_1DDA15470();
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DD9D5F78(void *a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v16 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84778, &qword_1DDA22790);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BF84();
  sub_1DDA15650();
  LOBYTE(v17) = a2;
  v21 = 0;
  sub_1DDA0C290();
  sub_1DDA15380();
  if (!v5)
  {
    v17 = a3;
    v18 = v16;
    v19 = v20 & 1;
    v21 = 1;
    sub_1DDA0C2E4();
    sub_1DDA15380();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1DD9D6128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  if (a4)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DD96B794(v7, a2);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D6214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DDA02E38(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DD9D6268()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1DDA15570();
  if (v3)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DD96B794(v5, v1);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D62EC(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x1E12B8440](1);

    return sub_1DD96B794(a1, v3);
  }

  else
  {
    v5 = *(v1 + 8);
    MEMORY[0x1E12B8440](0);

    return sub_1DDA14BC0();
  }
}

uint64_t sub_1DD9D6380()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1DDA15570();
  if (v3)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DD96B794(v5, v1);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D6400(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return sub_1DD966858(v3, *a2);
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v3 == *a2 && v5 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440();
  }
}

uint64_t sub_1DD9D6458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DDA033BC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1DD9D64C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = v1[24];
  sub_1DDA14BC0();

  if (v5)
  {
    MEMORY[0x1E12B8440](1);

    return sub_1DD96B794(a1, v3);
  }

  else
  {
    MEMORY[0x1E12B8440](0);

    return sub_1DDA14BC0();
  }
}

uint64_t sub_1DD9D65C0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  sub_1DDA15570();
  sub_1DDA14BC0();

  if (v4)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DD96B794(v6, v2);
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D66C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v115 = sub_1DDA150C0();
  v114 = *(v115 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ChatChunk.RateLimits(0);
  v5 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  v7 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  v9 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  v11 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  v13 = *(*(v104 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v104);
  v103 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v97 - v16;
  v121 = type metadata accessor for ChatChunk.ChoiceResource(0);
  v17 = *(*(v121 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v121);
  v116 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v117 = &v97 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v118 = &v97 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v119 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v97 - v26;
  v123 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  v27 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v30 = *(*(SessionResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](SessionResponse);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D88, &qword_1DDA1E188);
  v125 = *(v33 - 8);
  v34 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v97 - v35;
  v37 = type metadata accessor for ChatChunk(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1[3];
  v42 = a1[4];
  v139 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1DD9FEF7C();
  v43 = v126;
  sub_1DDA15620();
  if (!v43)
  {
    v126 = SessionResponse;
    v101 = v32;
    v100 = v37;
    v99 = v40;
    v44 = v124;
    *&v127 = 1701869940;
    *(&v127 + 1) = 0xE400000000000000;
    *&v128 = 0;
    BYTE8(v128) = 1;
    v45 = 0;
    v46 = sub_1DDA15280();
    v48 = v47;
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v49 = sub_1DDA14810();
    v50 = __swift_project_value_buffer(v49, qword_1ECDA20E0);

    v97 = v50;
    v51 = sub_1DDA147F0();
    v52 = sub_1DDA14EC0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v98 = 0;
      v55 = v54;
      *&v127 = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_1DD93FA54(v46, v48, &v127);
      _os_log_impl(&dword_1DD8F8000, v51, v52, "Received chunk information of type: %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v56 = v55;
      v45 = v98;
      MEMORY[0x1E12B8CE0](v56, -1, -1);
      MEMORY[0x1E12B8CE0](v53, -1, -1);
    }

    if (v46 == 0x2E6E6F6973736573 && v48 == 0xEF64657461657263 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v46;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD837F8, type metadata accessor for CreateSessionResponse);
      v57 = v101;
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v36, v33);

        v58 = v99;
        sub_1DD9FEFD0(v57, v99, type metadata accessor for CreateSessionResponse);
LABEL_11:
        swift_storeEnumTagMultiPayload();
        v59 = v44;
LABEL_12:
        sub_1DD9FEFD0(v58, v59, type metadata accessor for ChatChunk);
        return __swift_destroy_boxed_opaque_existential_1(v139);
      }

LABEL_17:
      (*(v125 + 8))(v36, v33);
LABEL_18:

      return __swift_destroy_boxed_opaque_existential_1(v139);
    }

    v60 = v33;
    if (v46 == 0xD000000000000016 && 0x80000001DDA29170 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v46;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83E38, type metadata accessor for ChatChunk.FileUploadResponse);
      v61 = v122;
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v36, v33);

        v58 = v99;
        sub_1DD9FEFD0(v61, v99, type metadata accessor for ChatChunk.FileUploadResponse);
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    v126 = v36;
    v63 = v46;
    v64 = v46 == 0xD000000000000018;
    v65 = v44;
    v66 = v125;
    if (v64 && 0x80000001DDA29190 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF3D4();
      v67 = v126;
      sub_1DDA152C0();
      v68 = (v66 + 8);
      if (v45)
      {
        (*v68)(v67, v60);
        goto LABEL_18;
      }

      (*v68)(v67, v60);

      v69 = v132;
      v58 = v99;
      *(v99 + 4) = v131;
      *(v58 + 80) = v69;
      *(v58 + 96) = v133;
      *(v58 + 112) = v134;
      v70 = v128;
      *v58 = v127;
      *(v58 + 16) = v70;
      v71 = v130;
      *(v58 + 32) = v129;
      *(v58 + 48) = v71;
LABEL_28:
      swift_storeEnumTagMultiPayload();
      v59 = v65;
      goto LABEL_12;
    }

    if (v63 == 0xD000000000000020 && 0x80000001DDA291B0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E20, &qword_1DDA1E190);
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9FF428();
      v72 = v126;
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v72, v60);

        v58 = v99;
        *v99 = v135;
        goto LABEL_28;
      }

LABEL_33:
      (*(v125 + 8))(v72, v60);
      goto LABEL_18;
    }

    if (v63 == 0xD000000000000015 && 0x80000001DDA291E0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF3D4();
      v73 = v126;
      sub_1DDA152C0();
      v74 = (v125 + 8);
      if (v45)
      {
        (*v74)(v73, v60);
        goto LABEL_18;
      }

      (*v74)(v73, v60);

      v75 = v132;
      v58 = v99;
      *(v99 + 4) = v131;
      *(v58 + 80) = v75;
      *(v58 + 96) = v133;
      *(v58 + 112) = v134;
      v76 = v128;
      *v58 = v127;
      *(v58 + 16) = v76;
      v77 = v130;
      *(v58 + 32) = v129;
      *(v58 + 48) = v77;
      goto LABEL_28;
    }

    if (v63 == 0xD000000000000020 && 0x80000001DDA29200 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource);
      v78 = v120;
      v72 = v126;
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v72, v60);

        v79 = v78;
        v58 = v99;
        sub_1DD9FEFD0(v79, v99, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    if (v63 == 0xD000000000000026 && 0x80000001DDA29230 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v119, v99, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000024 && 0x80000001DDA29260 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v118, v99, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000025 && 0x80000001DDA29290 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v117, v99, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD00000000000001FLL && 0x80000001DDA292C0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83E10, type metadata accessor for ChatChunk.ChoiceResource);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v116, v99, type metadata accessor for ChatChunk.ChoiceResource);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000028 && 0x80000001DDA292E0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF380();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
LABEL_72:
        (*v80)(v126, v60);
        goto LABEL_18;
      }

LABEL_193:
      (*v80)(v126, v60);

      v84 = v130;
      v58 = v99;
      *(v99 + 2) = v129;
      *(v58 + 48) = v84;
      *(v58 + 64) = v131;
      v85 = v128;
      *v58 = v127;
      *(v58 + 16) = v85;
      goto LABEL_11;
    }

    if (v63 == 0xD000000000000027 && 0x80000001DDA29310 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF380();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v63 == 0xD00000000000003ALL && 0x80000001DDA29340 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83E00, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v102, v99, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000039 && 0x80000001DDA29380 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83E00, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v103, v99, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000045 && 0x80000001DDA293C0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF2D8();
      sub_1DDA152C0();
      if (!v45)
      {
        goto LABEL_113;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000044 && 0x80000001DDA29410 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF32C();
      sub_1DDA152C0();
      if (!v45)
      {
        goto LABEL_113;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD00000000000004DLL && 0x80000001DDA29460 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83DF0, type metadata accessor for ChatChunk.TextValueAnnotation);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v106, v99, type metadata accessor for ChatChunk.TextValueAnnotation);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000042 && 0x80000001DDA294B0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF2D8();
      sub_1DDA152C0();
      if (!v45)
      {
        goto LABEL_113;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000041 && 0x80000001DDA29500 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF284();
      sub_1DDA152C0();
      if (!v45)
      {
LABEL_113:
        (*(v125 + 8))(v126, v60);

        v81 = v129;
        v82 = v128;
        v58 = v99;
        *v99 = v127;
        *(v58 + 16) = v82;
        *(v58 + 32) = v81;
        goto LABEL_11;
      }

LABEL_50:
      (*(v125 + 8))(v126, v60);
      goto LABEL_18;
    }

    v123 = 0xD000000000000040;
    if (v63 == 0xD000000000000040 && 0x80000001DDA29550 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF230();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

LABEL_153:
      (*(v125 + 8))(v126, v60);

      v83 = v128;
      v58 = v99;
      *v99 = v127;
      *(v58 + 16) = v83;
      goto LABEL_11;
    }

    v122 = 0xD00000000000003FLL;
    if (v63 == 0xD00000000000003FLL && 0x80000001DDA295A0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF1DC();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_153;
    }

    if (v63 == v122 && 0x80000001DDA295E0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9FF188();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

LABEL_208:
      (*(v125 + 8))(v126, v60);

      v58 = v99;
      goto LABEL_11;
    }

    v122 = 0xD00000000000003DLL;
    if (v63 == 0xD00000000000003DLL && 0x80000001DDA29620 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9FF188();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v63 == 0xD00000000000003ALL && 0x80000001DDA29660 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9FF188();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v63 == 0xD000000000000043 && 0x80000001DDA296A0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v63 == 0xD000000000000044 && 0x80000001DDA296F0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF134();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_153;
    }

    if (v63 == 0xD000000000000043 && 0x80000001DDA29740 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF0E0();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_153;
    }

    if (v63 == 0xD000000000000042 && 0x80000001DDA29790 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v63 == 0xD000000000000046 && 0x80000001DDA297E0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83DB0, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v108, v99, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == 0xD000000000000041 && 0x80000001DDA29830 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v63 == 0xD000000000000042 && 0x80000001DDA29880 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v63 == 0xD000000000000041 && 0x80000001DDA298D0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v63 == 0xD000000000000044 && 0x80000001DDA29920 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83DA8, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v110, v99, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    if (v63 == v123 && 0x80000001DDA29970 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v63 == 0xD00000000000003BLL && 0x80000001DDA299C0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      v135 = v63;
      v136 = v48;
      v137 = 0;
      v138 = 1;
      sub_1DD9FF08C();
      sub_1DDA152C0();
      v80 = (v125 + 8);
      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_193;
    }

    if (v63 == v122 && 0x80000001DDA29A00 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9FF038();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v63 == 0xD00000000000004ALL && 0x80000001DDA29A40 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9FF038();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v63 == 0xD000000000000048 && 0x80000001DDA29A90 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9FF038();
      sub_1DDA152C0();
      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_208;
    }

    if (v63 == 0xD00000000000001BLL && 0x80000001DDA29AE0 == v48 || (sub_1DDA15440() & 1) != 0)
    {
      *&v127 = v63;
      *(&v127 + 1) = v48;
      *&v128 = 0;
      BYTE8(v128) = 1;
      sub_1DD9E4B98(&qword_1ECD83570, type metadata accessor for ChatChunk.RateLimits);
      sub_1DDA152C0();
      if (!v45)
      {
        (*(v125 + 8))(v126, v60);

        v58 = v99;
        sub_1DD9FEFD0(v112, v99, type metadata accessor for ChatChunk.RateLimits);
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    v86 = sub_1DDA147F0();
    v87 = sub_1DDA14EE0();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v127 = v89;
      *v88 = 136446210;
      *(v88 + 4) = sub_1DD93FA54(v63, v48, &v127);
      _os_log_impl(&dword_1DD8F8000, v86, v87, "Unrecognized ChatChunk type: %{public}s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1E12B8CE0](v89, -1, -1);
      MEMORY[0x1E12B8CE0](v88, -1, -1);
    }

    v90 = v139[4];
    __swift_project_boxed_opaque_existential_1(v139, v139[3]);
    sub_1DDA155F0();
    *&v127 = 0;
    *(&v127 + 1) = 0xE000000000000000;
    sub_1DDA15070();

    *&v127 = 0xD00000000000001DLL;
    *(&v127 + 1) = 0x80000001DDA29B00;
    MEMORY[0x1E12B7AB0](v63, v48);

    v91 = v113;
    sub_1DDA150B0();
    v92 = sub_1DDA150D0();
    swift_allocError();
    v94 = v93;
    v95 = v114;
    v96 = v115;
    (*(v114 + 16))(v93, v91, v115);
    (*(*(v92 - 8) + 104))(v94, *MEMORY[0x1E69E6B00], v92);
    swift_willThrow();
    (*(v95 + 8))(v91, v96);
    (*(v125 + 8))(v126, v60);
  }

  return __swift_destroy_boxed_opaque_existential_1(v139);
}

uint64_t sub_1DD9D9418()
{
  v1 = v0;
  v2 = sub_1DDA13680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = *v1;
  v15 = v1[1];
  sub_1DDA14BC0();
  v16 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  sub_1DD90ADB4(v1 + v16[5], v13, &qword_1ECD82838, &unk_1DDA185F0);
  v17 = *(v3 + 48);
  if (v17(v13, 1, v2) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v3 + 32))(v6, v13, v2);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v3 + 8))(v6, v2);
  }

  sub_1DD90ADB4(v1 + v16[6], v11, &qword_1ECD82838, &unk_1DDA185F0);
  if (v17(v11, 1, v2) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v3 + 8))(v6, v2);
  }

  if (*(v1 + v16[7]) == 2)
  {
    sub_1DDA15590();
  }

  else
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  v18 = (v1 + v16[8]);
  if (v18[1])
  {
    v19 = *v18;
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  v20 = (v1 + v16[9]);
  if (v20[1])
  {
    v21 = *v20;
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  v22 = v1 + v16[10];
  if (v22[8] == 1)
  {
    return sub_1DDA15590();
  }

  v24 = *v22;
  sub_1DDA15590();
  return MEMORY[0x1E12B8460](v24);
}

uint64_t sub_1DD9D985C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD841E0, &qword_1DDA1E338);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  v13 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 20);
  v19 = sub_1DDA13680();
  v20 = *(*(v19 - 8) + 56);
  v52 = v18;
  v20(v17 + v18, 1, 1, v19);
  v53 = *(v13 + 24);
  v50 = v17;
  v20(v17 + v53, 1, 1, v19);
  v22 = a1[3];
  v21 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1DDA06514();
  v48 = v12;
  v23 = v49;
  sub_1DDA15620();
  if (v23)
  {
    v26 = v52;
    __swift_destroy_boxed_opaque_existential_1(v51);
    v27 = v50;
    sub_1DD90D378(v50 + v26, &qword_1ECD82838, &unk_1DDA185F0);
    sub_1DD90D378(v27 + v53, &qword_1ECD82838, &unk_1DDA185F0);
  }

  else
  {
    v49 = v13;
    v24 = v46;
    v61 = 0;
    v25 = sub_1DDA15280();
    v28 = v50;
    *v50 = v25;
    *(v28 + 8) = v29;
    v60 = 1;
    sub_1DD9E4B98(&qword_1ECD82990, MEMORY[0x1E6969530]);
    sub_1DDA15260();
    sub_1DD90AE1C(v8, v28 + v52, &qword_1ECD82838, &unk_1DDA185F0);
    v59 = 2;
    v30 = v45;
    sub_1DDA15260();
    sub_1DD90AE1C(v30, v28 + v53, &qword_1ECD82838, &unk_1DDA185F0);
    v57 = 3;
    sub_1DDA06568();
    sub_1DDA15260();
    v31 = v49;
    *(v28 + v49[7]) = v58;
    v56 = 4;
    v32 = sub_1DDA15220();
    v33 = (v28 + v31[8]);
    *v33 = v32;
    v33[1] = v34;
    v55 = 5;
    v35 = sub_1DDA15220();
    v36 = (v28 + v31[9]);
    *v36 = v35;
    v36[1] = v37;
    v54 = 6;
    v38 = sub_1DDA15270();
    v40 = v39;
    v41 = v24;
    v42 = v28 + v31[10];
    (*(v41 + 8))(v48, v47);
    *v42 = v38;
    *(v42 + 8) = v40 & 1;
    sub_1DD9FF500(v28, v44, type metadata accessor for ChatChunk.FileUploadResponse);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_1DD9FF568(v28, type metadata accessor for ChatChunk.FileUploadResponse);
  }
}

uint64_t sub_1DD9D9E04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69737365636F7270;
  }

  else
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v6 = 0x69737365636F7270;
  }

  else
  {
    v6 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000676ELL;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

void sub_1DD9D9EC0(uint64_t *a1@<X8>)
{
  v2 = 0x6574656C706D6F63;
  if (*v1)
  {
    v2 = 0x69737365636F7270;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9D9F68()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9D9FF4()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DA06C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DA10C()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DA214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA035A0();
  *a2 = result;
  return result;
}

void sub_1DD9DA244(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701667182;
  if (v2 != 5)
  {
    v6 = 1702521203;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737574617473;
  if (v2 != 3)
  {
    v8 = 0x7079745F656D696DLL;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007461;
  v10 = 0x5F64657461657263;
  if (v2 != 1)
  {
    v10 = 0x6574656C706D6F63;
    v9 = 0xEC00000074615F64;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1DD9DA314()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701667182;
  if (v1 != 5)
  {
    v3 = 1702521203;
  }

  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x7079745F656D696DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x5F64657461657263;
  if (v1 != 1)
  {
    v5 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DD9DA3E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA035A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DA408(uint64_t a1)
{
  v2 = sub_1DDA06514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DA444(uint64_t a1)
{
  v2 = sub_1DDA06514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DA4D0(uint64_t a1)
{
  v3 = sub_1DDA134E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v52 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v45 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_1DDA14BC0();
  v13 = v1[2];
  v14 = v1[3];
  sub_1DDA14BC0();
  if (v1[5])
  {
    v15 = v1[4];
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  v16 = v1[6];
  v17 = v1[7];
  sub_1DDA14BC0();
  if (v1[9])
  {
    v18 = v1[8];
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  v46 = v1;
  v19 = v1[10];
  if (v19)
  {
    sub_1DDA15590();
    v20 = *(v19 + 16);
    MEMORY[0x1E12B8440](v20);
    if (v20)
    {
      v21 = type metadata accessor for ChatChunk.Choice(0);
      v22 = *(v21 - 8);
      v23 = (v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80)));
      v45[1] = 0x80000001DDA28010;
      v24 = *(v22 + 72);
      v45[0] = 0x80000001DDA28030;
      v53 = (v4 + 48);
      v48 = (v4 + 8);
      v49 = (v4 + 32);
      v50 = v24;
      v51 = v21;
      v47 = v10;
      do
      {
        v26 = *v23;
        v27 = v23[1];
        sub_1DDA14BC0();
        v28 = *(v23 + 16);
        sub_1DDA14BC0();

        sub_1DD96BCC4(a1, v23[3]);
        v29 = v23[7];
        if (v29 == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v30 = v3;
          v31 = v23[4];
          v32 = v23[5];
          v33 = v23[6];
          sub_1DDA15590();
          sub_1DD928DC0(v31, v32);
          sub_1DDA14BC0();

          sub_1DDA15590();
          if (v29)
          {
            sub_1DDA14BC0();
          }

          v3 = v30;
          v10 = v47;
          v24 = v50;
          v21 = v51;
        }

        sub_1DD90ADB4(v23 + *(v21 + 32), v10, &qword_1ECD82CE0, &qword_1DDA18700);
        if ((*v53)(v10, 1, v3) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v25 = v52;
          (*v49)(v52, v10, v3);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
          sub_1DDA14AD0();
          (*v48)(v25, v3);
        }

        v23 = (v23 + v24);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    sub_1DDA15590();
  }

  v34 = v46[11];
  if (v34)
  {
    sub_1DDA15590();
    v35 = *(v34 + 16);
    MEMORY[0x1E12B8440](v35);
    if (v35)
    {
      v36 = (v34 + 56);
      do
      {
        v37 = *(v36 - 3);
        v38 = *(v36 - 2);
        v39 = *(v36 - 1);
        v40 = *v36;

        sub_1DDA14BC0();

        sub_1DDA14BC0();
        swift_bridgeObjectRelease_n();

        v36 += 4;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    sub_1DDA15590();
  }

  v41 = v46[12];
  if (!v41)
  {
    return sub_1DDA15590();
  }

  v42 = v46[13];
  v43 = v46[14];
  sub_1DDA15590();
  sub_1DD96C2BC(a1, v41);
  if (!v43)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();
  return sub_1DDA14BC0();
}

uint64_t sub_1DD9DAB3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA035EC();
  *a2 = result;
  return result;
}

void sub_1DD9DAB6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000001DDA26870;
  v6 = 0xD000000000000020;
  if (v2 != 6)
  {
    v6 = 0x7463757274736E69;
    v5 = 0xEC000000736E6F69;
  }

  v7 = 0x736563696F6863;
  if (v2 != 4)
  {
    v7 = 0x73656369746F6ELL;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xD000000000000019;
  v9 = 0x80000001DDA26C10;
  if (v2 != 2)
  {
    v8 = 0x6C65646F6DLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x5F6E6F6973736573;
    v3 = 0xEA00000000006469;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1DD9DAC74()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000020;
  if (v1 != 6)
  {
    v3 = 0x7463757274736E69;
  }

  v4 = 0x736563696F6863;
  if (v1 != 4)
  {
    v4 = 0x73656369746F6ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 != 2)
  {
    v5 = 0x6C65646F6DLL;
  }

  if (*v0)
  {
    v2 = 0x5F6E6F6973736573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DD9DAD78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA035EC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DADA0(uint64_t a1)
{
  v2 = sub_1DDA0640C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DADDC(uint64_t a1)
{
  v2 = sub_1DDA0640C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9DAE18@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DDA03638(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_1DD9DAE80()
{
  sub_1DDA15570();
  sub_1DD9DA4D0(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DAEC4()
{
  sub_1DDA15570();
  sub_1DD9DA4D0(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DAF00(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1DD9FDAD4(v12, v14) & 1;
}

uint64_t sub_1DD9DAF84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for ChatChunk.Choice(0);
  v4 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840E8, &qword_1DDA1E2F8);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ChatChunk.ChoiceResource(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05D4C();
  sub_1DDA15620();
  if (!v2)
  {
    v21 = v10;
    v15 = v23;
    v27 = 0;
    v16 = v25;
    v17 = sub_1DDA152B0();
    v20 = v13;
    *v13 = v17;
    v26 = 1;
    sub_1DD9E4B98(&qword_1ECD840F8, type metadata accessor for ChatChunk.Choice);
    sub_1DDA152C0();
    (*(v15 + 8))(v9, v16);
    v18 = v20;
    sub_1DD9FEFD0(v6, v20 + *(v21 + 20), type metadata accessor for ChatChunk.Choice);
    sub_1DD9FEFD0(v18, v22, type metadata accessor for ChatChunk.ChoiceResource);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD9DB254()
{
  if (*v0)
  {
    result = 0x6563696F6863;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9DB288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563696F6863 && a2 == 0xE600000000000000)
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

uint64_t sub_1DD9DB35C(uint64_t a1)
{
  v2 = sub_1DDA05D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DB398(uint64_t a1)
{
  v2 = sub_1DDA05D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DB3EC(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  v3 = v1 + *(a1 + 20);
  sub_1DD9DB948(v5);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DB450(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E12B8440](*v2);
  v5 = v2 + *(a2 + 20);
  return sub_1DD9DB948(a1);
}

uint64_t sub_1DD9DB49C(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  v4 = v2 + *(a2 + 20);
  sub_1DD9DB948(v6);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DB524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C706D6F636E69;
  v4 = 0xEA00000000006574;
  if (v2 != 1)
  {
    v3 = 0x72676F72705F6E69;
    v4 = 0xEB00000000737365;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6574656C706D6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x656C706D6F636E69;
  v8 = 0xEA00000000006574;
  if (*a2 != 1)
  {
    v7 = 0x72676F72705F6E69;
    v8 = 0xEB00000000737365;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9DB640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA03CEC();
  *a2 = result;
  return result;
}

void sub_1DD9DB670(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEA00000000006574;
  v5 = 0x656C706D6F636E69;
  if (v2 != 1)
  {
    v5 = 0x72676F72705F6E69;
    v4 = 0xEB00000000737365;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574656C706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9DB740()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DB7F4()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DB894()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DB948(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DDA134E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v22 - v11;
  v13 = *v2;
  v14 = v2[1];
  sub_1DDA14BC0();
  *(v2 + 16);
  sub_1DDA14BC0();

  sub_1DD96BCC4(a1, v2[3]);
  v15 = v2[7];
  if (v15 == 1)
  {
    goto LABEL_16;
  }

  v17 = v2[4];
  v16 = v2[5];
  v18 = v2[6];
  sub_1DDA15590();
  v22[1] = v18;
  if (v16 <= 1)
  {
    if (!v16)
    {
      v19 = v17;
      goto LABEL_14;
    }

    if (v16 == 1)
    {
      v19 = v17;
      goto LABEL_14;
    }
  }

  else
  {
    switch(v16)
    {
      case 2:
        v19 = v17;
        goto LABEL_14;
      case 3:
        v19 = v17;
        goto LABEL_14;
      case 4:
        v19 = v17;
        goto LABEL_14;
    }
  }

  v19 = v17;
LABEL_14:
  sub_1DD928DC0(v19, v16);
  sub_1DDA14BC0();

  if (v15)
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
    goto LABEL_17;
  }

LABEL_16:
  sub_1DDA15590();
LABEL_17:
  v20 = type metadata accessor for ChatChunk.Choice(0);
  sub_1DD90ADB4(v2 + *(v20 + 32), v12, &qword_1ECD82CE0, &qword_1DDA18700);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_1DDA15590();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_1DDA15590();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DD9DBD18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84100, &qword_1DDA1E300);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - v9;
  v11 = type metadata accessor for ChatChunk.Choice(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 40);
  v17 = sub_1DDA134E0();
  v18 = *(*(v17 - 8) + 56);
  v37 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05DA0();
  v20 = v36;
  sub_1DDA15620();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DD90D378(&v15[v37], &qword_1ECD82CE0, &qword_1DDA18700);
  }

  else
  {
    v36 = v6;
    v21 = a1;
    v23 = v34;
    v22 = v35;
    LOBYTE(v38) = 0;
    *v15 = sub_1DDA15280();
    *(v15 + 1) = v24;
    v32[4] = v24;
    v42 = 1;
    sub_1DDA05DF4();
    sub_1DDA152C0();
    v25 = v23;
    v15[16] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84118, &qword_1DDA1E308);
    v42 = 2;
    sub_1DDA05E48();
    sub_1DDA152C0();
    v26 = v15;
    *(v15 + 3) = v38;
    v42 = 3;
    sub_1DDA05ECC();
    sub_1DDA15260();
    v27 = v39;
    v28 = v40;
    v29 = v41;
    *(v15 + 4) = v38;
    *(v15 + 5) = v27;
    v32[2] = v28;
    v32[3] = v27;
    *(v15 + 6) = v28;
    *(v15 + 7) = v29;
    v32[1] = v29;
    LOBYTE(v38) = 4;
    sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0]);
    v30 = v36;
    sub_1DDA15260();
    (*(v25 + 8))(v10, v22);
    sub_1DD90AE1C(v30, v26 + v37, &qword_1ECD82CE0, &qword_1DDA18700);
    sub_1DD9FF500(v26, v33, type metadata accessor for ChatChunk.Choice);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return sub_1DD9FF568(v26, type metadata accessor for ChatChunk.Choice);
  }
}

uint64_t sub_1DD9DC250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for MessageContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84028, &qword_1DDA1E2A8);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DDA05B00();
  sub_1DDA15620();
  if (!v2)
  {
    v28 = 0;
    v18 = v22;
    *v15 = sub_1DDA152B0();
    v27 = 1;
    v15[1] = sub_1DDA152B0();
    v26 = 2;
    v15[2] = sub_1DDA152B0();
    v25 = 3;
    sub_1DD9E4B98(&qword_1ECD84038, type metadata accessor for MessageContent);
    v20 = v23;
    sub_1DDA152C0();
    (*(v18 + 8))(v11, v20);
    sub_1DD9FEFD0(v7, v15 + *(v12 + 28), type metadata accessor for MessageContent);
    sub_1DD9FEFD0(v15, v21, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DD9DC58C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for TextAnnotation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F28, &qword_1DDA1E220);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DDA04968();
  sub_1DDA15620();
  if (!v2)
  {
    v29 = 0;
    v18 = v22;
    *v15 = sub_1DDA152B0();
    v28 = 1;
    v15[1] = sub_1DDA152B0();
    v27 = 2;
    v15[2] = sub_1DDA152B0();
    v26 = 3;
    v15[3] = sub_1DDA152B0();
    v25 = 4;
    sub_1DD9E4B98(&qword_1ECD83F38, type metadata accessor for TextAnnotation);
    v20 = v23;
    sub_1DDA152C0();
    (*(v18 + 8))(v11, v20);
    sub_1DD9FEFD0(v7, v15 + *(v12 + 32), type metadata accessor for TextAnnotation);
    sub_1DD9FEFD0(v15, v21, type metadata accessor for ChatChunk.TextValueAnnotation);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DD9DC8E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for ImageGeneratorCall.Image(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E90, &qword_1DDA1E1D8);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DD9FFC80();
  sub_1DDA15620();
  if (!v2)
  {
    v28 = 0;
    v18 = v22;
    *v15 = sub_1DDA152B0();
    v27 = 1;
    v15[1] = sub_1DDA152B0();
    v26 = 2;
    v15[2] = sub_1DDA152B0();
    v25 = 3;
    sub_1DD9E4B98(&qword_1ECD83EA0, type metadata accessor for ImageGeneratorCall.Image);
    v20 = v23;
    sub_1DDA152C0();
    (*(v18 + 8))(v11, v20);
    sub_1DD9FEFD0(v7, v15 + *(v12 + 28), type metadata accessor for ImageGeneratorCall.Image);
    sub_1DD9FEFD0(v15, v21, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DD9DCC2C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DCD08()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DCDD0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DCEA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA03D38();
  *a2 = result;
  return result;
}

void sub_1DD9DCED8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x74757074756FLL;
  v7 = 0x80000001DDA26C60;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x65756E69746E6F63;
    v7 = 0xEC0000006C72755FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x737574617473;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DD9DCF70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x74757074756FLL;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x65756E69746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DD9DD004@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA03D38();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DD02C(uint64_t a1)
{
  v2 = sub_1DDA05DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DD068(uint64_t a1)
{
  v2 = sub_1DDA05DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DD0F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7865646E69;
  if (v2 != 1)
  {
    v4 = 1835365481;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (*a2 != 1)
  {
    v8 = 1835365481;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9DD1E4()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DD284()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DD310()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DD3AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA03D84();
  *a2 = result;
  return result;
}

void sub_1DD9DD3DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (v2 != 1)
  {
    v5 = 1835365481;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9DD438()
{
  v1 = 0x7865646E69;
  if (*v0 != 1)
  {
    v1 = 1835365481;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

uint64_t sub_1DD9DD490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA03D84();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DD4B8(uint64_t a1)
{
  v2 = sub_1DDA05CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DD4F4(uint64_t a1)
{
  v2 = sub_1DDA05CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1DD9DD574(uint64_t *a1, int8x16_t *a2)
{
  v3 = 0;
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 2);
  v11[0] = *(a1 + 1);
  v11[1] = v6;
  v11[2] = *(a1 + 3);
  v12 = *(a1 + 64);
  v14 = a2[4].i8[0];
  v8 = a2->i64[0];
  v7 = a2->i64[1];
  v9 = a2[3];
  v13[1] = a2[2];
  v13[2] = v9;
  v13[0] = a2[1];
  if (v5 == v8 && v4 == v7)
  {
    return sub_1DD9FAFE8(v11, v13);
  }

  return v3;
}

uint64_t sub_1DD9DD5FC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DD6C8()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DD780()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DD848@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA03DD0();
  *a2 = result;
  return result;
}

void sub_1DD9DD878(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (*v1 != 2)
  {
    v5 = 0x746E65746E6F63;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9DD900()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x7865646E69;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9DD984@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA03DD0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DD9AC(uint64_t a1)
{
  v2 = sub_1DDA05B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DD9E8(uint64_t a1)
{
  v2 = sub_1DDA05B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DDA3C(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  v3 = v1 + *(a1 + 28);
  sub_1DD9E8BF8();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DDAB8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](v2[1]);
  MEMORY[0x1E12B8440](v2[2]);
  v4 = v2 + *(a2 + 28);
  return sub_1DD9E8BF8();
}

uint64_t sub_1DD9DDB14(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](v2[1]);
  MEMORY[0x1E12B8440](v2[2]);
  v4 = v2 + *(a2 + 28);
  sub_1DD9E8BF8();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DDBD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646E695F6D657469;
  v4 = 0xEA00000000007865;
  if (v2 != 1)
  {
    v3 = 1835365481;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0x646E695F6D657469;
  v8 = 0xEA00000000007865;
  if (*a2 != 1)
  {
    v7 = 1835365481;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9DDCD0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DDD78()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DDE0C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DDEB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA03E1C();
  *a2 = result;
  return result;
}

void sub_1DD9DDEE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xEA00000000007865;
  v5 = 0x646E695F6D657469;
  if (v2 != 1)
  {
    v5 = 1835365481;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9DDF44()
{
  v1 = 0x646E695F6D657469;
  if (*v0 != 1)
  {
    v1 = 1835365481;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

uint64_t sub_1DD9DDFA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA03E1C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DDFCC(uint64_t a1)
{
  v2 = sub_1DDA047C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DE008(uint64_t a1)
{
  v2 = sub_1DDA047C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DD9DE088@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_1DDA03E68(a1, a2, a3, a4, v9);
  if (!v5)
  {
    v8 = v9[3];
    *(a5 + 32) = v9[2];
    *(a5 + 48) = v8;
    *(a5 + 64) = v10;
    result = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = result;
  }

  return result;
}

uint64_t sub_1DD9DE0EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  sub_1DD9D55C0(v4);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DE158(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v3);
  return sub_1DD9D55C0(a1);
}

uint64_t sub_1DD9DE1A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  sub_1DD9D55C0(v4);
  return sub_1DDA155B0();
}

BOOL sub_1DD9DE20C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DD9FB378(v7, v9);
}

uint64_t sub_1DD9DE274()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DE350()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DE418()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DE4F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA04080();
  *a2 = result;
  return result;
}

void sub_1DD9DE520(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xED00007865646E69;
  v5 = 0x5F746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x6C617375666572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9DE5B8()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x5F746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x6C617375666572;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9DE64C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA04080();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DE674(uint64_t a1)
{
  v2 = sub_1DDA04914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DE6B0(uint64_t a1)
{
  v2 = sub_1DDA04914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DE73C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DE814()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}