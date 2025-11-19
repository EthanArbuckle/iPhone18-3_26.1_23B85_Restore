void *sub_1000BDB0C()
{
  v1 = v0;
  sub_10000F974(&unk_1004A73F0);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
        v22 = v20;
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

void *sub_1000BDC8C()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7360);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

void *sub_1000BDDD8()
{
  v1 = v0;
  sub_10000F974(&qword_1004A73C8);
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

id sub_1000BDF24()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7368);
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

char *sub_1000BE094()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F974(&qword_1004A7428);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

char *sub_1000BE3A0()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F974(&qword_1004AE170);
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

id sub_1000BE610()
{
  v1 = v0;
  sub_10000F974(&unk_1004A72B0);
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
        sub_10000FE60(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000C0FAC(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1000BE7CC()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7348);
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

id sub_1000BE934(uint64_t *a1)
{
  v2 = v1;
  sub_10000F974(a1);
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
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
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

void *sub_1000BEA90()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7430);
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

id sub_1000BEBDC()
{
  sub_10000F974(&qword_1004AE1B0);
  v28 = v0;
  v1 = *v0;
  v29 = static _DictionaryStorage.copy(original:)();
  if (*(v1 + 16))
  {
    result = (v29 + 64);
    v3 = ((1 << *(v29 + 32)) + 63) >> 6;
    if (v29 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v29 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 48;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v25 = v19[4];
        v24 = v19[5];
        v26 = (*(v29 + 48) + v15);
        *v26 = v18;
        v26[1] = v17;
        v27 = (*(v29 + 56) + v14);
        *v27 = v20;
        v27[1] = v21;
        v27[2] = v22;
        v27[3] = v23;
        v27[4] = v25;
        v27[5] = v24;

        result = v24;
      }

      while (v9);
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
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v28 = v29;
  }

  return result;
}

void *sub_1000BEDAC()
{
  v1 = v0;
  sub_10000F974(&unk_1004A7410);
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1000C1C28(__dst, &v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      memcpy(__dst, (*(v2 + 56) + 304 * v16), 0x130uLL);
      *(*(v4 + 48) + 8 * v16) = v17;
      memcpy((*(v4 + 56) + 304 * v16), __dst, 0x130uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1000BEF48()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7438);
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

char *sub_1000BF0A4()
{
  v1 = v0;
  v31 = type metadata accessor for URL();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F974(&qword_1004A73A8);
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
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
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

void *sub_1000BF314()
{
  v1 = v0;
  sub_10000F974(&unk_1004A7380);
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

void *sub_1000BF470()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7400);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 12;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 8);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 8) = v23;
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

void *sub_1000BF5F0()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7408);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = *(v22 + 16);
        *v23 = v21;
        v23[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v24;
        *(v26 + 16) = v25;
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

id sub_1000BF770()
{
  v1 = v0;
  sub_10000F974(&qword_1004A73D0);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

id sub_1000BF8CC()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7320);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_1000BFA2C()
{
  v1 = v0;
  sub_10000F974(&qword_1004A73E0);
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
        v20 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v20;
        *(*(v4 + 56) + 8 * v17) = v18;

        v19 = *(&v20 + 1);
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

id sub_1000BFBAC()
{
  v1 = v0;
  sub_10000F974(&qword_1004A73D8);
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
        v18 = 16 * v17;
        v20 = *(*(v2 + 48) + 16 * v17);
        v19 = 32 * v17;
        sub_10000FE60(*(v2 + 56) + 32 * v17, v21);
        *(*(v4 + 48) + v18) = v20;
        sub_1000C0FAC(v21, (*(v4 + 56) + v19));

        result = *(&v20 + 1);
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

void *sub_1000BFD4C()
{
  v1 = v0;
  sub_10000F974(&qword_1004A7398);
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

id sub_1000BFEC0(uint64_t *a1)
{
  v2 = v1;
  sub_10000F974(a1);
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

void *sub_1000C000C()
{
  v1 = v0;
  sub_10000F974(&qword_1004A73A0);
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

char *sub_1000C0174(void *a1, char a2, void *a3, char a4, uint64_t a5, char *a6, void *a7, _BYTE *a8)
{
  ObjectType = swift_getObjectType();
  v11 = qword_1004A6590;
  KeyPath = swift_getKeyPath();
  v13 = sub_10000F974(&qword_1004A6990);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v14 = qword_1004D5058;
  v15 = *(v13 + 272);
  swift_retain_n();
  *&a8[v11] = v15(KeyPath, v14);
  v16 = qword_1004A6598;
  v17 = swift_getKeyPath();
  v18 = sub_10000F974(&unk_1004A7300);
  *&a8[v16] = (*(v18 + 272))(v17, v14);
  *&a8[qword_1004A65A0] = 0;
  swift_unknownObjectWeakInit();
  *&a8[qword_1004A65B0] = 0;
  v19 = qword_1004A65B8;
  v20 = sub_10000F974(&unk_1004A6950);
  v21 = swift_getKeyPath();
  *&a8[v19] = (*(v20 + 272))(v21, v14);
  *&a8[qword_1004A65C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  a8[qword_1004A65C8] = 0;
  *&a8[qword_1004A65D0] = 0;
  v22 = qword_1004A65D8;
  *&a8[v22] = [objc_allocWithZone(UIView) init];
  v23 = qword_1004A65E0;
  *&a8[v23] = [objc_allocWithZone(UILabel) init];
  v24 = qword_1004A65E8;
  *&a8[v24] = [objc_allocWithZone(UIImageView) init];
  v25 = qword_1004A65F0;
  *&a8[v25] = [objc_allocWithZone(UIView) init];
  v26 = qword_1004A65F8;
  *&a8[v26] = [objc_allocWithZone(UIView) init];
  v27 = qword_1004A6600;
  *&a8[v27] = [objc_allocWithZone(UIView) init];
  *&a8[qword_1004A6608] = 0;
  *&a8[qword_1004A6610] = 0;
  v28 = qword_1004A6618;
  *&a8[v28] = CACurrentMediaTime();
  a8[qword_1004A6620] = 0;
  *&a8[qword_1004A6628] = 0;
  *&a8[qword_1004A6648] = 0x3F91111111111111;
  *&a8[qword_1004A6650] = 0;
  v29 = &a8[qword_1004A6658];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v29[32] = 1;
  *&a8[qword_1004A6660] = 0;
  *&a8[qword_1004A6630] = a1;
  v101 = a4;
  a8[qword_1004A6638] = a4 & 1;
  v30 = &a8[qword_1004A6640];
  *v30 = a5;
  v30[1] = a6;
  swift_unknownObjectWeakAssign();
  v112.receiver = a8;
  v112.super_class = ObjectType;
  v31 = a1;

  v32 = objc_msgSendSuper2(&v112, "init");
  *&v32[qword_1004A65C0 + 8] = &off_10046C648;
  swift_unknownObjectWeakAssign();
  v33 = qword_1004A65F8;
  v34 = *&v32[qword_1004A65F8];
  v35 = v32;
  v36 = v34;
  [v31 bounds];
  [v36 setFrame:?];

  v37 = *&v32[v33];
  v38 = objc_opt_self();
  v39 = v37;
  v106 = v38;
  v40 = [v38 clearColor];
  [v39 setBackgroundColor:v40];

  [*&v32[v33] setUserInteractionEnabled:0];
  v41 = qword_1004A6600;
  v42 = qword_1004A0560;
  v43 = *&v35[qword_1004A6600];
  if (v42 != -1)
  {
    swift_once();
  }

  [v43 setBackgroundColor:qword_1004D50D0];

  v44 = *&v35[v41];
  v108 = v31;
  [v31 bounds];
  [v44 setFrame:?];

  [*&v35[v41] setUserInteractionEnabled:0];
  [*&v35[v41] setAlpha:0.0];
  v45 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v35 action:"touchBackgroundFrom:"];

  [v45 setDelegate:v35];
  v46 = qword_1004A65F0;
  v47 = [*&v35[qword_1004A65F0] layer];
  [v47 setCornerCurve:kCACornerCurveContinuous];

  v99 = objc_opt_self();
  v48 = &unk_1004A6000;
  if (([v99 jasperAvailable] & 1) == 0)
  {
    [v108 addSubview:*&v32[v33]];
    [*&v32[v33] addGestureRecognizer:v45];
    [*&v32[v33] addSubview:*&v35[v41]];
    v49 = qword_1004A0590;
    v50 = *&v35[v46];
    if (v49 != -1)
    {
      swift_once();
    }

    [v50 setBackgroundColor:qword_1004D5108];

    [*&v32[v33] addSubview:*&v35[v46]];
    v48 = &unk_1004A6000;
    [*&v35[v46] addSubview:*&v35[qword_1004A65D8]];
  }

  v100 = v45;
  v51 = qword_1004A65E0;
  v52 = *&v35[v46];
  v53 = *&v35[qword_1004A65E0];
  [v52 bounds];
  [v53 setFrame:?];

  v54 = *&v35[v51];
  v55 = [v106 clearColor];
  [v54 setBackgroundColor:v55];

  v56 = qword_1004A0578;
  v57 = *&v35[v51];
  if (v56 != -1)
  {
    swift_once();
  }

  [v57 setTextColor:qword_1004D50F0];

  v58 = *&v35[v51];
  sub_10019F9DC();
  v60 = v59;
  [v58 setFont:v59];

  [*&v35[v51] setTextAlignment:1];
  v61 = *&v35[v51];
  v62 = objc_opt_self();
  v63 = v61;
  v64 = [v62 mainScreen];
  [v64 scale];
  v66 = v65;

  v67 = [v62 mainScreen];
  [v67 scale];
  v69 = v68;

  CGAffineTransformMakeScale(&v111, 1.0 / v66, 1.0 / v69);
  [v63 setTransform:&v111];

  v70 = v48[187];
  [*&v35[v70] addSubview:*&v35[v51]];
  v71 = qword_1004A65E8;
  v72 = *&v35[qword_1004A65E8];
  v73 = String._bridgeToObjectiveC()();
  v74 = [objc_opt_self() imageNamed:v73];

  [v72 setImage:v74];
  v75 = *&v35[v71];
  result = [v75 image];
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v77 = result;
  [result size];
  v79 = v78;

  v80 = [*&v35[v71] image];
  result = a6;
  if (!v80)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  [v80 size];
  v82 = v81;

  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v104 = v75;
  v83 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v84 = qword_1004D4970;
  v85 = static UIContentSizeCategory.> infix(_:_:)();

  if (v85)
  {

    v84 = UIContentSizeCategoryAccessibilityLarge;
  }

  v86 = objc_opt_self();
  v87 = objc_opt_self();
  v88 = [v87 traitCollectionWithPreferredContentSizeCategory:v84];

  v89 = [v86 preferredFontForTextStyle:v83 compatibleWithTraitCollection:v88];
  [v89 pointSize];
  v91 = v90;

  v92 = qword_1004D4970;
  LOBYTE(v88) = static UIContentSizeCategory.> infix(_:_:)();

  if (v88)
  {

    v92 = UIContentSizeCategoryAccessibilityLarge;
  }

  v93 = v79 / v82 * (v91 * 0.9);
  v94 = [v87 traitCollectionWithPreferredContentSizeCategory:v92];

  v95 = [v86 preferredFontForTextStyle:v83 compatibleWithTraitCollection:v94];
  [v95 pointSize];
  v97 = v96;

  [v104 setBounds:{0.0, 0.0, v93, v97 * 0.9}];
  [*&v35[v70] addSubview:*&v35[v71]];
  [*&v35[v71] setAlpha:0.0];
  if (v101)
  {
    v98 = *&v35[v71];
    CGAffineTransformMakeRotation(&v111, 3.14159265);
    [v98 setTransform:&v111];
  }

  v35[qword_1004A65C8] = a2;
  if (([v99 jasperAvailable] & 1) == 0)
  {
    sub_10009A984();
  }

  return v35;
}

id sub_1000C0D98(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_10000F974(&qword_1004A7288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = NSFontAttributeName;
  v6 = NSFontAttributeName;
  sub_10019F9DC();
  v8 = v7;
  *(inited + 64) = sub_100018630(0, &qword_1004A7290);
  *(inited + 40) = v8;
  sub_100199F34(inited);
  swift_setDeallocating();
  sub_100018F04(inited + 32, &qword_1004A7298);
  if (a3)
  {
    v19 = sub_100018630(0, &qword_1004A2930);
    *&v18 = a3;
    sub_1000C0FAC(&v18, v17);
    v9 = NSForegroundColorAttributeName;
    v10 = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BBA8C(v17, v9, isUniquelyReferenced_nonNull_native);
  }

  v12 = objc_allocWithZone(NSAttributedString);
  v13 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1000C1C84(&qword_1004A72A0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = [v12 initWithString:v13 attributes:isa];

  return v15;
}

_OWORD *sub_1000C0FAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000C0FBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C1014(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004A3D90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1000C1084(uint64_t a1)
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
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_1000C10A4(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C10C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C11A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C1230()
{

  return _swift_deallocObject(v0, 96, 7);
}

void sub_1000C127C(int a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float a10)
{
  v10 = v9;
  simd_float4x4.position.getter();
  v63 = v12;
  simd_float4x4.position.getter();
  v15 = vsubq_f32(v63, v13);
  v14 = v13.f32[2];
  v15.f32[2] = v63.f32[2] - v13.f32[2];
  v16 = vmulq_f32(v15, v15);
  v67 = v16.f32[2] + vaddv_f32(*v16.f32);
  v62 = v13;
  if (a1)
  {
    v64 = v15;
    simd_float4x4.position.getter();
    v15 = v64;
  }

  v17 = vrsqrte_f32(LODWORD(v67));
  v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v67), vmul_f32(v17, v17)));
  v65 = vmulq_n_f32(v15, vmul_f32(v18, vrsqrts_f32(LODWORD(v67), vmul_f32(v18, v18))).f32[0]);
  simd_float4x4.position.getter();
  simd_float4x4.position.getter();
  if (qword_1004A04D8 != -1)
  {
LABEL_41:
    swift_once();
  }

  PublishedValue.wrappedValue.getter();

  memcpy(__dst, __src, 0x200uLL);
  v19 = sub_10008D4F0();
  sub_100013C4C(__dst);
  if (!v19)
  {
    goto LABEL_8;
  }

  MeasureCore.shared.unsafeMutableAddressor();

  v20 = MeasureCore.isOccluded(_:in:withTolerance:)();

  if (v20)
  {

LABEL_8:
    v22 = sqrtf(v67);
    v23 = vsubq_f32(v62, v63);
    v23.f32[2] = v14 - v63.f32[2];
    v24 = vmulq_f32(v23, v23);
    v25 = v24.f32[2] + vaddv_f32(*v24.f32);
    simd_float4x4.position.getter();
    v58 = OBJC_IVAR____TtC7Measure11LabelRender__render;
    v59 = v10;
    v57 = (v10 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea);
    simd_float4x4.position.getter();
    v29 = 0;
    v30 = 0;
    v10 = 0;
    v56 = a1;
    while (1)
    {
      if (a1)
      {
        v31 = __OFADD__(v30++, 1);
        if (v31)
        {
          goto LABEL_39;
        }

        v10 = v10 ^ 1;
        v32 = 1;
      }

      else if (v10)
      {
        v10 = 0;
        v32 = 1;
      }

      else
      {
        v31 = __OFADD__(v30++, 1);
        if (v31)
        {
          goto LABEL_40;
        }

        v10 = 1;
        v32 = -1;
      }

      v33 = v29 * a10;
      v34 = vadd_f32(vmul_n_f32(*v65.f32, v33), v26);
      v35 = (v65.f32[2] * v33) + v27;
      *v28.f32 = vsub_f32(v34, *v62.f32);
      v36 = v35 - v14;
      v37 = v28;
      v37.f32[2] = v35 - v14;
      v38 = vmulq_f32(v65, v37);
      v39 = v38.f32[2] + vaddv_f32(*v38.f32);
      if (v39 >= 0.0 && v22 > v39)
      {
        v60 = v35 - v14;
        v61 = v28;
        v66 = v34;
        v67 = v35;
        type metadata accessor for MeasureCamera();
        v41 = *(**(v59 + v58) + 144);

        v41(v68, v42);

        memcpy(v69, v68, 0x1F8uLL);
        sub_100038ECC(v69);
        v43 = *(**(v59 + v58) + 144);

        v43(v68, v44);

        memcpy(v70, v68, 0x1F8uLL);
        sub_100038ECC(v70);
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v46 = vcvtq_f64_f32(v45);
        y = v46.y;
        if (CGRectContainsPoint(*v57, v46) && (, PublishedValue.wrappedValue.getter(), , memcpy(__src, v68, sizeof(__src)), v48 = sub_10008D4F0(), sub_100013C4C(__src), v48))
        {
          MeasureCore.shared.unsafeMutableAddressor();

          v49 = MeasureCore.isOccluded(_:in:withTolerance:)();

          a1 = v56;
          if (v49)
          {
          }

          else
          {

            v55 = MeasureCore.isOccluded(_:in:withTolerance:)();

            if ((v55 & 1) == 0)
            {
              if (!sub_1000B6434())
              {
                return;
              }

              goto LABEL_36;
            }
          }
        }

        else
        {
          a1 = v56;
        }

        v34 = v66;
        v35 = v67;
        v36 = v60;
        v28 = v61;
      }

      v28.f32[2] = v36;
      v50 = vmulq_f32(v28, v28);
      *v51.f32 = vsub_f32(v34, *v63.f32);
      v51.i64[1] = __PAIR64__(v63.u32[3], v35 - v63.f32[2]);
      v54 = (v50.f32[2] + vaddv_f32(*v50.f32)) < v25;
      v52 = vmulq_f32(v51, v51);
      v53 = v52.f32[2] + vaddv_f32(*v52.f32);
      v54 = v54 || v53 < v25;
      if (!v54)
      {
        return;
      }

      simd_float4x4.position.getter();
      v29 = v32 * v30;
      if ((v32 * v30) >> 64 != (v32 * v30) >> 63)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }
  }

  v21 = MeasureCore.isOccluded(_:in:withTolerance:)();

  if (v21)
  {
    goto LABEL_8;
  }

LABEL_36:
  simd_float4x4.position.getter();
}

unint64_t sub_1000C19D8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1000C19FC()
{
  [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) alpha];
  v2 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_state);
  if (v2 - 1) < 7 && ((0x4Du >> (v2 - 1)))
  {
    return 0;
  }

  result = 0;
  if (v2 != 6)
  {
    v4 = v1;
    if (fabsf(v4 + -1.0) <= 0.1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return 1;
      }

      v6 = Strong;
      if ([objc_opt_self() jasperAvailable])
      {
        v7 = *(**(v6 + OBJC_IVAR____TtC7Measure9LabelView__historyUIState) + 144);

        v7(&v9, v8);

        if (v10)
        {
LABEL_10:
          swift_unknownObjectRelease();
          return 1;
        }
      }

      else if (*(v6 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8))
      {
        goto LABEL_10;
      }

      sub_1000B2F84();
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1000C1B58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C1BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C1C84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C1CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000C1D48()
{
  result = qword_1004A7440;
  if (!qword_1004A7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7440);
  }

  return result;
}

uint64_t sub_1000C1DD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C1E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000C1E84(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1000C1E9C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

BOOL sub_1000C1EDC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1000C1FA0(v7, v8);
}

unint64_t sub_1000C1F24(uint64_t a1)
{
  result = sub_1000C1F4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C1F4C()
{
  result = qword_1004A7478;
  if (!qword_1004A7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7478);
  }

  return result;
}

BOOL sub_1000C1FA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return *(a2 + 8) == 0;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (*a1 == *a2 && v3 == v4)
  {
    if (v6 != v10 || v5 != v9)
    {
      return 0;
    }

    return v7 == v11 && v8 == v12;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v15 & 1) != 0 && v6 == v10 && v5 == v9)
  {
    return v7 == v11 && v8 == v12;
  }

  return result;
}

Swift::Int sub_1000C2074(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000A48F8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1000C7E84(v5);
  *a1 = v2;
  return result;
}

void sub_1000C20E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v1 + v2));
  v3 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v4 = *(v1 + v3);

  os_unfair_lock_unlock((v1 + v2));
  swift_endAccess();
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v15 = OBJC_IVAR____TtC7Measure9LabelView__render;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(**(v1 + v15) + 144);
    v13 = *(*(v4 + 56) + ((v10 << 9) | (8 * v11)));

    v12(__src, v14);

    memcpy(__dst, __src, 0x1F8uLL);
    sub_1000AE9F0(__dst);
    sub_100038ECC(__dst);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000C22A4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = *(v1 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection);
    v6 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
    swift_beginAccess();

    os_unfair_lock_lock((v1 + v6));
    swift_endAccess();
    v7 = OBJC_IVAR____TtC7Measure9LabelView_labels;
    swift_beginAccess();
    v8 = *(v3 + v7);
    if (*(v8 + 16) && (v9 = sub_100198230(v5, v2), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      swift_endAccess();
      v12 = v11;

      if (v4)
      {
        sub_1000B2C60();
      }

      else
      {
        sub_1000ADFD0();
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    os_unfair_lock_unlock((v3 + v6));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000C23D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v1 + v4));
  swift_endAccess();
  v5 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *((swift_isaMask & *a1) + 0xB8);

  v9 = (v7)(v8);
  if (*(v6 + 16))
  {
    sub_100198230(v9, v10);
    v12 = v11;

    if (v12)
    {
      swift_beginAccess();
      os_unfair_lock_unlock((v2 + v4));
      return swift_endAccess();
    }
  }

  else
  {
  }

  v66 = v4;
  v62 = (v7)(v13);
  v64 = v14;
  v15 = [objc_opt_self() jasperAvailable];
  v16 = *(v2 + OBJC_IVAR____TtC7Measure9LabelView_sceneView);
  v18 = *(v2 + OBJC_IVAR____TtC7Measure9LabelView_editViewBounds);
  v17 = *(v2 + OBJC_IVAR____TtC7Measure9LabelView_editViewBounds + 8);
  v19 = *((swift_isaMask & *a1) + 0xD0);
  v60 = *(v2 + OBJC_IVAR____TtC7Measure9LabelView_parentView);
  v20 = v16;
  result = v19();
  v22 = result;
  v23 = *(v2 + OBJC_IVAR____TtC7Measure9LabelView_activityPresentingViewController);
  if (!v15)
  {
    if (!v23)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v29 = objc_allocWithZone(type metadata accessor for LabelRender());
    v28 = sub_1000ACB60(v60, v62, v64, v20, v22, 0, 0, 1, v18, v17, v23);
    v27 = v28;
    goto LABEL_11;
  }

  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v58 = result;
  if (*(v2 + OBJC_IVAR____TtC7Measure9LabelView_historyPressedPublisher))
  {
    v24 = v23;
    sub_10000F974(&unk_1004A7520);
    sub_10001D47C(&qword_1004A73C0, &unk_1004A7520);
    v25 = Publisher.eraseToAnyPublisher()();
    v26 = objc_allocWithZone(type metadata accessor for LabelRender());
    v27 = sub_1000ACB60(v60, v62, v64, v20, v58, 0, 0, 1, v18, v17, v24);
    *&v27[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher] = v25;

LABEL_11:
    v30 = v66;
    if (((*((swift_isaMask & *a1) + 0x2C8))(v28) & 1) == 0)
    {
      v27[OBJC_IVAR____TtC7Measure11LabelRender_movesAlongLine] = 0;
    }

    *&v27[OBJC_IVAR____TtC7Measure11LabelRender_delegate + 8] = &off_10046C9A8;
    swift_unknownObjectWeakAssign();
    v31 = v27;
    v32 = v7();
    v34 = v33;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    sub_1000BB8DC(v31, v32, v34, isUniquelyReferenced_nonNull_native);

    *(v2 + v5) = v68;
    v36 = swift_endAccess();
    v37 = *((swift_isaMask & *a1) + 0x250);
    v38 = (v37)(v36);
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v39 = *(v38 + 32);
    }

    v40 = v39;

    v42.n128_f64[0] = (*((swift_isaMask & *v40) + 0x2B0))(v41);
    v65 = v43;
    v67 = v42;
    v61 = v45;
    v63 = v44;

    result = v37();
    if ((result & 0xC000000000000001) != 0)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
      v47 = v46;

      v49.n128_f64[0] = (*((swift_isaMask & *v47) + 0x2B0))(v48);
      v57 = v50;
      v59 = v49;
      v55 = v52;
      v56 = v51;

      sub_1000AE08C(0, 0, v67, v65, v63, v61, v59, v57, v56, v55);
      if (qword_1004A0350 == -1)
      {
LABEL_20:
        v53 = qword_1004D4F08;

        v54 = v53 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
        swift_beginAccess();
        *(v54 + 40) = *(v54 + 40) + 1.0;
        swift_beginAccess();
        os_unfair_lock_unlock((v2 + v30));
        return swift_endAccess();
      }

LABEL_25:
      swift_once();
      goto LABEL_20;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v46 = *(result + 40);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000C2A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v6));
  swift_endAccess();
  v7 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && (v9 = sub_100198230(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = v11;
    sub_1000ADC70();
    swift_beginAccess();
    v13 = sub_1000C66D8(a1, a2, sub_1000BE38C);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v3 + v6));
  return swift_endAccess();
}

uint64_t sub_1000C2B4C(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v3 + v8));
  v9 = swift_endAccess();
  v10 = (*((swift_isaMask & *a1) + 0xB8))(v9);
  v12 = v11;
  v13 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (!*(v14 + 16))
  {

    goto LABEL_13;
  }

  v15 = sub_100198230(v10, v12);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_13:
    swift_endAccess();
LABEL_14:
    swift_beginAccess();
    os_unfair_lock_unlock((v4 + v8));
    return swift_endAccess();
  }

  v45 = a3;
  v18 = *(*(v14 + 56) + 8 * v15);
  swift_endAccess();
  v19 = *((swift_isaMask & *a1) + 0x250);
  v20 = v18;
  result = v19();
  if ((result & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v22 = *(result + 32);
  }

  v23 = v22;

  v25.n128_f64[0] = (*((swift_isaMask & *v23) + 0x2B0))(v24);
  v43 = v26;
  v44 = v25;
  v41 = v28;
  v42 = v27;

  result = v19();
  if ((result & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v29 = v45;
    goto LABEL_9;
  }

  v29 = v45;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v30 = *(result + 40);
LABEL_9:

    v32.n128_f64[0] = (*((swift_isaMask & *v30) + 0x2B0))(v31);
    v46 = v32;
    v39 = v34;
    v40 = v33;
    v38 = v35;

    sub_1000AE08C(a2 & 1, v29 & 1, v44, v43, v42, v41, v46, v40, v39, v38);
    v36 = (*((swift_isaMask & *a1) + 0xD0))();
    v37 = *&v20[OBJC_IVAR____TtC7Measure11LabelRender_state];
    *&v20[OBJC_IVAR____TtC7Measure11LabelRender_state] = v36;
    if (v36 != v37)
    {
      sub_1000AB428(v36);
    }

    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1000C2E94(void *a1)
{
  v4 = v1;
  v6 = *((swift_isaMask & *a1) + 0x230);
  v7 = ((swift_isaMask & *a1) + 560);
  v8 = v6();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v12 = (*((swift_isaMask & *v10) + 0xB8))(v11);
  v14 = v13;

  v15 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v101 = v15;
  v16 = *(v4 + v15);
  if (!*(v16 + 16))
  {

    goto LABEL_47;
  }

  v17 = sub_100198230(v12, v14);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_47:
    swift_endAccess();
    __break(1u);
    goto LABEL_48;
  }

  v20 = *(*(v16 + 56) + 8 * v17);
  v21 = swift_endAccess();
  v2 = &OBJC_IVAR____TtC7Measure11LabelRender_roundedMeasurementInMeters;
  v3 = *(v20 + OBJC_IVAR____TtC7Measure11LabelRender_roundedMeasurementInMeters);
  v22 = (v6)(v21);
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  v23 = *(v22 + 40);
LABEL_9:
  v24 = v23;

  v26 = (*((swift_isaMask & *v24) + 0xB8))(v25);
  v28 = v27;

  swift_beginAccess();
  v29 = *(v4 + v101);
  if (!*(v29 + 16))
  {
LABEL_48:

    goto LABEL_49;
  }

  v30 = sub_100198230(v26, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_49:
    swift_endAccess();
    __break(1u);
    goto LABEL_50;
  }

  v33 = *(*(v29 + 56) + 8 * v30);
  swift_endAccess();
  v34 = *(v33 + *v2);
  v35 = [objc_opt_self() jasperAvailable];
  v36 = *((swift_isaMask & *a1) + 0xB8);
  v37 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_parentView);
  v38 = v36();
  v40 = v39;
  if ((v35 & 1) == 0)
  {
    v53 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_editViewBounds);
    v54 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_editViewBounds + 8);
    v55 = *((swift_isaMask & *a1) + 0xD0);
    v56 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_sceneView);
    v57 = v55();
    v58 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_activityPresentingViewController);
    if (!v58)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v59 = v57;
    objc_allocWithZone(type metadata accessor for LabelRender());
    v52 = sub_1000ACB60(v37, v38, v40, v56, v59, 1, v3 | (v34 << 32), 0, v53, v54, v58);
    v14 = v52;
