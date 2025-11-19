void *sub_33260C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBB0);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_170AB0(&v32, &v31);
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

void *sub_3327AC()
{
  v1 = v0;
  v32 = sub_AB31C0();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF50);
  v3 = *v0;
  v4 = sub_ABB090();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    for (i = v34 + 16; v13; result = (*(v21 + 32))(*(v26 + 56) + v22, v24, v25))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = 16 * v18;
      v20 = *(v3 + 56);
      v21 = v34;
      v22 = *(v34 + 72) * v18;
      v23 = *(v34 + 16);
      v35 = *(*(v3 + 48) + v19);
      v24 = v31;
      v25 = v32;
      v23(v31, v20 + v22, v32);
      v26 = v33;
      *(*(v33 + 48) + v19) = v35;
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
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
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
    *v1 = v5;
  }

  return result;
}

id sub_332A18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF060);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_18CEBC(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        sub_9B150(v19, *(v4 + 56) + v17);
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

id sub_332BAC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_ABB090();
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

id sub_332CF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD28);
  v2 = *v0;
  v3 = sub_ABB090();
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
        sub_808B0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_9ACFC(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_332E78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEED0);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_9ACA0(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void *sub_333054()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC10);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v18 = *(v2 + 56) + 48 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v25 = *(v4 + 56) + 48 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        result = sub_9AE20(v19, v20, v21, v22, v23, v24);
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

void *sub_3331D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEC0);
  v2 = *v0;
  v3 = sub_ABB090();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_333378()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBB88);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_90090(v22, *(&v22 + 1));
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

id sub_333510(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_ABB090();
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
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
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

void *sub_333660()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE80);
  v2 = *v0;
  v3 = sub_ABB090();
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
    for (i = (v9 + 63) >> 6; v11; v20[2] = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 3 * v14);
      v18 = *v17;
      v19 = v17[1];
      LOBYTE(v17) = v17[2];
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = (*(v4 + 56) + 3 * v14);
      *v20 = v18;
      v20[1] = v19;
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

void *sub_333804(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_ABB090();
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
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
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

void *sub_333964()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFD0);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 7;
        v23 = *(v19 + v17 + 112);
        v25 = *(v19 + v17 + 64);
        v24 = *(v19 + v17 + 80);
        v44 = *(v19 + v17 + 96);
        v45 = v23;
        v42 = v25;
        v43 = v24;
        v27 = *(v19 + v17);
        v26 = *(v19 + v17 + 16);
        v28 = *(v19 + v17 + 48);
        v40 = *(v19 + v17 + 32);
        v41 = v28;
        v38 = v27;
        v39 = v26;
        v29 = (*(v4 + 48) + v18);
        *v29 = v22;
        v29[1] = v21;
        v30 = (*(v4 + 56) + v17);
        v31 = v38;
        v32 = v39;
        v33 = v41;
        v30[2] = v40;
        v30[3] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = v42;
        v35 = v43;
        v36 = v45;
        v30[6] = v44;
        v30[7] = v36;
        v30[4] = v34;
        v30[5] = v35;

        result = sub_2B7BC(&v38, &v37);
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

id sub_333B24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD90);
  v2 = *v0;
  v3 = sub_ABB090();
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
        sub_311CA4(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_9B098(v19, *(v4 + 56) + 40 * v17);
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

void *sub_333CA8()
{
  v1 = v0;
  v37 = sub_AB3820();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF080);
  v3 = *v0;
  v4 = sub_ABB090();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v39;
        v20 = *(v39 + 72) * v18;
        v21 = v36;
        v22 = v37;
        (*(v39 + 16))(v36, *(v3 + 48) + v20, v37);
        v18 *= 48;
        v23 = *(v3 + 56) + v18;
        v24 = *(v23 + 32);
        v25 = *(v23 + 40);
        v26 = v38;
        v27 = *(v38 + 48);
        v28 = *(v19 + 32);
        v29 = *v23;
        v40 = *(v23 + 16);
        v41 = v29;
        result = v28(v27 + v20, v21, v22);
        v30 = *(v26 + 56) + v18;
        v31 = v40;
        *v30 = v41;
        *(v30 + 16) = v31;
        *(v30 + 32) = v24;
        *(v30 + 40) = v25;
        v13 = v42;
      }

      while (v42);
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

        v1 = v33;
        v5 = v38;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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

void *sub_333F40()
{
  v1 = v0;
  v34 = sub_AB3820();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDD0);
  v3 = *v0;
  v4 = sub_ABB090();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v32 = v36 + 16;
    v30 = v3 + 64;
    for (i = v36 + 32; v12; v27[1] = v28)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v36;
      v19 = *(v36 + 72) * v17;
      v20 = v33;
      v21 = v34;
      (*(v36 + 16))(v33, *(v3 + 48) + v19, v34);
      v17 *= 32;
      v22 = (*(v3 + 56) + v17);
      v23 = v35;
      v24 = *(v35 + 48);
      v25 = *(v18 + 32);
      v26 = *v22;
      v37 = v22[1];
      v38 = v26;
      result = v25(v24 + v19, v20, v21);
      v27 = (*(v23 + 56) + v17);
      v28 = v37;
      *v27 = v38;
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

        v1 = v29;
        v5 = v35;
        goto LABEL_18;
      }

      v16 = *(v30 + 8 * v8);
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

void *sub_3341C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF070);
  v2 = *v0;
  v3 = sub_ABB090();
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

void *sub_334310()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBCE8);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_334478()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFB0);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v22 = *v20;
        v21 = v20[1];
        v17 *= 240;
        v23 = *(v19 + v17 + 96);
        v25 = *(v19 + v17 + 48);
        v24 = *(v19 + v17 + 64);
        v53 = *(v19 + v17 + 80);
        v54 = v23;
        v51 = v25;
        v52 = v24;
        v26 = *(v19 + v17 + 160);
        v28 = *(v19 + v17 + 112);
        v27 = *(v19 + v17 + 128);
        v57 = *(v19 + v17 + 144);
        v58 = v26;
        v55 = v28;
        v56 = v27;
        v29 = *(v19 + v17 + 224);
        v31 = *(v19 + v17 + 176);
        v30 = *(v19 + v17 + 192);
        v61 = *(v19 + v17 + 208);
        v62 = v29;
        v59 = v31;
        v60 = v30;
        v33 = *(v19 + v17 + 16);
        v32 = *(v19 + v17 + 32);
        v48 = *(v19 + v17);
        v49 = v33;
        v50 = v32;
        v34 = (*(v4 + 48) + v18);
        *v34 = v22;
        v34[1] = v21;
        v35 = (*(v4 + 56) + v17);
        v36 = v48;
        v37 = v50;
        v35[1] = v49;
        v35[2] = v37;
        *v35 = v36;
        v38 = v51;
        v39 = v52;
        v40 = v54;
        v35[5] = v53;
        v35[6] = v40;
        v35[3] = v38;
        v35[4] = v39;
        v41 = v55;
        v42 = v56;
        v43 = v58;
        v35[9] = v57;
        v35[10] = v43;
        v35[7] = v41;
        v35[8] = v42;
        v44 = v59;
        v45 = v60;
        v46 = v62;
        v35[13] = v61;
        v35[14] = v46;
        v35[11] = v44;
        v35[12] = v45;

        result = sub_2B990(&v48, &v47);
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

void *sub_334690(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_AB3820();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_ABB090();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

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

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

void *sub_334908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF068);
  v2 = *v0;
  v3 = sub_ABB090();
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

char *sub_334A54()
{
  v1 = v0;
  v31 = sub_AB3820();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBCA0);
  v3 = *v0;
  v4 = sub_ABB090();
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
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
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

void *sub_334CDC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_ABB090();
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
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
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

void *sub_334E28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEB0);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v28 = *(v22 + 32);
        v27 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v20;
        v29[1] = v21;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v28;
        *(v30 + 40) = v27;

        v31 = v23;
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

void *sub_334FD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEE88);
  v2 = *v0;
  v3 = sub_ABB090();
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

void *sub_33513C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF30);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

char *sub_3352C4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v40 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v39 = &v35 - v9;
  v41 = a1;
  v42 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v38 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v37 = &v35 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v12 = *v3;
  v13 = sub_ABB090();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v35 = v3;
    v36 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v43 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    v22 = *(v12 + 64);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v23 = v21 & v22;
    v24 = (v20 + 63) >> 6;
    v25 = v37;
    v26 = v41;
    if ((v21 & v22) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v18 << 6);
        v31 = *(v38 + 72) * v30;
        sub_15F84(*(v12 + 48) + v31, v25, v26);
        v32 = v39;
        v33 = *(v40 + 72) * v30;
        sub_15F84(*(v12 + 56) + v33, v39, &unk_E00040);
        v34 = v43;
        sub_36B0C(v25, *(v43 + 48) + v31, v26);
        result = sub_36B0C(v32, *(v34 + 56) + v33, &unk_E00040);
        v23 = v44;
      }

      while (v44);
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v18 >= v24)
      {

        v7 = v35;
        v14 = v43;
        goto LABEL_18;
      }

      v29 = *(v36 + 8 * v18);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v44 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v14;
  }

  return result;
}

void *sub_3355E4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_ABB090();
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

uint64_t sub_335730(char *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v85 = a3;
  v87 = a2;
  v98.size.height = a7;
  v98.size.width = a6;
  v98.origin.y = a5;
  v98.origin.x = a4;
  v107 = sub_AB3820();
  v8 = *(v107 - 8);
  v9 = __chkstk_darwin(v107);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF098);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v83 - v17;
  v19 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_itemIndexPathRelativeFrameMap;
  swift_beginAccess();
  v20 = *&a1[v19];
  v21 = *(v20 + 64);
  v99 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v97 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames;
  v96 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_maximumScrollingHeaderHeight;
  v86 = (v22 + 63) >> 6;
  v88 = v8 + 16;
  v106 = (v8 + 32);
  left = UIEdgeInsetsZero.left;
  top = UIEdgeInsetsZero.top;
  v92 = v8;
  v95 = (v8 + 8);
  v94 = v20;

  v26 = 0;
  v93 = a1;
  v91 = v11;
  v89 = v16;
  v101 = v18;
  while (v24)
  {
    v27 = v26;
LABEL_16:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v94;
    v33 = v92;
    (*(v92 + 16))(v90, *(v94 + 48) + *(v92 + 72) * v31, v107);
    v34 = (*(v32 + 56) + 32 * v31);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF0A0);
    v36 = &v89[*(v35 + 48)];
    v37 = *(v33 + 32);
    v38 = *v34;
    v104 = v34[1];
    v105 = v38;
    v16 = v89;
    v37();
    v39 = v104;
    *v36 = v105;
    *(v36 + 1) = v39;
    (*(*(v35 - 8) + 56))(v16, 0, 1, v35);
    a1 = v93;
    v11 = v91;
    v18 = v101;
LABEL_17:
    sub_36B0C(v16, v18, &qword_DFF098);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF0A0);
    if ((*(*(v40 - 8) + 48))(v18, 1, v40) == 1)
    {
    }

    v41 = &v18[*(v40 + 48)];
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    (*v106)(v11, v18, v107);
    v46 = [a1 collectionView];
    v48 = left;
    MaxY = top;
    if (v46)
    {
      v49 = v46;
      [v46 music_inheritedLayoutInsets];
      MaxY = v50;
      v48 = v51;
      if ([v49 delegate])
      {
        ObjectType = swift_getObjectType();
        v53 = swift_conformsToProtocol2();
        if (v53)
        {
          v54 = v43;
          v55 = v42;
          v56 = (*(v53 + 64))(v49, a1, ObjectType, v53);
          v58 = v57;
          swift_unknownObjectRelease();

          MaxY = MaxY + v56;
          v42 = v55;
          v43 = v54;
          v48 = v48 + v58;
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v18 = v101;
      }

      else
      {
      }
    }

    v60 = *&a1[v97];
    v61 = *(v60 + 16);
    if (v61)
    {
      v100 = v42;
      *&v104 = v45;
      *&v105 = v44;
      v62 = (v60 + 32 * v61);
      v64 = *v62;
      v63 = v62[1];
      v66 = v62[2];
      v65 = v62[3];
      v67 = [a1 collectionView];
      v69 = left;
      v68 = top;
      if (v67)
      {
        v70 = v67;
        [v67 music_inheritedLayoutInsets];
        v68 = v71;
        v69 = v72;
        if ([v70 delegate])
        {
          v73 = swift_getObjectType();
          v74 = swift_conformsToProtocol2();
          if (v74)
          {
            v75 = (*(v74 + 64))(v70, a1, v73, v74);
            v84 = v43;
            v76 = v75;
            v83 = v65;
            v78 = v77;
            swift_unknownObjectRelease();

            v68 = v68 + v76;
            v43 = v84;
            v69 = v69 + v78;
            v65 = v83;
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v18 = v101;
        }

        else
        {
        }
      }

      v108.origin.x = v64 + v69;
      v108.origin.y = v63 + v68;
      v108.size.width = v66;
      v108.size.height = v65;
      MaxY = CGRectGetMaxY(v108);
      v44 = *&v105;
      v45 = *&v104;
      v42 = v100;
    }

    v109.origin.x = v42 + v48;
    v109.origin.y = v43 + MaxY + *&a1[v96];
    v109.size.width = v44;
    v109.size.height = v45;
    if (CGRectIntersectsRect(v109, v98))
    {
      isa = sub_AB3770().super.isa;
      v80 = [v87 layoutAttributesForItemAtIndexPath:isa];

      if (v80)
      {
        v81 = v80;
        v82 = v85;
        sub_AB9730();
        if (*(&dword_10 + (*v82 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v82 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
          v18 = v101;
        }

        sub_AB97F0();
      }
    }

    result = (*v95)(v11, v107);
  }

  if (v86 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v86;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v86)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF0A0);
      (*(*(v59 - 8) + 56))(v16, 1, 1, v59);
      v24 = 0;
      v26 = v29;
      goto LABEL_17;
    }

    v24 = *(v99 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_335F5C(char *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v30 = a2;
  v29 = sub_AB3820();
  __chkstk_darwin(v29);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&a1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames];
  v17 = *(result + 16);
  if (v17)
  {
    v18 = (v13 + 8);
    v28[1] = *&a1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames];

    v19 = 0;
    while (1)
    {
      v20 = [a1 collectionView];
      if (v20)
      {
        v21 = v20;
        [v20 music_inheritedLayoutInsets];
        if ([v21 delegate])
        {
          ObjectType = swift_getObjectType();
          v23 = swift_conformsToProtocol2();
          if (!v23)
          {

            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          (*(v23 + 64))(v21, a1, ObjectType, v23);
          swift_unknownObjectRelease();
        }
      }

LABEL_11:
      v31.origin.x = a4;
      v31.origin.y = a5;
      v31.size.width = a6;
      v31.size.height = a7;
      CGRectGetMinX(v31);
      v24 = sub_AB9260();
      sub_AB3810();
      isa = sub_AB3770().super.isa;
      (*v18)(v15, v29);
      v26 = [v30 layoutAttributesForSupplementaryViewOfKind:v24 atIndexPath:isa];

      if (v26)
      {
        v27 = v26;
        sub_AB9730();
        if (*(&dword_10 + (*a3 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a3 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }

      if (v17 == ++v19)
      {
      }
    }
  }

  return result;
}

uint64_t sub_336220(char *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v104 = a3;
  v106 = a2;
  v117 = a7;
  v116 = a6;
  v129 = a4;
  v130 = a5;
  v131 = sub_AB3820();
  v8 = *(v131 - 8);
  v9 = __chkstk_darwin(v131);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF088);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v123 = &v103 - v17;
  v18 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollingHeaderIndexPathMetricsMap;
  swift_beginAccess();
  v19 = *&a1[v18];
  v20 = *(v19 + 64);
  v118 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v115 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames;
  v24 = (v21 + 63) >> 6;
  v107 = v8 + 16;
  v125 = (v8 + 32);
  left = UIEdgeInsetsZero.left;
  top = UIEdgeInsetsZero.top;
  v105 = "ryViewKindGlobalHeader";
  v112 = v8;
  v114 = (v8 + 8);
  v113 = v19;

  v27 = 0;
  v111 = a1;
  v110 = v11;
  v108 = v16;
  v119 = left;
  while (v23)
  {
    v28 = v27;
LABEL_16:
    v32 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v33 = v32 | (v28 << 6);
    v34 = v113;
    v35 = v112;
    (*(v112 + 16))(v109, *(v113 + 48) + *(v112 + 72) * v33, v131);
    v36 = *(v34 + 56) + 48 * v33;
    v37 = *(v36 + 32);
    v38 = *(v36 + 40);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF090);
    v40 = &v108[*(v39 + 48)];
    v41 = *(v35 + 32);
    v42 = *v36;
    v127 = *(v36 + 16);
    v128 = v42;
    v16 = v108;
    v41();
    v43 = v127;
    *v40 = v128;
    *(v40 + 1) = v43;
    *(v40 + 4) = v37;
    *(v40 + 5) = v38;
    (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
    a1 = v111;
    v11 = v110;
    v31 = v123;
LABEL_17:
    sub_36B0C(v16, v31, &qword_DFF088);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF090);
    if ((*(*(v44 - 8) + 48))(v31, 1, v44) == 1)
    {
    }

    v45 = v31 + *(v44 + 48);
    v47 = *v45;
    v46 = *(v45 + 8);
    v48 = *(v45 + 16);
    v49 = *(v45 + 24);
    v50 = *(v45 + 40);
    *&v128 = *(v45 + 32);
    v126 = v48;
    *&v127 = v50;
    (*v125)(v11, v31, v131);
    v51 = [a1 collectionView];
    MaxY = top;
    v53 = left;
    if (v51)
    {
      v54 = v51;
      [v51 music_inheritedLayoutInsets];
      MaxY = v55;
      v53 = v56;
      if ([v54 delegate])
      {
        ObjectType = swift_getObjectType();
        v58 = swift_conformsToProtocol2();
        if (v58)
        {
          v59 = (*(v58 + 64))(v54, a1, ObjectType, v58);
          v61 = v60;
          swift_unknownObjectRelease();

          MaxY = MaxY + v59;
          v53 = v53 + v61;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v63 = *&a1[v115];
    v64 = *(v63 + 16);
    if (v64)
    {
      v122 = v46;
      v65 = (v63 + 32 * v64);
      v67 = *v65;
      v66 = v65[1];
      v68 = v65[3];
      v121 = v65[2];
      v120 = v68;
      v69 = [a1 collectionView];
      v70 = top;
      v71 = left;
      if (v69)
      {
        v72 = v69;
        [v69 music_inheritedLayoutInsets];
        v70 = v73;
        v71 = v74;
        if ([v72 delegate])
        {
          v75 = swift_getObjectType();
          v76 = swift_conformsToProtocol2();
          if (v76)
          {
            v77 = v47;
            v78 = v49;
            v79 = (*(v76 + 64))(v72, a1, v75, v76);
            v103 = v80;
            swift_unknownObjectRelease();

            v70 = v70 + v79;
            v49 = v78;
            v47 = v77;
            left = v119;
            v71 = v71 + v103;
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      v132.origin.x = v67 + v71;
      v132.origin.y = v66 + v70;
      v132.size.width = v121;
      v132.size.height = v120;
      MaxY = CGRectGetMaxY(v132);
      v46 = v122;
    }

    v81 = [a1 collectionView];
    v82 = left;
    if (v81)
    {
      v83 = v81;
      [v81 music_inheritedLayoutInsets];
      v82 = v84;
      if ([v83 delegate])
      {
        v85 = swift_getObjectType();
        v86 = swift_conformsToProtocol2();
        if (v86)
        {
          (*(v86 + 64))(v83, a1, v85, v86);
          v88 = v87;
          swift_unknownObjectRelease();

          v82 = v82 + v88;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v89 = v47 + v53;
    v90 = v46 + MaxY;
    v133.origin.x = v89;
    v133.origin.y = v90;
    v91 = v126;
    v133.size.width = v126;
    v133.size.height = v49;
    MinX = CGRectGetMinX(v133);
    v134.origin.x = v129;
    v134.origin.y = v130;
    v93 = v116;
    v134.size.width = v116;
    v94 = v117;
    v134.size.height = v117;
    v95 = v82 + CGRectGetMinX(v134);
    v135.origin.x = v89;
    v135.origin.y = v90;
    v135.size.width = v91;
    v135.size.height = v49;
    MaxX = CGRectGetMaxX(v135);
    if (MaxX >= v95)
    {
      MaxX = v95;
    }

    if (MinX > MaxX)
    {
      v97 = MinX;
    }

    else
    {
      v97 = MaxX;
    }

    v136.origin.x = v89;
    v136.origin.y = v90;
    v136.size.width = v91;
    v136.size.height = v49;
    v138.origin.y = CGRectGetMinY(v136);
    v137.origin.x = v129;
    v137.origin.y = v130;
    v137.size.width = v93;
    v137.size.height = v94;
    v138.origin.x = v97;
    *&v138.size.width = v128;
    *&v138.size.height = v127;
    if (CGRectIntersectsRect(v137, v138))
    {
      v98 = sub_AB9260();
      isa = sub_AB3770().super.isa;
      v100 = [v106 layoutAttributesForSupplementaryViewOfKind:v98 atIndexPath:isa];

      if (v100)
      {
        v101 = v100;
        v102 = v104;
        sub_AB9730();
        if (*(&dword_10 + (*v102 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v102 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }
    }

    result = (*v114)(v11, v131);
    left = v119;
  }

  if (v24 <= v27 + 1)
  {
    v29 = v27 + 1;
  }

  else
  {
    v29 = v24;
  }

  v30 = v29 - 1;
  v31 = v123;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF090);
      (*(*(v62 - 8) + 56))(v16, 1, 1, v62);
      v23 = 0;
      v27 = v30;
      goto LABEL_17;
    }

    v23 = *(v118 + 8 * v28);
    ++v27;
    if (v23)
    {
      v27 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_336C10(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

id sub_336C20(uint64_t a1)
{
  v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset] = 0x4024000000000000;
  v3 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_startingIndexPath;
  v4 = sub_AB3820();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_contentSize];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset] = 0x4024000000000000;
  v6 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_itemIndexPathRelativeFrameMap;
  *&v1[v6] = sub_995A8(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_maximumScrollingHeaderHeight] = 0;
  v7 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollingHeaderIndexPathMetricsMap;
  *&v1[v7] = sub_99798(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects] = _swiftEmptyArrayStorage;
  v8 = &v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_cachedShelfGridMetrics];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = &v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_originalHorizontalScrollDecelerationFactor];
  *v9 = 0;
  v9[8] = 1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ShelfCollectionViewLayout();
  return objc_msgSendSuper2(&v11, "initWithCoder:", a1);
}

unint64_t sub_336D8C()
{
  result = qword_DFEDD0;
  if (!qword_DFEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEDD0);
  }

  return result;
}

unint64_t sub_336DE4()
{
  result = qword_DFEDD8;
  if (!qword_DFEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEDD8);
  }

  return result;
}

void sub_336E40()
{
  sub_55244();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_336F78()
{
  result = qword_DFEE70;
  if (!qword_DFEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEE70);
  }

  return result;
}

char *PageHeaderContentViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView;
  type metadata accessor for PageHeaderContentView();
  *&v4[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBelowPromotionalImage] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBottomHairlineVisible] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithText] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithTextForAccessibilitySizes] = 0;
  v8 = &v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSubtitle];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_maximumNumberOfLinesInTitle] = 2;
  *&v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_lineBreakMode] = 4;
  v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_layoutStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_adjustsFontsForAccessibilitySizes] = 1;
  v11 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v4[v11] = TextDrawing.Cache.init()();
  if (a2)
  {
    v12 = sub_AB9260();
  }

  else
  {
    v12 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for PageHeaderContentViewController();
  v13 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v12, a3);

  v14 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView;
  *(*&v13[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView] + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_pageHeaderContentViewDelegate + 8) = &off_D0BE60;
  swift_unknownObjectWeakAssign();
  v15 = *&v13[v14];
  *&v15[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache] = *&v13[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_textDrawingCache];
  swift_retain_n();
  v16 = v13;
  v17 = v15;

  sub_34598C();

  return v16;
}

Swift::Void __swiftcall PageHeaderContentViewController.loadView()()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [objc_allocWithZone(type metadata accessor for TintColorObservingView()) initWithFrame:{v4, v6, v8, v10}];
  [v11 setAutoresizingMask:18];
  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_textDrawingCache];
  v13 = [v11 tintColor];
  swift_beginAccess();
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;
  v15 = v13;

  sub_10710C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v11[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v18 = *v17;
  *v17 = sub_3381E4;
  v17[1] = v16;

  sub_17654(v18);

  [v1 setView:v11];
}

void sub_337460(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_textDrawingCache);
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v3 + 24);
    *(v3 + 24) = a1;
    v6 = a1;

    sub_10710C();
  }
}

Swift::Void __swiftcall PageHeaderContentViewController.viewDidLayoutSubviews()()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PageHeaderContentViewController();
  objc_msgSendSuper2(&v16, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [*&v0[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView] setFrame:?];
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    Width = CGRectGetWidth(v17);
    v12 = [v0 traitCollection];
    v13 = [v0 traitCollection];
    [v13 displayScale];

    sub_3468D8(v12, Width);
    sub_AB3A10();
    v15 = v14;

    [v0 setPreferredContentSize:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PageHeaderContentViewController.viewDidLoad()()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PageHeaderContentViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_textDrawingCache];
  v3 = [v1 traitCollection];
  [v3 displayScale];
  v5 = v4;

  swift_beginAccess();
  *(v2 + 16) = v5;
  sub_106F0C();
  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView]];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PageHeaderContentViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PageHeaderContentViewController();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_textDrawingCache];
  [v3 displayScale];
  v6 = v5;
  swift_beginAccess();
  *(v4 + 16) = v6;
  sub_106F0C();
  v7 = [v3 preferredContentSizeCategory];
  v8 = v7;
  if (isa)
  {
    v9 = [(objc_class *)isa preferredContentSizeCategory];
    v10 = sub_AB92A0();
    v12 = v11;
    if (v10 == sub_AB92A0() && v12 == v13)
    {

      v16 = v3;
      goto LABEL_15;
    }

    v15 = sub_ABB3C0();

    if (v15)
    {
      v16 = v3;
      goto LABEL_15;
    }
  }

  else
  {
  }

  [*(v4 + 64) removeAllObjects];
  [*(v4 + 80) removeAllObjects];
  if (*(v4 + 96))
  {
    *(v4 + 104) = 1;
    v16 = v3;
  }

  else
  {
    v16 = [objc_opt_self() defaultCenter];
    if (qword_DE6828 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v4];
  }

LABEL_15:
}