LABEL_17:
    v7 = &swift_isaMask;
    v19 = *((swift_isaMask & *a1) + 0x248);
    v60 = (v19)(v52);
    if ((v60 & 0xC000000000000001) == 0)
    {
      if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_40;
      }

      v61 = *(v60 + 32);
LABEL_20:
      v62 = v61;

      v64 = (*((*v7 & *v62) + 0x250))(v63);

      if ((v64 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_42;
        }

        v65 = *(v64 + 32);
      }

      v66 = v65;

      v68.n128_f64[0] = (*((*v7 & *v66) + 0x2B0))(v67);
      v99 = v69;
      v100 = v68;
      v97 = v71;
      v98 = v70;

      v72 = v19();
      if ((v72 & 0xC000000000000001) == 0)
      {
        if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v73 = *(v72 + 32);
        goto LABEL_26;
      }

LABEL_40:
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
      v74 = v73;

      v76 = (*((*v7 & *v74) + 0x250))(v75);

      if ((v76 & 0xC000000000000001) == 0)
      {
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v77 = *(v76 + 40);
          goto LABEL_29;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_42:
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_29:
      v78 = v77;

      v80.n128_f64[0] = (*((*v7 & *v78) + 0x2B0))(v79);
      v95 = v81;
      v96 = v80;
      v93 = v83;
      v94 = v82;

      sub_1000AE08C(0, 0, v100, v99, v98, v97, v96, v95, v94, v93);
      if ((v14[OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData + 21] & 1) == 0)
      {
        v84 = *&v14[OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData + 16] | (v14[OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData + 20] << 32);
        if ((v84 & 0x100000000) == 0)
        {
          sub_1000AC710(*&v14[OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData + 16]);
          *&v14[OBJC_IVAR____TtC7Measure11LabelRender_measurement] = v84;
          *&v14[OBJC_IVAR____TtC7Measure11LabelRender_delegate + 8] = &off_10046C9A8;
          swift_unknownObjectWeakAssign();
          v85 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
          swift_beginAccess();
          os_unfair_lock_lock((v4 + v85));
          v86 = swift_endAccess();
          v87 = (*((*v7 & *a1) + 0xB8))(v86);
          v89 = v88;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v102 = *(v4 + v101);
          *(v4 + v101) = 0x8000000000000000;
          sub_1000BB8DC(v14, v87, v89, isUniquelyReferenced_nonNull_native);

          *(v4 + v101) = v102;
          swift_endAccess();
          swift_beginAccess();
          os_unfair_lock_unlock((v4 + v85));
          swift_endAccess();
          if (qword_1004A0350 == -1)
          {
LABEL_32:
            v91 = qword_1004D4F08;

            v92 = v91 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
            swift_beginAccess();
            *(v92 + 40) = *(v92 + 40) + 1.0;
            return;
          }

LABEL_45:
          swift_once();
          goto LABEL_32;
        }

        goto LABEL_51;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_37:
    v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_20;
  }

  v41 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_editViewBounds);
  v42 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_editViewBounds + 8);
  v43 = *((swift_isaMask & *a1) + 0xD0);
  v44 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_sceneView);
  v45 = v43();
  v46 = *(v4 + OBJC_IVAR____TtC7Measure9LabelView_activityPresentingViewController);
  if (!v46)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v100.n128_u64[0] = v45;
  if (*(v4 + OBJC_IVAR____TtC7Measure9LabelView_historyPressedPublisher))
  {
    v47 = v44;
    v48 = v46;
    sub_10000F974(&unk_1004A7520);
    sub_10001D47C(&qword_1004A73C0, &unk_1004A7520);
    v49 = Publisher.eraseToAnyPublisher()();
    v50 = objc_allocWithZone(type metadata accessor for LabelRender());
    v51 = sub_1000ACB60(v37, v38, v40, v47, v100.n128_i64[0], 1, v3 | (v34 << 32), 0, v41, v42, v48);
    *&v51[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher] = v49;
    v14 = v51;

    goto LABEL_17;
  }