void sub_337ADC(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView);
  v4 = *(v2 + *a1);
  v5 = v3[*a2];
  v3[*a2] = v4;
  if (v4 != v5)
  {
    v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v3 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if ([Strong isViewLoaded])
      {
        v8 = [v7 view];
        if (v8)
        {
          v9 = v8;
          [v8 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_337BF0(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle + 8];
  if ((v4 != a1 || v3 != a2) && (sub_ABB3C0() & 1) == 0)
  {
    v6 = (*&v2[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView] + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title);
    v7 = *v6;
    v8 = v6[1];
    *v6 = v4;
    v6[1] = v3;

    sub_34566C(v7, v8);

    if ([v2 isViewLoaded])
    {
      v9 = [v2 view];
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
  }
}

void sub_337D5C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = &v5[*a3];
  v8 = *v6;
  v7 = *(v6 + 1);
  if ((*v6 != a1 || v7 != a2) && (sub_ABB3C0() & 1) == 0 && (sub_ABB3C0() & 1) == 0)
  {
    v12 = (*&v5[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView] + *a4);
    v13 = *v12;
    v14 = v12[1];
    *v12 = v8;
    v12[1] = v7;

    a5(v13, v14);

    if ([v5 isViewLoaded])
    {
      v15 = [v5 view];
      if (v15)
      {
        v16 = v15;
        [v15 setNeedsLayout];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_337EAC(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_layoutStyle];
  v3 = a1 & 1;
  v1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_layoutStyle] = a1 & 1;
  if (v2 != (a1 & 1))
  {
    v4 = v1;
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
    v6 = *(v5 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle);
    *(v5 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle) = v3;
    sub_345124(v6);
    if ([v4 isViewLoaded])
    {
      v7 = [v4 view];
      if (v7)
      {
        v8 = v7;
        [v7 setNeedsLayout];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id PageHeaderContentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageHeaderContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s16MusicApplication31PageHeaderContentViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView;
  type metadata accessor for PageHeaderContentView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBelowPromotionalImage) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBottomHairlineVisible) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithText) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithTextForAccessibilitySizes) = 0;
  v3 = (v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSubtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_maximumNumberOfLinesInTitle) = 2;
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_lineBreakMode) = 4;
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_layoutStyle) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_adjustsFontsForAccessibilitySizes) = 1;
  v6 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v1 + v6) = TextDrawing.Cache.init()();
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_3381AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void *sub_3381EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_6D5A0(0, v1, 0);
  v3 = a1 + 56;
  result = sub_ABABC0();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 48) + 240 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_6D5A0((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v22;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_E1798(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_E1798(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
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
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_338434(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v18 = a2;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(a1 + 48) + 24 * (v11 | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_2BA40(*v12, v14, v15);
      sub_1A35C(v16, v13, v14, v15);
      sub_13CC8(v16[0], v16[1], v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_338554(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1A094(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_338630(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v20 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_2B818(v19))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 13) | (v10 << 7)));
    v12 = v11[3];
    v14 = *v11;
    v13 = v11[1];
    v21[2] = v11[2];
    v21[3] = v12;
    v21[0] = v14;
    v21[1] = v13;
    v15 = v11[7];
    v17 = v11[4];
    v16 = v11[5];
    v21[6] = v11[6];
    v21[7] = v15;
    v21[4] = v17;
    v21[5] = v16;
    sub_2B7BC(v21, v19);
    sub_1ADEC(v18, v21);
    v19[4] = v18[4];
    v19[5] = v18[5];
    v19[6] = v18[6];
    v19[7] = v18[7];
    v19[0] = v18[0];
    v19[1] = v18[1];
    v19[2] = v18[2];
    v19[3] = v18[3];
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v20;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_338770(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v26 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 240 * (v11 | (v10 << 6)));
      v14 = v12[1];
      v13 = v12[2];
      v27[0] = *v12;
      v27[1] = v14;
      v27[2] = v13;
      v15 = v12[6];
      v17 = v12[3];
      v16 = v12[4];
      v27[5] = v12[5];
      v27[6] = v15;
      v27[3] = v17;
      v27[4] = v16;
      v18 = v12[10];
      v20 = v12[7];
      v19 = v12[8];
      v27[9] = v12[9];
      v27[10] = v18;
      v27[7] = v20;
      v27[8] = v19;
      v21 = v12[14];
      v23 = v12[11];
      v22 = v12[12];
      v27[13] = v12[13];
      v27[14] = v21;
      v27[11] = v23;
      v27[12] = v22;
      sub_2B990(v27, v25);
      sub_1D014(v24, v27);
      v25[12] = v24[12];
      v25[13] = v24[13];
      v25[14] = v24[14];
      v25[8] = v24[8];
      v25[9] = v24[9];
      v25[10] = v24[10];
      v25[11] = v24[11];
      v25[4] = v24[4];
      v25[5] = v24[5];
      v25[6] = v24[6];
      v25[7] = v24[7];
      v25[0] = v24[0];
      v25[1] = v24[1];
      v25[2] = v24[2];
      v25[3] = v24[3];
      result = sub_2B9EC(v25);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v26;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_3388F0(void *a1)
{
  v2 = v1;
  v4 = qword_DFF188;
  *&v2[v4] = sub_96828(_swiftEmptyArrayStorage);
  v5 = qword_DFF190;
  *&v2[v5] = [objc_allocWithZone(CNContactStore) init];
  v6 = qword_DFF1A8;
  *&v2[v6] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v2[qword_DFF1B0] = 0;
  v2[qword_DFF1B8] = 1;
  *&v2[qword_DFF1C0] = &_swiftEmptySetSingleton;
  v7 = qword_DFF1C8;
  type metadata accessor for SocialOnboardingNetworkRegistrationController();
  v8 = swift_allocObject();
  v9 = [objc_allocWithZone(NSOperationQueue) init];
  v10 = sub_AB9260();
  [v9 setName:v10];

  [v9 setQualityOfService:25];
  *(v8 + 16) = v9;
  *&v2[v7] = v8;
  *&v2[qword_DFF1D0] = _swiftEmptyArrayStorage;
  v11 = qword_DFF1D8;
  *&v2[v11] = sub_96724(_swiftEmptyArrayStorage);
  *&v2[qword_DFF1E0] = 0;
  *&v2[qword_DFF198] = a1;
  type metadata accessor for SocialOnboardingFriendsController();
  swift_allocObject();
  v12 = a1;
  *&v2[qword_DFF1A0] = sub_40B74C(&_swiftEmptySetSingleton);
  v24.receiver = v2;
  v24.super_class = type metadata accessor for JSSocialOnboardingFriendsFinderViewController();
  v13 = objc_msgSendSuper2(&v24, "init");
  v14 = &v12[OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingFriendsFinder_delegate];
  swift_beginAccess();
  *(v14 + 1) = &off_D0BFA8;
  swift_unknownObjectWeakAssign();
  v15 = qword_DFF1A0;
  v16 = *&v13[qword_DFF1A0];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = *(v16 + 48);
  *(v16 + 48) = sub_344DF8;
  *(v16 + 56) = v17;
  v19 = v13;

  sub_17654(v18);

  v20 = *&v13[v15];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = *(v20 + 64);
  *(v20 + 64) = sub_344E00;
  *(v20 + 72) = v21;

  sub_17654(v22);

  sub_33D1AC();
  sub_33C534();

  return v19;
}

char *sub_338C28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_33C864();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[qword_DFE2F0];
    if (v4)
    {
      result = [v4 results];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = result;
      v6 = [result totalItemCount];

      v7 = sub_33E7BC();
      if (v6)
      {
        v8 = 0;
LABEL_10:
        (*(*v7 + 216))(v8 & 1);
      }
    }

    else
    {
      v7 = sub_33E7BC();
    }

    v8 = *(*&v3[qword_DFF1A0] + 80) ^ 1;
    goto LABEL_10;
  }

  return result;
}

void sub_338D58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = sub_3381EC(a1);
      v5 = sub_2F3B1C(v4);

      v6 = qword_DFF1C0;
      swift_beginAccess();
      v7 = *&v3[v6];

      *&v3[v6] = sub_10E998(v5, v7);

      JSSocialOnboardingFriendsFinder.selectedFriendIdentifiers.setter(v8);
    }

    else
    {
      v9 = qword_DFF1C0;
      swift_beginAccess();
      *&v3[v9] = &_swiftEmptySetSingleton;

      JSSocialOnboardingFriendsFinder.selectedFriendIdentifiers.setter(&_swiftEmptySetSingleton);
    }

    sub_339484();
  }
}

void sub_338EBC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for JSSocialOnboardingFriendsFinderViewController();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLoad");
  [*&v1[qword_DFF1A8] setHidesWhenStopped:{1, v2.receiver, v2.super_class}];
  sub_33C864();
}

void sub_338F34()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for JSSocialOnboardingFriendsFinderViewController();
  objc_msgSendSuper2(&v8, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[qword_DFF1A8];
    if (([*&v1[qword_DFF1A8] isDescendantOfView:v2] & 1) == 0)
    {
      [v3 addSubview:v4];
    }

    [v4 sizeThatFits:{0.0, 0.0}];
    v6 = v5;
    [v3 bounds];
    v7 = [v1 traitCollection];
    [v7 displayScale];

    sub_ABA470();
    [v4 setFrame:v6];
    [v3 bringSubviewToFront:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_3390C0(void *a1)
{
  v1 = a1;
  sub_338F34();
}

uint64_t sub_339108(void *a1)
{
  sub_3B316C(a1);
  type metadata accessor for SocialOnboardingNetworkCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();
}

void sub_339178(void *a1)
{
  v21 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v1 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;

  UIEdgeInsetsInsetRect(v6, v8, v10, v12, v16, v18);
  sub_B2768(v21, v19);
  [a1 setRowHeight:v20];
  [a1 invalidateLayout];
}

void sub_3392D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = objc_opt_self();
  v7 = [v6 propertySetWithProperties:isa];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  v11 = sub_AB9740().super.isa;
  v12 = [v6 propertySetWithProperties:v11];

  v13 = [v7 propertySetByCombiningWithPropertySet:v12];
  qword_DFF180 = v13;
}

void sub_339484()
{
  v1 = v0;
  v2 = *&v0[qword_DFF1A0];
  v3 = *(v2 + 16);
  if (v3)
  {
    if (*&v1[qword_DFE2F0])
    {
    }

    else
    {
      v4 = *&v1[qword_DFF1A8];

      [v4 startAnimating];
    }

    v5 = *(v2 + 24);
    v6 = *(v2 + 25);
    v7 = objc_allocWithZone(type metadata accessor for JSSocialOnboardingFriendsModelRequest());
    v8 = sub_33FDAC(v3, v5, v6);
    sub_13C80(0, &qword_DED7C0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = v8;
    v12 = [v10 kindWithModelClass:ObjCClassFromMetadata];
    [v11 setItemKind:v12];

    if (qword_DE6AB0 != -1)
    {
      swift_once();
    }

    [v11 setItemProperties:qword_DFF180];

    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v16[4] = sub_344D88;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_151E0;
    v16[3] = &block_descriptor_158;
    v14 = _Block_copy(v16);
    v15 = v1;

    [v11 performWithResponseHandler:v14];
    _Block_release(v14);
  }

  else
  {

    sub_3B4724(0);
  }
}

uint64_t sub_3396C8(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_344D90, v3);
}

void sub_339798(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      type metadata accessor for JSSocialOnboardingFriendsModelRequest.Response();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = a2;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v4;
    sub_3B4724(v5);

    v8 = *&v7[qword_DFE2F0];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = [v8 results];
    if (!v9)
    {
      __break(1u);
      goto LABEL_18;
    }

    v10 = v9;
    v11 = [v9 totalItemCount];

    if (v11 >= 1)
    {
      v12 = v7[qword_DFF1B8];
      v7[qword_DFF1B8] = 1;
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_11:
      v13 = *&v7[qword_DFF1D8];
      v18 = 2;
      __chkstk_darwin(v8);
      v17[2] = &v18;

      v14 = sub_1B3870(sub_344E30, v17, v13) & 1;

      v15 = v7[qword_DFF1B8];
      v7[qword_DFF1B8] = v14;
      if (v14 == v15)
      {
        goto LABEL_15;
      }
    }

    if ([v7 isViewLoaded])
    {
      [v7 loadViewIfNeeded];
      v16 = *&v7[qword_DFE2F8];
      if (v16)
      {
        [v16 reloadData];
        goto LABEL_15;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_15:
  }
}

id sub_339974()
{
  sub_33C864();
  v1 = *(v0 + qword_DFE2F0);
  if (!v1)
  {
    v5 = sub_33E7BC();
LABEL_6:
    v6 = *(*(v0 + qword_DFF1A0) + 80) ^ 1;
    goto LABEL_7;
  }

  result = [v1 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result totalItemCount];

  v5 = sub_33E7BC();
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:
  (*(*v5 + 216))(v6 & 1);
}

uint64_t sub_339A48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_AB3820();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = IndexPath.safeSection.getter();
  v10 = qword_DFF1D0;
  v11 = *(v3 + qword_DFF1D0);
  if (v11 >> 62)
  {
    v24 = v9;
    v12 = sub_ABB060();
    v9 = v24;
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = v12 >= 1 && v9 == 0;
  v14 = v26;
  if (v13)
  {
    v21 = *(v26 + 56);
    v22 = a2;
    v23 = 1;
  }

  else
  {
    v15 = *(v3 + v10);
    if (v15 >> 62)
    {
      v16 = sub_ABB060();
      v14 = v26;
    }

    else
    {
      v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    }

    v17 = *(v14 + 16);
    if (v16 >= 1)
    {
      v17(v8, a1, v6);
      v18 = IndexPath.safeSection.getter();
      v19 = __OFSUB__(v18, 1);
      result = v18 - 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        IndexPath.safeSection.setter();
        (*(v26 + 32))(a2, v8, v6);
        return (*(v26 + 56))(a2, 0, 1, v6);
      }

      return result;
    }

    v17(a2, a1, v6);
    v21 = *(v26 + 56);
    v22 = a2;
    v23 = 0;
  }

  return v21(v22, v23, 1, v6);
}

uint64_t sub_339C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + qword_DFF1D0);
  if (v5 >> 62)
  {
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = sub_AB3820();
  result = (*(*(v7 - 8) + 16))(a2, a1, v7);
  if (v6 >= 1)
  {
    v9 = IndexPath.safeSection.getter();
    v10 = __OFADD__(v9, 1);
    result = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      return IndexPath.safeSection.setter();
    }
  }

  return result;
}

char *sub_339D44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_34339C();

  return v6;
}

id sub_339D98(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_343FBC(a4);

  return v8;
}

unint64_t sub_339DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9230();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB37F0();
  v10 = qword_DFF1D0;
  v11 = *(v2 + qword_DFF1D0);
  if (v11 >> 62)
  {
    v25 = v9;
    v12 = sub_ABB060();
    v9 = v25;
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  if (v12 >= 1 && v9 == 0)
  {
    v15 = sub_3B353C(a2);
    sub_AB9220();
    v28._countAndFlagsBits = 0x207463656E6E6F43;
    v28._object = 0xE800000000000000;
    sub_AB9210(v28);
    result = sub_AB37B0();
    v16 = *(v3 + v10);
    if ((v16 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
      {
        v17 = *(v16 + 8 * result + 32);

        v18 = v17;
LABEL_14:
        v19 = v18;
        v20 = &v18[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_name];
        swift_beginAccess();
        v22 = *v20;
        v21 = v20[1];

        v29._countAndFlagsBits = v22;
        v29._object = v21;
        sub_AB9200(v29);

        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        sub_AB9210(v30);
        sub_AB9240();
        sub_AB3550();
        v23 = sub_AB9320();
        sub_36E584(v23, v24);
        return v15;
      }

      __break(1u);
      return result;
    }

    v26 = result;

    v18 = sub_35FCFC(v26, v16);
    goto LABEL_14;
  }

  return sub_3E61E0(a1, a2);
}

id sub_33A0D4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = sub_339DEC(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

void sub_33A1FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB37F0();
  v9 = qword_DFF1D0;
  v10 = *(v3 + qword_DFF1D0);
  if (v10 >> 62)
  {
LABEL_50:
    v11 = sub_ABB060();
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  }

  sub_3B38B0(a1, a2, a3);
  if (v11 < 1 || v8 != 0)
  {
    goto LABEL_43;
  }

  type metadata accessor for SocialOnboardingNetworkCell();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    goto LABEL_43;
  }

  if (*(v4 + qword_DFF1B8) == 1)
  {
    v46 = v13;
    v4 = *(v4 + v9);
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      a3 = sub_ABB060();
    }

    else
    {
      a3 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    }

    v14 = a2;

    if (!a3)
    {
      goto LABEL_37;
    }

    a1 = 0;
    v9 = v4 & 0xC000000000000001;
    v15 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    v45 = a2;
    while (1)
    {
      a2 = a1;
      while (1)
      {
        if (v9)
        {
          v16 = sub_35FCFC(a2, v4);
        }

        else
        {
          if (a2 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_49;
          }

          v16 = *(v4 + 8 * a2 + 32);
        }

        v17 = v16;
        a1 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v18 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_artwork;
        swift_beginAccess();
        v19 = *&v17[v18];
        if (v19)
        {
          break;
        }

LABEL_16:
        ++a2;
        if (a1 == a3)
        {
          a2 = v45;
          goto LABEL_37;
        }
      }

      v20 = v19;
      v21 = JSArtwork.artworkCatalog(defaultCropStyle:)(v15);

      if (!v21)
      {
        goto LABEL_16;
      }

      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      a2 = v45;
      if (a1 == a3)
      {
LABEL_37:

        v22 = v46;
        v33 = _swiftEmptyArrayStorage;
        goto LABEL_40;
      }
    }
  }

  v22 = v13;
  v23 = a2;
  v24 = sub_AB37B0();
  v25 = *(v4 + v9);
  if ((v25 & 0xC000000000000001) == 0)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
    {
      v26 = *(v25 + 8 * v24 + 32);

      v27 = v26;
      goto LABEL_33;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v44 = v24;

  v27 = sub_35FCFC(v44, v25);
LABEL_33:
  v28 = v27;
  v29 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_artwork;
  swift_beginAccess();
  v30 = *&v28[v29];
  v31 = v30;

  if (v30)
  {
    v32 = JSArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleSpecificRectangle);

    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_AF82B0;
      v33[4] = v32;
      goto LABEL_40;
    }
  }

  else
  {
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_40:
  v34 = *(v22 + OBJC_IVAR____TtC16MusicApplication27SocialOnboardingNetworkCell_networkStackView);
  v35 = *&v34[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_artworks];
  *&v34[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_artworks] = v33;

  v36 = sub_12D5C8(v35, v33);

  if ((v36 & 1) == 0)
  {
    [v34 setNeedsLayout];
  }

LABEL_43:
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    return;
  }

  v38 = v37;
  v39 = a2;
  v40 = [v38 tableViewCell];
  if (!v40)
  {
    goto LABEL_55;
  }

  v41 = v40;
  [v40 _setDrawsSeparatorAtTopOfSection:0];

  v42 = [v38 tableViewCell];
  if (!v42)
  {
LABEL_56:
    __break(1u);
    return;
  }

  v43 = v42;
  [v42 _setDrawsSeparatorAtBottomOfSection:1];
}

void sub_33A67C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_33A1FC(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_33A7A0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB9250();
  __chkstk_darwin(v9 - 8);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB37F0();
  v13 = qword_DFF1D0;
  v14 = *&v2[qword_DFF1D0];
  if (v14 >> 62)
  {
    v15 = sub_ABB060();
  }

  else
  {
    v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  }

  sub_3B41F4(a1, a2);
  if (v15 < 1 || v12 != 0)
  {
    return;
  }

  if (v2[qword_DFF1B8] == 1)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v17 = sub_AB9260();

    v63 = [objc_opt_self() alertControllerWithTitle:v17 message:0 preferredStyle:0];

    v18 = *&v2[v13];
    if (v18 >> 62)
    {
      v59 = *&v2[v13];
      v60 = sub_ABB060();
      v18 = v59;
      v19 = v60;
      if (!v60)
      {
LABEL_32:
        sub_AB91E0();
        sub_AB3550();
        sub_AB9320();
        v56 = sub_AB9260();

        v57 = [objc_opt_self() actionWithTitle:v56 style:1 handler:0];

        v58 = v63;
        [v63 addAction:v57];
        [v3 presentViewController:v58 animated:1 completion:0];

        return;
      }
    }

    else
    {
      v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      if (!v19)
      {
        goto LABEL_32;
      }
    }

    v20 = v18;
    v62[1] = v11;
    v62[2] = v8;
    type metadata accessor for ArtworkComponentImageView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v68 = objc_opt_self();
    if (v19 >= 1)
    {
      v65 = v20 & 0xC000000000000001;
      v66 = qword_DFF1D8;
      v64 = v71;

      v21 = v20;
      v22 = 0;
      v67 = v19;
      v23 = v20;
      while (1)
      {
        if (v65)
        {
          v24 = sub_35FCFC(v22, v21);
        }

        else
        {
          v24 = *(v21 + 8 * v22 + 32);
        }

        v25 = v24;
        v26 = &v24[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier];
        swift_beginAccess();
        v27 = *&v3[v66];
        if (!*(v27 + 16))
        {
          goto LABEL_21;
        }

        v30 = v26;
        v29 = *v26;
        v28 = v30[1];

        v31 = sub_2EBF88(v29, v28);
        if ((v32 & 1) == 0)
        {
          break;
        }

        v33 = *(*(v27 + 56) + 8 * v31);
        sub_9AEAC(v33);

        v34 = v33 == 2;
        sub_9AE98(v33);

LABEL_22:
        v35 = type metadata accessor for SocialOnboardingNetworkStatusViewController();
        v36 = objc_allocWithZone(v35);
        v37 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_artworkComponent;
        v38 = objc_allocWithZone(ObjCClassFromMetadata);
        v39 = v25;
        v40 = [v38 init];
        _s9ComponentCMa(0);
        swift_allocObject();
        v41 = sub_80104(v40);

        *&v36[v37] = v41;
        v42 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkLabel;
        *&v36[v42] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v43 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkStateLabel;
        *&v36[v43] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        *&v36[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_network] = v39;
        v72.receiver = v36;
        v72.super_class = v35;
        v44 = objc_msgSendSuper2(&v72, "initWithNibName:bundle:", 0, 0);
        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v46 = swift_allocObject();
        *(v46 + 16) = v34;
        *(v46 + 24) = v45;
        *(v46 + 32) = v39;
        v71[2] = sub_344A98;
        v71[3] = v46;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v71[0] = sub_780C4;
        v71[1] = &block_descriptor_108;
        v47 = _Block_copy(aBlock);
        v48 = v39;
        v49 = v44;

        v50 = [v68 _actionWithContentViewController:v49 style:0 handler:v47];
        _Block_release(v47);

        if (v50)
        {
          [v63 addAction:v50];
        }

        ++v22;

        v21 = v23;
        if (v67 == v22)
        {

          goto LABEL_32;
        }
      }

LABEL_21:
      v34 = 0;
      goto LABEL_22;
    }

LABEL_39:
    __break(1u);
    return;
  }

  v51 = sub_AB37B0();
  v52 = *&v2[v13];
  if ((v52 & 0xC000000000000001) != 0)
  {
    v61 = v51;

    v54 = sub_35FCFC(v61, v52);
    goto LABEL_28;
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v51 >= *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v53 = *(v52 + 8 * v51 + 32);

  v54 = v53;
LABEL_28:
  ObjCClassFromMetadata = v54;
  sub_33D364(v54);

  v55 = ObjCClassFromMetadata;
}

void sub_33AEC4(uint64_t a1, char a2, uint64_t a3, char *a4)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v6 = Strong;
    sub_33DE30(a4);
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v6 = v7;
    sub_33D364(a4);
  }
}

void sub_33AF50(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_33A7A0(v11, v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_33B060(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v8 - 8);
  v10 = v65 - v9;
  sub_ABA670();
  v11 = sub_ABA680();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_200394(v10);
  v12 = [a2 name];
  if (v12)
  {
    v13 = v12;
    v14 = sub_AB92A0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = &a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name];
  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name];
  v19 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name + 8];
  *v17 = v14;
  v17[1] = v16;
  sub_B0EFC(v18, v19);

  if (![a2 isPrivate])
  {
    v26 = *(v3 + qword_DFE2F0);
    if (!v26)
    {
      goto LABEL_20;
    }

    type metadata accessor for JSSocialOnboardingFriendsModelRequest.Response();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
      goto LABEL_20;
    }

    v28 = v27;
    v29 = v26;
    v30 = [a2 identifiers];
    v31 = [v30 universalStore];

    if (v31)
    {
      v32 = [v31 socialProfileID];
      if (v32)
      {
        v33 = v32;
        v34 = sub_AB92A0();
        v36 = v35;
        swift_unknownObjectRelease();

LABEL_13:
        v37 = *(v28 + OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest8Response_profileIDsToFriendsMap);
        if (*(v37 + 16))
        {

          v38 = sub_2EBF88(v34, v36);
          if (v39)
          {
            v40 = *(v37 + 56) + 240 * v38;
            v42 = *(v40 + 40);
            v41 = *(v40 + 48);

            if (v41)
            {
              v43 = &a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
              v44 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
              v45 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle + 8];
              *v43 = v42;
              *(v43 + 1) = v41;
              sub_B10C0(v44, v45);

              goto LABEL_22;
            }

            goto LABEL_20;
          }
        }

        else
        {
        }

LABEL_20:
        v46 = &a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
        v25 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
        v23 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle + 8];
        *v46 = 0;
        *(v46 + 1) = 0xE000000000000000;
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    v34 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_13;
  }

  sub_AB91E0();
  sub_AB3550();
  v20 = sub_AB9320();
  v21 = &a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
  v22 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
  v23 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle + 8];
  *v21 = v20;
  v21[1] = v24;
  v25 = v22;
LABEL_21:
  sub_B10C0(v25, v23);
LABEL_22:

  [a1 setSelectionStyle:0];
  v47 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController;
  v48 = *&a1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController];
  v49 = *(v48 + 88);
  *(v48 + 88) = a2;
  if (!v49)
  {

    v53 = a2;
    v51 = 0;
    goto LABEL_26;
  }

  sub_13C80(0, &qword_DED7C0);

  v50 = a2;
  v51 = v49;
  v52 = sub_ABA790();

  if ((v52 & 1) == 0)
  {
LABEL_26:
    sub_49E994();
    sub_49EB38(512);
  }

  v54 = *&a1[v47];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v54 + 32) = &off_D0BF88;
  swift_unknownObjectWeakAssign();
  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v57 = v56;

    swift_unknownObjectRelease();
    if (v57 == Strong)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (Strong)
  {

LABEL_32:
    sub_49E6D8();
    sub_49E994();
    sub_49EB38(512);
LABEL_33:

    swift_unknownObjectRelease();
  }

  v58 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
  v59 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
  v60 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8];
  *v58 = 0;
  v58[8] = 0;
  if (v60 || (v65[3] = 0, *&v65[2] = v59, sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
    [a1 setNeedsLayout];
  }

  v61 = *&a1[v47];
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = *(v61 + 56);
  *(v61 + 56) = sub_344D04;
  *(v61 + 64) = v62;

  sub_17654(v63);
}

void sub_33B650(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 104);
    v5 = *(a1 + 112);
    sub_1D3124(v4, v5);
    sub_33C928(v4, v5);
    sub_344D0C(v4, v5);
  }
}