LABEL_54:
  __break(1u);
}

void sub_1000C37F4(void *a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v1 + v5));
  v6 = swift_endAccess();
  v7 = &swift_isaMask;
  v8 = (*((swift_isaMask & *a1) + 0xB8))(v6);
  v10 = v9;
  v11 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v12 = *&v11[v1];
  if (*(v12 + 16))
  {
    v13 = sub_100198230(v8, v10);
    v2 = v14;

    if (v2)
    {
      v79.n128_u64[0] = *(*(v12 + 56) + 8 * v13);
      v15 = v79.n128_u64[0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v79.n128_u64[0] = 0;
LABEL_6:
  v16 = swift_endAccess();
  v17 = *((swift_isaMask & *a1) + 0x230);
  v18 = v17(v16);
  v19 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  v2 = (*((swift_isaMask & *v21) + 0xB8))(v22);
  v24 = v23;

  swift_beginAccess();
  v25 = *&v11[v3];
  if (*(v25 + 16))
  {
    v2 = sub_100198230(v2, v24);
    v7 = v26;

    if (v7)
    {
      v27 = *(*(v25 + 56) + 8 * v2);
      v28 = swift_endAccess();
      v19 = 0;
      v78.n128_u32[0] = *(v27 + OBJC_IVAR____TtC7Measure11LabelRender_roundedMeasurementInMeters);
      goto LABEL_14;
    }
  }

  else
  {
  }

  v28 = swift_endAccess();
  v78.n128_u32[0] = 0;
  v19 = 1;
LABEL_14:
  v29 = v17(v28);
  if ((v29 & 0xC000000000000001) == 0)
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v30 = v19;
      v31 = *(v29 + 40);
      goto LABEL_17;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v30 = v19;
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
  v32 = v31;

  v34 = (*((swift_isaMask & *v32) + 0xB8))(v33);
  v36 = v35;

  swift_beginAccess();
  v37 = *&v11[v3];
  if (*(v37 + 16))
  {
    v38 = sub_100198230(v34, v36);
    v40 = v39;

    v11 = v79.n128_u64[0];
    if (v40)
    {
      v41 = *(*(v37 + 56) + 8 * v38);
      swift_endAccess();
      v42 = 0;
      v43 = *(v41 + OBJC_IVAR____TtC7Measure11LabelRender_roundedMeasurementInMeters);
      goto LABEL_22;
    }
  }

  else
  {

    v11 = v79.n128_u64[0];
  }

  swift_endAccess();
  v43 = 0.0;
  v42 = 1;
LABEL_22:
  swift_beginAccess();
  os_unfair_lock_unlock((v3 + v5));
  v44 = swift_endAccess();
  v7 = &swift_isaMask;
  if (!v11)
  {
    return;
  }

  if ((v30 & 1) == 0 && (v42 & 1) == 0)
  {
    v45 = (*((swift_isaMask & *a1) + 0xD0))(v44);
    v46 = *&v11[OBJC_IVAR____TtC7Measure11LabelRender_state];
    *&v11[OBJC_IVAR____TtC7Measure11LabelRender_state] = v45;
    if (v45 != v46)
    {
      v45 = sub_1000AB428(v45);
    }

    v19 = &v11[OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData];
    *v19 = v78.n128_u32[0];
    *(v19 + 8) = LODWORD(v43);
    *(v19 + 20) = 0;
    *(v19 + 16) = v78.n128_f32[0] * v43;
    v2 = *((swift_isaMask & *a1) + 0x248);
    v47 = (v2)(v45);
    if ((v47 & 0xC000000000000001) == 0)
    {
      if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_51;
      }

      v48 = *(v47 + 32);
LABEL_30:
      v49 = v48;

      v51 = (*((*v7 & *v49) + 0x250))(v50);

      if ((v51 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_53;
        }

        v52 = *(v51 + 32);
      }

      v53 = v52;

      v55.n128_f64[0] = (*((*v7 & *v53) + 0x2B0))(v54);
      v78 = v56;
      v79 = v55;
      v76 = v58;
      v77 = v57;

      v59 = (v2)();
      if ((v59 & 0xC000000000000001) == 0)
      {
        if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_55;
        }

        v60 = *(v59 + 32);
        goto LABEL_36;
      }

LABEL_51:
      v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:
      v61 = v60;

      v63 = (*((*v7 & *v61) + 0x250))(v62);

      if ((v63 & 0xC000000000000001) == 0)
      {
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v64 = *(v63 + 40);
          goto LABEL_39;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_53:
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_39:
      v65 = v64;

      v67.n128_f64[0] = (*((*v7 & *v65) + 0x2B0))(v66);
      v74 = v68;
      v75 = v67;
      v72 = v70;
      v73 = v69;

      sub_1000AE08C(0, 0, v79, v78, v77, v76, v75, v74, v73, v72);
      if ((*(v19 + 21) & 1) == 0)
      {
        v71 = *(v19 + 16) | (*(v19 + 20) << 32);
        if ((v71 & 0x100000000) == 0)
        {
          sub_1000AC710(*(v19 + 16));
          *&v11[OBJC_IVAR____TtC7Measure11LabelRender_measurement] = v71;
          goto LABEL_42;
        }

LABEL_57:
        __break(1u);
        return;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_48:
    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_30;
  }

LABEL_42:
}

uint64_t sub_1000C3EF8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v1 + v4));
  v5 = swift_endAccess();
  v6 = *((swift_isaMask & *a1) + 0xB8);
  v7 = v6(v5);
  v9 = v8;
  v10 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (!*(v11 + 16))
  {

    goto LABEL_5;
  }

  v12 = sub_100198230(v7, v9);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_5:
    swift_endAccess();
    goto LABEL_6;
  }

  v15 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();
  v16 = v15;
  v17 = sub_1000ADC70();
  v18 = v6(v17);
  v20 = v19;
  swift_beginAccess();
  v21 = sub_1000C66D8(v18, v20, sub_1000BE38C);
  swift_endAccess();