void sub_33B6F0(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = [a2 artworkCatalog];
  v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v6;
  v8 = v6;

  sub_74EA4(v6);
  sub_B0D4C();

  type metadata accessor for ArtworkComponentImageView();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
    v11 = *(v9 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
    v12 = *(v9 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
    v13 = *(v9 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    v14 = *(v10 + 24);
    *(v10 + 24) = 0;
    sub_7D6F4(v11, v12, v13, v14);
    sub_7FCC4(v11);
  }

  v15 = *(v3 + qword_DFE2F0);
  if (!v15)
  {
    return;
  }

  type metadata accessor for JSSocialOnboardingFriendsModelRequest.Response();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = v15;
  v19 = [a2 identifiers];
  v20 = [v19 universalStore];

  if (v20)
  {
    v21 = [v20 socialProfileID];
    if (v21)
    {
      v22 = v18;
      v23 = v21;
      v24 = sub_AB92A0();
      v26 = v25;
      swift_unknownObjectRelease();

      v18 = v22;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v24 = 0;
  v26 = 0xE000000000000000;
LABEL_10:
  v27 = *(v17 + OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest8Response_profileIDsToFriendsMap);
  if (!*(v27 + 16))
  {

LABEL_31:

    return;
  }

  v28 = sub_2EBF88(v24, v26);
  if ((v29 & 1) == 0)
  {

    goto LABEL_31;
  }

  v30 = (*(v27 + 56) + 240 * v28);
  v32 = v30[1];
  v31 = v30[2];
  v66[0] = *v30;
  v66[1] = v32;
  v66[2] = v31;
  v33 = v30[3];
  v34 = v30[4];
  v35 = v30[6];
  v66[5] = v30[5];
  v66[6] = v35;
  v66[3] = v33;
  v66[4] = v34;
  v36 = v30[7];
  v37 = v30[8];
  v38 = v30[10];
  v66[9] = v30[9];
  v66[10] = v38;
  v66[7] = v36;
  v66[8] = v37;
  v39 = v30[11];
  v40 = v30[12];
  v41 = v30[14];
  v68 = v30[13];
  v69 = v41;
  v66[11] = v39;
  v67 = v40;
  sub_2B990(v66, v65);

  if (v68)
  {
    goto LABEL_42;
  }

  v42 = v67;
  v43 = *(v3 + qword_DFF1D0);
  v64 = v18;
  if (v43 >> 62)
  {
LABEL_46:
    v44 = sub_ABB060();
  }

  else
  {
    v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v44)
  {
LABEL_34:

    v18 = v64;
    goto LABEL_42;
  }

  v45 = 0;
  while (1)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v46 = sub_35FCFC(v45, v43);
    }

    else
    {
      if (v45 >= *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_45;
      }

      v46 = *(v43 + 8 * v45 + 32);
    }

    v47 = v46;
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v49 = &v46[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier];
    swift_beginAccess();
    v50 = *v49 == v42 && *(&v42 + 1) == *(v49 + 1);
    if (v50 || (sub_ABB3C0() & 1) != 0)
    {
      break;
    }

    ++v45;
    if (v48 == v44)
    {
      goto LABEL_34;
    }
  }

  v51 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_artwork;
  swift_beginAccess();
  v52 = *&v47[v51];
  v18 = v64;
  if (!v52)
  {
LABEL_41:

    goto LABEL_42;
  }

  v53 = ICStoreArtworkInfoCropStyleSpecificRectangle;
  v54 = v47;
  v55 = v52;
  v56 = JSArtwork.artworkCatalog(defaultCropStyle:)(v53);

  if (!v56)
  {

    goto LABEL_41;
  }

  v57 = swift_dynamicCastClass();
  if (v57)
  {
    v58 = v57 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
    v59 = *(v57 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
    v60 = *(v57 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
    v61 = *(v57 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
    *v58 = v56;
    *(v58 + 8) = 0;
    *(v58 + 16) = 0;
    v62 = *(v58 + 24);
    *(v58 + 24) = 1;
    v63 = v56;
    sub_7D6F4(v59, v60, v61, v62);
    sub_7FCC4(v59);
  }

LABEL_42:
  sub_2B9EC(v66);
}

double sub_33BBC4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  v17 = sub_3440BC(v13);

  (*(v10 + 8))(v12, v9);
  return v17;
}

double sub_33BCF4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_34438C(v6);
  v10 = v9;

  return v10;
}

void sub_33BD6C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for JSSocialOnboardingFriendsFinderViewController();
  objc_msgSendSuper2(&v5, "music_viewInheritedLayoutInsetsDidChange");
  v1 = sub_96828(_swiftEmptyArrayStorage);
  v2 = qword_DFF188;
  swift_beginAccess();
  *&v0[v2] = v1;

  [v0 loadViewIfNeeded];
  v3 = *&v0[qword_DFE2F8];
  if (v3)
  {
    v4 = [v3 collectionViewLayout];
    [v4 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_33BE38(void *a1)
{
  v1 = a1;
  sub_33BD6C();
}

void sub_33BE80(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSSocialOnboardingFriendsFinderViewController();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = sub_96828(_swiftEmptyArrayStorage);
  v4 = qword_DFF188;
  swift_beginAccess();
  *&v1[v4] = v3;

  [v1 loadViewIfNeeded];
  v5 = *&v1[qword_DFE2F8];
  if (v5)
  {
    v6 = [v5 collectionViewLayout];
    [v6 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_33BF54(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_33BE80(a3);
}

void sub_33BFC0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v66 = a2;
  v8 = sub_AB4BC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + qword_DFE2F0);
  if (!v12)
  {
    return;
  }

  type metadata accessor for JSSocialOnboardingFriendsModelRequest.Response();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v63 = a4;
  v64 = a3;
  v15 = v12;
  v16 = a1;
  v17 = v15;
  v65 = v16;
  v18 = [v16 identifiers];
  v19 = [v18 universalStore];

  v62 = v9;
  if (v19)
  {
    v20 = v17;
    v21 = [v19 socialProfileID];
    if (v21)
    {
      v22 = v21;
      v23 = sub_AB92A0();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v17 = v20;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = *(v14 + OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest8Response_profileIDsToFriendsMap);
  if (*(v26 + 16))
  {
    v61 = v4;

    v27 = sub_2EBF88(v23, v25);
    if (v28)
    {
      v29 = (*(v26 + 56) + 240 * v27);
      v31 = v29[1];
      v30 = v29[2];
      v69[0] = *v29;
      v69[1] = v31;
      v70 = v30;
      v32 = v29[3];
      v33 = v29[4];
      v34 = v29[6];
      v73 = v29[5];
      v74 = v34;
      v71 = v32;
      v72 = v33;
      v35 = v29[7];
      v36 = v29[8];
      v37 = v29[10];
      v77 = v29[9];
      v78 = v37;
      v75 = v35;
      v76 = v36;
      v38 = v29[11];
      v39 = v29[12];
      v40 = v29[14];
      v81 = v29[13];
      v82 = v40;
      v79 = v38;
      v80 = v39;
      sub_2B990(v69, v68);

      v41 = [v65 identifiers];
      v42 = [v41 universalStore];

      if (v42)
      {
        v43 = [v42 socialProfileID];
        if (v43)
        {
          v44 = v43;
          v45 = sub_AB92A0();
          v47 = v46;
          swift_unknownObjectRelease();

          if ((v70 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        swift_unknownObjectRelease();
        v45 = 0;
        v47 = 0xE000000000000000;
        if ((v70 & 1) == 0)
        {
LABEL_24:

          v53 = Logger.jsBridge.unsafeMutableAddressor();
          v54 = v62;
          (v62)[2](v11, v53, v8);
          v55 = sub_AB4BA0();
          v56 = sub_AB9F40();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v68[0] = v58;
            *v57 = 136315138;
            *(v57 + 4) = sub_425E68(0xD00000000000003CLL, 0x8000000000B5F970, v68);
            _os_log_impl(&dword_0, v55, v56, "Unexpected call to %s which isn't supported in Legacy Music code.", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v58);
          }

          (v54[1])(v11, v8);

          sub_2B9EC(v69);
          return;
        }
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
        if ((v70 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      v62 = v17;
      v48 = *(v66 + 97);
      swift_beginAccess();
      sub_2EF424(v45, v47);
      v50 = v49;
      swift_endAccess();

      JSSocialOnboardingFriendsFinder.selectedFriendIdentifiers.setter(v51);
      if (v50)
      {

        v52 = 0;
      }

      else
      {
        swift_beginAccess();
        sub_1A9FC(v67, v45, v47);
        swift_endAccess();

        JSSocialOnboardingFriendsFinder.selectedFriendIdentifiers.setter(v59);

        if ([v65 isPrivate])
        {
          v52 = 1;
        }

        else
        {
          v52 = 2;
        }
      }

      if (v48)
      {
        v60 = 256;
      }

      else
      {
        v60 = 0;
      }

      v64(v60 & 0xFFFFFF00 | v52);
      sub_2B9EC(v69);

      return;
    }
  }

  else
  {
  }
}

uint64_t sub_33C534()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFFBD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v2 = *(v0 + qword_DFF190);
  *(inited + 32) = v2;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  v3 = v2;
  sub_110AC(inited);
  v5 = v4;
  swift_setDeallocating();
  sub_344CB0(inited + 32);
  v32 = v0;
  v6 = *(v0 + qword_DFF1D0);
  if (v6 >> 62)
  {
LABEL_31:
    v31 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_ABB060();
  }

  else
  {
    v31 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v30 = qword_DFF1D8;

  if (!v7)
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v8 = 0;
  v28 = v5;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    v5 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_35FCFC(v5, v6);
      }

      else
      {
        if (v5 >= *(v31 + 16))
        {
          goto LABEL_30;
        }

        v9 = *(v6 + 8 * v5 + 32);
      }

      v10 = v9;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 = &v9[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier];
      swift_beginAccess();
      v12 = *(v32 + v30);
      if (*(v12 + 16))
      {
        v13 = *v11;
        v14 = v11[1];

        v15 = sub_2EBF88(v13, v14);
        if ((v16 & 1) == 0)
        {

          goto LABEL_7;
        }

        v17 = *(*(v12 + 56) + 8 * v15);
        sub_9AEAC(v17);

        if (v17 != 1 && v17 != 3)
        {
          break;
        }
      }

LABEL_6:

LABEL_7:
      ++v5;
      if (v8 == v7)
      {
        v5 = v28;
        goto LABEL_28;
      }
    }

    if (v17 != 2)
    {
      sub_9AE98(v17);
      goto LABEL_6;
    }

    v19 = *v11;
    v18 = v11[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_6AA24(0, *(v29 + 2) + 1, 1, v29);
    }

    v21 = *(v29 + 2);
    v20 = *(v29 + 3);
    if (v21 >= v20 >> 1)
    {
      v29 = sub_6AA24((v20 > 1), v21 + 1, 1, v29);
    }

    *(v29 + 2) = v21 + 1;
    v22 = &v29[24 * v21];
    *(v22 + 4) = v19;
    *(v22 + 5) = v18;
    v22[48] = 0;
    v5 = v28;
  }

  while (v8 != v7);
LABEL_28:

  v23 = sub_2F35D4(v29);

  v24 = *(v32 + qword_DFF1A0);
  sub_338434(v23, v5);
  v25 = *(v24 + 88);
  *(v24 + 88) = v26;
  sub_40C3B0(v25);
}

id sub_33C864()
{
  v1 = *(v0 + qword_DFE2F0);
  if (!v1)
  {
    goto LABEL_5;
  }

  result = [v1 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result totalItemCount];

  if (v4 > 0)
  {
    v5 = &selRef_stopAnimating;
  }

  else
  {
LABEL_5:
    v5 = &selRef_stopAnimating;
    if (*(*(v0 + qword_DFF1A0) + 80))
    {
      v5 = &selRef_startAnimating;
    }
  }

  v6 = *(v0 + qword_DFF1A8);
  v7 = *v5;

  return [v6 v7];
}

uint64_t sub_33C928(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12B2FC();
  if (v9)
  {
    v10 = v8;
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    v13 = v12;
    swift_unknownObjectRelease();
    v14 = swift_getObjectType();
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_3B8F68();
    v15 = sub_21CCAC(1, v7, v19, v14, v13);
    (*(v5 + 8))(v7, v4);
    sub_12E1C(v19, &qword_DF2BD0);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
  }

  if (a2)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  sub_12AFE8();
  v17 = v16;
  JSSocialOnboardingFriendsFinder.reportButtonSelection(label:impressions:pageDetailsProvider:)(a1, a2, v15, v16);
}

id sub_33CB0C(unint64_t a1)
{
  v3 = qword_DFF1D0;

  LOBYTE(a1) = sub_12BE04(v4, a1);

  if ((a1 & 1) == 0)
  {
    v6 = sub_96724(_swiftEmptyArrayStorage);
    v7 = *(v1 + v3);
    v8 = v1;
    if (v7 >> 62)
    {
      goto LABEL_52;
    }

    v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    v10 = &qword_DFF000;
    while (v9)
    {
      v63 = v7 & 0xC000000000000001;
      v59 = v7 & 0xFFFFFFFFFFFFFF8;
      v60 = v10[59];

      v11 = 0;
      v61 = v9;
      v62 = v7;
      v58 = v8;
      while (1)
      {
        if (v63)
        {
          v15 = sub_35FCFC(v11, v7);
        }

        else
        {
          if (v11 >= *(v59 + 16))
          {
            goto LABEL_48;
          }

          v15 = *(v7 + 8 * v11 + 32);
        }

        v16 = v15;
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v18 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_isAuthenticated;
        swift_beginAccess();
        v19 = v16[v18];
        v20 = &v16[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier];
        if (v19 == 1)
        {
          swift_beginAccess();
          v21 = *v20;
          v7 = v20[1];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = sub_2EBF88(v21, v7);
          v25 = v6[2];
          v26 = (v24 & 1) == 0;
          v27 = __OFADD__(v25, v26);
          v28 = v25 + v26;
          if (v27)
          {
            goto LABEL_47;
          }

          v29 = v24;
          if (v6[3] < v28)
          {
            sub_32636C(v28, isUniquelyReferenced_nonNull_native);
            v23 = sub_2EBF88(v21, v7);
            if ((v29 & 1) != (v30 & 1))
            {
              goto LABEL_55;
            }

            goto LABEL_29;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_29:
            if ((v29 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v53 = v8;
            v54 = v23;
            sub_33069C();
            v23 = v54;
            v8 = v53;
            if ((v29 & 1) == 0)
            {
LABEL_30:
              v6[(v23 >> 6) + 8] |= 1 << v23;
              v49 = (v6[6] + 16 * v23);
              *v49 = v21;
              v49[1] = v7;
              *(v6[7] + 8 * v23) = 2;
              v50 = v6[2];
              v27 = __OFADD__(v50, 1);
              v48 = v50 + 1;
              if (v27)
              {
                goto LABEL_49;
              }

              goto LABEL_31;
            }
          }

          v12 = v23;

          v13 = v6[7];
          v14 = *(v13 + 8 * v12);
          *(v13 + 8 * v12) = 2;
          goto LABEL_6;
        }

        swift_beginAccess();
        v31 = *(v8 + v60);
        if (!*(v31 + 16))
        {

          goto LABEL_8;
        }

        v32 = *v20;
        v33 = v20[1];

        v34 = sub_2EBF88(v32, v33);
        if ((v35 & 1) == 0)
        {

          v8 = v58;
          goto LABEL_8;
        }

        v7 = *(*(v31 + 56) + 8 * v34);
        sub_9AEAC(v7);

        v36 = *v20;
        v37 = v20[1];
        sub_9AEAC(v7);

        v8 = swift_isUniquelyReferenced_nonNull_native();
        v39 = sub_2EBF88(v36, v37);
        v40 = v6[2];
        v41 = (v38 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_50;
        }

        v43 = v38;
        if (v6[3] >= v42)
        {
          if (v8)
          {
            v8 = v58;
            if ((v38 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            sub_33069C();
            v8 = v58;
            if ((v43 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          sub_32636C(v42, v8);
          v44 = sub_2EBF88(v36, v37);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_55;
          }

          v39 = v44;
          v8 = v58;
          if ((v43 & 1) == 0)
          {
LABEL_25:
            v6[(v39 >> 6) + 8] |= 1 << v39;
            v46 = (v6[6] + 16 * v39);
            *v46 = v36;
            v46[1] = v37;
            *(v6[7] + 8 * v39) = v7;
            sub_9AE98(v7);
            v47 = v6[2];
            v27 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v27)
            {
              goto LABEL_51;
            }

LABEL_31:
            v6[2] = v48;
            goto LABEL_7;
          }
        }

        v51 = v6[7];
        v52 = *(v51 + 8 * v39);
        *(v51 + 8 * v39) = v7;
        sub_9AE98(v52);
        v14 = v7;
LABEL_6:
        sub_9AE98(v14);
LABEL_7:

        v9 = v61;
        v7 = v62;
LABEL_8:
        ++v11;
        if (v17 == v9)
        {

          v10 = &qword_DFF000;
          goto LABEL_42;
        }
      }

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
      v9 = sub_ABB060();
      v10 = &qword_DFF000;
    }

LABEL_42:
    v55 = v10[59];
    v56 = *(v8 + v55);
    *(v8 + v55) = v6;
    sub_33D00C(v56);

    result = [v8 isViewLoaded];
    if (result)
    {
      [v8 loadViewIfNeeded];
      v57 = *(v8 + qword_DFE2F8);
      if (v57)
      {
        return [v57 reloadData];
      }

      else
      {
        __break(1u);
LABEL_55:
        result = sub_ABB4C0();
        __break(1u);
      }
    }
  }

  return result;
}

void sub_33D00C(uint64_t a1)
{
  v3 = qword_DFF1D8;

  LOBYTE(a1) = sub_4743C4(v4, a1);

  if ((a1 & 1) == 0)
  {
    sub_33C534();
    v5 = *&v1[qword_DFE2F0];
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [v5 results];
    if (!v6)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = v6;
    v8 = [v6 totalItemCount];

    if (v8 >= 1)
    {
      v9 = v1[qword_DFF1B8];
      v1[qword_DFF1B8] = 1;
      if (v9)
      {
        return;
      }
    }

    else
    {
LABEL_7:
      v10 = *&v1[v3];
      v15 = 2;
      __chkstk_darwin(v5);
      v14[2] = &v15;

      v11 = sub_1B3870(sub_344BD4, v14, v10) & 1;

      v12 = v1[qword_DFF1B8];
      v1[qword_DFF1B8] = v11;
      if (v11 == v12)
      {
        return;
      }
    }

    if (![v1 isViewLoaded])
    {
      return;
    }

    [v1 loadViewIfNeeded];
    v13 = *&v1[qword_DFE2F8];
    if (v13)
    {
      [v13 reloadData];
      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t sub_33D1AC()
{
  v1 = *(v0 + qword_DFF198);
  v2 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingFriendsFinder_networks;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v13 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {

    if (!i)
    {
      break;
    }

    v12 = v0;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_35FCFC(v5, v3);
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v0 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_authProtocol;
      swift_beginAccess();
      if (*(v0 + v7) == 1)
      {
      }

      else
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        v0 = &v13;
        sub_ABAEA0();
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v13;
        v0 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_16:

  v10 = *(v0 + qword_DFF1D0);
  *(v0 + qword_DFF1D0) = v9;
  sub_33CB0C(v10);
}

id sub_33D364(_BYTE *a1)
{
  v2 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.Flow(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor(0);
  __chkstk_darwin(v81);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA8);
  v8 = __chkstk_darwin(v7);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v79 = &v69 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v69 - v13;
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v69 - v18;
  v20 = sub_AB31C0();
  v83 = *(v20 - 8);
  __chkstk_darwin(v20);
  v82 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_authProtocol;
  swift_beginAccess();
  if (a1[v22])
  {
    return 0;
  }

  v75 = v16;
  v72 = v6;
  v73 = v4;
  v24 = &a1[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier];
  swift_beginAccess();
  v25 = v24[1];
  v77 = *v24;
  v26 = &a1[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_name];
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v74 = v27;
  v78 = v25;
  swift_bridgeObjectRetain_n();
  v76 = v28;

  result = [v84 view];
  if (result)
  {
    v30 = result;
    sub_D5958(v87);
    v31 = v88;
    v32 = v89;
    v33 = v90;

    v91[0] = v87[0];
    v91[1] = v87[1];
    v92 = v31;
    v93 = v32;
    v94 = v33;
    v84 = v84;
    PresentationSource.init(viewController:position:)(v84, v91, v86);
    v34 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_authURL;
    swift_beginAccess();
    sub_15F84(&a1[v34], v19, &unk_DF2AE0);
    v35 = v83;
    v36 = (*(v83 + 48))(v19, 1, v20);
    v23 = v36 != 1;
    if (v36 == 1)
    {

      swift_bridgeObjectRelease_n();
      sub_1611C(v86);
      sub_12E1C(v19, &unk_DF2AE0);
    }

    else
    {
      v37 = v7;
      v38 = *(v35 + 32);
      v69 = v14;
      v70 = v38;
      v39 = v82;
      v38(v82, v19, v20);
      v71 = v23;
      v40 = *(v7 + 48);
      v41 = v75;
      (*(v35 + 16))(v75, v39, v20);
      v42 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_redirectURL;
      swift_beginAccess();
      sub_15F84(&a1[v42], v41 + v40, &unk_DF2AE0);
      v43 = v69;
      sub_15F84(v41, v69, &qword_DEEAA8);
      v44 = *(v7 + 48);
      v45 = v79;
      v46 = v43;
      v47 = v43;
      v48 = v70;
      v70(v79, v46, v20);
      sub_36B0C(v47 + v44, v45 + *(v7 + 48), &unk_DF2AE0);
      v49 = v72;
      v50 = v78;
      *v72 = v77;
      v49[1] = v50;
      v51 = v76;
      v49[2] = v74;
      v49[3] = v51;
      v52 = v80;
      sub_36B0C(v45, v80, &qword_DEEAA8);
      v53 = *(v37 + 48);
      v54 = v49 + *(v81 + 20);
      v48(v54, v52, v20);
      sub_36B0C(v52 + v53, &v54[*(v37 + 48)], &unk_DF2AE0);
      v55 = v73;
      sub_26AB44(v49, v73);
      v56 = swift_allocObject();
      v57 = v84;
      swift_unknownObjectWeakInit();
      v58 = swift_allocObject();
      v59 = v77;
      v60 = v78;
      *(v58 + 16) = v56;
      *(v58 + 24) = v59;
      v61 = v74;
      *(v58 + 32) = v60;
      *(v58 + 40) = v61;
      *(v58 + 48) = v76;
      *(v58 + 56) = a1;
      v62 = *&v57[qword_DFF1C8];

      v63 = a1;
      sub_EB0E4(v86, v55, v62, sub_344C40, v58);

      v64 = v55;
      v23 = v71;
      sub_344C50(v64, type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.Flow);
      sub_344C50(v49, type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor);
      sub_12E1C(v75, &qword_DEEAA8);
      (*(v83 + 8))(v82, v20);

      v65 = qword_DFF1D8;
      v66 = *&v57[qword_DFF1D8];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v66;
      sub_91940(3, v77, v60, isUniquelyReferenced_nonNull_native);

      v68 = *&v57[v65];
      *&v57[v65] = v85;
      sub_33D00C(v68);
      sub_1611C(v86);
    }

    return v23;
  }

  __break(1u);
  return result;
}

void sub_33DAA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_AB35C0();
  __chkstk_darwin(v13 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB9250();
  __chkstk_darwin(v16 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v29[0] = a8;
    v29[1] = v15;
    if (a1)
    {
      v19 = a2;
      a2 = 2;
    }

    else
    {
      swift_errorRetain();
      v19 = a2;
    }

    v20 = qword_DFF1D8;
    aBlock[0] = *&v18[qword_DFF1D8];

    sub_2E4C24(a2, a4, a5);
    v21 = *&v18[v20];
    *&v18[v20] = aBlock[0];
    sub_33D00C(v21);

    a2 = v19;
  }

  if (a1)
  {
    JSSocialOnboardingNetwork.didAuthenticate()();
  }

  else if (a2)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v22 = sub_AB9260();

    v23 = [objc_opt_self() alertControllerWithTitle:0 message:v22 preferredStyle:1];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v24 = sub_AB9260();

    aBlock[4] = UIScreen.Dimensions.size.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1546C;
    aBlock[3] = &block_descriptor_151_0;
    v25 = _Block_copy(aBlock);

    v26 = [objc_opt_self() actionWithTitle:v24 style:1 handler:v25];
    _Block_release(v25);

    [v23 addAction:v26];
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      [v27 presentViewController:v23 animated:1 completion:0];
    }

    else
    {
    }
  }
}

void sub_33DE30(char *a1)
{
  v2 = v1;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = &a1[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier];
  swift_beginAccess();
  v7 = *&v1[qword_DFF1D8];
  if (*(v7 + 16))
  {
    v10 = v6;
    v9 = *v6;
    v8 = v10[1];

    v11 = sub_2EBF88(v9, v8);
    if (v12)
    {
      v13 = *(*(v7 + 56) + 8 * v11);
      sub_9AEAC(v13);

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          *(v15 + 24) = a1;
          v16 = &a1[OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_name];
          swift_beginAccess();
          v18 = *v16;
          v17 = v16[1];
          v19 = a1;

          static String.socialDisconnectMessage(networkName:)(v18, v17);

          v20 = sub_AB9260();

          v21 = [objc_opt_self() alertControllerWithTitle:v20 message:0 preferredStyle:0];

          sub_AB91E0();
          sub_AB3550();
          sub_AB9320();
          v22 = sub_AB9260();

          v23 = objc_opt_self();
          v24 = [v23 actionWithTitle:v22 style:1 handler:0];

          sub_AB91E0();
          sub_AB3550();
          sub_AB9320();
          v25 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v26 = swift_allocObject();
          v26[2] = v25;
          v26[3] = v19;
          v26[4] = sub_344AC0;
          v26[5] = v15;
          v27 = v19;

          v28 = sub_AB9260();

          aBlock[4] = sub_344B48;
          aBlock[5] = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1546C;
          aBlock[3] = &block_descriptor_135_0;
          v29 = _Block_copy(aBlock);

          v30 = [v23 actionWithTitle:v28 style:0 handler:v29];
          _Block_release(v29);

          [v21 addAction:v30];
          [v21 addAction:v24];
          [v2 presentViewController:v21 animated:1 completion:0];
        }

        else if (v13 != 3)
        {
          sub_9AE98(v13);
        }
      }
    }

    else
    {
    }
  }
}

void sub_33E2F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = (a4 + OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier);
      swift_beginAccess();
      v11 = *v10;
      v12 = v10[1];
      v13 = qword_DFF1D8;
      v14 = *&v9[qword_DFF1D8];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_91940(1, v11, v12, isUniquelyReferenced_nonNull_native);

      v16 = *&v9[v13];
      *&v9[v13] = v14;
      sub_33D00C(v16);
    }

    JSSocialOnboardingNetwork.didUnlink()();
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v17 = sub_AB9260();

    v18 = [objc_opt_self() alertControllerWithTitle:0 message:v17 preferredStyle:1];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v19 = sub_AB9260();

    aBlock[4] = UIScreen.Dimensions.size.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1546C;
    aBlock[3] = &block_descriptor_144;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:1 handler:v20];
    _Block_release(v20);

    [v18 addAction:v21];
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v22 presentViewController:v18 animated:1 completion:0];
    }

    else
    {
    }
  }
}

uint64_t sub_33E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  v9 = (a3 + OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_identifier);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];

  BagProvider.shared.unsafeMutableAddressor();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = v11;
  v13[6] = v10;

  BagProvider.getBag(completion:)(sub_26AB34, v13);
}

void *sub_33E7BC()
{
  v1 = qword_DFF1E0;
  if (*&v0[qword_DFF1E0])
  {
    v2 = *&v0[qword_DFF1E0];
  }

  else
  {
    v2 = sub_33E824(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_33E824(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for NoContentController();
    swift_allocObject();
    v3 = sub_3B04BC(v2);
    (*(*v3 + 248))(sub_33E92C, 0);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_33E92C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  sub_AB91E0();
  sub_AB3550();
  v9 = 0uLL;
  *&v10 = sub_AB9320();
  *(&v10 + 1) = v4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = v10;
  v15[3] = v4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  sub_576EC(&v9, &v8);
  sub_57748(v15);
  v5 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v5;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  result = *&v9;
  v7 = v10;
  *a1 = v9;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_33EAD0()
{
}

uint64_t sub_33EBB8(uint64_t a1)
{
}

uint64_t type metadata accessor for JSSocialOnboardingFriendsFinderViewController()
{
  result = qword_DFF210;
  if (!qword_DFF210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_33ED6C()
{
  v0 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  [v0 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v0 _setFloatingElementKinds:isa];

  sub_339178(v0);
  return v0;
}

uint64_t sub_33EEDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 3)
  {
    if (v3 == 3)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if ((v3 - 1) < 3)
      {
        return 0;
      }

      return 1;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_33EF60()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v55[1] = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  v55[0] = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v55 - v10;
  v12 = type metadata accessor for SocialOnboardingNetworkStatusViewController();
  v57.receiver = v0;
  v57.super_class = v12;
  objc_msgSendSuper2(&v57, "viewDidLoad");
  sub_13C80(0, &qword_DE6EE0);
  v13 = [v0 traitCollection];
  v14 = [v13 preferredContentSizeCategory];

  v56 = sub_ABA590();
  v15 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkLabel];
  v16 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_network];
  swift_beginAccess();

  v17 = sub_AB9260();

  [v15 setText:v17];

  v18 = sub_ABA560();
  [v15 setFont:v18];

  [v15 setAdjustsFontForContentSizeCategory:1];
  v19 = objc_opt_self();
  v20 = [v19 blackColor];
  [v15 setTextColor:v20];

  [v15 setNumberOfLines:1];
  [v15 setLineBreakMode:4];
  v21 = [v19 clearColor];
  [v15 setBackgroundColor:v21];

  v22 = [v1 view];
  if (!v22)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  [v22 addSubview:v15];

  v24 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_artworkComponent];
  v25 = v24[10];
  v26 = v24[11];
  *(v24 + 5) = vdupq_n_s64(0x4040000000000000uLL);
  sub_75614(v25, v26);
  sub_ABA600();
  v27 = sub_ABA680();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  v28 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v24 + v28, v9, &unk_DFFBC0);
  swift_beginAccess();
  sub_8A01C(v11, v24 + v28);
  swift_endAccess();
  sub_75AE8(v9);
  sub_12E1C(v9, &unk_DFFBC0);
  sub_12E1C(v11, &unk_DFFBC0);
  v29 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_artwork;
  swift_beginAccess();
  v30 = *(v16 + v29);
  if (v30)
  {
    v31 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    v32 = v30;
    v33 = JSArtwork.artworkCatalog(defaultCropStyle:)(v31);
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  sub_74EA4(v33);
  v35 = [v1 view];
  if (!v35)
  {
    goto LABEL_15;
  }

  v36 = v35;
  [v35 addSubview:*(v24 + 14)];

  v37 = OBJC_IVAR____TtC11MusicJSCore25JSSocialOnboardingNetwork_isAuthenticated;
  swift_beginAccess();
  v38 = v56;
  if (*(v16 + v37) != 1)
  {
    goto LABEL_9;
  }

  v39 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkStateLabel];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v40 = sub_AB9260();

  [v39 setText:v40];

  v41 = [v19 grayColor];
  [v39 setTextColor:v41];

  [v39 setFont:v38];
  [v39 setNumberOfLines:1];
  v42 = [v19 clearColor];
  [v39 setBackgroundColor:v42];

  v43 = [v1 view];
  if (v43)
  {
    v44 = v43;
    [v43 addSubview:v39];

LABEL_9:
    v45 = [v1 view];
    if (v45)
    {
      v46 = v45;
      [v45 setIsAccessibilityElement:1];

      v47 = [v1 view];
      if (v47)
      {
        v48 = v47;
        v49 = [v15 accessibilityLabel];
        [v48 setAccessibilityLabel:v49];

        v50 = [v1 view];
        if (v50)
        {
          v51 = v50;
          v52 = [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkStateLabel] accessibilityLabel];
          [v51 setAccessibilityValue:v52];

          v53 = [v1 view];
          if (v53)
          {
            v54 = v53;
            [v53 setAccessibilityTraits:UIAccessibilityTraitButton];

            return;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

id sub_33F778()
{
  v1 = v0;
  v67.receiver = v0;
  v67.super_class = type metadata accessor for SocialOnboardingNetworkStatusViewController();
  objc_msgSendSuper2(&v67, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  [v2 displayScale];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = result;
  [result layoutMargins];
  v15 = v14;
  v17 = v16;

  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = result;
  v19 = UIEdgeInsetsInsetRect(v6, v8, v10, v12, v15, v17);
  v21 = v20;
  v22 = v12;
  v24 = v23;
  v26 = v25;
  v65 = v25;
  [v18 effectiveUserInterfaceLayoutDirection];

  v68.origin.x = v19;
  v68.origin.y = v21;
  v68.size.width = v24;
  v68.size.height = v26;
  CGRectGetMinX(v68);
  v27 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_artworkComponent];
  sub_76368(0, 0, 1);
  v58 = v28;
  sub_ABA470();
  v64 = v29;
  v66 = v30;
  v62 = v31;
  v63 = v32;
  [*(v27 + 112) setFrame:v58];
  v33 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkStateLabel];
  [v33 sizeThatFits:{v10, v22}];
  v35 = v34;
  v37 = v36;
  v60 = v19;
  v69.origin.x = v19;
  rect = v21;
  v69.origin.y = v21;
  v69.size.width = v24;
  v69.size.height = v65;
  CGRectGetMaxX(v69);
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = v35;
  v70.size.height = v37;
  CGRectGetWidth(v70);
  sub_ABA470();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v59 = v44;
  sub_ABA490();
  [v33 setFrame:*&v37];
  v45 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkLabel];
  [v45 sizeThatFits:{v10, v22}];
  v47 = v46;
  v49 = v48;
  [*(v27 + 112) frame];
  MaxX = CGRectGetMaxX(v71);
  result = [v1 view];
  if (result)
  {
    v51 = result;
    [result layoutMargins];
    v53 = v52;

    v72.origin.y = 0.0;
    v72.origin.x = MaxX + v53;
    v72.size.width = v47;
    v72.size.height = v49;
    CGRectGetWidth(v72);
    v73.origin.x = v60;
    v73.size.width = v24;
    v73.origin.y = rect;
    v73.size.height = v65;
    CGRectGetWidth(v73);
    v74.origin.x = v39;
    v74.origin.y = v43;
    v74.size.width = v41;
    v74.size.height = v59;
    CGRectGetWidth(v74);
    v75.origin.x = v64;
    v75.origin.y = v66;
    v75.size.width = v62;
    v75.size.height = v63;
    CGRectGetMaxX(v75);
    sub_ABA470();
    sub_ABA490();
    [v45 setFrame:*&v49];
    sub_ABA490();
    return sub_76B28(v54, v55, v56, v57);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_33FDAC(uint64_t a1, char a2, char a3)
{
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_friends;
  *&v3[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_friends] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortOnboardedFriends;
  v3[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortOnboardedFriends] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortNonOnboardedFriends;
  v3[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortNonOnboardedFriends] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_previousResponse] = 0;
  *&v3[v4] = a1;
  v3[v5] = a2;
  v3[v6] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for JSSocialOnboardingFriendsModelRequest();
  return objc_msgSendSuper2(&v8, "init");
}

void sub_33FE90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSSocialOnboardingFriendsModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    *&v8[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_friends] = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_friends];

    v8[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortNonOnboardedFriends] = v2[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortNonOnboardedFriends];
    v8[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortOnboardedFriends] = v2[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortOnboardedFriends];
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_previousResponse];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_previousResponse];
    *&v8[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_previousResponse] = v5;
    v7 = v5;
  }
}

uint64_t sub_340000(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3449C8, v12);
}

uint64_t sub_3400E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_34033C()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for JSSocialOnboardingFriendsModelRequest.Operation();
  v55.receiver = v0;
  v55.super_class = v6;
  objc_msgSendSuper2(&v55, "execute");
  v7 = *&v0[OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest9Operation_request];
  v8 = *&v7[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_friends];
  v9 = objc_allocWithZone(MPMutableSectionedCollection);

  v53 = [v9 init];
  v10 = sub_340B64(v8);
  v11 = v10;
  if (!v8)
  {
LABEL_34:
    v41 = objc_allocWithZone(type metadata accessor for JSSocialOnboardingFriendsModelRequest.Response());
    v42 = v7;
    v43 = v53;
    v44 = sub_3412D0(v42, v43, v11);
    (*&v1[OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest9Operation_responseHandler])(v44, 0);
    [v1 finish];

    return;
  }

  v51 = v10;
  v12 = [v7 itemProperties];
  if (!v12)
  {
    v12 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for SocialOnboardingFriendSocialPersonBuilder();
  inited = swift_initStackObject();
  *(inited + 40) = 0;
  *(inited + 16) = v12;
  v14 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
  v15 = v12;
  v16 = [v14 initWithRequestedPropertySet:v15];
  if (v16)
  {
    *(inited + 24) = v16;
    type metadata accessor for SocialOnboardingFriendSocialPersonBuilder.ContactPersonBuilder();
    swift_allocObject();
    v17 = sub_40FCF4(v15);

    *(inited + 32) = v17;
    v18 = *(v8 + 32);
    v19 = v18 & 0x3F;
    v20 = ((1 << v18) + 63) >> 6;
    v21 = 8 * v20;
    isStackAllocationSafe = swift_bridgeObjectRetain_n();
    if (v19 > 0xD)
    {
      goto LABEL_48;
    }

    do
    {
      __chkstk_darwin(isStackAllocationSafe);
      bzero(&v50 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v21);
      v23 = 0;
      v24 = 0;
      v25 = 1 << *(v8 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(v8 + 56);
      while (v27)
      {
        v28 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v29 = v28 | (v24 << 6);
LABEL_16:
        if (*(*(v8 + 48) + 240 * v29 + 32) == 1)
        {
          *(&v50 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v29;
          if (__OFADD__(v23++, 1))
          {
            __break(1u);
LABEL_20:
            v33 = sub_1CA754((&v50 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0)), v20, v23, v8);

            goto LABEL_21;
          }
        }
      }

      v30 = v24;
      while (1)
      {
        v24 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v24 >= ((v25 + 63) >> 6))
        {
          goto LABEL_20;
        }

        v31 = *(v8 + 56 + 8 * v24);
        ++v30;
        if (v31)
        {
          v27 = (v31 - 1) & v31;
          v29 = __clz(__rbit64(v31)) | (v24 << 6);
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_48:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    }

    while ((isStackAllocationSafe & 1) != 0);
    v49 = swift_slowAlloc();

    v33 = sub_3415B8(v49, v20, v8, sub_340EC8);
    swift_bridgeObjectRelease_n();

LABEL_21:
    v52 = v4;
    if (*(v33 + 16) <= *(v8 + 16) >> 3)
    {
      v54 = v8;
      sub_1C52E8(v33);
      v34 = v54;
    }

    else
    {
      v34 = sub_1C8564(v33, v8);
    }

    if (*(v33 + 16))
    {
      v35 = sub_340ED0(v33, v7[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortOnboardedFriends]);
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v36 = sub_AB9260();
      [v53 appendSection:v36];

      if (v35 >> 62)
      {

        sub_ABAFF0();
      }

      else
      {

        sub_ABB3E0();
        if (!swift_dynamicCastMetatype())
        {
          v45 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
          if (v45)
          {
            v46 = ((v35 & 0xFFFFFFFFFFFFFF8) + 32);
            do
            {
              if (!*v46)
              {
                break;
              }

              ++v46;
              --v45;
            }

            while (v45);
          }
        }
      }

      isa = sub_AB9740().super.isa;

      [v53 appendItems:isa];
    }

    if (v34[2])
    {
      v38 = sub_340ED0(v34, v7[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortNonOnboardedFriends]);
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v39 = sub_AB9260();
      [v53 appendSection:v39];

      if (v38 >> 62)
      {

        sub_ABAFF0();
      }

      else
      {

        sub_ABB3E0();
        if (!swift_dynamicCastMetatype())
        {
          v47 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
          if (v47)
          {
            v48 = ((v38 & 0xFFFFFFFFFFFFFF8) + 32);
            do
            {
              if (!*v48)
              {
                break;
              }

              ++v48;
              --v47;
            }

            while (v47);
          }
        }
      }

      v40 = sub_AB9740().super.isa;

      [v53 appendItems:v40];
    }

    else
    {
    }

    swift_setDeallocating();

    v11 = v51;
    goto LABEL_34;
  }

  __break(1u);

  swift_bridgeObjectRelease_n();

  __break(1u);
}

void *sub_340B64(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 + 56;
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(a1 + 56);
    v5 = (v2 + 63) >> 6;

    v7 = 0;
    v70 = v6;
    while (v4)
    {
      v31 = v7;
LABEL_12:
      v32 = (*(v6 + 48) + 240 * (__clz(__rbit64(v4)) | (v31 << 6)));
      v34 = v32[1];
      v33 = v32[2];
      v72 = *v32;
      v73 = v34;
      v74 = v33;
      v35 = v32[3];
      v36 = v32[4];
      v37 = v32[6];
      v77 = v32[5];
      v78 = v37;
      v75 = v35;
      v76 = v36;
      v38 = v32[7];
      v39 = v32[8];
      v40 = v32[10];
      v81 = v32[9];
      v82 = v40;
      v79 = v38;
      v80 = v39;
      v41 = v32[11];
      v42 = v32[12];
      v43 = v32[14];
      v85 = v32[13];
      v86 = v43;
      v83 = v41;
      v84 = v42;
      v44 = v73;
      sub_2B990(&v72, v71);
      sub_2B990(&v72, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = sub_2EBF88(v44, *(&v44 + 1));
      v48 = _swiftEmptyDictionarySingleton[2];
      v49 = (v47 & 1) == 0;
      v50 = __OFADD__(v48, v49);
      v51 = v48 + v49;
      if (v50)
      {
        goto LABEL_26;
      }

      v52 = v47;
      if (_swiftEmptyDictionarySingleton[3] >= v51)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = v46;
          sub_334478();
          v46 = v68;
        }
      }

      else
      {
        sub_32E404(v51, isUniquelyReferenced_nonNull_native);
        v46 = sub_2EBF88(v44, *(&v44 + 1));
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_28;
        }
      }

      v4 &= v4 - 1;
      if (v52)
      {
        v8 = (_swiftEmptyDictionarySingleton[7] + 240 * v46);
        v10 = v8[1];
        v9 = v8[2];
        v71[0] = *v8;
        v71[1] = v10;
        v71[2] = v9;
        v11 = v8[6];
        v13 = v8[3];
        v12 = v8[4];
        v71[5] = v8[5];
        v71[6] = v11;
        v71[3] = v13;
        v71[4] = v12;
        v14 = v8[9];
        v15 = v8[10];
        v16 = v8[8];
        v71[7] = v8[7];
        v71[9] = v14;
        v71[10] = v15;
        v71[8] = v16;
        v17 = v8[14];
        v19 = v8[11];
        v18 = v8[12];
        v71[13] = v8[13];
        v71[14] = v17;
        v71[11] = v19;
        v71[12] = v18;
        v20 = v72;
        v21 = v74;
        v8[1] = v73;
        v8[2] = v21;
        *v8 = v20;
        v22 = v75;
        v23 = v76;
        v24 = v78;
        v8[5] = v77;
        v8[6] = v24;
        v8[3] = v22;
        v8[4] = v23;
        v25 = v79;
        v26 = v80;
        v27 = v82;
        v8[9] = v81;
        v8[10] = v27;
        v8[7] = v25;
        v8[8] = v26;
        v28 = v83;
        v29 = v84;
        v30 = v86;
        v8[13] = v85;
        v8[14] = v30;
        v8[11] = v28;
        v8[12] = v29;
        sub_2B9EC(v71);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v46 >> 6) + 8] |= 1 << v46;
        *(_swiftEmptyDictionarySingleton[6] + 16 * v46) = v44;
        v54 = (_swiftEmptyDictionarySingleton[7] + 240 * v46);
        v56 = v85;
        v55 = v86;
        v57 = v84;
        v54[11] = v83;
        v54[12] = v57;
        v54[13] = v56;
        v54[14] = v55;
        v59 = v81;
        v58 = v82;
        v60 = v80;
        v54[7] = v79;
        v54[8] = v60;
        v54[9] = v59;
        v54[10] = v58;
        v62 = v77;
        v61 = v78;
        v63 = v76;
        v54[3] = v75;
        v54[4] = v63;
        v54[5] = v62;
        v54[6] = v61;
        v65 = v73;
        v64 = v74;
        *v54 = v72;
        v54[1] = v65;
        v54[2] = v64;
        v66 = _swiftEmptyDictionarySingleton[2];
        v50 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v50)
        {
          goto LABEL_27;
        }

        _swiftEmptyDictionarySingleton[2] = v67;
      }

      sub_2B9EC(&v72);
      v7 = v31;
      v6 = v70;
    }

    while (1)
    {
      v31 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v31 >= v5)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v4 = *(v1 + 8 * v31);
      ++v7;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_ABB4C0();
    __break(1u);
  }

  else
  {

    return sub_99994(_swiftEmptyArrayStorage);
  }

  return result;
}

char *sub_340ED0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = sub_130880(*(a1 + 16), 0);
      v5 = sub_1316E4(&v12, v4 + 32, v3, a1);

      sub_2BB88();
      if (v5 != v3)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v12 = v4;
    sub_3416C4(&v12);
    v9 = sub_40B0A8(v12);

    return v9;
  }

LABEL_5:
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = sub_130880(*(a1 + 16), 0);
    v8 = sub_1316E4(&v12, v7 + 32, v6, a1);
    swift_bridgeObjectRetain_n();
    sub_2BB88();
    if (v8 != v6)
    {
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  sub_40B0A8(v7);

  v12 = sub_3432F8(v11, sub_133030, sub_2B104);
  sub_341648(&v12);

  return v12;
}

uint64_t sub_3410BC(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    sub_AB92A0();

    v5 = sub_AB9390();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = [v2 name];
  if (v8)
  {
    v9 = v8;
    sub_AB92A0();

    v10 = sub_AB9390();
    v12 = v11;

    if (v5 != v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xE000000000000000;
    if (v5)
    {
LABEL_10:
      v13 = sub_ABB3C0();
      goto LABEL_11;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_10;
  }

  v13 = 0;
LABEL_11:

  return v13 & 1;
}

char *sub_3412D0(void *a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest8Response_profileIDsToFriendsMap;
  *&v3[v7] = sub_99994(_swiftEmptyArrayStorage);
  v10.receiver = v3;
  v10.super_class = type metadata accessor for JSSocialOnboardingFriendsModelRequest.Response();
  result = objc_msgSendSuper2(&v10, "initWithRequest:", a1);
  if (result)
  {
    v9 = result;
    [v9 setResults:a2];

    *&v9[OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest8Response_profileIDsToFriendsMap] = a3;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_341404(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t get_enum_tag_for_layout_string_11MusicJSCore25JSSocialOnboardingNetworkC0A11ApplicationE19AuthenticationState33_B8BEB5E19410BDA0BB2B4503F9E0BB41LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_341520(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *sub_341580(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void *sub_3415B8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
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

    v8 = sub_1CCCDC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_341648(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1643F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_341908(v6);
  return sub_ABAEA0();
}

Swift::Int sub_3416C4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_163E08(v2);
  }

  v3 = *(v2 + 2);
  v60[0] = (v2 + 32);
  v60[1] = v3;
  result = sub_ABB2B0(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 264;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 30))
          {
            break;
          }

          v13 = v12 - 232;
          v14 = *(v12 + 8);
          v15 = *(v12 + 40);
          v46 = *(v12 + 24);
          v47 = v15;
          v45 = v14;
          v16 = *(v12 + 56);
          v17 = *(v12 + 72);
          v18 = *(v12 + 104);
          v50 = *(v12 + 88);
          v51 = v18;
          v48 = v16;
          v49 = v17;
          v19 = *(v12 + 120);
          v20 = *(v12 + 136);
          v21 = *(v12 + 168);
          v54 = *(v12 + 152);
          v55 = v21;
          v53 = v20;
          v52 = v19;
          v22 = *(v12 + 184);
          v23 = *(v12 + 200);
          v24 = *(v12 + 232);
          v58 = *(v12 + 216);
          v59 = v24;
          v56 = v22;
          v57 = v23;
          v25 = *(v12 - 72);
          *(v12 + 184) = *(v12 - 56);
          v26 = *(v12 - 24);
          *(v12 + 200) = *(v12 - 40);
          *(v12 + 216) = v26;
          *(v12 + 232) = *(v12 - 8);
          v27 = *(v12 - 136);
          *(v12 + 120) = *(v12 - 120);
          v28 = *(v12 - 88);
          *(v12 + 136) = *(v12 - 104);
          *(v12 + 152) = v28;
          *(v12 + 168) = v25;
          v29 = *(v12 - 200);
          *(v12 + 56) = *(v12 - 184);
          v30 = *(v12 - 152);
          *(v12 + 72) = *(v12 - 168);
          *(v12 + 88) = v30;
          *(v12 + 104) = v27;
          v31 = *(v12 - 216);
          *(v12 + 8) = *(v12 - 232);
          *(v12 + 24) = v31;
          *(v12 + 40) = v29;
          v32 = v45;
          v33 = v47;
          *(v13 + 1) = v46;
          *(v13 + 2) = v33;
          *v13 = v32;
          v34 = v48;
          v35 = v49;
          v36 = v51;
          *(v13 + 5) = v50;
          *(v13 + 6) = v36;
          *(v13 + 3) = v34;
          *(v13 + 4) = v35;
          v37 = v52;
          v38 = v53;
          v39 = v55;
          *(v13 + 9) = v54;
          *(v13 + 10) = v39;
          *(v13 + 7) = v37;
          *(v13 + 8) = v38;
          v40 = v56;
          v41 = v57;
          v42 = v59;
          *(v13 + 13) = v58;
          *(v13 + 14) = v42;
          *(v13 + 11) = v40;
          *(v13 + 12) = v41;
          v12 -= 240;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 240;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_AB97D0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v45 = v7 + 4;
    *(&v45 + 1) = v6;
    sub_3424C4(&v45, v44, v60, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_341908(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_ABB2B0(v2);
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
        sub_13C80(0, &qword_DED7C0);
        v6 = sub_AB97D0();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_341C04(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_341A1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_341A1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    p_name = (&JSDateDescriptor + 24);
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 p_name[493]];
      if (v11)
      {
        v12 = v11;
        sub_AB92A0();

        v13 = sub_AB9390();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = [v10 p_name[493]];
      if (v16)
      {
        v17 = v16;
        sub_AB92A0();

        v18 = sub_AB9390();
        v20 = v19;

        if (v13 != v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      if (v15 == v20)
      {

        p_name = &JSDateDescriptor.name;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_15:
      v21 = sub_ABB3C0();

      p_name = (&JSDateDescriptor + 24);
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void sub_341C04(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_114:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = v4;
LABEL_117:
      v120 = v97;
      v4 = *(v97 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v98 = *&v97[16 * v4];
          v99 = v97;
          v100 = *&v97[16 * v4 + 24];
          sub_342B98((*a3 + 8 * v98), (*a3 + 8 * *&v97[16 * v4 + 16]), (*a3 + 8 * v100), v5);
          if (v115)
          {
            goto LABEL_125;
          }

          if (v100 < v98)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = sub_163DA4(v99);
          }

          if (v4 - 2 >= *(v99 + 2))
          {
            goto LABEL_143;
          }

          v101 = &v99[16 * v4];
          *v101 = v98;
          *(v101 + 1) = v100;
          v120 = v99;
          sub_163D18(v4 - 1);
          v97 = v120;
          v4 = *(v120 + 2);
          if (v4 <= 1)
          {
            goto LABEL_125;
          }
        }

        goto LABEL_153;
      }

LABEL_125:

      return;
    }

LABEL_149:
    v97 = sub_163DA4(v4);
    goto LABEL_117;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
LABEL_4:
  v9 = v7;
  v10 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    goto LABEL_33;
  }

  v105 = v8;
  v4 = *a3;
  v119 = *(*a3 + 8 * v10);
  v118 = *(v4 + 8 * v7);
  v11 = v118;
  v12 = v119;
  v5 = v11;
  v116 = sub_3410BC(&v119, &v118);
  if (v115)
  {

    return;
  }

  v10 = v7 + 2;
  if (v7 + 2 >= v6)
  {
    v8 = v105;
    if (v116)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v113 = v7 + 2;
  v102 = v7;
  v4 += 8 * v7 + 16;
  v110 = v6;
  while (1)
  {
    v14 = *(v4 - 8);
    v15 = *v4;
    v16 = v14;
    v17 = [v15 name];
    if (v17)
    {
      v18 = v17;
      sub_AB92A0();

      v19 = sub_AB9390();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = [v16 name];
    if (v22)
    {
      v23 = v22;
      sub_AB92A0();

      v24 = sub_AB9390();
      v5 = v25;

      if (v19 != v24)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v19)
      {
        goto LABEL_8;
      }
    }

    if (v21 == v5)
    {

      if (v116)
      {
        v8 = v105;
        v10 = v113;
        v9 = v102;
        goto LABEL_25;
      }

      goto LABEL_9;
    }

LABEL_8:
    v13 = sub_ABB3C0();

    if ((v116 ^ v13))
    {
      break;
    }

LABEL_9:
    v4 += 8;
    if (v110 == ++v113)
    {
      v10 = v110;
      v8 = v105;
      goto LABEL_24;
    }
  }

  v8 = v105;
  v10 = v113;
LABEL_24:
  v9 = v102;
  if (v116)
  {
LABEL_25:
    if (v10 < v9)
    {
      goto LABEL_146;
    }

    if (v9 < v10)
    {
      v26 = v10;
      v27 = 8 * v10 - 8;
      v28 = 8 * v9;
      v29 = v9;
      do
      {
        if (v29 != --v26)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v30 = *(v31 + v28);
          *(v31 + v28) = *(v31 + v27);
          *(v31 + v27) = v30;
        }

        ++v29;
        v27 -= 8;
        v28 += 8;
      }

      while (v29 < v26);
    }
  }

LABEL_33:
  v32 = a3[1];
  v7 = v10;
  if (v10 >= v32)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v10, v9))
  {
    goto LABEL_145;
  }

  if (v10 - v9 >= a4)
  {
LABEL_41:
    v7 = v10;
LABEL_42:
    if (v7 < v9)
    {
      goto LABEL_144;
    }

    goto LABEL_43;
  }

  v33 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v9)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v10 == v33)
  {
    goto LABEL_41;
  }

  v106 = v8;
  v117 = *a3;
  v4 = *a3 + 8 * v10 - 8;
  v103 = v9;
  v80 = v9 - v10;
  v108 = v33;
  while (2)
  {
    v114 = v10;
    v81 = *(v117 + 8 * v10);
    v109 = v80;
    v111 = v4;
LABEL_96:
    v82 = *v4;
    v83 = v81;
    v84 = v82;
    v85 = [v83 name];
    if (v85)
    {
      v86 = v85;
      sub_AB92A0();

      v87 = sub_AB9390();
      v89 = v88;
    }

    else
    {
      v87 = 0;
      v89 = 0xE000000000000000;
    }

    v90 = [v84 name];
    if (!v90)
    {
      v5 = 0xE000000000000000;
      if (v87)
      {
        goto LABEL_104;
      }

LABEL_103:
      if (v89 != v5)
      {
        goto LABEL_104;
      }

LABEL_94:
      v10 = v114 + 1;
      v4 = v111 + 8;
      v80 = v109 - 1;
      if (v114 + 1 != v108)
      {
        continue;
      }

      v7 = v108;
      v8 = v106;
      v9 = v103;
      if (v108 < v103)
      {
        goto LABEL_144;
      }

LABEL_43:
      v34 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v34;
      }

      else
      {
        v8 = sub_6A6C0(0, *(v34 + 2) + 1, 1, v34);
      }

      v4 = *(v8 + 2);
      v35 = *(v8 + 3);
      v36 = v4 + 1;
      if (v4 >= v35 >> 1)
      {
        v8 = sub_6A6C0((v35 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v36;
      v37 = &v8[16 * v4];
      *(v37 + 4) = v9;
      *(v37 + 5) = v7;
      v38 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v4)
      {
        while (2)
        {
          v39 = v36 - 1;
          if (v36 >= 4)
          {
            v44 = &v8[16 * v36 + 32];
            v45 = *(v44 - 64);
            v46 = *(v44 - 56);
            v50 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            if (v50)
            {
              goto LABEL_131;
            }

            v49 = *(v44 - 48);
            v48 = *(v44 - 40);
            v50 = __OFSUB__(v48, v49);
            v42 = v48 - v49;
            v43 = v50;
            if (v50)
            {
              goto LABEL_132;
            }

            v51 = &v8[16 * v36];
            v53 = *v51;
            v52 = *(v51 + 1);
            v50 = __OFSUB__(v52, v53);
            v54 = v52 - v53;
            if (v50)
            {
              goto LABEL_134;
            }

            v50 = __OFADD__(v42, v54);
            v55 = v42 + v54;
            if (v50)
            {
              goto LABEL_137;
            }

            if (v55 >= v47)
            {
              v73 = &v8[16 * v39 + 32];
              v75 = *v73;
              v74 = *(v73 + 1);
              v50 = __OFSUB__(v74, v75);
              v76 = v74 - v75;
              if (v50)
              {
                goto LABEL_141;
              }

              if (v42 < v76)
              {
                v39 = v36 - 2;
              }
            }

            else
            {
LABEL_62:
              if (v43)
              {
                goto LABEL_133;
              }

              v56 = &v8[16 * v36];
              v58 = *v56;
              v57 = *(v56 + 1);
              v59 = __OFSUB__(v57, v58);
              v60 = v57 - v58;
              v61 = v59;
              if (v59)
              {
                goto LABEL_136;
              }

              v62 = &v8[16 * v39 + 32];
              v64 = *v62;
              v63 = *(v62 + 1);
              v50 = __OFSUB__(v63, v64);
              v65 = v63 - v64;
              if (v50)
              {
                goto LABEL_139;
              }

              if (__OFADD__(v60, v65))
              {
                goto LABEL_140;
              }

              if (v60 + v65 < v42)
              {
                goto LABEL_76;
              }

              if (v42 < v65)
              {
                v39 = v36 - 2;
              }
            }
          }

          else
          {
            if (v36 == 3)
            {
              v40 = *(v8 + 4);
              v41 = *(v8 + 5);
              v50 = __OFSUB__(v41, v40);
              v42 = v41 - v40;
              v43 = v50;
              goto LABEL_62;
            }

            v66 = &v8[16 * v36];
            v68 = *v66;
            v67 = *(v66 + 1);
            v50 = __OFSUB__(v67, v68);
            v60 = v67 - v68;
            v61 = v50;
LABEL_76:
            if (v61)
            {
              goto LABEL_135;
            }

            v69 = &v8[16 * v39];
            v71 = *(v69 + 4);
            v70 = *(v69 + 5);
            v50 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v50)
            {
              goto LABEL_138;
            }

            if (v72 < v60)
            {
              break;
            }
          }

          v4 = v39 - 1;
          if (v39 - 1 >= v36)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
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
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_151;
          }

          v5 = v8;
          v77 = *&v8[16 * v4 + 32];
          v78 = *&v8[16 * v39 + 40];
          sub_342B98((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v39 + 32]), (*a3 + 8 * v78), v38);
          if (v115)
          {
            goto LABEL_125;
          }

          if (v78 < v77)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_163DA4(v5);
          }

          if (v4 >= *(v5 + 2))
          {
            goto LABEL_130;
          }

          v79 = &v5[16 * v4];
          *(v79 + 4) = v77;
          *(v79 + 5) = v78;
          v120 = v5;
          sub_163D18(v39);
          v8 = v120;
          v36 = *(v120 + 2);
          if (v36 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_114;
      }

      goto LABEL_4;
    }

    break;
  }

  v91 = v90;
  sub_AB92A0();

  v92 = sub_AB9390();
  v5 = v93;

  if (v87 == v92)
  {
    goto LABEL_103;
  }

LABEL_104:
  v94 = sub_ABB3C0();

  if ((v94 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v117)
  {
    v95 = *v4;
    v81 = *(v4 + 8);
    *v4 = v81;
    *(v4 + 8) = v95;
    v4 -= 8;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

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
  __break(1u);
}

uint64_t sub_3424C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_163DA4(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_343088((*a3 + 240 * *v87), (*a3 + 240 * *v89), (*a3 + 240 * v90), v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 240 * v6 + 232);
      v10 = 240 * v8;
      v11 = *a3 + 240 * v8;
      v12 = *(v11 + 232);
      v13 = v8 + 2;
      v14 = (v11 + 712);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 30;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 240 * v6 - 240;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v119 = *(v22 + v10 + 192);
            v121 = *(v22 + v10 + 208);
            v123 = *(v22 + v10 + 224);
            v111 = *(v22 + v10 + 128);
            v113 = *(v22 + v10 + 144);
            v115 = *(v22 + v10 + 160);
            v117 = *(v22 + v10 + 176);
            v103 = *(v22 + v10 + 64);
            v105 = *(v22 + v10 + 80);
            v107 = *(v22 + v10 + 96);
            v109 = *(v22 + v10 + 112);
            v95 = *(v22 + v10);
            v97 = *(v22 + v10 + 16);
            v99 = *(v22 + v10 + 32);
            v101 = *(v22 + v10 + 48);
            result = memmove((v22 + v10), (v22 + v18), 0xF0uLL);
            v21[12] = v119;
            v21[13] = v121;
            v21[14] = v123;
            v21[8] = v111;
            v21[9] = v113;
            v21[10] = v115;
            v21[11] = v117;
            v21[4] = v103;
            v21[5] = v105;
            v21[6] = v107;
            v21[7] = v109;
            *v21 = v95;
            v21[1] = v97;
            v21[2] = v99;
            v21[3] = v101;
          }

          ++v20;
          v18 -= 240;
          v10 += 240;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_6A6C0(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_6A6C0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_343088((*a3 + 240 * *v80), (*a3 + 240 * *v82), (*a3 + 240 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 240 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 8) >= *(v27 + 232))
    {
LABEL_29:
      ++v6;
      v24 += 240;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 240);
    v120 = *(v27 + 192);
    v122 = *(v27 + 208);
    v124 = *(v27 + 224);
    v112 = *(v27 + 128);
    v114 = *(v27 + 144);
    v116 = *(v27 + 160);
    v118 = *(v27 + 176);
    v104 = *(v27 + 64);
    v106 = *(v27 + 80);
    v108 = *(v27 + 96);
    v110 = *(v27 + 112);
    v96 = *v27;
    v98 = *(v27 + 16);
    v100 = *(v27 + 32);
    v102 = *(v27 + 48);
    v29 = *(v27 - 32);
    *(v27 + 192) = *(v27 - 48);
    *(v27 + 208) = v29;
    *(v27 + 224) = *(v27 - 16);
    v30 = *(v27 - 96);
    *(v27 + 128) = *(v27 - 112);
    *(v27 + 144) = v30;
    v31 = *(v27 - 64);
    *(v27 + 160) = *(v27 - 80);
    *(v27 + 176) = v31;
    v32 = *(v27 - 160);
    *(v27 + 64) = *(v27 - 176);
    *(v27 + 80) = v32;
    v33 = *(v27 - 128);
    *(v27 + 96) = *(v27 - 144);
    *(v27 + 112) = v33;
    v34 = *(v27 - 224);
    *v27 = *(v27 - 240);
    *(v27 + 16) = v34;
    v35 = *(v27 - 192);
    *(v27 + 32) = *(v27 - 208);
    *(v27 + 48) = v35;
    v28[12] = v120;
    v28[13] = v122;
    v28[14] = v124;
    v28[8] = v112;
    v28[9] = v114;
    v28[10] = v116;
    v28[11] = v118;
    v28[4] = v104;
    v28[5] = v106;
    v28[6] = v108;
    v28[7] = v110;
    *v28 = v96;
    v28[1] = v98;
    v27 -= 240;
    v28[2] = v100;
    v28[3] = v102;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}