LABEL_6:
  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v4));
  return swift_endAccess();
}

uint64_t sub_1000C40BC()
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  v30 = v5;
  os_unfair_lock_lock((v0 + v5));
  swift_endAccess();
  v6 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v31 = v0;
  v29 = v6;
  v7 = *(v0 + v6);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v33 = (v1 + 8);
  v34 = v44;
  v32 = (v3 + 8);
  v39 = v7;

  for (i = 0; v11; result = (*v32)(v23, v36))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v39 + 56);
    v42 = *(*(v39 + 48) + 16 * v17 + 8);
    v19 = *(v18 + 8 * v17);
    sub_100018630(0, &qword_1004A3F00);

    v20 = v19;
    v41 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v44[2] = sub_1000C0FF4;
    v44[3] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v44[0] = sub_100041180;
    v44[1] = &unk_10046CA00;
    v22 = _Block_copy(aBlock);
    v40 = v20;

    v23 = v35;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000C90B8(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    v25 = v37;
    v24 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v41;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*v33)(v25, v24);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v27 = v31;
      *(v31 + v29) = _swiftEmptyDictionarySingleton;

      v28 = v30;
      swift_beginAccess();
      os_unfair_lock_unlock((v27 + v28));
      return swift_endAccess();
    }

    v11 = *(v8 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C4568(char a1)
{
  v2 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  v18 = v2;
  os_unfair_lock_lock((v1 + v2));
  swift_endAccess();
  v3 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v21 = v1;
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v19 = OBJC_IVAR____TtC7Measure9LabelView__render;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_11:
    v17 = *(*(v4 + 56) + 8 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v11 = (a1 & 1) != 0 && (*&v17[OBJC_IVAR____TtC7Measure11LabelRender_state] - 3) < 2;
    v7 &= v7 - 1;
    v17[OBJC_IVAR____TtC7Measure11LabelRender_hideForMovePoint] = v11;
    v12 = *&v17[OBJC_IVAR____TtC7Measure11LabelRender_state];

    v13 = v17;
    sub_1000AB428(v12);
    v14 = *(**(v21 + v19) + 144);

    v14(__src, v15);

    memcpy(__dst, __src, 0x1F8uLL);
    sub_1000AE9F0(__dst);
    sub_100038ECC(__dst);
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v8)
    {

      swift_beginAccess();
      os_unfair_lock_unlock((v21 + v18));
      return swift_endAccess();
    }

    v7 = *(v4 + 64 + 8 * v16);
    ++v10;
    if (v7)
    {
      v10 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C47A8()
{
  v1 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8);
  if (!v4)
  {
    return 0;
  }

  v20 = v1;
  v21 = v0;
  v5 = *(v0 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection);
  v6 = sub_100069370(v3, 0);
  v22 = sub_1000C8C94(&v23, v6 + 4, v3, v2);

  sub_10007489C();
  if (v22 != v3)
  {
    __break(1u);
    goto LABEL_23;
  }

  v23 = v6;

  sub_1000C2074(&v23);

  v7 = v23;
  v8 = *(v23 + 2);
  if (!v8)
  {
LABEL_12:

    return 0;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = *&v7[v9 + 4] == v5 && v4 == *&v7[v9 + 5];
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 += 2;
    --v10;
    if (v8 + v10 == 1)
    {
      goto LABEL_12;
    }
  }

  if (!(v9 * 8))
  {

    return 0;
  }

  if (-v10 >= *(v7 + 2))
  {
LABEL_23:
    __break(1u);

    __break(1u);
    return result;
  }

  v13 = *&v7[v9 + 2];
  v12 = *&v7[v9 + 3];

  swift_beginAccess();
  v14 = *(v21 + v20);
  if (*(v14 + 16) && (v15 = sub_100198230(v13, v12), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    v18 = v17;
  }

  else
  {
    v17 = 0;
  }

  swift_endAccess();

  return v17;
}

uint64_t sub_1000C49E0()
{
  v1 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8);
  if (!v4)
  {
    return 0;
  }

  v22 = v1;
  v5 = *(v0 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection);
  v6 = sub_100069370(v3, 0);
  v23 = sub_1000C8C94(&v24, v6 + 4, v3, v2);

  sub_10007489C();
  if (v23 != v3)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v6;

  sub_1000C2074(&v24);

  v7 = v24;
  v8 = *(v24 + 2);
  if (!v8)
  {
LABEL_12:

    return 0;
  }

  v9 = 0;
  v10 = v24 + 5;
  while (1)
  {
    v11 = *(v10 - 1) == v5 && v4 == *v10;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v9;
    v10 += 2;
    if (v8 == v9)
    {
      goto LABEL_12;
    }
  }

  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_27;
  }

  if (*(v7 + 2) - 1 < v12)
  {
    v12 = *(v7 + 2) - 1;
  }

  if (v9 == v12)
  {

    return 0;
  }

  if (v12 < 0)
  {
LABEL_28:
    __break(1u);

    __break(1u);
    return result;
  }

  v14 = &v7[2 * v12 + 4];
  v16 = *v14;
  v15 = v14[1];

  swift_beginAccess();
  v17 = *(v0 + v22);
  if (*(v17 + 16) && (v18 = sub_100198230(v16, v15), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  swift_endAccess();

  return v20;
}

id sub_1000C4D40(void *a1, void *a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure9LabelView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC7Measure9LabelView__appState;
  KeyPath = swift_getKeyPath();
  v13 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v14 = qword_1004D5058;
  v15 = *(v13 + 272);
  swift_retain_n();
  *&v5[v11] = v15(KeyPath, v14);
  v16 = OBJC_IVAR____TtC7Measure9LabelView__render;
  v17 = swift_getKeyPath();
  v18 = *(sub_10000F974(&qword_1004A72F0) + 272);

  *&v5[v16] = v18(v17, v14);
  v19 = OBJC_IVAR____TtC7Measure9LabelView__measurements;
  v20 = swift_getKeyPath();
  v21 = sub_10000F974(&qword_1004A7530);
  *&v5[v19] = (*(v21 + 272))(v20, v14);
  v22 = OBJC_IVAR____TtC7Measure9LabelView__historyUIState;
  v23 = swift_getKeyPath();
  v24 = sub_10000F974(&qword_1004A7538);
  *&v5[v22] = (*(v24 + 272))(v23, v14);
  v25 = &v5[OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v5[OBJC_IVAR____TtC7Measure9LabelView_tapRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC7Measure9LabelView_labelLock] = 0;
  *&v5[OBJC_IVAR____TtC7Measure9LabelView_labels] = _swiftEmptyDictionarySingleton;
  *&v5[OBJC_IVAR____TtC7Measure9LabelView_activityPresentingViewController] = 0;
  *&v5[OBJC_IVAR____TtC7Measure9LabelView_historyPressedPublisher] = 0;
  *&v5[OBJC_IVAR____TtC7Measure9LabelView_sceneView] = a2;
  *&v5[OBJC_IVAR____TtC7Measure9LabelView_parentView] = a1;
  v26 = &v5[OBJC_IVAR____TtC7Measure9LabelView_editViewBounds];
  *v26 = a3;
  v26[1] = a4;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v27 = a2;
  v28 = a1;
  v29 = objc_msgSendSuper2(&v39, "init");
  [v27 bounds];
  v32 = [objc_allocWithZone(SKScene) initWithSize:{v30, v31}];
  [v27 setOverlaySKScene:v32];
  [v32 setScaleMode:3];
  sub_100018630(0, &unk_1004A7540);
  sub_10000F974(&qword_1004A3DB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  v34 = [objc_opt_self() measureUnits];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(inited + 32) = v35;
  *(inited + 40) = v37;
  static NSUserDefaults.observe(observer:keys:)();

  swift_setDeallocating();
  sub_1000C1108(inited + 32);
  return v29;
}

id sub_1000C5264()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = objc_opt_self();
  v5 = v1;
  v6 = [v4 measureUnits];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v3 removeObserver:v5 forKeyPath:v6];

  v8.receiver = v5;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_1000C54D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection);
    v4 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
    swift_beginAccess();

    os_unfair_lock_lock((v0 + v4));
    swift_endAccess();
    v5 = OBJC_IVAR____TtC7Measure9LabelView_labels;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16) && (v7 = sub_100198230(v3, v1), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = v9;
    }

    else
    {
      v9 = 0;
    }

    swift_endAccess();

    swift_beginAccess();
    os_unfair_lock_unlock((v2 + v4));
    swift_endAccess();
    if (v9)
    {
      sub_1000B2C60();
    }
  }
}

uint64_t sub_1000C5628(uint64_t result, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection);
  v5 = *(v2 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8);
  if (v5)
  {
    v6 = *v4 == result && v5 == a2;
    if (v6 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      if ([objc_opt_self() jasperAvailable])
      {
        sub_100018630(0, &qword_1004A1930);
        v7 = static UIDevice.isIPhone()();
        *v4 = 0;
        v4[1] = 0;

        if ((v7 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        *v4 = 0;
        v4[1] = 0;
      }

      v8 = *(**(v2 + OBJC_IVAR____TtC7Measure9LabelView__appState) + 200);

      v10 = v8(v9);

      (*(*v10 + 280))(sub_1000C57A4, 0);
    }
  }

  return result;
}

uint64_t sub_1000C57AC(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() jasperAvailable] && (sub_100018630(0, &qword_1004A1930), (static UIDevice.isIPhone()() & 1) == 0))
  {
    v10 = OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection;
    if (*(v2 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8))
    {
      sub_1000C22A4(1);
      v10 = OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection;
    }

    v11 = (v2 + v10);
    *v11 = a1;
    v11[1] = a2;
  }

  else
  {
    v5 = (v2 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection);
    *v5 = a1;
    v5[1] = a2;

    v6 = *(**(v2 + OBJC_IVAR____TtC7Measure9LabelView__appState) + 200);

    v8 = v6(v7);

    (*(*v8 + 280))(sub_1000C5958, 0);
  }
}

uint64_t sub_1000C5964(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(**(result + 104) + 200);

    v15 = v13(v14);

    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = a3;
    *(v16 + 40) = a4;
    *(v16 + 48) = a5;
    *(v16 + 56) = a6;
    v17 = *(*v15 + 280);

    v17(sub_1000C7E74, v16);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000C5AD8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(**(result + 104) + 200);

    v3 = v1(v2);

    (*(*v3 + 280))(sub_100091180, 0);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000C5C24(char a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v4 + v7));
  v8 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v9 = *(v4 + v8);

  v33 = v4;
  os_unfair_lock_unlock((v4 + v7));
  swift_endAccess();
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v32 = OBJC_IVAR____TtC7Measure9LabelView__render;
  v14 = (v11 + 63) >> 6;
  v34 = v9;

  v15 = 0;
  v29 = a1;
  while (v13)
  {
LABEL_10:
    v19 = *(*(v34 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
    v20 = OBJC_IVAR____TtC7Measure11LabelRender_capturing;
    v19[OBJC_IVAR____TtC7Measure11LabelRender_capturing] = a1;
    v21 = v19;
    sub_1000ABDF8();
    sub_1000AC368();
    sub_1000AB428(*&v21[OBJC_IVAR____TtC7Measure11LabelRender_state]);
    if ((v19[v20] & 1) == 0)
    {
      v22 = [objc_opt_self() fadeAlphaTo:0.0 duration:0.0];
      v23 = *&v21[OBJC_IVAR____TtC7Measure11LabelRender_labelNode];
      v24 = a4;
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      __src[4] = a2;
      __src[5] = v25;
      __src[0] = _NSConcreteStackBlock;
      __src[1] = 1107296256;
      __src[2] = sub_100041180;
      __src[3] = a3;
      v26 = _Block_copy(__src);
      v27 = v23;

      [v27 runAction:v22 completion:v26];
      v28 = v26;
      a4 = v24;
      a1 = v29;
      _Block_release(v28);
    }

    v13 &= v13 - 1;
    a4();
    v16 = *(**(v33 + v32) + 144);

    v16(__src, v17);

    memcpy(__dst, __src, 0x1F8uLL);
    sub_1000AE9F0(__dst);
    sub_100038ECC(__dst);
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1000C5F50()
{
  v1 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  v21 = v1;
  os_unfair_lock_lock((v0 + v1));
  swift_endAccess();
  v2 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1;
  v8 = 1 << *(*(v0 + v2) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v4;
  v11 = (v8 + 63) >> 6;
  v22 = v0;
  v23 = *(v0 + v2);

  for (i = 0; v10; v7 = v20 & v14)
  {
    v14 = v7;
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(*(v23 + 56) + 8 * (v16 | (v15 << 6)));
    v18 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
    swift_beginAccess();

    v19 = v17;
    os_unfair_lock_lock(&v17[v18]);
    v20 = v19[OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture];
    os_unfair_lock_unlock(&v17[v18]);
    swift_endAccess();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      swift_beginAccess();
      os_unfair_lock_unlock((v22 + v21));
      swift_endAccess();
      return v7 & 1;
    }

    v10 = *(v5 + 8 * v15);
    ++i;
    if (v10)
    {
      v14 = v7;
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C6124()
{
  v1 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
  swift_beginAccess();
  v21 = v1;
  os_unfair_lock_lock((v0 + v1));
  swift_endAccess();
  v2 = OBJC_IVAR____TtC7Measure9LabelView_labels;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1;
  v8 = 1 << *(*(v0 + v2) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v4;
  v11 = (v8 + 63) >> 6;
  v22 = v0;
  v23 = *(v0 + v2);

  for (i = 0; v10; v7 = (v20 ^ 1) & v14)
  {
    v14 = v7;
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(*(v23 + 56) + 8 * (v16 | (v15 << 6)));
    v18 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
    swift_beginAccess();

    v19 = v17;
    os_unfair_lock_lock(&v17[v18]);
    v20 = v19[OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture];
    os_unfair_lock_unlock(&v17[v18]);
    swift_endAccess();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      swift_beginAccess();
      os_unfair_lock_unlock((v22 + v21));
      swift_endAccess();
      return v7 & 1;
    }

    v10 = *(v5 + 8 * v15);
    ++i;
    if (v10)
    {
      v14 = v7;
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C639C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C63D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C6494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_100198230(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_1000C1BC0(v19 + *(v27 + 72) * v16, a7, a4);
    sub_1000C6EB8(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1000C66D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  v6 = sub_100198230(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_1000C70AC(v8, v10);
  *v5 = v10;
  return v11;
}

unint64_t sub_1000C67A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100198230(a1, a2);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000BE7CC();
      v9 = v12;
    }

    v10 = *(*(v9 + 56) + 4 * v7);
    sub_1000C725C(v7, v9);
    *v3 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 | (((v6 & 1) == 0) << 32);
}

unint64_t sub_1000C685C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_100198230(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000BEBDC();
      v10 = v18;
    }

    v11 = *(v10 + 56) + 48 * v8;
    v12 = *v11;
    v16 = *(v11 + 24);
    v17 = *(v11 + 8);
    v13 = *(v11 + 40);
    result = sub_1000C740C(v8, v10);
    v15 = v16;
    v14 = v17;
    *v4 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 24) = v15;
  *(a3 + 40) = v13;
  return result;
}

uint64_t sub_1000C6934(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100198844(a1);
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
    sub_1000BF314();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_1000C78DC(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_1000C69DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1001988D0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000BFBAC();
      v10 = v12;
    }

    sub_1000C0FAC((*(v10 + 56) + 32 * v8), a3);
    sub_1000C7AA8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1000C6AC0(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = sub_10019C32C(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v7);
  sub_1000C7C8C(v7, v9);
  *v4 = v9;
  return v10;
}

unint64_t sub_1000C6B80(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
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
    v12 = _HashTable.previousHole(before:)();
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
      sub_1000C90B8(&qword_1004A7420, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
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

unint64_t sub_1000C6EB8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t sub_1000C70AC(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C725C(uint64_t result, uint64_t a2)
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
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
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

uint64_t sub_1000C740C(uint64_t result, uint64_t a2)
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
      v11 = Hasher._finalize()();

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
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
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

unint64_t sub_1000C75C8(unint64_t result, uint64_t a2)
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
          result = v15 + 304 * v3;
          v16 = (v15 + 304 * v6);
          if (v3 != v6 || result >= v16 + 304)
          {
            result = memmove(result, v16, 0x130uLL);
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

uint64_t sub_1000C7754(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C78DC(uint64_t result, uint64_t a2)
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = *(*v9 + 184);

      v10(v22);
      v11 = Hasher._finalize()();

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
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
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

uint64_t sub_1000C7AA8(uint64_t result, uint64_t a2)
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
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();
      type metadata accessor for AnyKeyPath();

      v11 = v10;
      dispatch thunk of Hashable.hash(into:)();
      NSObject.hash(into:)();
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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

  return result;
}

uint64_t sub_1000C7C8C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000C7DFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C7E3C()
{

  return _swift_deallocObject(v0, 64, 7);
}

Swift::Int sub_1000C7E84(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 2) = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000C804C(v7, v8, a1, v4);
      v6[2] = 0.0;
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
    return sub_1000C7F7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000C7F7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000C804C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1000A4894(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000C8628((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100067218(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100067218((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_123:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000C8628((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000A4894(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000A4808(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1000C8628(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000C88D0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = a4 + 8;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[8];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[7];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_1000C9100(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_1000C1BC0(v30, v16, v41);
      sub_1000C1BC0(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += v29;
      result = v23;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000C8B94(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1000C8C94(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1000C8DFC(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() measureUnits];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (a2)
  {
    if (v6 == a1 && v8 == a2)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        return result;
      }
    }

    v12 = OBJC_IVAR____TtC7Measure9LabelView_labels;
    swift_beginAccess();
    v13 = *(v2 + v12);
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    for (i = 0; v16; result = )
    {
      v19 = i;
LABEL_20:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = *(*(v13 + 56) + 8 * (v20 | (v19 << 6)));
      v22 = OBJC_IVAR____TtC7Measure11LabelRender_measurement;
      v23 = *&v21[OBJC_IVAR____TtC7Measure11LabelRender_measurement];

      v24 = v21;
      sub_1000AC710(v23);
      *&v21[v22] = v23;
    }

    while (1)
    {
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++i;
      if (v16)
      {
        i = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000C8FF8(void *a1, id a2)
{
  v3 = [a2 view];
  v4 = [a1 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_100018630(0, &qword_1004A7550);
      v6 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
    v3 = v4;
  }

  return v6 & 1;
}

uint64_t sub_1000C90B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C9100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall UIPasteboard.set(attributedString:)(NSAttributedString_optional attributedString)
{
  if (attributedString.value.super.isa)
  {
    v7 = attributedString.value.super.isa;
    v2 = sub_1000C9270(v7);
    if (v2)
    {
      v3 = v2;
      sub_10000F974(&unk_1004A3E40);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1003D5360;
      *(v4 + 32) = v3;
      sub_10000F974(&unk_1004ABAC0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v1 setItems:isa];

      v6 = isa;
    }

    else
    {
      v6 = v7;
    }
  }
}

uint64_t sub_1000C9270(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1001332B8();
  result = 0;
  if (v6 >> 60 != 15)
  {
    v9 = v6;
    sub_10000F974(&qword_1004A7558);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003D5730;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v11;
    sub_1000C94CC(v7, v9);
    static String.Encoding.utf8.getter();
    v12 = String.Encoding.rawValue.getter();
    (*(v3 + 8))(v5, v2);
    v13 = objc_allocWithZone(NSString);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = [v13 initWithData:isa encoding:v12];

    result = sub_1000C9520(v7, v9);
    if (v15)
    {
      *(inited + 72) = sub_1000C9534();
      *(inited + 48) = v15;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v16;
      v17 = [a1 string];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v18;
      *(inited + 104) = v20;
      v21 = sub_10019AC90(inited);
      swift_setDeallocating();
      sub_10000F974(&qword_1004A7560);
      swift_arrayDestroy();
      sub_1000C9520(v7, v9);
      return v21;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000C94CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000C9520(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100038FD4(a1, a2);
  }

  return a1;
}

unint64_t sub_1000C9534()
{
  result = qword_1004ABAB0;
  if (!qword_1004ABAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004ABAB0);
  }

  return result;
}

void sub_1000C9580()
{
  v1 = [v0 superview];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v0 subviews];
  sub_1000CA81C();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 sizeToFit];

      ++v14;
      if (v17 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  Width = CGRectGetWidth(v29);
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  [v0 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v30) * 0.25}];
  v19 = [v0 subviews];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_18:
      if (v21 < 1)
      {
        __break(1u);
        return;
      }

      v22 = 0;
      v23 = 0.0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(v20 + 8 * v22 + 32);
        }

        v25 = v24;
        ++v22;
        [v24 frame];
        [v25 setFrame:?];
        [v25 frame];
        v27 = v26;

        v23 = v23 + v27;
      }

      while (v21 != v22);
    }
  }
}

uint64_t sub_1000C9860(unint64_t a1)
{
  v3 = *(v1 + qword_1004A7598);
  sub_10000F974(&qword_1004A7718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  v5 = _swiftEmptyArrayStorage;
  v29[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = v3;
    v27 = v7;
    v28 = v1;
    if (i)
    {
      v8 = 0;
      v3 = (a1 & 0xC000000000000001);
      do
      {
        if (v3)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        type metadata accessor for WorldLine();
        if (swift_dynamicCastClass())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v29;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v8;
      }

      while (v5 != i);
      v1 = v29[0];
      v11 = sub_100174334(v29[0]);

      *(inited + 32) = v11;
      *(inited + 40) = xmmword_1003DB220;
      v29[0] = _swiftEmptyArrayStorage;
      v12 = 0;
      v3 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v3)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v13 = *(a1 + 8 * v12 + 32);
        }

        v14 = v13;
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        type metadata accessor for WorldRectangle();
        if (swift_dynamicCastClass())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v29;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v12;
        if (v5 == i)
        {
          v5 = v29[0];
          v15 = v27;
          v1 = v28;
          goto LABEL_26;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v15 = v7;
    v16 = sub_100174334(v5);

    *(inited + 32) = v16;
    *(inited + 40) = xmmword_1003DB220;
    v29[0] = v5;
LABEL_26:
    v17 = sub_100174334(v5);

    *(inited + 56) = v17;
    *(inited + 64) = xmmword_1003DB230;
    if (([objc_opt_self() jasperAvailable] & 1) == 0)
    {
      *(inited + 80) = 0;
      *(inited + 88) = 0;
      *(inited + 96) = 0;
      goto LABEL_41;
    }

    v18 = _swiftEmptyArrayStorage;
    v29[0] = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v5 = 0;
    v3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v3)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v19 = *(a1 + 8 * v5 + 32);
      }

      v20 = v19;
      v21 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      type metadata accessor for WorldPerson();
      if (swift_dynamicCastClass())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v29;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v21 == i)
      {
        v18 = v29[0];
        v15 = v27;
        goto LABEL_40;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_40:
  v22 = sub_100174334(v18);

  *(inited + 80) = v22;
  *(inited + 88) = xmmword_1003DB240;
LABEL_41:
  v23 = sub_1000CA868(inited);
  v25 = v24;
  swift_setDeallocating();
  sub_10000F974(&qword_1004A7720);
  swift_arrayDestroy();
  v29[3] = &type metadata for String;
  v29[0] = v23;
  v29[1] = v25;
  sub_1000C9E74(v15);

  return sub_10000FF00(v29);
}

uint64_t sub_1000C9C94(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *(v3 + qword_1004A75A0);
  sub_10000F974(&qword_1004A7718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  v9 = v7;
  *(inited + 32) = sub_100174334(a1);
  *(inited + 40) = xmmword_1003DB220;
  *(inited + 56) = sub_100174334(a2);
  *(inited + 64) = xmmword_1003DB230;
  if ([objc_opt_self() jasperAvailable])
  {
    v10 = sub_100174334(a3);
    v11 = xmmword_1003DB240;
  }

  else
  {
    v10 = 0;
    v11 = 0uLL;
  }

  *(inited + 80) = v10;
  *(inited + 88) = v11;
  v12 = sub_1000CA868(inited);
  v14 = v13;
  swift_setDeallocating();
  sub_10000F974(&qword_1004A7720);
  swift_arrayDestroy();
  v16[3] = &type metadata for String;
  v16[0] = v12;
  v16[1] = v14;
  sub_1000C9E74(v9);

  return sub_10000FF00(v16);
}

id sub_1000C9DEC()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
  qword_1004A7568 = result;
  return result;
}

id sub_1000C9E30()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  qword_1004A7570 = result;
  return result;
}

id sub_1000C9E74(void *a1)
{
  _print_unlocked<A, B>(_:_:)();
  v3 = String._bridgeToObjectiveC()();

  [a1 setText:{v3, 0, 0xE000000000000000}];

  [a1 sizeToFit];
  sub_1000C9580();
  result = [v1 superview];
  if (result)
  {
    v5 = result;
    [result frame];

    [a1 frame];
    CGRect.withWidth(_:)();
    return [a1 setFrame:?];
  }

  return result;
}

id sub_1000C9F9C(uint64_t a1, uint64_t a2)
{
  [v2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for PrefixedLabel();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC7Measure13PrefixedLabel_prefix];
  *v15 = a1;
  *(v15 + 1) = a2;
  v24.receiver = v14;
  v24.super_class = v13;

  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", v6, v8, v10, v12);
  v17 = String._bridgeToObjectiveC()();
  [v16 setText:{v17, v24.receiver, v24.super_class}];

  v18 = qword_1004A01F0;
  v19 = v16;
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setTextColor:qword_1004A7570];
  result = [v19 font];
  if (result)
  {
    v21 = result;
    v22 = [result fontWithSize:15.0];

    [v19 setFont:v22];
    v23 = String._bridgeToObjectiveC()();
    [v19 setText:v23];

    [v19 setTextAlignment:0];
    [v19 setNumberOfLines:2];
    [v19 setLineBreakMode:1];

    [v2 addSubview:v19];
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000CA1D0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = qword_1004A7578;
  v11 = type metadata accessor for PrefixedLabel();
  *&v4[v10] = [objc_allocWithZone(v11) init];
  v12 = qword_1004A7580;
  *&v4[v12] = [objc_allocWithZone(v11) init];
  v13 = qword_1004A7588;
  *&v4[v13] = [objc_allocWithZone(v11) init];
  v14 = qword_1004A7590;
  *&v4[v14] = [objc_allocWithZone(v11) init];
  v15 = qword_1004A7598;
  *&v4[v15] = [objc_allocWithZone(v11) init];
  v16 = qword_1004A75A0;
  *&v4[v16] = [objc_allocWithZone(v11) init];
  v17 = qword_1004A75A8;
  *&v4[v17] = [objc_allocWithZone(v11) init];
  v18 = qword_1004A75B0;
  *&v4[v18] = [objc_allocWithZone(v11) init];
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v20 = qword_1004A01E8;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setBackgroundColor:qword_1004A7568];
  [v21 setContentMode:9];
  [v21 setUserInteractionEnabled:0];
  v22 = sub_1000C9F9C(0x3A6E6F6973736553, 0xE900000000000020);
  v23 = *&v21[qword_1004A7578];
  *&v21[qword_1004A7578] = v22;

  v24 = sub_1000C9F9C(0x203A656369766544, 0xE800000000000000);
  v25 = *&v21[qword_1004A7580];
  *&v21[qword_1004A7580] = v24;

  v26 = sub_1000C9F9C(0x7461746E6569724FLL, 0xED0000203A6E6F69);
  v27 = *&v21[qword_1004A7588];
  *&v21[qword_1004A7588] = v26;

  v28 = sub_1000C9F9C(0x7461745320707041, 0xEB00000000203A65);
  v29 = *&v21[qword_1004A7590];
  *&v21[qword_1004A7590] = v28;

  v30 = sub_1000C9F9C(0x6C61736F706F7250, 0xEB00000000203A73);
  v31 = *&v21[qword_1004A7598];
  *&v21[qword_1004A7598] = v30;

  v32 = sub_1000C9F9C(0x6D6572757361654DLL, 0xEE00203A73746E65);
  v33 = *&v21[qword_1004A75A0];
  *&v21[qword_1004A75A0] = v32;

  v34 = sub_1000C9F9C(0xD000000000000012, 0x80000001004055C0);
  v35 = *&v21[qword_1004A75A8];
  *&v21[qword_1004A75A8] = v34;

  v36 = sub_1000C9F9C(0xD000000000000011, 0x80000001004055E0);
  v37 = *&v21[qword_1004A75B0];
  *&v21[qword_1004A75B0] = v36;

  return v21;
}

void sub_1000CA59C(void *a1)
{
  v3 = a1;
  [v3 frame];
  v2 = v1 * 0.5;
  [v3 frame];
  [v3 setFrame:{0.0, 0.0, v2}];
  sub_1000C9580();
}

void sub_1000CA628()
{
  v1 = *(v0 + qword_1004A75B0);
}

void sub_1000CA6C8(uint64_t a1)
{
  v2 = *(a1 + qword_1004A75B0);
}

uint64_t type metadata accessor for DebugStateView()
{
  result = qword_1004A75E0;
  if (!qword_1004A75E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000CA81C()
{
  result = qword_1004A7550;
  if (!qword_1004A7550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A7550);
  }

  return result;
}

uint64_t sub_1000CA868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    do
    {
      v4 = (v3 + 24 * v2);
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          v8 = v4[1];
          v7 = v4[2];
          v9 = v5 + 32;
          sub_1000CAB1C(*v4);

          do
          {
            sub_10000FE60(v9, v16);
            v10._countAndFlagsBits = v8;
            v10._object = v7;
            String.append(_:)(v10);
            v11._countAndFlagsBits = 32;
            v11._object = 0xE100000000000000;
            String.append(_:)(v11);

            v12._countAndFlagsBits = 32;
            v12._object = 0xE100000000000000;
            String.append(_:)(v12);

            sub_10002D238(v16);
            v9 += 32;
            --v6;
          }

          while (v6);

          swift_bridgeObjectRelease_n();
          v3 = v14;
          v1 = v15;
        }
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return 0;
}

void sub_1000CA9CC()
{
  v1 = qword_1004A7578;
  v2 = type metadata accessor for PrefixedLabel();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = qword_1004A7580;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = qword_1004A7588;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = qword_1004A7590;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  v6 = qword_1004A7598;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  v7 = qword_1004A75A0;
  *(v0 + v7) = [objc_allocWithZone(v2) init];
  v8 = qword_1004A75A8;
  *(v0 + v8) = [objc_allocWithZone(v2) init];
  v9 = qword_1004A75B0;
  *(v0 + v9) = [objc_allocWithZone(v2) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000CAB1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000CACBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure13CardTitleView_title);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v30._object = 0xE000000000000000;
  v4._object = 0x8000000100404760;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v30);

  v6 = String._bridgeToObjectiveC()();

  [v1 setText:v6];

  v7 = objc_opt_self();
  v8 = [v7 _preferredFontForTextStyle:UIFontTextStyleHeadline maximumContentSizeCategory:UIContentSizeCategoryMedium];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v27 = v2;
  v10 = [v8 fontDescriptor];

  v11 = [v10 fontDescriptorWithSymbolicTraits:2];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = [v7 fontWithDescriptor:v11 size:0.0];

  [v1 setFont:v12];
  [v1 setTextAlignment:1];
  v13 = *(v0 + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView);
  v14 = [v7 _preferredFontForTextStyle:UIFontTextStyleHeadline maximumContentSizeCategory:UIContentSizeCategoryMedium];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 fontDescriptor];

  v17 = [v16 fontDescriptorWithSymbolicTraits:2];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v18 = [v7 fontWithDescriptor:v17 size:0.0];

  [v13 setFont:v18];
  v19 = [v13 layer];
  [v19 setMasksToBounds:1];

  v20 = [v13 layer];
  [v20 setCornerCurve:kCACornerCurveContinuous];

  v21 = [v13 layer];
  [v21 setCornerRadius:8.0];

  [v13 setTextAlignment:1];
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() colorNamed:v22];

  [v13 setBackgroundColor:v23];
  [v13 setAlpha:0.0];
  [v13 setUserInteractionEnabled:0];
  v24 = [v27 mainBundle];
  v31._object = 0xE000000000000000;
  v25._object = 0x8000000100404760;
  v25._countAndFlagsBits = 0xD00000000000001DLL;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v31);

  v28 = String._bridgeToObjectiveC()();

  [v13 setPlaceholder:v28];
}

id sub_1000CB148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardTitleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CB1EC()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  v1 = 480;
  if (result)
  {
    v1 = 240;
  }

  v2 = 420;
  if (result)
  {
    v2 = 120;
  }

  qword_1004D4BC0 = v1;
  *algn_1004D4BC8 = v2;
  return result;
}

uint64_t sub_1000CB250()
{
  v0 = *MeasureCore.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *(v0 + 112);

  if (v1)
  {
    swift_beginAccess();
    v3 = *(v1 + 192);

    if (v3)
    {
      ADProcessor.transformer.getter();

      Transformer.viewToCamera.getter();

      v5 = v6;
      CGAffineTransformInvert(&v4, &v5);
      v5 = v4;
      result = CGAffineTransformScale(&v4, &v5, 3.0, 3.0);
      *byte_1004D4BD0 = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGFloat sub_1000CB358()
{
  if (qword_1004A01F8 != -1)
  {
    swift_once();
  }

  v2.a = 1.0;
  v2.b = 0.0;
  v2.c = 0.0;
  v2.d = 1.0;
  v2.tx = 0.0;
  v2.ty = 0.0;
  CGAffineTransformTranslate(&v1, &v2, (qword_1004D4BC0 / 3), (*algn_1004D4BC8 / 3));
  result = v1.a;
  *byte_1004D4C00 = v1;
  return result;
}

CGFloat sub_1000CB404()
{
  if (qword_1004A0208 != -1)
  {
    swift_once();
  }

  v0 = *byte_1004D4C00;
  v1 = *&byte_1004D4C00[16];
  v2 = *&byte_1004D4C00[32];
  if (qword_1004A0200 != -1)
  {
    v5 = *&byte_1004D4C00[16];
    v6 = *byte_1004D4C00;
    v4 = *&byte_1004D4C00[32];
    swift_once();
    v2 = v4;
    v1 = v5;
    v0 = v6;
  }

  *&t1.a = v0;
  *&t1.c = v1;
  *&t1.tx = v2;
  t2 = *byte_1004D4BD0;
  CGAffineTransformConcat(&v7, &t1, &t2);
  result = v7.a;
  *byte_1004D4C30 = v7;
  return result;
}

VTPixelTransferSessionRef sub_1000CB4E8()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v6 = 0;
    VTPixelTransferSessionCreate(0, &v6);
    v2 = v6;
    v3 = *(v0 + 16);
    *(v0 + 16) = v6;
    v4 = v2;
    sub_1000CC458(v3);
  }

  sub_1000CC54C(v1);
  return v2;
}

void *sub_1000CB584(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000F974(&qword_1004A7910);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  *(v1 + 88) = 0;
  v8 = (v1 + 88);
  *(v1 + 16) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = _swiftEmptyArrayStorage;
  *(v1 + 96) = 0;
  result = MTLCreateSystemDefaultDevice();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = result;
  *v8 = result;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = [v10 newCommandQueue];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  swift_unknownObjectRelease();
  v2[12] = v11;
  result = swift_unknownObjectRelease();
  v12 = v2[11];
  if (v12)
  {
    v13 = objc_allocWithZone(MPSImageEDLines);
    LODWORD(v14) = 1036831949;
    LODWORD(v15) = 1035489772;
    LODWORD(v16) = 992204554;
    LODWORD(v17) = 2.0;
    v2[3] = [v13 initWithDevice:v12 gaussianSigma:80 minLineLength:70 maxLines:8 detailRatio:v17 gradientThreshold:v14 lineErrorThreshold:v15 mergeLocalityThreshold:v16];
    v2[8] = a1;
    v19[1] = a1;

    sub_10000F974(&qword_1004A7918);
    sub_10001D47C(&qword_1004A7920, &qword_1004A7918);
    Publisher.compactMap<A>(_:)();

    sub_10001D47C(&qword_1004A7928, &qword_1004A7910);
    v18 = Publisher.eraseToAnyPublisher()();

    (*(v5 + 8))(v7, v4);
    v2[9] = v18;

    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1000CB838(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ariadne_trace(_:_:_:_:_:)();
  memcpy(v61, a1, sizeof(v61));
  memcpy(v63, a1, sizeof(v63));
  sub_10004B20C(v61, v62);
  v13 = sub_10008D4F0();
  if (v13)
  {
    v54 = v11;
    if (qword_1004A01F8 != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v14 = v13;
      sub_1000CC0B8(v13, qword_1004D4BC0, *algn_1004D4BC8);
      v56 = v15;
      if (!v15)
      {
        sub_1000CC4BC(a1);

        goto LABEL_24;
      }

      v53 = v14;
      if (!*(v3 + 12))
      {
        break;
      }

      v16 = [swift_unknownObjectRetain() commandBuffer];
      if (!v16)
      {
        goto LABEL_29;
      }

      v17 = v16;
      swift_unknownObjectRelease();
      if (!*(v3 + 11))
      {
        goto LABEL_30;
      }

      v18 = [swift_unknownObjectRetain() newBufferWithLength:1128 options:0];
      if (!v18)
      {
        goto LABEL_31;
      }

      a1 = v18;
      v50 = v7;
      v51 = v6;
      v52 = a2;
      swift_unknownObjectRelease();
      [*(v3 + 3) encodeToCommandBuffer:v17 sourceTexture:v56 destinationTexture:0 endpointBuffer:a1 endpointOffset:0];
      [v17 commit];
      [v17 waitUntilCompleted];
      v19 = [swift_unknownObjectRetain() contents];
      v20 = a1;
      v6 = *v19;
      v21 = [swift_unknownObjectRetain() contents];
      v22 = a1;
      v3 = _swiftEmptyArrayStorage;
      v48 = v9;
      v49 = v10;
      v47[1] = v17;
      if (!v6)
      {
LABEL_21:
        sub_100018630(0, &qword_1004A3F00);
        *&v58 = COERCE_DOUBLE(static OS_dispatch_queue.main.getter());
        v39 = swift_allocObject();
        *(v39 + 16) = v3;
        *&v62[0].tx = sub_1000CC52C;
        *&v62[0].ty = v39;
        *&v62[0].a = _NSConcreteStackBlock;
        *&v62[0].b = 1107296256;
        *&v62[0].c = sub_100041180;
        *&v62[0].d = &unk_10046CBF0;
        v40 = _Block_copy(v62);

        v41 = v55;
        static DispatchQoS.unspecified.getter();
        *&v62[0].a = _swiftEmptyArrayStorage;
        sub_10003180C();
        sub_10000F974(&unk_1004A3D80);
        sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
        v42 = v48;
        v43 = v51;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v44 = v58;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v40);

        v50[1](v42, v43);
        (*(v54 + 8))(v41, v49);
        v45 = sub_100174500(v3);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        memcpy(&v59[8], v63, 0x200uLL);
        v60[0] = v45;
        memcpy(&v60[1], v59, 0x208uLL);
        nullsub_1(v60);
        ariadne_trace(_:_:_:_:_:)();
        memcpy(v62, v60, sizeof(v62));
        a2 = v52;
        goto LABEL_25;
      }

      v7 = (v21 + 4);
      if (qword_1004A0210 != -1)
      {
        swift_once();
      }

      a2 = 0;
      v25 = *byte_1004D4C30;
      v26 = *&byte_1004D4C30[8];
      v27 = *&byte_1004D4C30[16];
      v28 = *&byte_1004D4C30[24];
      v29 = *&byte_1004D4C30[32];
      v30 = *&byte_1004D4C30[40];
      v10 = (v21 + 6);
      v57 = *&byte_1004D4C30[8];
      v58 = *byte_1004D4C30;
      while (1)
      {
        v31 = v7 + 2 * a2;
        v9 = __OFADD__(a2, 4) ? 0x7FFFFFFFFFFFFFFFLL : a2 + 4;
        LOWORD(v23) = *v31;
        v64.x = v23;
        LOWORD(v24) = *(v10 + 2 * a2);
        v64.y = v24;
        v62[0].a = v25;
        v62[0].b = v26;
        v62[0].c = v27;
        v62[0].d = v28;
        v62[0].tx = v29;
        v62[0].ty = v30;
        v34 = CGPointApplyAffineTransform(v64, v62);
        y = v34.y;
        x = v34.x;
        if (__OFADD__(a2, 3))
        {
          break;
        }

        LOWORD(x) = *(v31 + 2);
        v65.x = *&x;
        LOWORD(y) = *(v7 + a2 + 3);
        v65.y = *&y;
        v62[0].a = v25;
        v62[0].b = v26;
        v62[0].c = v27;
        v62[0].d = v28;
        v62[0].tx = v29;
        v62[0].ty = v30;
        v35 = CGPointApplyAffineTransform(v65, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100067F8C(0, *(v3 + 2) + 1, 1, v3);
        }

        v37 = *(v3 + 2);
        v36 = *(v3 + 3);
        if (v37 >= v36 >> 1)
        {
          v3 = sub_100067F8C((v36 > 1), v37 + 1, 1, v3);
        }

        *(v3 + 2) = v37 + 1;
        v38 = &v3[32 * v37];
        v38[2] = v34;
        v38[3] = v35;
        a2 = v9;
        v26 = v57;
        v25 = *&v58;
        if (v9 >= v6)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_27:
      v46 = v13;
      swift_once();
      v13 = v46;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    sub_1000CC4BC(a1);
LABEL_24:
    sub_1000CC4EC(v60);
    ariadne_trace(_:_:_:_:_:)();
    memcpy(v62, v60, sizeof(v62));
LABEL_25:
    memcpy(a2, v62, 0x210uLL);
  }
}

void sub_1000CBF70(__CVBuffer *a1)
{
  v3 = CVPixelBufferGetWidth(a1) / 3;
  v4 = CVPixelBufferGetHeight(a1) / 3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  value = makePixelBuffer(width:height:pixelFormat:)(v3, v4, PixelFormatType).value;
  v7 = *(v1 + 32);
  *(v1 + 32) = value;
  v8 = value;

  if (!value)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = makeIOSurfaceOfFirstPlane(from:)(v8);

  v10 = *(v1 + 40);
  *(v1 + 40) = v9;
  v11 = v9;

  if (!*(v1 + 88))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  IOSurfaceGetWidth(v11);

  v12 = *(v1 + 40);
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  IOSurfaceGetHeight(v12);
  v13 = *(v1 + 40);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = makeIOSurfaceTexture(device:width:height:pixelFormat:iosurface:)();
  swift_unknownObjectRelease();

  if (v15)
  {
    *(v1 + 48) = v15;
    swift_unknownObjectRelease();
    *(v1 + 56) = 1;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1000CC0B8(void *a1, Swift::Int a2, Swift::Int a3)
{
  v4 = v3;
  v7 = [a1 capturedImage];
  v8.width = a2;
  v8.height = a3;
  v9.value = CVBufferRef.copiedPlane(_:with:format:)(0, v8, 0x4C303038u).value;

  if (v9.value)
  {
    if ((*(v4 + 56) & 1) == 0)
    {
      sub_1000CBF70(v9.value);
    }

    v10 = sub_1000CB4E8();
    if (v10)
    {
      v11 = *(v4 + 32);
      if (v11)
      {
        v12 = v10;
        VTPixelTransferSessionTransferImage(v10, v9.value, v11);

        v13 = *(v4 + 40);
        if (v13)
        {
          v14 = *(v4 + 32);
          if (v14)
          {
            v15 = v13;
            v16 = v14;
            v17.super.isa = v15;
            v17._impl = v16;
            fillIOSurface(_:with:fromPlaneIndex:)(v17, 0, v18);

            swift_unknownObjectRetain();
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_1000CC1BC(uint64_t result)
{
  v1 = result;
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (qword_1004D4AC8)
  {
    v2 = *(qword_1004D4AC8 + 72);
    if (v2)
    {
      v3 = v2;
      v4 = sub_100174528(v1);
      sub_100082758(v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *sub_1000CC260()
{
  sub_1000CC458(v0[2]);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000CC2C8()
{
  sub_1000CC260();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CC328(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 528))
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

uint64_t sub_1000CC370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 520) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 528) = 1;
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

    *(result + 528) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000CC458(id a1)
{
  if (a1 != 1)
  {
  }
}

void *sub_1000CC468@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x200uLL);
  sub_1000CB838(__dst, v4);
  return memcpy(a2, v4, 0x210uLL);
}

uint64_t sub_1000CC4F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CC534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000CC54C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000CC55C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = result + 40; ; i += 16)
    {
      v6 = *(i - 8);

      v6(a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000CC5E0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Report(0);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CCA9C();
  v11 = OBJC_IVAR____TtC7Measure15ResultsReporter_report;
  swift_beginAccess();
  sub_1000CDF04(v0 + v11, v10);
  sub_1000CE028(&qword_1004A7AB0, type metadata accessor for Report);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v10;
  v15 = v14;
  sub_1000CDF68(v13);

  v23 = *(v0 + OBJC_IVAR____TtC7Measure15ResultsReporter_ioQueue);
  v16 = swift_allocObject();
  v21 = v12;
  v16[2] = v12;
  v16[3] = v15;
  v16[4] = v0;
  aBlock[4] = sub_1000CE004;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046CC40;
  v17 = _Block_copy(aBlock);
  v22 = v5;
  v18 = v17;
  sub_1000C94CC(v12, v15);

  static DispatchQoS.unspecified.getter();
  aBlock[6] = _swiftEmptyArrayStorage;
  sub_1000CE028(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  sub_100038FD4(v21, v15);
  (*(v2 + 8))(v4, v1);
  (*(v24 + 8))(v7, v22);
}

uint64_t sub_1000CCA9C()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC7Measure15ResultsReporter____lazy_storage___encoder;
  if (*(v0 + OBJC_IVAR____TtC7Measure15ResultsReporter____lazy_storage___encoder))
  {
    v4 = *(v0 + OBJC_IVAR____TtC7Measure15ResultsReporter____lazy_storage___encoder);
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v4 = JSONEncoder.init()();
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    *(v1 + v3) = v4;
  }

  return v4;
}

uint64_t sub_1000CCB74(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v23 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v22 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = v1 + OBJC_IVAR____TtC7Measure15ResultsReporter_report;
  Date.init()();
  *(v10 + *(type metadata accessor for Report(0) + 20)) = &_swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC7Measure15ResultsReporter_ioQueue;
  v18[3] = sub_10004D9B4();
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D4B58;
  v11 = unk_1004D4B60;

  v25 = v12;
  v26 = v11;
  v13._object = 0x8000000100405800;
  v13._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v13);
  v18[1] = v26;
  v18[2] = v25;
  static DispatchQoS.background.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_1000CE028(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0);
  sub_100038C44(&qword_1004A4030, &qword_1004ABEE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v14 = v23;
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.background(_:), v23);
  static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v5, v14);
  *(v2 + v19) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + OBJC_IVAR____TtC7Measure15ResultsReporter____lazy_storage___encoder) = 0;
  v15 = OBJC_IVAR____TtC7Measure15ResultsReporter_file;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 32))(v2 + v15, v24, v16);
  return v2;
}

uint64_t sub_1000CD0D8()
{
  v1 = OBJC_IVAR____TtC7Measure15ResultsReporter_file;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000CDF68(v0 + OBJC_IVAR____TtC7Measure15ResultsReporter_report);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CD1CC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Report(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000CD2D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CD31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000CD3EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000CD4A4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000CD528();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000CD528()
{
  if (!qword_1004A7A78)
  {
    sub_100013BB0(&unk_1004A7A80);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1004A7A78);
    }
  }
}

uint64_t sub_1000CD58C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A01D0 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D4B80;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  v6 = [v4 stringFromDate:isa];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  strcpy(v15, ".measurements");
  v15[7] = -4864;
  v13 = v7;
  v14 = v9;
  v13 = String.init<A>(_:)();
  v14 = v10;
  String.append<A>(contentsOf:)();
  if (qword_1004A01D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for URL();
  sub_10001D4C4(v11, qword_1004D4B88);
  URL.appendingPathComponent(_:)();
}

uint64_t sub_1000CD7A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D69547472617473;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x656D6954646E65;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x73746E657665;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6D69547472617473;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x656D6954646E65;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x73746E657665;
  }

  if (*a2)
  {
    v10 = v8;
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

Swift::Int sub_1000CD8AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CD950()
{
  String.hash(into:)();
}

Swift::Int sub_1000CD9E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000CDA80@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CE1DC(*a1);
  *a2 = result;
  return result;
}

void sub_1000CDAB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6D69547472617473;
  if (v2 != 1)
  {
    v5 = 0x656D6954646E65;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73746E657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000CDB10()
{
  v1 = 0x6D69547472617473;
  if (*v0 != 1)
  {
    v1 = 0x656D6954646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E657665;
  }
}

unint64_t sub_1000CDB6C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CE1DC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CDBA0(uint64_t a1)
{
  v2 = sub_1000CE070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CDBDC(uint64_t a1)
{
  v2 = sub_1000CE070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CDC18(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000F974(&qword_1004A7AB8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_10000FEBC(a1, a1[3]);
  sub_1000CE070();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[0] = 1;
  sub_1000CE028(&qword_1004A7AC8, &type metadata accessor for Date);
  v11 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  Date.init()();
  v17[0] = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v15 + 8))(v6, v4);
  v17[55] = 0;
  KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
  v12 = type metadata accessor for Report(0);
  sub_1000CC55C(*(v2 + *(v12 + 20)), v17);
  (*(v8 + 8))(v10, v7);
  return sub_10000FF00(v17);
}

uint64_t sub_1000CDF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CDF68(uint64_t a1)
{
  v2 = type metadata accessor for Report(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CDFC4()
{
  sub_100038FD4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000CE010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CE028(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CE070()
{
  result = qword_1004A7AC0;
  if (!qword_1004A7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AC0);
  }

  return result;
}

unint64_t sub_1000CE0D8()
{
  result = qword_1004A7AD0;
  if (!qword_1004A7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AD0);
  }

  return result;
}

unint64_t sub_1000CE130()
{
  result = qword_1004A7AD8;
  if (!qword_1004A7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AD8);
  }

  return result;
}

unint64_t sub_1000CE188()
{
  result = qword_1004A7AE0;
  if (!qword_1004A7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AE0);
  }

  return result;
}

unint64_t sub_1000CE1DC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100465088, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000CE23C()
{
  result = qword_1004A7AE8;
  if (!qword_1004A7AE8)
  {
    sub_100013BB0(&qword_1004A7AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AE8);
  }

  return result;
}

uint64_t *sub_1000CE2A0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1000CE2CC()
{
  result = qword_1004A7AF8;
  if (!qword_1004A7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7AF8);
  }

  return result;
}

uint64_t sub_1000CE370(uint64_t a1)
{
  v3 = qword_1004A7B00;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000CE428@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1004A7B08;
  swift_beginAccess();
  return sub_100027DE4(v1 + v3, a1);
}

uint64_t sub_1000CE480(uint64_t a1)
{
  v3 = qword_1004A7B08;
  swift_beginAccess();
  sub_100027D74(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1000CE540(double a1, double a2, double a3, double a4)
{
  *&v4[qword_1004A7B00] = _swiftEmptyArrayStorage;
  v9 = &v4[qword_1004A7B08];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for StateObservingStackView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  swift_getWitnessTable();
  StateObserving.setup()();

  return v10;
}

void sub_1000CE674()
{
  *(v0 + qword_1004A7B00) = _swiftEmptyArrayStorage;
  v1 = v0 + qword_1004A7B08;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000CE754()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateObservingStackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CE7C4(uint64_t a1)
{

  v2 = a1 + qword_1004A7B08;

  return sub_100027EDC(v2);
}

uint64_t (*sub_1000CE830(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000CE4E0();
  return sub_100027BEC;
}

uint64_t sub_1000CE8A0()
{
  sub_1000CE998();
}

uint64_t (*sub_1000CE8CC(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000CE3C8();
  return sub_100027F78;
}

uint64_t sub_1000CE998()
{
  v1 = qword_1004A7B00;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1000CE9DC()
{
  *(v0 + qword_1004A7B00) = _swiftEmptyArrayStorage;
  v1 = v0 + qword_1004A7B08;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000CEB64(uint64_t a1)
{
  v2 = v1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 1;
  v4 = qword_1004A7BF8;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *(v2 + qword_1004A7C00) = 0x3FE0000000000000;
  *(v2 + qword_1004A7C08) = 0;
  v6 = qword_1004A7C10;
  v7 = sub_10000F974(&qword_1004A2890);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v7 + 272);
  swift_retain_n();
  *(v2 + v6) = v10(KeyPath, v9);
  v11 = qword_1004A7C18;
  v12 = sub_10000F974(&qword_1004A2C68);
  v13 = swift_getKeyPath();
  v14 = *(v12 + 272);

  *(v2 + v11) = v14(v13, v9);
  v15 = qword_1004A7C20;
  v16 = sub_10000F974(&qword_1004A2C70);
  v17 = swift_getKeyPath();
  v18 = *(v16 + 272);

  *(v2 + v15) = v18(v17, v9);
  v19 = qword_1004A7C28;
  v20 = swift_getKeyPath();
  v21 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v2 + v19) = v21(v20, v9);
  v22 = qword_1004A7C30;
  v23 = swift_getKeyPath();
  v24 = sub_10000F974(&qword_1004A7DD0);
  *(v2 + v22) = (*(v24 + 272))(v23, v9);
  v25 = qword_1004A7C38;
  v26 = swift_getKeyPath();
  v27 = sub_10000F974(&qword_1004A3F80);
  *(v2 + v25) = (*(v27 + 272))(v26, v9);
  v28 = (v2 + qword_1004A7C40);
  *v28 = 0;
  v28[1] = 0;
  *(v2 + 64) = a1;
  return StateObserver.init(configuration:)();
}

void sub_1000CEED0()
{
  v1 = v0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 1;
  v2 = qword_1004A7BF8;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + qword_1004A7C00) = 0x3FE0000000000000;
  *(v1 + qword_1004A7C08) = 0;
  v4 = qword_1004A7C10;
  v5 = sub_10000F974(&qword_1004A2890);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D5058;
  v8 = *(v5 + 272);
  swift_retain_n();
  *(v1 + v4) = v8(KeyPath, v7);
  v9 = qword_1004A7C18;
  v10 = sub_10000F974(&qword_1004A2C68);
  v11 = swift_getKeyPath();
  v12 = *(v10 + 272);

  *(v1 + v9) = v12(v11, v7);
  v13 = qword_1004A7C20;
  v14 = sub_10000F974(&qword_1004A2C70);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v1 + v13) = v16(v15, v7);
  v17 = qword_1004A7C28;
  v18 = swift_getKeyPath();
  v19 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v1 + v17) = v19(v18, v7);
  v20 = qword_1004A7C30;
  v21 = swift_getKeyPath();
  v22 = sub_10000F974(&qword_1004A7DD0);
  *(v1 + v20) = (*(v22 + 272))(v21, v7);
  v23 = qword_1004A7C38;
  v24 = swift_getKeyPath();
  v25 = sub_10000F974(&qword_1004A3F80);
  *(v1 + v23) = (*(v25 + 272))(v24, v7);
  v26 = (v1 + qword_1004A7C40);
  *v26 = 0;
  v26[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000CF218()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

void sub_1000CF2EC(uint64_t a1, uint64_t a2)
{
  if (qword_1004A03F8 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  if (byte_1004D4FC8 == 1)
  {
    v2 = qword_1004A7C30;
    v3 = *(**(a2 + qword_1004A7C30) + 144);
    v4 = a2;
    v5 = *(a2 + 64);

    v3(&v17, v6);

    v15[6] = v23;
    v15[7] = v24;
    v15[8] = v25;
    v16 = v26;
    v15[2] = v19;
    v15[3] = v20;
    v15[4] = v21;
    v15[5] = v22;
    v15[0] = v17;
    v15[1] = v18;
    v8 = *(&v17 + 1);
    v7 = v18;

    sub_1000D1340(v15);
    v9 = *(**(v4 + v2) + 144);

    v9(v13, v10);

    v23 = v13[6];
    v24 = v13[7];
    v25 = v13[8];
    v26 = v14;
    v19 = v13[2];
    v20 = v13[3];
    v21 = v13[4];
    v22 = v13[5];
    v17 = v13[0];
    v18 = v13[1];
    sub_1000D1340(&v17);
    sub_1000D8714(v8, v7, SBYTE1(v17));
  }

  else
  {
    v12 = *(a2 + 64);
    sub_1000D8F50();
  }
}

void sub_1000CF4E0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    v4 = *(a2 + 64);
    sub_1000DAB18();

    v5 = *(a2 + 64);
    sub_1000DAB24();
  }

  else if (v2 == 4)
  {
    sub_1000CF570();
  }
}

void sub_1000CF570()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v24 = v1;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = *(*(v3 + 56) + 8 * (__clz(__rbit64(v6)) | (v8 << 6)));

    v11 = v10;
    if (!MeasureObjectState.isCapturable()())
    {
      [v11 removeFromParentNode];
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v12 = *(v0 + 64);
  v13 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  v14 = *&v12[v13];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = v12;

  v20 = 0;
  while (v17)
  {
LABEL_21:
    v22 = *(*(v14 + 56) + 8 * (__clz(__rbit64(v17)) | (v20 << 6)));

    v23 = v22;
    if (!MeasureObjectState.isCapturable()())
    {
      [v23 removeFromParentNode];
    }

    v17 &= v17 - 1;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return;
    }

    v17 = *(v14 + 64 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
}