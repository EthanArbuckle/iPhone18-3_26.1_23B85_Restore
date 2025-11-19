void *sub_100495524()
{
  v1 = v0;
  sub_100140278(&qword_1008EEE38);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
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

id sub_1004956AC(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  sub_100140278(a2);
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
    v18 = v8;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v22 = v19 | (v12 << 6);
        v23 = v36;
        v24 = *(v36 + 72) * v22;
        v26 = v33;
        v25 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v24, v34);
        v27 = *(*(v6 + 56) + 8 * v22);
        (*(v23 + 32))(*(v18 + 48) + v24, v26, v25);
        *(*(v18 + 56) + 8 * v22) = v27;
        result = v27;
        v16 = v37;
      }

      while (v37);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v21 = *(v30 + v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v37 = (v21 - 1) & v21;
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

void *sub_100495924()
{
  v1 = v0;
  sub_100140278(&qword_1008EEBB8);
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

void *sub_100495AA8()
{
  v1 = v0;
  sub_100140278(&qword_1008EF068);
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

void *sub_100495BF4()
{
  v1 = v0;
  sub_100140278(&qword_1008EEDF8);
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

void *sub_100495D5C()
{
  v1 = v0;
  sub_100140278(&qword_1008EEDF0);
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

char *sub_100495EB8()
{
  v1 = v0;
  v33 = type metadata accessor for Date();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008EEDA0);
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

void *sub_100496138()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutChartViewModel(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008EED98);
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
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_1004A9424(*(v5 + 56) + v22, v4, type metadata accessor for WorkoutChartViewModel);
        *(*(v7 + 48) + v20) = v21;
        result = sub_10002B9C4(v4, *(v7 + 56) + v22, type metadata accessor for WorkoutChartViewModel);
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

void *sub_10049636C()
{
  v1 = v0;
  sub_100140278(&qword_1008EECB8);
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

void *sub_1004964E4()
{
  v1 = v0;
  sub_100140278(&qword_1008EEDD0);
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 17);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        v25 = *(v4 + 48) + 40 * v17;
        v26 = *(v18 + 16);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v26;
        *(v25 + 17) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(*(v4 + 56) + 8 * v17) = v24;
        sub_10001D510(v19, v20, v26);
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

id sub_100496684(uint64_t *a1)
{
  v2 = v1;
  sub_100140278(a1);
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

uint64_t sub_1004967E0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100496858(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EEBB0);
  __chkstk_darwin(v2 - 8);
  sub_10001B104(a1, &v5 - v3, &qword_1008EEBB0);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_100496900(uint64_t a1)
{
  v4 = *(type metadata accessor for FitnessPlusUpNextView() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BBC0;

  return sub_10047CFBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004969F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEF68);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008ED090);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A917C;
  *(v33 + 24) = v31;

  v32(sub_10006E524, v33);
}

uint64_t sub_100496DD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEE58);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008DD8D8);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8E30;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

uint64_t sub_1004971B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEE60);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008EEE68);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8E44;
  *(v33 + 24) = v31;

  v32(sub_1001C870C, v33);
}

uint64_t sub_10049758C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008DD8C8);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&unk_1008E4D90);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8100;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

uint64_t sub_100497978(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEEF8);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008ED060);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A9068;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

uint64_t sub_100497D54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEDD8);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&unk_1008F2010);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8E08;
  *(v33 + 24) = v31;

  v32(sub_100173A1C, v33);
}

uint64_t sub_100498130(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEEC8);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008EEED0);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8F94;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

uint64_t sub_10049850C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEEB8);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008EEEC0);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8F80;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

uint64_t sub_1004988E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEEA8);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008EEEB0);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8F6C;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

uint64_t sub_100498CC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEE98);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008EEEA0);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8F58;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

uint64_t sub_1004990A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEE88);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008EEE90);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8F44;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

uint64_t sub_10049947C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEE78);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008EEE80);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8E6C;
  *(v33 + 24) = v31;

  v32(sub_1004A8EFC, v33);
}

uint64_t sub_100499858(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v26 = a6;
  v28 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.triage.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v25[1] = a8;
    v20 = v19;
    v29 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = StaticString.description.getter();
    v23 = sub_10000AFDC(v21, v22, &v29);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    sub_100005A40(v20);

    a1 = v25[0];
  }

  (*(v12 + 8))(v14, v11);
  if (v28)
  {
    v29 = a1;
    swift_errorRetain();
    sub_100140278(&qword_1008EEF68);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    LOBYTE(v29) = a1;
    sub_100140278(&qword_1008EEF68);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100499AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v38 = a5;
  v36 = a3;
  v37 = a4;
  v10 = type metadata accessor for ServiceSubscription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100140278(&qword_1008ED0A8);
  __chkstk_darwin(v42);
  v15 = (&v32 - v14);
  v16 = type metadata accessor for Logger();
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.triage.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = a7;
    v33 = v23;
    v43 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = StaticString.description.getter();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_10000AFDC(v24, v25, &v43);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    sub_100005A40(v33);

    v13 = v34;
  }

  (*(v40 + 8))(v18, v41);
  sub_10001B104(a1, v15, &qword_1008ED0A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v15;
    sub_100140278(&qword_1008EEEE8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    sub_100140278(&qword_1008EEEE8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100499E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v38 = a5;
  v36 = a3;
  v37 = a4;
  v10 = type metadata accessor for PersonalizationInferenceResponse();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100140278(&qword_1008EEE70);
  __chkstk_darwin(v42);
  v15 = (&v32 - v14);
  v16 = type metadata accessor for Logger();
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.triage.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = a7;
    v33 = v23;
    v43 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = StaticString.description.getter();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_10000AFDC(v24, v25, &v43);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    sub_100005A40(v33);

    v13 = v34;
  }

  (*(v40 + 8))(v18, v41);
  sub_10001B104(a1, v15, &qword_1008EEE70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v15;
    sub_100140278(&qword_1008EEE60);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    sub_100140278(&qword_1008EEE60);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10049A198(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v28 = a5;
  LODWORD(v10) = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.triage.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v26) = v10;
    v10 = v20;
    v31 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = StaticString.description.getter();
    v23 = sub_10000AFDC(v21, v22, &v31);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v10);
    LOBYTE(v10) = BYTE4(v26);
  }

  (*(v13 + 8))(v15, v12);
  v31 = a1;
  if (v10)
  {
    swift_errorRetain();
    sub_100140278(&qword_1008DD8C8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v25 = a1;
    sub_100140278(&qword_1008DD8C8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10049A3F0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v28 = a5;
  LODWORD(v10) = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.triage.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v26) = v10;
    v10 = v20;
    v31 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = StaticString.description.getter();
    v23 = sub_10000AFDC(v21, v22, &v31);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v10);
    LOBYTE(v10) = BYTE4(v26);
  }

  (*(v13 + 8))(v15, v12);
  v31 = a1;
  if (v10)
  {
    swift_errorRetain();
    sub_100140278(&qword_1008EEEF8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v25 = a1;
    sub_100140278(&qword_1008EEEF8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10049A648(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v26 = a6;
  v28 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.triage.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[1] = a8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v25[0] = a1;
    v20 = v19;
    v29 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = StaticString.description.getter();
    v23 = sub_10000AFDC(v21, v22, &v29);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    sub_100005A40(v20);
    a1 = v25[0];
  }

  (*(v12 + 8))(v14, v11);
  if (v28)
  {
    v29 = a1;
    swift_errorRetain();
    sub_100140278(&qword_1008EEDD8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100140278(&qword_1008EEDD8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10049A898(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v27 = a8;
  v26 = a7;
  v28 = a3;
  v29 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.triage.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[0] = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v25[1] = a9;
    v20 = v19;
    v30[0] = v19;
    *v18 = 134218498;
    *(v18 + 4) = a4;
    *(v18 + 12) = 2080;
    v21 = StaticString.description.getter();
    v23 = sub_10000AFDC(v21, v22, v30);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    sub_100005A40(v20);

    a2 = v25[0];
  }

  (*(v12 + 8))(v14, v11);
  v30[0] = v29;
  if (v28)
  {
    swift_errorRetain();
    sub_100140278(&qword_1008EEE78);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v30[1] = a2;

    sub_100140278(&qword_1008EEE78);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10049AB28(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = result + 32;
    v7 = (&_swiftEmptyArrayStorage + 32);
    while (1)
    {
      *&v23[0] = v4;
      result = sub_100007C5C(v6, v23 + 8);
      v24 = v23[0];
      v25 = v23[1];
      v26 = v23[2];
      if (!v5)
      {
        v8 = v3[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_100140278(a2);
        v11 = swift_allocObject();
        v12 = (j__malloc_size(v11) - 32) / 48;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v3[3] >> 1;
        if (v3[2])
        {
          if (v11 != v3 || v13 >= &v3[6 * v14 + 4])
          {
            memmove(v11 + 4, v3 + 4, 48 * v14);
          }

          v3[2] = 0;
        }

        v7 = (v13 + 48 * v14);
        v5 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v3 = v11;
      }

      v16 = __OFSUB__(v5--, 1);
      if (v16)
      {
        break;
      }

      ++v4;
      v17 = v24;
      v18 = v26;
      v7[1] = v25;
      v7[2] = v18;
      *v7 = v17;
      v7 += 3;
      v6 += 40;
      if (v2 == v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = 0;
LABEL_21:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v16 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v16)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10049ACD0(uint64_t a1)
{
  v47 = sub_100140278(&qword_1008EED68);
  __chkstk_darwin(v47);
  v46 = (v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = v39 - v5;
  v7 = _swiftEmptyArrayStorage;
  v45 = *(a1 + 16);
  if (v45)
  {
    v8 = v4;
    v9 = *(v4 + 80);
    v39[1] = v9;
    v40 = (v9 + 32) & ~v9;
    v10 = _swiftEmptyArrayStorage + v40;
    v11 = 0;
    v12 = 0;
    v44 = type metadata accessor for CatalogLockup();
    v13 = *(v44 - 8);
    v14 = *(v13 + 16);
    v42 = v13 + 16;
    v43 = v14;
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v41 = *(v13 + 72);
    v16 = _swiftEmptyArrayStorage;
    v39[0] = v8;
    while (1)
    {
      v19 = v46;
      v20 = *(v47 + 48);
      *v46 = v11;
      v43(v19 + v20, v15, v44);
      sub_100015E80(v19, v6, &qword_1008EED68);
      if (v12)
      {
        v7 = v16;
        v17 = v8;
        v18 = __OFSUB__(v12--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = v16[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v22 = v6;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        sub_100140278(&qword_1008EED70);
        v25 = *(v8 + 72);
        v26 = v40;
        v7 = swift_allocObject();
        v27 = j__malloc_size(v7);
        if (!v25)
        {
          goto LABEL_34;
        }

        v28 = v27 - v26;
        if (v27 - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v25;
        v7[2] = v24;
        v7[3] = 2 * (v28 / v25);
        v31 = v7 + v26;
        v32 = v16[3] >> 1;
        v33 = v32 * v25;
        if (v16[2])
        {
          if (v7 < v16 || v31 >= v16 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v7 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v10 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v17 = v39[0];
        v6 = v22;
        v18 = __OFSUB__(v35, 1);
        v12 = v35 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_100015E80(v6, v10, &qword_1008EED68);
      v8 = v17;
      v10 += *(v17 + 72);
      v15 += v41;
      v16 = v7;
      if (v45 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v36 = v7[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v18 = __OFSUB__(v37, v12);
    v38 = v37 - v12;
    if (v18)
    {
      goto LABEL_36;
    }

    v7[2] = v38;
  }
}

uint64_t sub_10049B018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v7 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100140278(&qword_1008DCF78);
  __chkstk_darwin(v8 - 8);
  v10 = &v91[-v9];
  v11 = type metadata accessor for TrendsCard();
  v106 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v91[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v14 - 8);
  v102 = &v91[-v15];
  v101 = type metadata accessor for CatalogTipSection();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = type metadata accessor for URL();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v18 - 8);
  v104 = &v91[-v19];
  v20 = type metadata accessor for CatalogTipCard();
  v103 = *(v20 - 8);
  __chkstk_darwin(v20);
  v99 = &v91[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = type metadata accessor for AwardsCard();
  v115 = &off_100852430;
  v22 = sub_100005994(&v113);
  sub_1004A9424(a1, v22, type metadata accessor for AwardsCard);
  v23 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v24 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v24)
  {
    return sub_100005A40(&v113);
  }

  v96 = v11;
  v25 = v13;
  v97 = v10;
  v95 = OnboardingNavigationView;
  v94 = v7;
  v27 = v114;
  v26 = v115;
  sub_1000066AC(&v113, v114);
  v28 = v26[7];
  v29 = v24;
  if ((v28(v27, v26) & 1) == 0)
  {
    goto LABEL_22;
  }

  v30 = v114;
  v31 = v115;
  sub_1000066AC(&v113, v114);
  if ((v31[4])(v30, v31))
  {
    v32 = *(a3 + v23);
    if (v32)
    {
      v33 = v114;
      v34 = v115;
      sub_1000066AC(&v113, v114);
      v35 = v34[2];
      v36 = v32;
      v37 = v35(v33, v34);
      if (v39 != 3 || v37 | v38)
      {
        sub_10001D4F8(v37, v38, v39);
        v40 = v114;
        v41 = v115;
        v42 = sub_1000066AC(&v113, v114);
        sub_100475448(v42, v36, v40, v41);
      }

      return sub_100005A40(&v113);
    }

LABEL_22:

    return sub_100005A40(&v113);
  }

  v43 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
  swift_beginAccess();
  sub_10001B104(a3 + v43, &v110, &qword_1008EE7A8);
  v93 = v25;
  if (v112)
  {
    sub_100007C5C(&v110, v109);
    sub_10000EA04(&v110, &qword_1008EE7A8);
    v44 = sub_1000066AC(v109, v109[3]);
    __chkstk_darwin(*(*v44 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards));
    *&v91[-16] = &v113;

    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = 0;
      v48 = (v45 + 32);
      v49 = v96;
      do
      {
        v50 = sub_1004A9490(v48);
        if (v50)
        {
          break;
        }

        ++v47;
        v48 += 5;
      }

      while (v46 != v47);
      v51 = v50 ^ 1;
    }

    else
    {
      v51 = 1;
      v49 = v96;
    }

    v92 = v51 & 1;

    sub_100005A40(v109);
    v52 = v97;
    if ((v92 & 1) == 0)
    {
      sub_100637300(&v113);
    }
  }

  else
  {
    sub_10000EA04(&v110, &qword_1008EE7A8);
    v52 = v97;
    v49 = v96;
  }

  v53 = v114;
  v54 = v115;
  sub_1000066AC(&v113, v114);
  v55 = (v54[2])(v53, v54);
  if (v57 <= 1u)
  {
    if (!v57)
    {
      v58 = v114;
      v59 = v115;
      sub_1000066AC(&v113, v114);
      v60 = (v59[2])(v58, v59);
      v62 = v61;
      LOBYTE(v59) = v63;
      v64 = sub_1000490C8(v60, v61, v63);
      sub_10001D4F8(v60, v62, v59);
      sub_10038FF78(v64, 0, 0x100u);
      goto LABEL_22;
    }

    sub_10001D4F8(v55, v56, 1);
LABEL_30:
    v68 = ASActivityAppLaunchURLForSharingFriendList();
    v69 = v105;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v71);
    v73 = v72;
    sub_1004C9534(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    v74 = v29;
    sub_100073C68(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v70 openURL:v73 options:isa completionHandler:0];

    (*(v107 + 8))(v69, v108);
    return sub_100005A40(&v113);
  }

  if (v57 != 2)
  {
    v76 = v95;
    if (v55 <= 4)
    {
      if (v55 <= 1)
      {
        if (v55 | v56)
        {
          if (qword_1008DA938 != -1)
          {
            swift_once();
          }

          v81 = qword_100925688;
          swift_getKeyPath();
          v110 = v81;
          sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v81 + 16))
          {
            [v29 showLoad];
          }

          else
          {
            v82 = v94;
            *v94 = ASFriendListDisplayMode.id.getter;
            v82[1] = 0;
            v82[2] = 0;
            v82[3] = 0;
            v109[0] = _swiftEmptyArrayStorage;
            sub_100140278(&qword_1008DDD40);
            State.init(wrappedValue:)();
            v83 = v111;
            v82[4] = v110;
            v82[5] = v83;
            LOBYTE(v109[0]) = 0;
            State.init(wrappedValue:)();
            v84 = v111;
            *(v82 + 48) = v110;
            v82[7] = v84;
            LOBYTE(v109[0]) = 0;
            State.init(wrappedValue:)();
            v85 = v111;
            *(v82 + 64) = v110;
            v82[9] = v85;
            v86 = *(v76 + 36);
            *(v82 + v86) = swift_getKeyPath();
            sub_100140278(&qword_1008EE800);
            swift_storeEnumTagMultiPayload();
            v87 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
            v88 = UIHostingController.init(rootView:)();
            [v29 presentViewController:v88 animated:1 completion:0];
          }

          goto LABEL_22;
        }

        v77 = [v29 showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];
      }

      else
      {
        if (!(v55 ^ 2 | v56))
        {
          [v29 navigateToHistoryAnimated:1];
          goto LABEL_22;
        }

        if (v55 ^ 3 | v56)
        {
          goto LABEL_30;
        }

        v77 = [v29 navigateToTrophyCaseAnimated:1 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:0];
      }

      goto LABEL_22;
    }

    if (v55 <= 6)
    {
      if (!(v55 ^ 5 | v56))
      {
        v79 = *(*&v29[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
        sub_1005D1004();

        return sub_100005A40(&v113);
      }

      goto LABEL_22;
    }

    if (!(v55 ^ 7 | v56))
    {
      sub_100007C5C(&v113, &v110);
      sub_100140278(&unk_1008EE6B0);
      v52 = v104;
      if (swift_dynamicCast())
      {
        (*(v103 + 56))(v52, 0, 1, v20);
        v80 = v99;
        sub_10002B9C4(v52, v99, type metadata accessor for CatalogTipCard);
        v52 = v102;
        sub_10001B104(&v80[*(v20 + 36)], v102, &qword_1008E4E80);
        if ((*(v100 + 48))(v52, 1, v101) != 1)
        {
          v89 = v52;
          v90 = v98;
          sub_10002B9C4(v89, v98, type metadata accessor for CatalogTipSection);
          sub_10039B4C4(v90);
          sub_100399D60(v90);

          sub_1004A8D4C(v90, type metadata accessor for CatalogTipSection);
          sub_1004A8D4C(v80, type metadata accessor for CatalogTipCard);
          return sub_100005A40(&v113);
        }

        sub_1004A8D4C(v80, type metadata accessor for CatalogTipCard);

        v78 = &qword_1008E4E80;
      }

      else
      {

        (*(v103 + 56))(v52, 1, 1, v20);
        v78 = &qword_1008DCF90;
      }

      goto LABEL_37;
    }

    if (v55 ^ 8 | v56)
    {
      sub_1005D4C54();
      goto LABEL_22;
    }
  }

  sub_100007C5C(&v113, &v110);
  sub_100140278(&unk_1008EE6B0);
  if (!swift_dynamicCast())
  {

    (*(v106 + 56))(v52, 1, 1, v49);
    v78 = &qword_1008DCF78;
LABEL_37:
    sub_10000EA04(v52, v78);
    return sub_100005A40(&v113);
  }

  (*(v106 + 56))(v52, 0, 1, v49);
  v66 = v52;
  v67 = v93;
  sub_10002B9C4(v66, v93, type metadata accessor for TrendsCard);
  if (*(v67 + *(v49 + 36) + 8))
  {
    [v29 showAllTrendsAnimated:1];
  }

  sub_1004A8D4C(v67, type metadata accessor for TrendsCard);
  return sub_100005A40(&v113);
}

uint64_t sub_10049BEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v7 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100140278(&qword_1008DCF78);
  __chkstk_darwin(v8 - 8);
  v10 = &v91[-v9];
  v11 = type metadata accessor for TrendsCard();
  v106 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v91[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v14 - 8);
  v102 = &v91[-v15];
  v101 = type metadata accessor for CatalogTipSection();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = type metadata accessor for URL();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v18 - 8);
  v104 = &v91[-v19];
  v20 = type metadata accessor for CatalogTipCard();
  v103 = *(v20 - 8);
  __chkstk_darwin(v20);
  v99 = &v91[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Card = type metadata accessor for FitnessPlusUpNextCard();
  v115 = &off_100852068;
  v22 = sub_100005994(&v113);
  sub_1004A9424(a1, v22, type metadata accessor for FitnessPlusUpNextCard);
  v23 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v24 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v24)
  {
    return sub_100005A40(&v113);
  }

  v96 = v11;
  v25 = v13;
  v97 = v10;
  v95 = OnboardingNavigationView;
  v94 = v7;
  v27 = Card;
  v26 = v115;
  sub_1000066AC(&v113, Card);
  v28 = v26[7];
  v29 = v24;
  if ((v28(v27, v26) & 1) == 0)
  {
    goto LABEL_22;
  }

  v30 = Card;
  v31 = v115;
  sub_1000066AC(&v113, Card);
  if ((v31[4])(v30, v31))
  {
    v32 = *(a3 + v23);
    if (v32)
    {
      v33 = Card;
      v34 = v115;
      sub_1000066AC(&v113, Card);
      v35 = v34[2];
      v36 = v32;
      v37 = v35(v33, v34);
      if (v39 != 3 || v37 | v38)
      {
        sub_10001D4F8(v37, v38, v39);
        v40 = Card;
        v41 = v115;
        v42 = sub_1000066AC(&v113, Card);
        sub_100475448(v42, v36, v40, v41);
      }

      return sub_100005A40(&v113);
    }

LABEL_22:

    return sub_100005A40(&v113);
  }

  v43 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
  swift_beginAccess();
  sub_10001B104(a3 + v43, &v110, &qword_1008EE7A8);
  v93 = v25;
  if (v112)
  {
    sub_100007C5C(&v110, v109);
    sub_10000EA04(&v110, &qword_1008EE7A8);
    v44 = sub_1000066AC(v109, v109[3]);
    __chkstk_darwin(*(*v44 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards));
    *&v91[-16] = &v113;

    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = 0;
      v48 = (v45 + 32);
      v49 = v96;
      do
      {
        v50 = sub_1004A9490(v48);
        if (v50)
        {
          break;
        }

        ++v47;
        v48 += 5;
      }

      while (v46 != v47);
      v51 = v50 ^ 1;
    }

    else
    {
      v51 = 1;
      v49 = v96;
    }

    v92 = v51 & 1;

    sub_100005A40(v109);
    v52 = v97;
    if ((v92 & 1) == 0)
    {
      sub_100637300(&v113);
    }
  }

  else
  {
    sub_10000EA04(&v110, &qword_1008EE7A8);
    v52 = v97;
    v49 = v96;
  }

  v53 = Card;
  v54 = v115;
  sub_1000066AC(&v113, Card);
  v55 = (v54[2])(v53, v54);
  if (v57 <= 1u)
  {
    if (!v57)
    {
      v58 = Card;
      v59 = v115;
      sub_1000066AC(&v113, Card);
      v60 = (v59[2])(v58, v59);
      v62 = v61;
      LOBYTE(v59) = v63;
      v64 = sub_1000490C8(v60, v61, v63);
      sub_10001D4F8(v60, v62, v59);
      sub_10038FF78(v64, 0, 0x100u);
      goto LABEL_22;
    }

    sub_10001D4F8(v55, v56, 1);
LABEL_30:
    v68 = ASActivityAppLaunchURLForSharingFriendList();
    v69 = v105;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v71);
    v73 = v72;
    sub_1004C9534(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    v74 = v29;
    sub_100073C68(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v70 openURL:v73 options:isa completionHandler:0];

    (*(v107 + 8))(v69, v108);
    return sub_100005A40(&v113);
  }

  if (v57 != 2)
  {
    v76 = v95;
    if (v55 <= 4)
    {
      if (v55 <= 1)
      {
        if (v55 | v56)
        {
          if (qword_1008DA938 != -1)
          {
            swift_once();
          }

          v81 = qword_100925688;
          swift_getKeyPath();
          v110 = v81;
          sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v81 + 16))
          {
            [v29 showLoad];
          }

          else
          {
            v82 = v94;
            *v94 = ASFriendListDisplayMode.id.getter;
            v82[1] = 0;
            v82[2] = 0;
            v82[3] = 0;
            v109[0] = _swiftEmptyArrayStorage;
            sub_100140278(&qword_1008DDD40);
            State.init(wrappedValue:)();
            v83 = v111;
            v82[4] = v110;
            v82[5] = v83;
            LOBYTE(v109[0]) = 0;
            State.init(wrappedValue:)();
            v84 = v111;
            *(v82 + 48) = v110;
            v82[7] = v84;
            LOBYTE(v109[0]) = 0;
            State.init(wrappedValue:)();
            v85 = v111;
            *(v82 + 64) = v110;
            v82[9] = v85;
            v86 = *(v76 + 36);
            *(v82 + v86) = swift_getKeyPath();
            sub_100140278(&qword_1008EE800);
            swift_storeEnumTagMultiPayload();
            v87 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
            v88 = UIHostingController.init(rootView:)();
            [v29 presentViewController:v88 animated:1 completion:0];
          }

          goto LABEL_22;
        }

        v77 = [v29 showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];
      }

      else
      {
        if (!(v55 ^ 2 | v56))
        {
          [v29 navigateToHistoryAnimated:1];
          goto LABEL_22;
        }

        if (v55 ^ 3 | v56)
        {
          goto LABEL_30;
        }

        v77 = [v29 navigateToTrophyCaseAnimated:1 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:0];
      }

      goto LABEL_22;
    }

    if (v55 <= 6)
    {
      if (!(v55 ^ 5 | v56))
      {
        v79 = *(*&v29[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
        sub_1005D1004();

        return sub_100005A40(&v113);
      }

      goto LABEL_22;
    }

    if (!(v55 ^ 7 | v56))
    {
      sub_100007C5C(&v113, &v110);
      sub_100140278(&unk_1008EE6B0);
      v52 = v104;
      if (swift_dynamicCast())
      {
        (*(v103 + 56))(v52, 0, 1, v20);
        v80 = v99;
        sub_10002B9C4(v52, v99, type metadata accessor for CatalogTipCard);
        v52 = v102;
        sub_10001B104(&v80[*(v20 + 36)], v102, &qword_1008E4E80);
        if ((*(v100 + 48))(v52, 1, v101) != 1)
        {
          v89 = v52;
          v90 = v98;
          sub_10002B9C4(v89, v98, type metadata accessor for CatalogTipSection);
          sub_10039B4C4(v90);
          sub_100399D60(v90);

          sub_1004A8D4C(v90, type metadata accessor for CatalogTipSection);
          sub_1004A8D4C(v80, type metadata accessor for CatalogTipCard);
          return sub_100005A40(&v113);
        }

        sub_1004A8D4C(v80, type metadata accessor for CatalogTipCard);

        v78 = &qword_1008E4E80;
      }

      else
      {

        (*(v103 + 56))(v52, 1, 1, v20);
        v78 = &qword_1008DCF90;
      }

      goto LABEL_37;
    }

    if (v55 ^ 8 | v56)
    {
      sub_1005D4C54();
      goto LABEL_22;
    }
  }

  sub_100007C5C(&v113, &v110);
  sub_100140278(&unk_1008EE6B0);
  if (!swift_dynamicCast())
  {

    (*(v106 + 56))(v52, 1, 1, v49);
    v78 = &qword_1008DCF78;
LABEL_37:
    sub_10000EA04(v52, v78);
    return sub_100005A40(&v113);
  }

  (*(v106 + 56))(v52, 0, 1, v49);
  v66 = v52;
  v67 = v93;
  sub_10002B9C4(v66, v93, type metadata accessor for TrendsCard);
  if (*(v67 + *(v49 + 36) + 8))
  {
    [v29 showAllTrendsAnimated:1];
  }

  sub_1004A8D4C(v67, type metadata accessor for TrendsCard);
  return sub_100005A40(&v113);
}

uint64_t sub_10049CD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v7 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100140278(&qword_1008DCF78);
  __chkstk_darwin(v8 - 8);
  v10 = &v91[-v9];
  v11 = type metadata accessor for TrendsCard();
  v106 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v91[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v14 - 8);
  v102 = &v91[-v15];
  v101 = type metadata accessor for CatalogTipSection();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = type metadata accessor for URL();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v18 - 8);
  v104 = &v91[-v19];
  v20 = type metadata accessor for CatalogTipCard();
  v103 = *(v20 - 8);
  __chkstk_darwin(v20);
  v99 = &v91[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = type metadata accessor for FriendsHighlightCard();
  v115 = &off_10085B970;
  v22 = sub_100005994(&v113);
  sub_1004A9424(a1, v22, type metadata accessor for FriendsHighlightCard);
  v23 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v24 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v24)
  {
    return sub_100005A40(&v113);
  }

  v96 = v11;
  v25 = v13;
  v97 = v10;
  v95 = OnboardingNavigationView;
  v94 = v7;
  v27 = v114;
  v26 = v115;
  sub_1000066AC(&v113, v114);
  v28 = v26[7];
  v29 = v24;
  if ((v28(v27, v26) & 1) == 0)
  {
    goto LABEL_22;
  }

  v30 = v114;
  v31 = v115;
  sub_1000066AC(&v113, v114);
  if ((v31[4])(v30, v31))
  {
    v32 = *(a3 + v23);
    if (v32)
    {
      v33 = v114;
      v34 = v115;
      sub_1000066AC(&v113, v114);
      v35 = v34[2];
      v36 = v32;
      v37 = v35(v33, v34);
      if (v39 != 3 || v37 | v38)
      {
        sub_10001D4F8(v37, v38, v39);
        v40 = v114;
        v41 = v115;
        v42 = sub_1000066AC(&v113, v114);
        sub_100475448(v42, v36, v40, v41);
      }

      return sub_100005A40(&v113);
    }

LABEL_22:

    return sub_100005A40(&v113);
  }

  v43 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
  swift_beginAccess();
  sub_10001B104(a3 + v43, &v110, &qword_1008EE7A8);
  v93 = v25;
  if (v112)
  {
    sub_100007C5C(&v110, v109);
    sub_10000EA04(&v110, &qword_1008EE7A8);
    v44 = sub_1000066AC(v109, v109[3]);
    __chkstk_darwin(*(*v44 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards));
    *&v91[-16] = &v113;

    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = 0;
      v48 = (v45 + 32);
      v49 = v96;
      do
      {
        v50 = sub_1004A9490(v48);
        if (v50)
        {
          break;
        }

        ++v47;
        v48 += 5;
      }

      while (v46 != v47);
      v51 = v50 ^ 1;
    }

    else
    {
      v51 = 1;
      v49 = v96;
    }

    v92 = v51 & 1;

    sub_100005A40(v109);
    v52 = v97;
    if ((v92 & 1) == 0)
    {
      sub_100637300(&v113);
    }
  }

  else
  {
    sub_10000EA04(&v110, &qword_1008EE7A8);
    v52 = v97;
    v49 = v96;
  }

  v53 = v114;
  v54 = v115;
  sub_1000066AC(&v113, v114);
  v55 = (v54[2])(v53, v54);
  if (v57 <= 1u)
  {
    if (!v57)
    {
      v58 = v114;
      v59 = v115;
      sub_1000066AC(&v113, v114);
      v60 = (v59[2])(v58, v59);
      v62 = v61;
      LOBYTE(v59) = v63;
      v64 = sub_1000490C8(v60, v61, v63);
      sub_10001D4F8(v60, v62, v59);
      sub_10038FF78(v64, 0, 0x100u);
      goto LABEL_22;
    }

    sub_10001D4F8(v55, v56, 1);
LABEL_30:
    v68 = ASActivityAppLaunchURLForSharingFriendList();
    v69 = v105;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v71);
    v73 = v72;
    sub_1004C9534(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    v74 = v29;
    sub_100073C68(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v70 openURL:v73 options:isa completionHandler:0];

    (*(v107 + 8))(v69, v108);
    return sub_100005A40(&v113);
  }

  if (v57 != 2)
  {
    v76 = v95;
    if (v55 <= 4)
    {
      if (v55 <= 1)
      {
        if (v55 | v56)
        {
          if (qword_1008DA938 != -1)
          {
            swift_once();
          }

          v81 = qword_100925688;
          swift_getKeyPath();
          v110 = v81;
          sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v81 + 16))
          {
            [v29 showLoad];
          }

          else
          {
            v82 = v94;
            *v94 = ASFriendListDisplayMode.id.getter;
            v82[1] = 0;
            v82[2] = 0;
            v82[3] = 0;
            v109[0] = _swiftEmptyArrayStorage;
            sub_100140278(&qword_1008DDD40);
            State.init(wrappedValue:)();
            v83 = v111;
            v82[4] = v110;
            v82[5] = v83;
            LOBYTE(v109[0]) = 0;
            State.init(wrappedValue:)();
            v84 = v111;
            *(v82 + 48) = v110;
            v82[7] = v84;
            LOBYTE(v109[0]) = 0;
            State.init(wrappedValue:)();
            v85 = v111;
            *(v82 + 64) = v110;
            v82[9] = v85;
            v86 = *(v76 + 36);
            *(v82 + v86) = swift_getKeyPath();
            sub_100140278(&qword_1008EE800);
            swift_storeEnumTagMultiPayload();
            v87 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
            v88 = UIHostingController.init(rootView:)();
            [v29 presentViewController:v88 animated:1 completion:0];
          }

          goto LABEL_22;
        }

        v77 = [v29 showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];
      }

      else
      {
        if (!(v55 ^ 2 | v56))
        {
          [v29 navigateToHistoryAnimated:1];
          goto LABEL_22;
        }

        if (v55 ^ 3 | v56)
        {
          goto LABEL_30;
        }

        v77 = [v29 navigateToTrophyCaseAnimated:1 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:0];
      }

      goto LABEL_22;
    }

    if (v55 <= 6)
    {
      if (!(v55 ^ 5 | v56))
      {
        v79 = *(*&v29[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
        sub_1005D1004();

        return sub_100005A40(&v113);
      }

      goto LABEL_22;
    }

    if (!(v55 ^ 7 | v56))
    {
      sub_100007C5C(&v113, &v110);
      sub_100140278(&unk_1008EE6B0);
      v52 = v104;
      if (swift_dynamicCast())
      {
        (*(v103 + 56))(v52, 0, 1, v20);
        v80 = v99;
        sub_10002B9C4(v52, v99, type metadata accessor for CatalogTipCard);
        v52 = v102;
        sub_10001B104(&v80[*(v20 + 36)], v102, &qword_1008E4E80);
        if ((*(v100 + 48))(v52, 1, v101) != 1)
        {
          v89 = v52;
          v90 = v98;
          sub_10002B9C4(v89, v98, type metadata accessor for CatalogTipSection);
          sub_10039B4C4(v90);
          sub_100399D60(v90);

          sub_1004A8D4C(v90, type metadata accessor for CatalogTipSection);
          sub_1004A8D4C(v80, type metadata accessor for CatalogTipCard);
          return sub_100005A40(&v113);
        }

        sub_1004A8D4C(v80, type metadata accessor for CatalogTipCard);

        v78 = &qword_1008E4E80;
      }

      else
      {

        (*(v103 + 56))(v52, 1, 1, v20);
        v78 = &qword_1008DCF90;
      }

      goto LABEL_37;
    }

    if (v55 ^ 8 | v56)
    {
      sub_1005D4C54();
      goto LABEL_22;
    }
  }

  sub_100007C5C(&v113, &v110);
  sub_100140278(&unk_1008EE6B0);
  if (!swift_dynamicCast())
  {

    (*(v106 + 56))(v52, 1, 1, v49);
    v78 = &qword_1008DCF78;
LABEL_37:
    sub_10000EA04(v52, v78);
    return sub_100005A40(&v113);
  }

  (*(v106 + 56))(v52, 0, 1, v49);
  v66 = v52;
  v67 = v93;
  sub_10002B9C4(v66, v93, type metadata accessor for TrendsCard);
  if (*(v67 + *(v49 + 36) + 8))
  {
    [v29 showAllTrendsAnimated:1];
  }

  sub_1004A8D4C(v67, type metadata accessor for TrendsCard);
  return sub_100005A40(&v113);
}

uint64_t sub_10049DBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v9 - 8);
  v128 = &v109 - v10;
  v127 = type metadata accessor for TrendListMetric();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v12 - 8);
  v130 = &v109 - v13;
  v131 = type metadata accessor for TrendsActionContext(0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v16 - 8);
  v119 = &v109 - v17;
  v118 = type metadata accessor for CatalogTipSection();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v19 - 8);
  v124 = &v109 - v20;
  v123 = type metadata accessor for CatalogTipCard();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v22 - 8);
  v122 = &v109 - v23;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v120 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for FriendCard();
  v146 = &off_1008643D8;
  v27 = sub_100005994(&v144);
  sub_1004A9424(a1, v27, type metadata accessor for FriendCard);
  v28 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v29 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v29)
  {
    return sub_100005A40(&v144);
  }

  v114 = a2;
  v113 = v15;
  v111 = OnboardingNavigationView;
  v112 = v8;
  v30 = v145;
  v31 = v146;
  sub_1000066AC(&v144, v145);
  v32 = v31[4];
  v33 = v29;
  if ((v32(v30, v31) & 1) == 0)
  {
    v45 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(a3 + v45, &v132, &qword_1008EE7A8);
    v110 = v33;
    if (*(&v133 + 1))
    {
      sub_100007C5C(&v132, &v141);
      sub_10000EA04(&v132, &qword_1008EE7A8);
      v46 = sub_1000066AC(&v141, *(&v142 + 1));
      v109 = &v109;
      v47 = *(*v46 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v46);
      *(&v109 - 2) = &v144;

      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = 0;
        v50 = (v47 + 32);
        do
        {
          v51 = sub_1004A9490(v50);
          if (v51)
          {
            break;
          }

          ++v49;
          v50 += 5;
        }

        while (v48 != v49);
        v52 = v51 ^ 1;
      }

      else
      {
        v52 = 1;
      }

      v53 = v52 & 1;

      sub_100005A40(&v141);
      if ((v53 & 1) == 0)
      {
        sub_100637300(&v144);
      }
    }

    else
    {
      sub_10000EA04(&v132, &qword_1008EE7A8);
    }

    v54 = v145;
    v55 = v146;
    sub_1000066AC(&v144, v145);
    v56 = (v55[2])(v54, v55);
    v59 = v114;
    if (v58 <= 1u)
    {
      if (!v58)
      {
        v60 = v145;
        v61 = v146;
        v62 = v56;
        sub_1000066AC(&v144, v145);
        v63 = (v61[2])(v60, v61);
        v65 = v64;
        LOBYTE(v61) = v66;
        v67 = sub_1000490C8(v63, v64, v66);
        sub_10001D4F8(v63, v65, v61);
        v68 = v110;
        sub_100390768(v62, v67, 1, 0, 256);

        return sub_100005A40(&v144);
      }

      sub_10001D4F8(v56, v57, 1);
      v33 = v110;
LABEL_26:
      sub_10001B104(v59, &v132, &qword_1008E51F0);
      if (*(&v133 + 1))
      {
        if (swift_dynamicCast())
        {
          v74 = v141;

          sub_100315688(v74, 1);

          return sub_100005A40(&v144);
        }

        goto LABEL_84;
      }

      goto LABEL_43;
    }

    v33 = v110;
    v69 = v113;
    if (v58 == 2)
    {
      goto LABEL_22;
    }

    if (v56 > 4)
    {
      if (v56 <= 6)
      {
        if (v56 ^ 5 | v57)
        {
          goto LABEL_84;
        }

        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          v70 = v122;
          v85 = swift_dynamicCast();
          v86 = v120;
          (*(v120 + 56))(v70, v85 ^ 1u, 1, CardActionContext);
          if ((*(v86 + 48))(v70, 1, CardActionContext) != 1)
          {
            sub_10002B9C4(v70, v26, type metadata accessor for FitnessPlusUpNextCardActionContext);
            sub_100399214(v26, &v26[*(CardActionContext + 20)]);
            v102 = CatalogLockup.identifier.getter();
            v104 = v103;
            v105 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
            sub_1005D1938(v102, v104);

            v83 = type metadata accessor for FitnessPlusUpNextCardActionContext;
            v84 = v26;
            goto LABEL_83;
          }
        }

        else
        {

          sub_10000EA04(&v132, &qword_1008E51F0);
          v70 = v122;
          (*(v120 + 56))(v122, 1, 1, CardActionContext);
        }

        v78 = &qword_1008EEC98;
        goto LABEL_46;
      }

      if (!(v56 ^ 7 | v57))
      {
        sub_100007C5C(&v144, &v132);
        sub_100140278(&unk_1008EE6B0);
        v70 = v124;
        v92 = v123;
        if ((swift_dynamicCast() & 1) == 0)
        {

          (*(v121 + 56))(v70, 1, 1, v92);
          v78 = &qword_1008DCF90;
          goto LABEL_46;
        }

        (*(v121 + 56))(v70, 0, 1, v92);
        v69 = v116;
        sub_10002B9C4(v70, v116, type metadata accessor for CatalogTipCard);
        v70 = v119;
        sub_10001B104(v69 + *(v92 + 36), v119, &qword_1008E4E80);
        if ((*(v117 + 48))(v70, 1, v118) == 1)
        {
          sub_1004A8D4C(v69, type metadata accessor for CatalogTipCard);

          v78 = &qword_1008E4E80;
          goto LABEL_46;
        }

        v107 = v70;
        v108 = v115;
        sub_10002B9C4(v107, v115, type metadata accessor for CatalogTipSection);
        sub_10039B4C4(v108);
        sub_100399D60(v108);

        sub_1004A8D4C(v108, type metadata accessor for CatalogTipSection);
        v94 = type metadata accessor for CatalogTipCard;
        goto LABEL_70;
      }

      if (v56 ^ 8 | v57)
      {
        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          type metadata accessor for QuickStartWorkoutActionContext();
          if (swift_dynamicCast())
          {
            v76 = v141;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong handleQuickStartWorkoutActionContext:v76];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return sub_100005A40(&v144);
          }

LABEL_84:

          return sub_100005A40(&v144);
        }

LABEL_43:

        sub_10000EA04(&v132, &qword_1008E51F0);
        return sub_100005A40(&v144);
      }

LABEL_22:
      sub_10001B104(v114, &v132, &qword_1008E51F0);
      if (!*(&v133 + 1))
      {

        sub_10000EA04(&v132, &qword_1008E51F0);
        v70 = v130;
        (*(v129 + 56))(v130, 1, 1, v131);
        goto LABEL_45;
      }

      v70 = v130;
      v71 = v131;
      v72 = swift_dynamicCast();
      v73 = v129;
      (*(v129 + 56))(v70, v72 ^ 1u, 1, v71);
      if ((*(v73 + 48))(v70, 1, v71) == 1)
      {

LABEL_45:
        v78 = &qword_1008EEC90;
LABEL_46:
        sub_10000EA04(v70, v78);
        return sub_100005A40(&v144);
      }

      sub_10002B9C4(v70, v69, type metadata accessor for TrendsActionContext);
      v79 = v128;
      sub_10001B104(v69, v128, &qword_1008E3D18);
      if ((*(v126 + 48))(v79, 1, v127) == 1)
      {
        sub_10000EA04(v79, &qword_1008E3D18);
        if (*(v69 + *(v71 + 20) + 8) != 255)
        {
          v80 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
          v81 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
          v82 = sub_1001C083C(v80);
          [v33 presentViewController:v82 animated:1 completion:0];

          v83 = type metadata accessor for TrendsActionContext;
          v84 = v69;
LABEL_83:
          sub_1004A8D4C(v84, v83);
          goto LABEL_84;
        }
      }

      else
      {
        v87 = v79;
        v88 = v125;
        sub_10002B9C4(v87, v125, type metadata accessor for TrendListMetric);
        sub_10039C45C(v88);

        sub_1004A8D4C(v88, type metadata accessor for TrendListMetric);
      }

      v94 = type metadata accessor for TrendsActionContext;
LABEL_70:
      sub_1004A8D4C(v69, v94);
      return sub_100005A40(&v144);
    }

    if (v56 > 1)
    {
      if (v56 ^ 2 | v57)
      {
        if (v56 ^ 3 | v57)
        {
          goto LABEL_26;
        }

        sub_10001B104(v114, &v141, &qword_1008E51F0);
        if (*(&v142 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_84;
          }

          v75 = v134;
          sub_100392B10(v134, a3, v135, v136, v137, v138, *&v132, *(&v132 + 1), *&v133, *(&v133 + 1));

LABEL_73:

          goto LABEL_84;
        }

        v101 = &qword_1008E51F0;
      }

      else
      {
        sub_10001B104(v114, v139, &qword_1008E51F0);
        if (v140)
        {
          if (swift_dynamicCast())
          {
            if (*(&v142 + 1))
            {
              v133 = v142;
              v132 = v141;
              v89 = v143;
              v134 = v143;
              v90 = *(&v142 + 1);
              v91 = sub_1000066AC(&v132, *(&v142 + 1));
              sub_10039DBCC(v91, v33, v90, v89);

              sub_1002FB468(&v132);
              return sub_100005A40(&v144);
            }
          }

          else
          {
            v143 = 0;
            v142 = 0u;
            v141 = 0u;
          }
        }

        else
        {

          sub_10000EA04(v139, &qword_1008E51F0);
          v141 = 0u;
          v142 = 0u;
          v143 = 0;
        }

        v101 = &unk_1008EECA0;
      }

      sub_10000EA04(&v141, v101);
      return sub_100005A40(&v144);
    }

    if (!(v56 | v57))
    {

      goto LABEL_84;
    }

    if (qword_1008DA938 != -1)
    {
      swift_once();
    }

    v93 = qword_100925688;
    swift_getKeyPath();
    *&v132 = v93;
    sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v93 + 16))
    {
      [v33 showLoad];
      goto LABEL_84;
    }

    v95 = v112;
    *v112 = ASFriendListDisplayMode.id.getter;
    v95[1] = 0;
    v95[2] = 0;
    v95[3] = 0;
    *&v141 = _swiftEmptyArrayStorage;
    sub_100140278(&qword_1008DDD40);
    State.init(wrappedValue:)();
    v96 = *(&v132 + 1);
    v95[4] = v132;
    v95[5] = v96;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v97 = *(&v132 + 1);
    *(v95 + 48) = v132;
    v95[7] = v97;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v98 = *(&v132 + 1);
    *(v95 + 64) = v132;
    v95[9] = v98;
    v99 = *(v111 + 36);
    *(v95 + v99) = swift_getKeyPath();
    sub_100140278(&qword_1008EE800);
    swift_storeEnumTagMultiPayload();
    v100 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
    v75 = UIHostingController.init(rootView:)();
    [v33 presentViewController:v75 animated:1 completion:0];
    goto LABEL_73;
  }

  v34 = *(a3 + v28);
  if (!v34)
  {
    goto LABEL_84;
  }

  v35 = v145;
  v36 = v146;
  sub_1000066AC(&v144, v145);
  v37 = v36[2];
  v38 = v34;
  v39 = v37(v35, v36);
  if (v41 != 3 || v39 | v40)
  {
    sub_10001D4F8(v39, v40, v41);
    v42 = v145;
    v43 = v146;
    v44 = sub_1000066AC(&v144, v145);
    sub_100475448(v44, v38, v42, v43);
  }

  return sub_100005A40(&v144);
}

uint64_t sub_10049F064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v9 - 8);
  v128 = &v109 - v10;
  v127 = type metadata accessor for TrendListMetric();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v12 - 8);
  v130 = &v109 - v13;
  v131 = type metadata accessor for TrendsActionContext(0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v16 - 8);
  v119 = &v109 - v17;
  v118 = type metadata accessor for CatalogTipSection();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v19 - 8);
  v124 = &v109 - v20;
  v123 = type metadata accessor for CatalogTipCard();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v22 - 8);
  v122 = &v109 - v23;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v120 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for QuickStartWorkoutCard();
  v146 = &off_10085E8B0;
  v27 = sub_100005994(&v144);
  sub_1004A9424(a1, v27, type metadata accessor for QuickStartWorkoutCard);
  v28 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v29 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v29)
  {
    return sub_100005A40(&v144);
  }

  v114 = a2;
  v113 = v15;
  v111 = OnboardingNavigationView;
  v112 = v8;
  v30 = started;
  v31 = v146;
  sub_1000066AC(&v144, started);
  v32 = v31[4];
  v33 = v29;
  if ((v32(v30, v31) & 1) == 0)
  {
    v45 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(a3 + v45, &v132, &qword_1008EE7A8);
    v110 = v33;
    if (*(&v133 + 1))
    {
      sub_100007C5C(&v132, &v141);
      sub_10000EA04(&v132, &qword_1008EE7A8);
      v46 = sub_1000066AC(&v141, *(&v142 + 1));
      v109 = &v109;
      v47 = *(*v46 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v46);
      *(&v109 - 2) = &v144;

      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = 0;
        v50 = (v47 + 32);
        do
        {
          v51 = sub_1004A9490(v50);
          if (v51)
          {
            break;
          }

          ++v49;
          v50 += 5;
        }

        while (v48 != v49);
        v52 = v51 ^ 1;
      }

      else
      {
        v52 = 1;
      }

      v53 = v52 & 1;

      sub_100005A40(&v141);
      if ((v53 & 1) == 0)
      {
        sub_100637300(&v144);
      }
    }

    else
    {
      sub_10000EA04(&v132, &qword_1008EE7A8);
    }

    v54 = started;
    v55 = v146;
    sub_1000066AC(&v144, started);
    v56 = (v55[2])(v54, v55);
    v59 = v114;
    if (v58 <= 1u)
    {
      if (!v58)
      {
        v60 = started;
        v61 = v146;
        v62 = v56;
        sub_1000066AC(&v144, started);
        v63 = (v61[2])(v60, v61);
        v65 = v64;
        LOBYTE(v61) = v66;
        v67 = sub_1000490C8(v63, v64, v66);
        sub_10001D4F8(v63, v65, v61);
        v68 = v110;
        sub_100390768(v62, v67, 1, 0, 256);

        return sub_100005A40(&v144);
      }

      sub_10001D4F8(v56, v57, 1);
      v33 = v110;
LABEL_26:
      sub_10001B104(v59, &v132, &qword_1008E51F0);
      if (*(&v133 + 1))
      {
        if (swift_dynamicCast())
        {
          v74 = v141;

          sub_100315688(v74, 1);

          return sub_100005A40(&v144);
        }

        goto LABEL_84;
      }

      goto LABEL_43;
    }

    v33 = v110;
    v69 = v113;
    if (v58 == 2)
    {
      goto LABEL_22;
    }

    if (v56 > 4)
    {
      if (v56 <= 6)
      {
        if (v56 ^ 5 | v57)
        {
          goto LABEL_84;
        }

        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          v70 = v122;
          v85 = swift_dynamicCast();
          v86 = v120;
          (*(v120 + 56))(v70, v85 ^ 1u, 1, CardActionContext);
          if ((*(v86 + 48))(v70, 1, CardActionContext) != 1)
          {
            sub_10002B9C4(v70, v26, type metadata accessor for FitnessPlusUpNextCardActionContext);
            sub_100399214(v26, &v26[*(CardActionContext + 20)]);
            v102 = CatalogLockup.identifier.getter();
            v104 = v103;
            v105 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
            sub_1005D1938(v102, v104);

            v83 = type metadata accessor for FitnessPlusUpNextCardActionContext;
            v84 = v26;
            goto LABEL_83;
          }
        }

        else
        {

          sub_10000EA04(&v132, &qword_1008E51F0);
          v70 = v122;
          (*(v120 + 56))(v122, 1, 1, CardActionContext);
        }

        v78 = &qword_1008EEC98;
        goto LABEL_46;
      }

      if (!(v56 ^ 7 | v57))
      {
        sub_100007C5C(&v144, &v132);
        sub_100140278(&unk_1008EE6B0);
        v70 = v124;
        v92 = v123;
        if ((swift_dynamicCast() & 1) == 0)
        {

          (*(v121 + 56))(v70, 1, 1, v92);
          v78 = &qword_1008DCF90;
          goto LABEL_46;
        }

        (*(v121 + 56))(v70, 0, 1, v92);
        v69 = v116;
        sub_10002B9C4(v70, v116, type metadata accessor for CatalogTipCard);
        v70 = v119;
        sub_10001B104(v69 + *(v92 + 36), v119, &qword_1008E4E80);
        if ((*(v117 + 48))(v70, 1, v118) == 1)
        {
          sub_1004A8D4C(v69, type metadata accessor for CatalogTipCard);

          v78 = &qword_1008E4E80;
          goto LABEL_46;
        }

        v107 = v70;
        v108 = v115;
        sub_10002B9C4(v107, v115, type metadata accessor for CatalogTipSection);
        sub_10039B4C4(v108);
        sub_100399D60(v108);

        sub_1004A8D4C(v108, type metadata accessor for CatalogTipSection);
        v94 = type metadata accessor for CatalogTipCard;
        goto LABEL_70;
      }

      if (v56 ^ 8 | v57)
      {
        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          type metadata accessor for QuickStartWorkoutActionContext();
          if (swift_dynamicCast())
          {
            v76 = v141;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong handleQuickStartWorkoutActionContext:v76];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return sub_100005A40(&v144);
          }

LABEL_84:

          return sub_100005A40(&v144);
        }

LABEL_43:

        sub_10000EA04(&v132, &qword_1008E51F0);
        return sub_100005A40(&v144);
      }

LABEL_22:
      sub_10001B104(v114, &v132, &qword_1008E51F0);
      if (!*(&v133 + 1))
      {

        sub_10000EA04(&v132, &qword_1008E51F0);
        v70 = v130;
        (*(v129 + 56))(v130, 1, 1, v131);
        goto LABEL_45;
      }

      v70 = v130;
      v71 = v131;
      v72 = swift_dynamicCast();
      v73 = v129;
      (*(v129 + 56))(v70, v72 ^ 1u, 1, v71);
      if ((*(v73 + 48))(v70, 1, v71) == 1)
      {

LABEL_45:
        v78 = &qword_1008EEC90;
LABEL_46:
        sub_10000EA04(v70, v78);
        return sub_100005A40(&v144);
      }

      sub_10002B9C4(v70, v69, type metadata accessor for TrendsActionContext);
      v79 = v128;
      sub_10001B104(v69, v128, &qword_1008E3D18);
      if ((*(v126 + 48))(v79, 1, v127) == 1)
      {
        sub_10000EA04(v79, &qword_1008E3D18);
        if (*(v69 + *(v71 + 20) + 8) != 255)
        {
          v80 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
          v81 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
          v82 = sub_1001C083C(v80);
          [v33 presentViewController:v82 animated:1 completion:0];

          v83 = type metadata accessor for TrendsActionContext;
          v84 = v69;
LABEL_83:
          sub_1004A8D4C(v84, v83);
          goto LABEL_84;
        }
      }

      else
      {
        v87 = v79;
        v88 = v125;
        sub_10002B9C4(v87, v125, type metadata accessor for TrendListMetric);
        sub_10039C45C(v88);

        sub_1004A8D4C(v88, type metadata accessor for TrendListMetric);
      }

      v94 = type metadata accessor for TrendsActionContext;
LABEL_70:
      sub_1004A8D4C(v69, v94);
      return sub_100005A40(&v144);
    }

    if (v56 > 1)
    {
      if (v56 ^ 2 | v57)
      {
        if (v56 ^ 3 | v57)
        {
          goto LABEL_26;
        }

        sub_10001B104(v114, &v141, &qword_1008E51F0);
        if (*(&v142 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_84;
          }

          v75 = v134;
          sub_100392B10(v134, a3, v135, v136, v137, v138, *&v132, *(&v132 + 1), *&v133, *(&v133 + 1));

LABEL_73:

          goto LABEL_84;
        }

        v101 = &qword_1008E51F0;
      }

      else
      {
        sub_10001B104(v114, v139, &qword_1008E51F0);
        if (v140)
        {
          if (swift_dynamicCast())
          {
            if (*(&v142 + 1))
            {
              v133 = v142;
              v132 = v141;
              v89 = v143;
              v134 = v143;
              v90 = *(&v142 + 1);
              v91 = sub_1000066AC(&v132, *(&v142 + 1));
              sub_10039DBCC(v91, v33, v90, v89);

              sub_1002FB468(&v132);
              return sub_100005A40(&v144);
            }
          }

          else
          {
            v143 = 0;
            v142 = 0u;
            v141 = 0u;
          }
        }

        else
        {

          sub_10000EA04(v139, &qword_1008E51F0);
          v141 = 0u;
          v142 = 0u;
          v143 = 0;
        }

        v101 = &unk_1008EECA0;
      }

      sub_10000EA04(&v141, v101);
      return sub_100005A40(&v144);
    }

    if (!(v56 | v57))
    {

      goto LABEL_84;
    }

    if (qword_1008DA938 != -1)
    {
      swift_once();
    }

    v93 = qword_100925688;
    swift_getKeyPath();
    *&v132 = v93;
    sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v93 + 16))
    {
      [v33 showLoad];
      goto LABEL_84;
    }

    v95 = v112;
    *v112 = ASFriendListDisplayMode.id.getter;
    v95[1] = 0;
    v95[2] = 0;
    v95[3] = 0;
    *&v141 = _swiftEmptyArrayStorage;
    sub_100140278(&qword_1008DDD40);
    State.init(wrappedValue:)();
    v96 = *(&v132 + 1);
    v95[4] = v132;
    v95[5] = v96;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v97 = *(&v132 + 1);
    *(v95 + 48) = v132;
    v95[7] = v97;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v98 = *(&v132 + 1);
    *(v95 + 64) = v132;
    v95[9] = v98;
    v99 = *(v111 + 36);
    *(v95 + v99) = swift_getKeyPath();
    sub_100140278(&qword_1008EE800);
    swift_storeEnumTagMultiPayload();
    v100 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
    v75 = UIHostingController.init(rootView:)();
    [v33 presentViewController:v75 animated:1 completion:0];
    goto LABEL_73;
  }

  v34 = *(a3 + v28);
  if (!v34)
  {
    goto LABEL_84;
  }

  v35 = started;
  v36 = v146;
  sub_1000066AC(&v144, started);
  v37 = v36[2];
  v38 = v34;
  v39 = v37(v35, v36);
  if (v41 != 3 || v39 | v40)
  {
    sub_10001D4F8(v39, v40, v41);
    v42 = started;
    v43 = v146;
    v44 = sub_1000066AC(&v144, started);
    sub_100475448(v44, v38, v42, v43);
  }

  return sub_100005A40(&v144);
}

uint64_t sub_1004A050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = a2;
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v8 - 8);
  v123 = &v105 - v9;
  v122 = type metadata accessor for TrendListMetric();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v11 - 8);
  v125 = &v105 - v12;
  v126 = type metadata accessor for TrendsActionContext(0);
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v15 - 8);
  v114 = &v105 - v16;
  v113 = type metadata accessor for CatalogTipSection();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v109 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v18 - 8);
  v119 = &v105 - v19;
  v118 = type metadata accessor for CatalogTipCard();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v111 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v21 - 8);
  v117 = &v105 - v22;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v115 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v110 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HistoryItemsCard();
  v141 = v25;
  v142 = &off_100849298;
  v140 = a1;
  v26 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v27 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v27)
  {

    return sub_100005A40(&v140);
  }

  v108 = v14;
  v106 = OnboardingNavigationView;
  v107 = v7;
  sub_1000066AC(&v140, v25);

  v28 = v27;
  if ((sub_100049600() & 1) == 0)
  {
    v40 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(a3 + v40, &v128, &qword_1008EE7A8);
    v105 = v28;
    if (*(&v129 + 1))
    {
      sub_100007C5C(&v128, &v137);
      sub_10000EA04(&v128, &qword_1008EE7A8);
      v41 = sub_1000066AC(&v137, *(&v138 + 1));
      v42 = *(*v41 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v41);
      *(&v105 - 2) = &v140;

      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = 0;
        v45 = (v42 + 32);
        do
        {
          v46 = sub_1004A9490(v45);
          if (v46)
          {
            break;
          }

          ++v44;
          v45 += 5;
        }

        while (v43 != v44);
        v47 = v46 ^ 1;
      }

      else
      {
        v47 = 1;
      }

      v48 = v47 & 1;

      sub_100005A40(&v137);
      if ((v48 & 1) == 0)
      {
        sub_100637300(&v140);
      }
    }

    else
    {
      sub_10000EA04(&v128, &qword_1008EE7A8);
    }

    v49 = v141;
    v50 = v142;
    sub_1000066AC(&v140, v141);
    v51 = (v50[2])(v49, v50);
    v54 = v108;
    if (v53 <= 1u)
    {
      if (!v53)
      {
        v55 = v141;
        v56 = v142;
        v57 = v51;
        sub_1000066AC(&v140, v141);
        v58 = (v56[2])(v55, v56);
        v60 = v59;
        LOBYTE(v56) = v61;
        v62 = sub_1000490C8(v58, v59, v61);
        sub_10001D4F8(v58, v60, v56);
        v63 = v105;
        sub_100390768(v57, v62, 1, 0, 256);

        return sub_100005A40(&v140);
      }

      sub_10001D4F8(v51, v52, 1);
      v28 = v105;
LABEL_27:
      sub_10001B104(v127, &v128, &qword_1008E51F0);
      if (*(&v129 + 1))
      {
        if (swift_dynamicCast())
        {
          v68 = v137;

          sub_100315688(v68, 1);

          return sub_100005A40(&v140);
        }

        goto LABEL_85;
      }

      goto LABEL_44;
    }

    v28 = v105;
    if (v53 == 2)
    {
      goto LABEL_23;
    }

    v69 = v107;
    v70 = v106;
    if (v51 > 4)
    {
      if (v51 <= 6)
      {
        if (v51 ^ 5 | v52)
        {
          goto LABEL_85;
        }

        sub_10001B104(v127, &v128, &qword_1008E51F0);
        if (*(&v129 + 1))
        {
          v64 = v117;
          v81 = swift_dynamicCast();
          v82 = v115;
          (*(v115 + 56))(v64, v81 ^ 1u, 1, CardActionContext);
          if ((*(v82 + 48))(v64, 1, CardActionContext) != 1)
          {
            v97 = v110;
            sub_10002B9C4(v64, v110, type metadata accessor for FitnessPlusUpNextCardActionContext);
            sub_100399214(v97, v97 + *(CardActionContext + 20));
            v98 = CatalogLockup.identifier.getter();
            v100 = v99;
            v101 = *(*&v28[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
            sub_1005D1938(v98, v100);

            v79 = type metadata accessor for FitnessPlusUpNextCardActionContext;
            v80 = v97;
            goto LABEL_84;
          }
        }

        else
        {

          sub_10000EA04(&v128, &qword_1008E51F0);
          v64 = v117;
          (*(v115 + 56))(v117, 1, 1, CardActionContext);
        }

        v74 = &qword_1008EEC98;
        goto LABEL_47;
      }

      if (!(v51 ^ 7 | v52))
      {
        sub_100007C5C(&v140, &v128);
        sub_100140278(&unk_1008EE6B0);
        v64 = v119;
        v88 = v118;
        if ((swift_dynamicCast() & 1) == 0)
        {

          (*(v116 + 56))(v64, 1, 1, v88);
          v74 = &qword_1008DCF90;
          goto LABEL_47;
        }

        (*(v116 + 56))(v64, 0, 1, v88);
        v54 = v111;
        sub_10002B9C4(v64, v111, type metadata accessor for CatalogTipCard);
        v64 = v114;
        sub_10001B104(v54 + *(v88 + 36), v114, &qword_1008E4E80);
        if ((*(v112 + 48))(v64, 1, v113) == 1)
        {
          sub_1004A8D4C(v54, type metadata accessor for CatalogTipCard);

          v74 = &qword_1008E4E80;
          goto LABEL_47;
        }

        v103 = v64;
        v104 = v109;
        sub_10002B9C4(v103, v109, type metadata accessor for CatalogTipSection);
        sub_10039B4C4(v104);
        sub_100399D60(v104);

        sub_1004A8D4C(v104, type metadata accessor for CatalogTipSection);
        v90 = type metadata accessor for CatalogTipCard;
        goto LABEL_71;
      }

      if (v51 ^ 8 | v52)
      {
        sub_10001B104(v127, &v128, &qword_1008E51F0);
        if (*(&v129 + 1))
        {
          type metadata accessor for QuickStartWorkoutActionContext();
          if (swift_dynamicCast())
          {
            v72 = v137;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong handleQuickStartWorkoutActionContext:v72];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return sub_100005A40(&v140);
          }

LABEL_85:

          return sub_100005A40(&v140);
        }

LABEL_44:

        sub_10000EA04(&v128, &qword_1008E51F0);
        return sub_100005A40(&v140);
      }

LABEL_23:
      sub_10001B104(v127, &v128, &qword_1008E51F0);
      if (!*(&v129 + 1))
      {

        sub_10000EA04(&v128, &qword_1008E51F0);
        v64 = v125;
        (*(v124 + 56))(v125, 1, 1, v126);
        goto LABEL_46;
      }

      v64 = v125;
      v65 = v126;
      v66 = swift_dynamicCast();
      v67 = v124;
      (*(v124 + 56))(v64, v66 ^ 1u, 1, v65);
      if ((*(v67 + 48))(v64, 1, v65) == 1)
      {

LABEL_46:
        v74 = &qword_1008EEC90;
LABEL_47:
        sub_10000EA04(v64, v74);
        return sub_100005A40(&v140);
      }

      sub_10002B9C4(v64, v54, type metadata accessor for TrendsActionContext);
      v75 = v123;
      sub_10001B104(v54, v123, &qword_1008E3D18);
      if ((*(v121 + 48))(v75, 1, v122) == 1)
      {
        sub_10000EA04(v75, &qword_1008E3D18);
        if (*(v54 + *(v65 + 20) + 8) != 255)
        {
          v76 = *(*&v28[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
          v77 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
          v78 = sub_1001C083C(v76);
          [v28 presentViewController:v78 animated:1 completion:0];

          v79 = type metadata accessor for TrendsActionContext;
          v80 = v54;
LABEL_84:
          sub_1004A8D4C(v80, v79);
          goto LABEL_85;
        }
      }

      else
      {
        v83 = v75;
        v84 = v120;
        sub_10002B9C4(v83, v120, type metadata accessor for TrendListMetric);
        sub_10039C45C(v84);

        sub_1004A8D4C(v84, type metadata accessor for TrendListMetric);
      }

      v90 = type metadata accessor for TrendsActionContext;
LABEL_71:
      sub_1004A8D4C(v54, v90);
      return sub_100005A40(&v140);
    }

    if (v51 > 1)
    {
      if (v51 ^ 2 | v52)
      {
        if (v51 ^ 3 | v52)
        {
          goto LABEL_27;
        }

        sub_10001B104(v127, &v137, &qword_1008E51F0);
        if (*(&v138 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_85;
          }

          v71 = v130;
          sub_100392B10(v130, a3, v131, v132, v133, v134, *&v128, *(&v128 + 1), *&v129, *(&v129 + 1));

LABEL_74:

          goto LABEL_85;
        }

        v96 = &qword_1008E51F0;
      }

      else
      {
        sub_10001B104(v127, v135, &qword_1008E51F0);
        if (v136)
        {
          if (swift_dynamicCast())
          {
            if (*(&v138 + 1))
            {
              v129 = v138;
              v128 = v137;
              v85 = v139;
              v130 = v139;
              v86 = *(&v138 + 1);
              v87 = sub_1000066AC(&v128, *(&v138 + 1));
              sub_10039DBCC(v87, v28, v86, v85);

              sub_1002FB468(&v128);
              return sub_100005A40(&v140);
            }
          }

          else
          {
            v139 = 0;
            v138 = 0u;
            v137 = 0u;
          }
        }

        else
        {

          sub_10000EA04(v135, &qword_1008E51F0);
          v137 = 0u;
          v138 = 0u;
          v139 = 0;
        }

        v96 = &unk_1008EECA0;
      }

      sub_10000EA04(&v137, v96);
      return sub_100005A40(&v140);
    }

    if (!(v51 | v52))
    {

      goto LABEL_85;
    }

    if (qword_1008DA938 != -1)
    {
      swift_once();
    }

    v89 = qword_100925688;
    swift_getKeyPath();
    *&v128 = v89;
    sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v89 + 16))
    {
      [v28 showLoad];
      goto LABEL_85;
    }

    *v69 = ASFriendListDisplayMode.id.getter;
    *(v69 + 1) = 0;
    *(v69 + 2) = 0;
    *(v69 + 3) = 0;
    *&v137 = _swiftEmptyArrayStorage;
    sub_100140278(&qword_1008DDD40);
    State.init(wrappedValue:)();
    v91 = *(&v128 + 1);
    *(v69 + 4) = v128;
    *(v69 + 5) = v91;
    LOBYTE(v137) = 0;
    State.init(wrappedValue:)();
    v92 = *(&v128 + 1);
    v69[48] = v128;
    *(v69 + 7) = v92;
    LOBYTE(v137) = 0;
    State.init(wrappedValue:)();
    v93 = *(&v128 + 1);
    v69[64] = v128;
    *(v69 + 9) = v93;
    v94 = *(v70 + 36);
    *&v69[v94] = swift_getKeyPath();
    sub_100140278(&qword_1008EE800);
    swift_storeEnumTagMultiPayload();
    v95 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
    v71 = UIHostingController.init(rootView:)();
    [v28 presentViewController:v71 animated:1 completion:0];
    goto LABEL_74;
  }

  v29 = *(a3 + v26);
  if (!v29)
  {
    goto LABEL_85;
  }

  v30 = v141;
  v31 = v142;
  sub_1000066AC(&v140, v141);
  v32 = v31[2];
  v33 = v29;
  v34 = v32(v30, v31);
  if (v36 != 3 || v34 | v35)
  {
    sub_10001D4F8(v34, v35, v36);
    v37 = v141;
    v38 = v142;
    v39 = sub_1000066AC(&v140, v141);
    sub_100475448(v39, v33, v37, v38);
  }

  return sub_100005A40(&v140);
}

uint64_t sub_1004A19B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v9 - 8);
  v128 = &v109 - v10;
  v127 = type metadata accessor for TrendListMetric();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v12 - 8);
  v130 = &v109 - v13;
  v131 = type metadata accessor for TrendsActionContext(0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v16 - 8);
  v119 = &v109 - v17;
  v118 = type metadata accessor for CatalogTipSection();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v19 - 8);
  v124 = &v109 - v20;
  v123 = type metadata accessor for CatalogTipCard();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v22 - 8);
  v122 = &v109 - v23;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v120 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  Card = type metadata accessor for FitnessPlusUpNextCard();
  v146 = &off_100852068;
  v27 = sub_100005994(&v144);
  sub_1004A9424(a1, v27, type metadata accessor for FitnessPlusUpNextCard);
  v28 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v29 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v29)
  {
    return sub_100005A40(&v144);
  }

  v114 = a2;
  v113 = v15;
  v111 = OnboardingNavigationView;
  v112 = v8;
  v30 = Card;
  v31 = v146;
  sub_1000066AC(&v144, Card);
  v32 = v31[4];
  v33 = v29;
  if ((v32(v30, v31) & 1) == 0)
  {
    v45 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(a3 + v45, &v132, &qword_1008EE7A8);
    v110 = v33;
    if (*(&v133 + 1))
    {
      sub_100007C5C(&v132, &v141);
      sub_10000EA04(&v132, &qword_1008EE7A8);
      v46 = sub_1000066AC(&v141, *(&v142 + 1));
      v109 = &v109;
      v47 = *(*v46 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v46);
      *(&v109 - 2) = &v144;

      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = 0;
        v50 = (v47 + 32);
        do
        {
          v51 = sub_1004A8728(v50);
          if (v51)
          {
            break;
          }

          ++v49;
          v50 += 5;
        }

        while (v48 != v49);
        v52 = v51 ^ 1;
      }

      else
      {
        v52 = 1;
      }

      v53 = v52 & 1;

      sub_100005A40(&v141);
      if ((v53 & 1) == 0)
      {
        sub_100637300(&v144);
      }
    }

    else
    {
      sub_10000EA04(&v132, &qword_1008EE7A8);
    }

    v54 = Card;
    v55 = v146;
    sub_1000066AC(&v144, Card);
    v56 = (v55[2])(v54, v55);
    v59 = v114;
    if (v58 <= 1u)
    {
      if (!v58)
      {
        v60 = Card;
        v61 = v146;
        v62 = v56;
        sub_1000066AC(&v144, Card);
        v63 = (v61[2])(v60, v61);
        v65 = v64;
        LOBYTE(v61) = v66;
        v67 = sub_1000490C8(v63, v64, v66);
        sub_10001D4F8(v63, v65, v61);
        v68 = v110;
        sub_100390768(v62, v67, 1, 0, 256);

        return sub_100005A40(&v144);
      }

      sub_10001D4F8(v56, v57, 1);
      v33 = v110;
LABEL_26:
      sub_10001B104(v59, &v132, &qword_1008E51F0);
      if (*(&v133 + 1))
      {
        if (swift_dynamicCast())
        {
          v74 = v141;

          sub_100315688(v74, 1);

          return sub_100005A40(&v144);
        }

        goto LABEL_84;
      }

      goto LABEL_43;
    }

    v33 = v110;
    v69 = v113;
    if (v58 == 2)
    {
      goto LABEL_22;
    }

    if (v56 > 4)
    {
      if (v56 <= 6)
      {
        if (v56 ^ 5 | v57)
        {
          goto LABEL_84;
        }

        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          v70 = v122;
          v85 = swift_dynamicCast();
          v86 = v120;
          (*(v120 + 56))(v70, v85 ^ 1u, 1, CardActionContext);
          if ((*(v86 + 48))(v70, 1, CardActionContext) != 1)
          {
            sub_10002B9C4(v70, v26, type metadata accessor for FitnessPlusUpNextCardActionContext);
            sub_100399214(v26, &v26[*(CardActionContext + 20)]);
            v102 = CatalogLockup.identifier.getter();
            v104 = v103;
            v105 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
            sub_1005D1938(v102, v104);

            v83 = type metadata accessor for FitnessPlusUpNextCardActionContext;
            v84 = v26;
            goto LABEL_83;
          }
        }

        else
        {

          sub_10000EA04(&v132, &qword_1008E51F0);
          v70 = v122;
          (*(v120 + 56))(v122, 1, 1, CardActionContext);
        }

        v78 = &qword_1008EEC98;
        goto LABEL_46;
      }

      if (!(v56 ^ 7 | v57))
      {
        sub_100007C5C(&v144, &v132);
        sub_100140278(&unk_1008EE6B0);
        v70 = v124;
        v92 = v123;
        if ((swift_dynamicCast() & 1) == 0)
        {

          (*(v121 + 56))(v70, 1, 1, v92);
          v78 = &qword_1008DCF90;
          goto LABEL_46;
        }

        (*(v121 + 56))(v70, 0, 1, v92);
        v69 = v116;
        sub_10002B9C4(v70, v116, type metadata accessor for CatalogTipCard);
        v70 = v119;
        sub_10001B104(v69 + *(v92 + 36), v119, &qword_1008E4E80);
        if ((*(v117 + 48))(v70, 1, v118) == 1)
        {
          sub_1004A8D4C(v69, type metadata accessor for CatalogTipCard);

          v78 = &qword_1008E4E80;
          goto LABEL_46;
        }

        v107 = v70;
        v108 = v115;
        sub_10002B9C4(v107, v115, type metadata accessor for CatalogTipSection);
        sub_10039B4C4(v108);
        sub_100399D60(v108);

        sub_1004A8D4C(v108, type metadata accessor for CatalogTipSection);
        v94 = type metadata accessor for CatalogTipCard;
        goto LABEL_70;
      }

      if (v56 ^ 8 | v57)
      {
        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          type metadata accessor for QuickStartWorkoutActionContext();
          if (swift_dynamicCast())
          {
            v76 = v141;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong handleQuickStartWorkoutActionContext:v76];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return sub_100005A40(&v144);
          }

LABEL_84:

          return sub_100005A40(&v144);
        }

LABEL_43:

        sub_10000EA04(&v132, &qword_1008E51F0);
        return sub_100005A40(&v144);
      }

LABEL_22:
      sub_10001B104(v114, &v132, &qword_1008E51F0);
      if (!*(&v133 + 1))
      {

        sub_10000EA04(&v132, &qword_1008E51F0);
        v70 = v130;
        (*(v129 + 56))(v130, 1, 1, v131);
        goto LABEL_45;
      }

      v70 = v130;
      v71 = v131;
      v72 = swift_dynamicCast();
      v73 = v129;
      (*(v129 + 56))(v70, v72 ^ 1u, 1, v71);
      if ((*(v73 + 48))(v70, 1, v71) == 1)
      {

LABEL_45:
        v78 = &qword_1008EEC90;
LABEL_46:
        sub_10000EA04(v70, v78);
        return sub_100005A40(&v144);
      }

      sub_10002B9C4(v70, v69, type metadata accessor for TrendsActionContext);
      v79 = v128;
      sub_10001B104(v69, v128, &qword_1008E3D18);
      if ((*(v126 + 48))(v79, 1, v127) == 1)
      {
        sub_10000EA04(v79, &qword_1008E3D18);
        if (*(v69 + *(v71 + 20) + 8) != 255)
        {
          v80 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
          v81 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
          v82 = sub_1001C083C(v80);
          [v33 presentViewController:v82 animated:1 completion:0];

          v83 = type metadata accessor for TrendsActionContext;
          v84 = v69;
LABEL_83:
          sub_1004A8D4C(v84, v83);
          goto LABEL_84;
        }
      }

      else
      {
        v87 = v79;
        v88 = v125;
        sub_10002B9C4(v87, v125, type metadata accessor for TrendListMetric);
        sub_10039C45C(v88);

        sub_1004A8D4C(v88, type metadata accessor for TrendListMetric);
      }

      v94 = type metadata accessor for TrendsActionContext;
LABEL_70:
      sub_1004A8D4C(v69, v94);
      return sub_100005A40(&v144);
    }

    if (v56 > 1)
    {
      if (v56 ^ 2 | v57)
      {
        if (v56 ^ 3 | v57)
        {
          goto LABEL_26;
        }

        sub_10001B104(v114, &v141, &qword_1008E51F0);
        if (*(&v142 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_84;
          }

          v75 = v134;
          sub_100392B10(v134, a3, v135, v136, v137, v138, *&v132, *(&v132 + 1), *&v133, *(&v133 + 1));

LABEL_73:

          goto LABEL_84;
        }

        v101 = &qword_1008E51F0;
      }

      else
      {
        sub_10001B104(v114, v139, &qword_1008E51F0);
        if (v140)
        {
          if (swift_dynamicCast())
          {
            if (*(&v142 + 1))
            {
              v133 = v142;
              v132 = v141;
              v89 = v143;
              v134 = v143;
              v90 = *(&v142 + 1);
              v91 = sub_1000066AC(&v132, *(&v142 + 1));
              sub_10039DBCC(v91, v33, v90, v89);

              sub_1002FB468(&v132);
              return sub_100005A40(&v144);
            }
          }

          else
          {
            v143 = 0;
            v142 = 0u;
            v141 = 0u;
          }
        }

        else
        {

          sub_10000EA04(v139, &qword_1008E51F0);
          v141 = 0u;
          v142 = 0u;
          v143 = 0;
        }

        v101 = &unk_1008EECA0;
      }

      sub_10000EA04(&v141, v101);
      return sub_100005A40(&v144);
    }

    if (!(v56 | v57))
    {

      goto LABEL_84;
    }

    if (qword_1008DA938 != -1)
    {
      swift_once();
    }

    v93 = qword_100925688;
    swift_getKeyPath();
    *&v132 = v93;
    sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v93 + 16))
    {
      [v33 showLoad];
      goto LABEL_84;
    }

    v95 = v112;
    *v112 = ASFriendListDisplayMode.id.getter;
    v95[1] = 0;
    v95[2] = 0;
    v95[3] = 0;
    *&v141 = _swiftEmptyArrayStorage;
    sub_100140278(&qword_1008DDD40);
    State.init(wrappedValue:)();
    v96 = *(&v132 + 1);
    v95[4] = v132;
    v95[5] = v96;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v97 = *(&v132 + 1);
    *(v95 + 48) = v132;
    v95[7] = v97;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v98 = *(&v132 + 1);
    *(v95 + 64) = v132;
    v95[9] = v98;
    v99 = *(v111 + 36);
    *(v95 + v99) = swift_getKeyPath();
    sub_100140278(&qword_1008EE800);
    swift_storeEnumTagMultiPayload();
    v100 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
    v75 = UIHostingController.init(rootView:)();
    [v33 presentViewController:v75 animated:1 completion:0];
    goto LABEL_73;
  }

  v34 = *(a3 + v28);
  if (!v34)
  {
    goto LABEL_84;
  }

  v35 = Card;
  v36 = v146;
  sub_1000066AC(&v144, Card);
  v37 = v36[2];
  v38 = v34;
  v39 = v37(v35, v36);
  if (v41 != 3 || v39 | v40)
  {
    sub_10001D4F8(v39, v40, v41);
    v42 = Card;
    v43 = v146;
    v44 = sub_1000066AC(&v144, Card);
    sub_100475448(v44, v38, v42, v43);
  }

  return sub_100005A40(&v144);
}

uint64_t sub_1004A2E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v9 - 8);
  v128 = &v109 - v10;
  v127 = type metadata accessor for TrendListMetric();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v12 - 8);
  v130 = &v109 - v13;
  v131 = type metadata accessor for TrendsActionContext(0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v16 - 8);
  v119 = &v109 - v17;
  v118 = type metadata accessor for CatalogTipSection();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v19 - 8);
  v124 = &v109 - v20;
  v123 = type metadata accessor for CatalogTipCard();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v22 - 8);
  v122 = &v109 - v23;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v120 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for FriendsHighlightCard();
  v146 = &off_10085B970;
  v27 = sub_100005994(&v144);
  sub_1004A9424(a1, v27, type metadata accessor for FriendsHighlightCard);
  v28 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v29 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v29)
  {
    return sub_100005A40(&v144);
  }

  v114 = a2;
  v113 = v15;
  v111 = OnboardingNavigationView;
  v112 = v8;
  v30 = v145;
  v31 = v146;
  sub_1000066AC(&v144, v145);
  v32 = v31[4];
  v33 = v29;
  if ((v32(v30, v31) & 1) == 0)
  {
    v45 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(a3 + v45, &v132, &qword_1008EE7A8);
    v110 = v33;
    if (*(&v133 + 1))
    {
      sub_100007C5C(&v132, &v141);
      sub_10000EA04(&v132, &qword_1008EE7A8);
      v46 = sub_1000066AC(&v141, *(&v142 + 1));
      v109 = &v109;
      v47 = *(*v46 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v46);
      *(&v109 - 2) = &v144;

      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = 0;
        v50 = (v47 + 32);
        do
        {
          v51 = sub_1004A9490(v50);
          if (v51)
          {
            break;
          }

          ++v49;
          v50 += 5;
        }

        while (v48 != v49);
        v52 = v51 ^ 1;
      }

      else
      {
        v52 = 1;
      }

      v53 = v52 & 1;

      sub_100005A40(&v141);
      if ((v53 & 1) == 0)
      {
        sub_100637300(&v144);
      }
    }

    else
    {
      sub_10000EA04(&v132, &qword_1008EE7A8);
    }

    v54 = v145;
    v55 = v146;
    sub_1000066AC(&v144, v145);
    v56 = (v55[2])(v54, v55);
    v59 = v114;
    if (v58 <= 1u)
    {
      if (!v58)
      {
        v60 = v145;
        v61 = v146;
        v62 = v56;
        sub_1000066AC(&v144, v145);
        v63 = (v61[2])(v60, v61);
        v65 = v64;
        LOBYTE(v61) = v66;
        v67 = sub_1000490C8(v63, v64, v66);
        sub_10001D4F8(v63, v65, v61);
        v68 = v110;
        sub_100390768(v62, v67, 1, 0, 256);

        return sub_100005A40(&v144);
      }

      sub_10001D4F8(v56, v57, 1);
      v33 = v110;
LABEL_26:
      sub_10001B104(v59, &v132, &qword_1008E51F0);
      if (*(&v133 + 1))
      {
        if (swift_dynamicCast())
        {
          v74 = v141;

          sub_100315688(v74, 1);

          return sub_100005A40(&v144);
        }

        goto LABEL_84;
      }

      goto LABEL_43;
    }

    v33 = v110;
    v69 = v113;
    if (v58 == 2)
    {
      goto LABEL_22;
    }

    if (v56 > 4)
    {
      if (v56 <= 6)
      {
        if (v56 ^ 5 | v57)
        {
          goto LABEL_84;
        }

        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          v70 = v122;
          v85 = swift_dynamicCast();
          v86 = v120;
          (*(v120 + 56))(v70, v85 ^ 1u, 1, CardActionContext);
          if ((*(v86 + 48))(v70, 1, CardActionContext) != 1)
          {
            sub_10002B9C4(v70, v26, type metadata accessor for FitnessPlusUpNextCardActionContext);
            sub_100399214(v26, &v26[*(CardActionContext + 20)]);
            v102 = CatalogLockup.identifier.getter();
            v104 = v103;
            v105 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
            sub_1005D1938(v102, v104);

            v83 = type metadata accessor for FitnessPlusUpNextCardActionContext;
            v84 = v26;
            goto LABEL_83;
          }
        }

        else
        {

          sub_10000EA04(&v132, &qword_1008E51F0);
          v70 = v122;
          (*(v120 + 56))(v122, 1, 1, CardActionContext);
        }

        v78 = &qword_1008EEC98;
        goto LABEL_46;
      }

      if (!(v56 ^ 7 | v57))
      {
        sub_100007C5C(&v144, &v132);
        sub_100140278(&unk_1008EE6B0);
        v70 = v124;
        v92 = v123;
        if ((swift_dynamicCast() & 1) == 0)
        {

          (*(v121 + 56))(v70, 1, 1, v92);
          v78 = &qword_1008DCF90;
          goto LABEL_46;
        }

        (*(v121 + 56))(v70, 0, 1, v92);
        v69 = v116;
        sub_10002B9C4(v70, v116, type metadata accessor for CatalogTipCard);
        v70 = v119;
        sub_10001B104(v69 + *(v92 + 36), v119, &qword_1008E4E80);
        if ((*(v117 + 48))(v70, 1, v118) == 1)
        {
          sub_1004A8D4C(v69, type metadata accessor for CatalogTipCard);

          v78 = &qword_1008E4E80;
          goto LABEL_46;
        }

        v107 = v70;
        v108 = v115;
        sub_10002B9C4(v107, v115, type metadata accessor for CatalogTipSection);
        sub_10039B4C4(v108);
        sub_100399D60(v108);

        sub_1004A8D4C(v108, type metadata accessor for CatalogTipSection);
        v94 = type metadata accessor for CatalogTipCard;
        goto LABEL_70;
      }

      if (v56 ^ 8 | v57)
      {
        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          type metadata accessor for QuickStartWorkoutActionContext();
          if (swift_dynamicCast())
          {
            v76 = v141;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong handleQuickStartWorkoutActionContext:v76];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return sub_100005A40(&v144);
          }

LABEL_84:

          return sub_100005A40(&v144);
        }

LABEL_43:

        sub_10000EA04(&v132, &qword_1008E51F0);
        return sub_100005A40(&v144);
      }

LABEL_22:
      sub_10001B104(v114, &v132, &qword_1008E51F0);
      if (!*(&v133 + 1))
      {

        sub_10000EA04(&v132, &qword_1008E51F0);
        v70 = v130;
        (*(v129 + 56))(v130, 1, 1, v131);
        goto LABEL_45;
      }

      v70 = v130;
      v71 = v131;
      v72 = swift_dynamicCast();
      v73 = v129;
      (*(v129 + 56))(v70, v72 ^ 1u, 1, v71);
      if ((*(v73 + 48))(v70, 1, v71) == 1)
      {

LABEL_45:
        v78 = &qword_1008EEC90;
LABEL_46:
        sub_10000EA04(v70, v78);
        return sub_100005A40(&v144);
      }

      sub_10002B9C4(v70, v69, type metadata accessor for TrendsActionContext);
      v79 = v128;
      sub_10001B104(v69, v128, &qword_1008E3D18);
      if ((*(v126 + 48))(v79, 1, v127) == 1)
      {
        sub_10000EA04(v79, &qword_1008E3D18);
        if (*(v69 + *(v71 + 20) + 8) != 255)
        {
          v80 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
          v81 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
          v82 = sub_1001C083C(v80);
          [v33 presentViewController:v82 animated:1 completion:0];

          v83 = type metadata accessor for TrendsActionContext;
          v84 = v69;
LABEL_83:
          sub_1004A8D4C(v84, v83);
          goto LABEL_84;
        }
      }

      else
      {
        v87 = v79;
        v88 = v125;
        sub_10002B9C4(v87, v125, type metadata accessor for TrendListMetric);
        sub_10039C45C(v88);

        sub_1004A8D4C(v88, type metadata accessor for TrendListMetric);
      }

      v94 = type metadata accessor for TrendsActionContext;
LABEL_70:
      sub_1004A8D4C(v69, v94);
      return sub_100005A40(&v144);
    }

    if (v56 > 1)
    {
      if (v56 ^ 2 | v57)
      {
        if (v56 ^ 3 | v57)
        {
          goto LABEL_26;
        }

        sub_10001B104(v114, &v141, &qword_1008E51F0);
        if (*(&v142 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_84;
          }

          v75 = v134;
          sub_100392B10(v134, a3, v135, v136, v137, v138, *&v132, *(&v132 + 1), *&v133, *(&v133 + 1));

LABEL_73:

          goto LABEL_84;
        }

        v101 = &qword_1008E51F0;
      }

      else
      {
        sub_10001B104(v114, v139, &qword_1008E51F0);
        if (v140)
        {
          if (swift_dynamicCast())
          {
            if (*(&v142 + 1))
            {
              v133 = v142;
              v132 = v141;
              v89 = v143;
              v134 = v143;
              v90 = *(&v142 + 1);
              v91 = sub_1000066AC(&v132, *(&v142 + 1));
              sub_10039DBCC(v91, v33, v90, v89);

              sub_1002FB468(&v132);
              return sub_100005A40(&v144);
            }
          }

          else
          {
            v143 = 0;
            v142 = 0u;
            v141 = 0u;
          }
        }

        else
        {

          sub_10000EA04(v139, &qword_1008E51F0);
          v141 = 0u;
          v142 = 0u;
          v143 = 0;
        }

        v101 = &unk_1008EECA0;
      }

      sub_10000EA04(&v141, v101);
      return sub_100005A40(&v144);
    }

    if (!(v56 | v57))
    {

      goto LABEL_84;
    }

    if (qword_1008DA938 != -1)
    {
      swift_once();
    }

    v93 = qword_100925688;
    swift_getKeyPath();
    *&v132 = v93;
    sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v93 + 16))
    {
      [v33 showLoad];
      goto LABEL_84;
    }

    v95 = v112;
    *v112 = ASFriendListDisplayMode.id.getter;
    v95[1] = 0;
    v95[2] = 0;
    v95[3] = 0;
    *&v141 = _swiftEmptyArrayStorage;
    sub_100140278(&qword_1008DDD40);
    State.init(wrappedValue:)();
    v96 = *(&v132 + 1);
    v95[4] = v132;
    v95[5] = v96;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v97 = *(&v132 + 1);
    *(v95 + 48) = v132;
    v95[7] = v97;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v98 = *(&v132 + 1);
    *(v95 + 64) = v132;
    v95[9] = v98;
    v99 = *(v111 + 36);
    *(v95 + v99) = swift_getKeyPath();
    sub_100140278(&qword_1008EE800);
    swift_storeEnumTagMultiPayload();
    v100 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
    v75 = UIHostingController.init(rootView:)();
    [v33 presentViewController:v75 animated:1 completion:0];
    goto LABEL_73;
  }

  v34 = *(a3 + v28);
  if (!v34)
  {
    goto LABEL_84;
  }

  v35 = v145;
  v36 = v146;
  sub_1000066AC(&v144, v145);
  v37 = v36[2];
  v38 = v34;
  v39 = v37(v35, v36);
  if (v41 != 3 || v39 | v40)
  {
    sub_10001D4F8(v39, v40, v41);
    v42 = v145;
    v43 = v146;
    v44 = sub_1000066AC(&v144, v145);
    sub_100475448(v44, v38, v42, v43);
  }

  return sub_100005A40(&v144);
}

uint64_t sub_1004A4304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v9 - 8);
  v128 = &v109 - v10;
  v127 = type metadata accessor for TrendListMetric();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v12 - 8);
  v130 = &v109 - v13;
  v131 = type metadata accessor for TrendsActionContext(0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v16 - 8);
  v119 = &v109 - v17;
  v118 = type metadata accessor for CatalogTipSection();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v19 - 8);
  v124 = &v109 - v20;
  v123 = type metadata accessor for CatalogTipCard();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v22 - 8);
  v122 = &v109 - v23;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v120 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  Card = type metadata accessor for LoadCard();
  v146 = &off_100861A08;
  v27 = sub_100005994(&v144);
  sub_1004A9424(a1, v27, type metadata accessor for LoadCard);
  v28 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v29 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v29)
  {
    return sub_100005A40(&v144);
  }

  v114 = a2;
  v113 = v15;
  v111 = OnboardingNavigationView;
  v112 = v8;
  v30 = Card;
  v31 = v146;
  sub_1000066AC(&v144, Card);
  v32 = v31[4];
  v33 = v29;
  if ((v32(v30, v31) & 1) == 0)
  {
    v45 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(a3 + v45, &v132, &qword_1008EE7A8);
    v110 = v33;
    if (*(&v133 + 1))
    {
      sub_100007C5C(&v132, &v141);
      sub_10000EA04(&v132, &qword_1008EE7A8);
      v46 = sub_1000066AC(&v141, *(&v142 + 1));
      v109 = &v109;
      v47 = *(*v46 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v46);
      *(&v109 - 2) = &v144;

      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = 0;
        v50 = (v47 + 32);
        do
        {
          v51 = sub_1004A9490(v50);
          if (v51)
          {
            break;
          }

          ++v49;
          v50 += 5;
        }

        while (v48 != v49);
        v52 = v51 ^ 1;
      }

      else
      {
        v52 = 1;
      }

      v53 = v52 & 1;

      sub_100005A40(&v141);
      if ((v53 & 1) == 0)
      {
        sub_100637300(&v144);
      }
    }

    else
    {
      sub_10000EA04(&v132, &qword_1008EE7A8);
    }

    v54 = Card;
    v55 = v146;
    sub_1000066AC(&v144, Card);
    v56 = (v55[2])(v54, v55);
    v59 = v114;
    if (v58 <= 1u)
    {
      if (!v58)
      {
        v60 = Card;
        v61 = v146;
        v62 = v56;
        sub_1000066AC(&v144, Card);
        v63 = (v61[2])(v60, v61);
        v65 = v64;
        LOBYTE(v61) = v66;
        v67 = sub_1000490C8(v63, v64, v66);
        sub_10001D4F8(v63, v65, v61);
        v68 = v110;
        sub_100390768(v62, v67, 1, 0, 256);

        return sub_100005A40(&v144);
      }

      sub_10001D4F8(v56, v57, 1);
      v33 = v110;
LABEL_26:
      sub_10001B104(v59, &v132, &qword_1008E51F0);
      if (*(&v133 + 1))
      {
        if (swift_dynamicCast())
        {
          v74 = v141;

          sub_100315688(v74, 1);

          return sub_100005A40(&v144);
        }

        goto LABEL_84;
      }

      goto LABEL_43;
    }

    v33 = v110;
    v69 = v113;
    if (v58 == 2)
    {
      goto LABEL_22;
    }

    if (v56 > 4)
    {
      if (v56 <= 6)
      {
        if (v56 ^ 5 | v57)
        {
          goto LABEL_84;
        }

        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          v70 = v122;
          v85 = swift_dynamicCast();
          v86 = v120;
          (*(v120 + 56))(v70, v85 ^ 1u, 1, CardActionContext);
          if ((*(v86 + 48))(v70, 1, CardActionContext) != 1)
          {
            sub_10002B9C4(v70, v26, type metadata accessor for FitnessPlusUpNextCardActionContext);
            sub_100399214(v26, &v26[*(CardActionContext + 20)]);
            v102 = CatalogLockup.identifier.getter();
            v104 = v103;
            v105 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
            sub_1005D1938(v102, v104);

            v83 = type metadata accessor for FitnessPlusUpNextCardActionContext;
            v84 = v26;
            goto LABEL_83;
          }
        }

        else
        {

          sub_10000EA04(&v132, &qword_1008E51F0);
          v70 = v122;
          (*(v120 + 56))(v122, 1, 1, CardActionContext);
        }

        v78 = &qword_1008EEC98;
        goto LABEL_46;
      }

      if (!(v56 ^ 7 | v57))
      {
        sub_100007C5C(&v144, &v132);
        sub_100140278(&unk_1008EE6B0);
        v70 = v124;
        v92 = v123;
        if ((swift_dynamicCast() & 1) == 0)
        {

          (*(v121 + 56))(v70, 1, 1, v92);
          v78 = &qword_1008DCF90;
          goto LABEL_46;
        }

        (*(v121 + 56))(v70, 0, 1, v92);
        v69 = v116;
        sub_10002B9C4(v70, v116, type metadata accessor for CatalogTipCard);
        v70 = v119;
        sub_10001B104(v69 + *(v92 + 36), v119, &qword_1008E4E80);
        if ((*(v117 + 48))(v70, 1, v118) == 1)
        {
          sub_1004A8D4C(v69, type metadata accessor for CatalogTipCard);

          v78 = &qword_1008E4E80;
          goto LABEL_46;
        }

        v107 = v70;
        v108 = v115;
        sub_10002B9C4(v107, v115, type metadata accessor for CatalogTipSection);
        sub_10039B4C4(v108);
        sub_100399D60(v108);

        sub_1004A8D4C(v108, type metadata accessor for CatalogTipSection);
        v94 = type metadata accessor for CatalogTipCard;
        goto LABEL_70;
      }

      if (v56 ^ 8 | v57)
      {
        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          type metadata accessor for QuickStartWorkoutActionContext();
          if (swift_dynamicCast())
          {
            v76 = v141;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong handleQuickStartWorkoutActionContext:v76];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return sub_100005A40(&v144);
          }

LABEL_84:

          return sub_100005A40(&v144);
        }

LABEL_43:

        sub_10000EA04(&v132, &qword_1008E51F0);
        return sub_100005A40(&v144);
      }

LABEL_22:
      sub_10001B104(v114, &v132, &qword_1008E51F0);
      if (!*(&v133 + 1))
      {

        sub_10000EA04(&v132, &qword_1008E51F0);
        v70 = v130;
        (*(v129 + 56))(v130, 1, 1, v131);
        goto LABEL_45;
      }

      v70 = v130;
      v71 = v131;
      v72 = swift_dynamicCast();
      v73 = v129;
      (*(v129 + 56))(v70, v72 ^ 1u, 1, v71);
      if ((*(v73 + 48))(v70, 1, v71) == 1)
      {

LABEL_45:
        v78 = &qword_1008EEC90;
LABEL_46:
        sub_10000EA04(v70, v78);
        return sub_100005A40(&v144);
      }

      sub_10002B9C4(v70, v69, type metadata accessor for TrendsActionContext);
      v79 = v128;
      sub_10001B104(v69, v128, &qword_1008E3D18);
      if ((*(v126 + 48))(v79, 1, v127) == 1)
      {
        sub_10000EA04(v79, &qword_1008E3D18);
        if (*(v69 + *(v71 + 20) + 8) != 255)
        {
          v80 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
          v81 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
          v82 = sub_1001C083C(v80);
          [v33 presentViewController:v82 animated:1 completion:0];

          v83 = type metadata accessor for TrendsActionContext;
          v84 = v69;
LABEL_83:
          sub_1004A8D4C(v84, v83);
          goto LABEL_84;
        }
      }

      else
      {
        v87 = v79;
        v88 = v125;
        sub_10002B9C4(v87, v125, type metadata accessor for TrendListMetric);
        sub_10039C45C(v88);

        sub_1004A8D4C(v88, type metadata accessor for TrendListMetric);
      }

      v94 = type metadata accessor for TrendsActionContext;
LABEL_70:
      sub_1004A8D4C(v69, v94);
      return sub_100005A40(&v144);
    }

    if (v56 > 1)
    {
      if (v56 ^ 2 | v57)
      {
        if (v56 ^ 3 | v57)
        {
          goto LABEL_26;
        }

        sub_10001B104(v114, &v141, &qword_1008E51F0);
        if (*(&v142 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_84;
          }

          v75 = v134;
          sub_100392B10(v134, a3, v135, v136, v137, v138, *&v132, *(&v132 + 1), *&v133, *(&v133 + 1));

LABEL_73:

          goto LABEL_84;
        }

        v101 = &qword_1008E51F0;
      }

      else
      {
        sub_10001B104(v114, v139, &qword_1008E51F0);
        if (v140)
        {
          if (swift_dynamicCast())
          {
            if (*(&v142 + 1))
            {
              v133 = v142;
              v132 = v141;
              v89 = v143;
              v134 = v143;
              v90 = *(&v142 + 1);
              v91 = sub_1000066AC(&v132, *(&v142 + 1));
              sub_10039DBCC(v91, v33, v90, v89);

              sub_1002FB468(&v132);
              return sub_100005A40(&v144);
            }
          }

          else
          {
            v143 = 0;
            v142 = 0u;
            v141 = 0u;
          }
        }

        else
        {

          sub_10000EA04(v139, &qword_1008E51F0);
          v141 = 0u;
          v142 = 0u;
          v143 = 0;
        }

        v101 = &unk_1008EECA0;
      }

      sub_10000EA04(&v141, v101);
      return sub_100005A40(&v144);
    }

    if (!(v56 | v57))
    {

      goto LABEL_84;
    }

    if (qword_1008DA938 != -1)
    {
      swift_once();
    }

    v93 = qword_100925688;
    swift_getKeyPath();
    *&v132 = v93;
    sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v93 + 16))
    {
      [v33 showLoad];
      goto LABEL_84;
    }

    v95 = v112;
    *v112 = ASFriendListDisplayMode.id.getter;
    v95[1] = 0;
    v95[2] = 0;
    v95[3] = 0;
    *&v141 = _swiftEmptyArrayStorage;
    sub_100140278(&qword_1008DDD40);
    State.init(wrappedValue:)();
    v96 = *(&v132 + 1);
    v95[4] = v132;
    v95[5] = v96;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v97 = *(&v132 + 1);
    *(v95 + 48) = v132;
    v95[7] = v97;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v98 = *(&v132 + 1);
    *(v95 + 64) = v132;
    v95[9] = v98;
    v99 = *(v111 + 36);
    *(v95 + v99) = swift_getKeyPath();
    sub_100140278(&qword_1008EE800);
    swift_storeEnumTagMultiPayload();
    v100 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
    v75 = UIHostingController.init(rootView:)();
    [v33 presentViewController:v75 animated:1 completion:0];
    goto LABEL_73;
  }

  v34 = *(a3 + v28);
  if (!v34)
  {
    goto LABEL_84;
  }

  v35 = Card;
  v36 = v146;
  sub_1000066AC(&v144, Card);
  v37 = v36[2];
  v38 = v34;
  v39 = v37(v35, v36);
  if (v41 != 3 || v39 | v40)
  {
    sub_10001D4F8(v39, v40, v41);
    v42 = Card;
    v43 = v146;
    v44 = sub_1000066AC(&v144, Card);
    sub_100475448(v44, v38, v42, v43);
  }

  return sub_100005A40(&v144);
}

uint64_t sub_1004A57AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v9 - 8);
  v128 = &v109 - v10;
  v127 = type metadata accessor for TrendListMetric();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v12 - 8);
  v130 = &v109 - v13;
  v131 = type metadata accessor for TrendsActionContext(0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v16 - 8);
  v119 = &v109 - v17;
  v118 = type metadata accessor for CatalogTipSection();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v19 - 8);
  v124 = &v109 - v20;
  v123 = type metadata accessor for CatalogTipCard();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v116 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v22 - 8);
  v122 = &v109 - v23;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v120 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for TrendsCard();
  v146 = &off_100860780;
  v27 = sub_100005994(&v144);
  sub_1004A9424(a1, v27, type metadata accessor for TrendsCard);
  v28 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v29 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v29)
  {
    return sub_100005A40(&v144);
  }

  v114 = a2;
  v113 = v15;
  v111 = OnboardingNavigationView;
  v112 = v8;
  v30 = v145;
  v31 = v146;
  sub_1000066AC(&v144, v145);
  v32 = v31[4];
  v33 = v29;
  if ((v32(v30, v31) & 1) == 0)
  {
    v45 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(a3 + v45, &v132, &qword_1008EE7A8);
    v110 = v33;
    if (*(&v133 + 1))
    {
      sub_100007C5C(&v132, &v141);
      sub_10000EA04(&v132, &qword_1008EE7A8);
      v46 = sub_1000066AC(&v141, *(&v142 + 1));
      v109 = &v109;
      v47 = *(*v46 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v46);
      *(&v109 - 2) = &v144;

      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = 0;
        v50 = (v47 + 32);
        do
        {
          v51 = sub_1004A9490(v50);
          if (v51)
          {
            break;
          }

          ++v49;
          v50 += 5;
        }

        while (v48 != v49);
        v52 = v51 ^ 1;
      }

      else
      {
        v52 = 1;
      }

      v53 = v52 & 1;

      sub_100005A40(&v141);
      if ((v53 & 1) == 0)
      {
        sub_100637300(&v144);
      }
    }

    else
    {
      sub_10000EA04(&v132, &qword_1008EE7A8);
    }

    v54 = v145;
    v55 = v146;
    sub_1000066AC(&v144, v145);
    v56 = (v55[2])(v54, v55);
    v59 = v114;
    if (v58 <= 1u)
    {
      if (!v58)
      {
        v60 = v145;
        v61 = v146;
        v62 = v56;
        sub_1000066AC(&v144, v145);
        v63 = (v61[2])(v60, v61);
        v65 = v64;
        LOBYTE(v61) = v66;
        v67 = sub_1000490C8(v63, v64, v66);
        sub_10001D4F8(v63, v65, v61);
        v68 = v110;
        sub_100390768(v62, v67, 1, 0, 256);

        return sub_100005A40(&v144);
      }

      sub_10001D4F8(v56, v57, 1);
      v33 = v110;
LABEL_26:
      sub_10001B104(v59, &v132, &qword_1008E51F0);
      if (*(&v133 + 1))
      {
        if (swift_dynamicCast())
        {
          v74 = v141;

          sub_100315688(v74, 1);

          return sub_100005A40(&v144);
        }

        goto LABEL_84;
      }

      goto LABEL_43;
    }

    v33 = v110;
    v69 = v113;
    if (v58 == 2)
    {
      goto LABEL_22;
    }

    if (v56 > 4)
    {
      if (v56 <= 6)
      {
        if (v56 ^ 5 | v57)
        {
          goto LABEL_84;
        }

        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          v70 = v122;
          v85 = swift_dynamicCast();
          v86 = v120;
          (*(v120 + 56))(v70, v85 ^ 1u, 1, CardActionContext);
          if ((*(v86 + 48))(v70, 1, CardActionContext) != 1)
          {
            sub_10002B9C4(v70, v26, type metadata accessor for FitnessPlusUpNextCardActionContext);
            sub_100399214(v26, &v26[*(CardActionContext + 20)]);
            v102 = CatalogLockup.identifier.getter();
            v104 = v103;
            v105 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
            sub_1005D1938(v102, v104);

            v83 = type metadata accessor for FitnessPlusUpNextCardActionContext;
            v84 = v26;
            goto LABEL_83;
          }
        }

        else
        {

          sub_10000EA04(&v132, &qword_1008E51F0);
          v70 = v122;
          (*(v120 + 56))(v122, 1, 1, CardActionContext);
        }

        v78 = &qword_1008EEC98;
        goto LABEL_46;
      }

      if (!(v56 ^ 7 | v57))
      {
        sub_100007C5C(&v144, &v132);
        sub_100140278(&unk_1008EE6B0);
        v70 = v124;
        v92 = v123;
        if ((swift_dynamicCast() & 1) == 0)
        {

          (*(v121 + 56))(v70, 1, 1, v92);
          v78 = &qword_1008DCF90;
          goto LABEL_46;
        }

        (*(v121 + 56))(v70, 0, 1, v92);
        v69 = v116;
        sub_10002B9C4(v70, v116, type metadata accessor for CatalogTipCard);
        v70 = v119;
        sub_10001B104(v69 + *(v92 + 36), v119, &qword_1008E4E80);
        if ((*(v117 + 48))(v70, 1, v118) == 1)
        {
          sub_1004A8D4C(v69, type metadata accessor for CatalogTipCard);

          v78 = &qword_1008E4E80;
          goto LABEL_46;
        }

        v107 = v70;
        v108 = v115;
        sub_10002B9C4(v107, v115, type metadata accessor for CatalogTipSection);
        sub_10039B4C4(v108);
        sub_100399D60(v108);

        sub_1004A8D4C(v108, type metadata accessor for CatalogTipSection);
        v94 = type metadata accessor for CatalogTipCard;
        goto LABEL_70;
      }

      if (v56 ^ 8 | v57)
      {
        sub_10001B104(v114, &v132, &qword_1008E51F0);
        if (*(&v133 + 1))
        {
          type metadata accessor for QuickStartWorkoutActionContext();
          if (swift_dynamicCast())
          {
            v76 = v141;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong handleQuickStartWorkoutActionContext:v76];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return sub_100005A40(&v144);
          }

LABEL_84:

          return sub_100005A40(&v144);
        }

LABEL_43:

        sub_10000EA04(&v132, &qword_1008E51F0);
        return sub_100005A40(&v144);
      }

LABEL_22:
      sub_10001B104(v114, &v132, &qword_1008E51F0);
      if (!*(&v133 + 1))
      {

        sub_10000EA04(&v132, &qword_1008E51F0);
        v70 = v130;
        (*(v129 + 56))(v130, 1, 1, v131);
        goto LABEL_45;
      }

      v70 = v130;
      v71 = v131;
      v72 = swift_dynamicCast();
      v73 = v129;
      (*(v129 + 56))(v70, v72 ^ 1u, 1, v71);
      if ((*(v73 + 48))(v70, 1, v71) == 1)
      {

LABEL_45:
        v78 = &qword_1008EEC90;
LABEL_46:
        sub_10000EA04(v70, v78);
        return sub_100005A40(&v144);
      }

      sub_10002B9C4(v70, v69, type metadata accessor for TrendsActionContext);
      v79 = v128;
      sub_10001B104(v69, v128, &qword_1008E3D18);
      if ((*(v126 + 48))(v79, 1, v127) == 1)
      {
        sub_10000EA04(v79, &qword_1008E3D18);
        if (*(v69 + *(v71 + 20) + 8) != 255)
        {
          v80 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
          v81 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
          v82 = sub_1001C083C(v80);
          [v33 presentViewController:v82 animated:1 completion:0];

          v83 = type metadata accessor for TrendsActionContext;
          v84 = v69;
LABEL_83:
          sub_1004A8D4C(v84, v83);
          goto LABEL_84;
        }
      }

      else
      {
        v87 = v79;
        v88 = v125;
        sub_10002B9C4(v87, v125, type metadata accessor for TrendListMetric);
        sub_10039C45C(v88);

        sub_1004A8D4C(v88, type metadata accessor for TrendListMetric);
      }

      v94 = type metadata accessor for TrendsActionContext;
LABEL_70:
      sub_1004A8D4C(v69, v94);
      return sub_100005A40(&v144);
    }

    if (v56 > 1)
    {
      if (v56 ^ 2 | v57)
      {
        if (v56 ^ 3 | v57)
        {
          goto LABEL_26;
        }

        sub_10001B104(v114, &v141, &qword_1008E51F0);
        if (*(&v142 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_84;
          }

          v75 = v134;
          sub_100392B10(v134, a3, v135, v136, v137, v138, *&v132, *(&v132 + 1), *&v133, *(&v133 + 1));

LABEL_73:

          goto LABEL_84;
        }

        v101 = &qword_1008E51F0;
      }

      else
      {
        sub_10001B104(v114, v139, &qword_1008E51F0);
        if (v140)
        {
          if (swift_dynamicCast())
          {
            if (*(&v142 + 1))
            {
              v133 = v142;
              v132 = v141;
              v89 = v143;
              v134 = v143;
              v90 = *(&v142 + 1);
              v91 = sub_1000066AC(&v132, *(&v142 + 1));
              sub_10039DBCC(v91, v33, v90, v89);

              sub_1002FB468(&v132);
              return sub_100005A40(&v144);
            }
          }

          else
          {
            v143 = 0;
            v142 = 0u;
            v141 = 0u;
          }
        }

        else
        {

          sub_10000EA04(v139, &qword_1008E51F0);
          v141 = 0u;
          v142 = 0u;
          v143 = 0;
        }

        v101 = &unk_1008EECA0;
      }

      sub_10000EA04(&v141, v101);
      return sub_100005A40(&v144);
    }

    if (!(v56 | v57))
    {

      goto LABEL_84;
    }

    if (qword_1008DA938 != -1)
    {
      swift_once();
    }

    v93 = qword_100925688;
    swift_getKeyPath();
    *&v132 = v93;
    sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v93 + 16))
    {
      [v33 showLoad];
      goto LABEL_84;
    }

    v95 = v112;
    *v112 = ASFriendListDisplayMode.id.getter;
    v95[1] = 0;
    v95[2] = 0;
    v95[3] = 0;
    *&v141 = _swiftEmptyArrayStorage;
    sub_100140278(&qword_1008DDD40);
    State.init(wrappedValue:)();
    v96 = *(&v132 + 1);
    v95[4] = v132;
    v95[5] = v96;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v97 = *(&v132 + 1);
    *(v95 + 48) = v132;
    v95[7] = v97;
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v98 = *(&v132 + 1);
    *(v95 + 64) = v132;
    v95[9] = v98;
    v99 = *(v111 + 36);
    *(v95 + v99) = swift_getKeyPath();
    sub_100140278(&qword_1008EE800);
    swift_storeEnumTagMultiPayload();
    v100 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
    v75 = UIHostingController.init(rootView:)();
    [v33 presentViewController:v75 animated:1 completion:0];
    goto LABEL_73;
  }

  v34 = *(a3 + v28);
  if (!v34)
  {
    goto LABEL_84;
  }

  v35 = v145;
  v36 = v146;
  sub_1000066AC(&v144, v145);
  v37 = v36[2];
  v38 = v34;
  v39 = v37(v35, v36);
  if (v41 != 3 || v39 | v40)
  {
    sub_10001D4F8(v39, v40, v41);
    v42 = v145;
    v43 = v146;
    v44 = sub_1000066AC(&v144, v145);
    sub_100475448(v44, v38, v42, v43);
  }

  return sub_100005A40(&v144);
}

uint64_t sub_1004A6C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v9 - 8);
  v130 = &v111 - v10;
  v129 = type metadata accessor for TrendListMetric();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v12 - 8);
  v132 = &v111 - v13;
  v133 = type metadata accessor for TrendsActionContext(0);
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v16 - 8);
  v122 = &v111 - v17;
  v121 = type metadata accessor for CatalogTipSection();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v19 - 8);
  v126 = &v111 - v20;
  v21 = type metadata accessor for CatalogTipCard();
  v124 = *(v21 - 8);
  __chkstk_darwin(v21);
  v119 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v23 - 8);
  v125 = &v111 - v24;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v123 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v118 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v21;
  v148 = &off_1008520B0;
  v27 = sub_100005994(&v146);
  sub_1004A9424(a1, v27, type metadata accessor for CatalogTipCard);
  v28 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v29 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v29)
  {
    return sub_100005A40(&v146);
  }

  v116 = a2;
  v115 = v15;
  v113 = OnboardingNavigationView;
  v114 = v8;
  v30 = v147;
  v31 = v148;
  sub_1000066AC(&v146, v147);
  v32 = v31[4];
  v33 = v29;
  if ((v32(v30, v31) & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(a3 + v46, &v134, &qword_1008EE7A8);
    v112 = v33;
    if (*(&v135 + 1))
    {
      sub_100007C5C(&v134, &v143);
      sub_10000EA04(&v134, &qword_1008EE7A8);
      v47 = sub_1000066AC(&v143, *(&v144 + 1));
      v111 = &v111;
      v48 = *(*v47 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v47);
      *(&v111 - 2) = &v146;

      v49 = *(v48 + 16);
      if (v49)
      {
        v50 = 0;
        v51 = (v48 + 32);
        do
        {
          v52 = sub_1004A9490(v51);
          if (v52)
          {
            break;
          }

          ++v50;
          v51 += 5;
        }

        while (v49 != v50);
        v53 = v52 ^ 1;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53 & 1;

      sub_100005A40(&v143);
      if ((v54 & 1) == 0)
      {
        sub_100637300(&v146);
      }
    }

    else
    {
      sub_10000EA04(&v134, &qword_1008EE7A8);
    }

    v55 = v147;
    v56 = v148;
    sub_1000066AC(&v146, v147);
    v57 = (v56[2])(v55, v56);
    v60 = v116;
    if (v59 <= 1u)
    {
      if (!v59)
      {
        v61 = v147;
        v62 = v148;
        v63 = v57;
        sub_1000066AC(&v146, v147);
        v64 = (v62[2])(v61, v62);
        v66 = v65;
        LOBYTE(v62) = v67;
        v68 = sub_1000490C8(v64, v65, v67);
        sub_10001D4F8(v64, v66, v62);
        v69 = v112;
        sub_100390768(v63, v68, 1, 0, 256);

        return sub_100005A40(&v146);
      }

      sub_10001D4F8(v57, v58, 1);
      v33 = v112;
LABEL_26:
      sub_10001B104(v60, &v134, &qword_1008E51F0);
      if (*(&v135 + 1))
      {
        if (swift_dynamicCast())
        {
          v75 = v143;

          sub_100315688(v75, 1);

          return sub_100005A40(&v146);
        }

        goto LABEL_83;
      }

      goto LABEL_43;
    }

    v33 = v112;
    v70 = v115;
    if (v59 != 2)
    {
      if (v57 <= 4)
      {
        if (v57 <= 1)
        {
          if (v57 | v58)
          {
            if (qword_1008DA938 != -1)
            {
              swift_once();
            }

            v93 = qword_100925688;
            swift_getKeyPath();
            *&v134 = v93;
            sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if (*(v93 + 16))
            {
              [v33 showLoad];
            }

            else
            {
              v95 = v114;
              *v114 = ASFriendListDisplayMode.id.getter;
              v95[1] = 0;
              v95[2] = 0;
              v95[3] = 0;
              *&v143 = _swiftEmptyArrayStorage;
              sub_100140278(&qword_1008DDD40);
              State.init(wrappedValue:)();
              v96 = *(&v134 + 1);
              v95[4] = v134;
              v95[5] = v96;
              LOBYTE(v143) = 0;
              State.init(wrappedValue:)();
              v97 = *(&v134 + 1);
              *(v95 + 48) = v134;
              v95[7] = v97;
              LOBYTE(v143) = 0;
              State.init(wrappedValue:)();
              v98 = *(&v134 + 1);
              *(v95 + 64) = v134;
              v95[9] = v98;
              v99 = *(v113 + 36);
              *(v95 + v99) = swift_getKeyPath();
              sub_100140278(&qword_1008EE800);
              swift_storeEnumTagMultiPayload();
              v100 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
              v101 = UIHostingController.init(rootView:)();
              [v33 presentViewController:v101 animated:1 completion:0];
            }
          }

          else
          {
          }

          goto LABEL_83;
        }

        if (v57 ^ 2 | v58)
        {
          if (v57 ^ 3 | v58)
          {
            goto LABEL_26;
          }

          sub_10001B104(v116, &v143, &qword_1008E51F0);
          if (*(&v144 + 1))
          {
            if (swift_dynamicCast())
            {
              v76 = v136;
              sub_100392B10(v136, a3, v137, v138, v139, v140, *&v134, *(&v134 + 1), *&v135, *(&v135 + 1));

              return sub_100005A40(&v146);
            }

            goto LABEL_83;
          }

          v102 = &qword_1008E51F0;
        }

        else
        {
          sub_10001B104(v116, v141, &qword_1008E51F0);
          if (v142)
          {
            if (swift_dynamicCast())
            {
              if (*(&v144 + 1))
              {
                v135 = v144;
                v134 = v143;
                v90 = v145;
                v136 = v145;
                v91 = *(&v144 + 1);
                v92 = sub_1000066AC(&v134, *(&v144 + 1));
                sub_10039DBCC(v92, v33, v91, v90);

                sub_1002FB468(&v134);
                return sub_100005A40(&v146);
              }
            }

            else
            {
              v145 = 0;
              v144 = 0u;
              v143 = 0u;
            }
          }

          else
          {

            sub_10000EA04(v141, &qword_1008E51F0);
            v143 = 0u;
            v144 = 0u;
            v145 = 0;
          }

          v102 = &unk_1008EECA0;
        }

        sub_10000EA04(&v143, v102);
        return sub_100005A40(&v146);
      }

      if (v57 <= 6)
      {
        if (v57 ^ 5 | v58)
        {
          goto LABEL_83;
        }

        sub_10001B104(v116, &v134, &qword_1008E51F0);
        if (*(&v135 + 1))
        {
          v71 = v125;
          v86 = swift_dynamicCast();
          v87 = v123;
          (*(v123 + 56))(v71, v86 ^ 1u, 1, CardActionContext);
          if ((*(v87 + 48))(v71, 1, CardActionContext) != 1)
          {
            v103 = v118;
            sub_10002B9C4(v71, v118, type metadata accessor for FitnessPlusUpNextCardActionContext);
            sub_100399214(v103, v103 + *(CardActionContext + 20));
            v104 = CatalogLockup.identifier.getter();
            v106 = v105;
            v107 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
            sub_1005D1938(v104, v106);

            v84 = type metadata accessor for FitnessPlusUpNextCardActionContext;
            v85 = v103;
            goto LABEL_82;
          }
        }

        else
        {

          sub_10000EA04(&v134, &qword_1008E51F0);
          v71 = v125;
          (*(v123 + 56))(v125, 1, 1, CardActionContext);
        }

        v79 = &qword_1008EEC98;
        goto LABEL_46;
      }

      if (!(v57 ^ 7 | v58))
      {
        sub_100007C5C(&v146, &v134);
        sub_100140278(&unk_1008EE6B0);
        v71 = v126;
        if ((swift_dynamicCast() & 1) == 0)
        {

          (*(v124 + 56))(v71, 1, 1, v21);
          v79 = &qword_1008DCF90;
          goto LABEL_46;
        }

        (*(v124 + 56))(v71, 0, 1, v21);
        v70 = v119;
        sub_10002B9C4(v71, v119, type metadata accessor for CatalogTipCard);
        v71 = v122;
        sub_10001B104(v70 + *(v21 + 36), v122, &qword_1008E4E80);
        if ((*(v120 + 48))(v71, 1, v121) == 1)
        {
          sub_1004A8D4C(v70, type metadata accessor for CatalogTipCard);

          v79 = &qword_1008E4E80;
          goto LABEL_46;
        }

        v109 = v71;
        v110 = v117;
        sub_10002B9C4(v109, v117, type metadata accessor for CatalogTipSection);
        sub_10039B4C4(v110);
        sub_100399D60(v110);

        sub_1004A8D4C(v110, type metadata accessor for CatalogTipSection);
        v94 = type metadata accessor for CatalogTipCard;
        goto LABEL_70;
      }

      if (v57 ^ 8 | v58)
      {
        sub_10001B104(v116, &v134, &qword_1008E51F0);
        if (*(&v135 + 1))
        {
          type metadata accessor for QuickStartWorkoutActionContext();
          if (swift_dynamicCast())
          {
            v77 = v143;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong handleQuickStartWorkoutActionContext:v77];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return sub_100005A40(&v146);
          }

LABEL_83:

          return sub_100005A40(&v146);
        }

LABEL_43:

        sub_10000EA04(&v134, &qword_1008E51F0);
        return sub_100005A40(&v146);
      }
    }

    sub_10001B104(v116, &v134, &qword_1008E51F0);
    if (!*(&v135 + 1))
    {

      sub_10000EA04(&v134, &qword_1008E51F0);
      v71 = v132;
      (*(v131 + 56))(v132, 1, 1, v133);
      goto LABEL_45;
    }

    v71 = v132;
    v72 = v133;
    v73 = swift_dynamicCast();
    v74 = v131;
    (*(v131 + 56))(v71, v73 ^ 1u, 1, v72);
    if ((*(v74 + 48))(v71, 1, v72) == 1)
    {

LABEL_45:
      v79 = &qword_1008EEC90;
LABEL_46:
      sub_10000EA04(v71, v79);
      return sub_100005A40(&v146);
    }

    sub_10002B9C4(v71, v70, type metadata accessor for TrendsActionContext);
    v80 = v130;
    sub_10001B104(v70, v130, &qword_1008E3D18);
    if ((*(v128 + 48))(v80, 1, v129) == 1)
    {
      sub_10000EA04(v80, &qword_1008E3D18);
      if (*(v70 + *(v72 + 20) + 8) != 255)
      {
        v81 = *(*&v33[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
        v82 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
        v83 = sub_1001C083C(v81);
        [v33 presentViewController:v83 animated:1 completion:0];

        v84 = type metadata accessor for TrendsActionContext;
        v85 = v70;
LABEL_82:
        sub_1004A8D4C(v85, v84);
        goto LABEL_83;
      }
    }

    else
    {
      v88 = v80;
      v89 = v127;
      sub_10002B9C4(v88, v127, type metadata accessor for TrendListMetric);
      sub_10039C45C(v89);

      sub_1004A8D4C(v89, type metadata accessor for TrendListMetric);
    }

    v94 = type metadata accessor for TrendsActionContext;
LABEL_70:
    sub_1004A8D4C(v70, v94);
    return sub_100005A40(&v146);
  }

  v34 = *(a3 + v28);
  if (!v34)
  {
    goto LABEL_83;
  }

  v35 = v33;
  v36 = v147;
  v37 = v148;
  sub_1000066AC(&v146, v147);
  v38 = v37[2];
  v39 = v34;
  v40 = v38(v36, v37);
  if (v42 != 3 || v40 | v41)
  {
    sub_10001D4F8(v40, v41, v42);
    v43 = v147;
    v44 = v148;
    v45 = sub_1000066AC(&v146, v147);
    sub_100475448(v45, v39, v43, v44);
  }

  return sub_100005A40(&v146);
}

uint64_t sub_1004A8128()
{
  View = type metadata accessor for FitnessPlusUpNextView();
  v2 = *(*(View - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(View - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(View + 24);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  Card = type metadata accessor for FitnessPlusUpNextCard();
  sub_10001D4F8(*(v7 + Card[5]), *(v7 + Card[5] + 8), *(v7 + Card[5] + 16));
  if (*(v7 + Card[9]) >= 4uLL)
  {
  }

  sub_100005A40(v7 + Card[10]);
  sub_100005A40(v7 + Card[11]);
  v10 = v5 + *(View + 28);
  if (*(v10 + 24))
  {
    sub_100005A40(v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1004A8304(uint64_t a1)
{
  v4 = *(type metadata accessor for FitnessPlusUpNextView() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BACC;

  return sub_10047CFBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004A83FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FitnessPlusUpNextView() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100484FA8(v4, v5, a1);
}

unint64_t sub_1004A8478()
{
  result = qword_1008EEC40;
  if (!qword_1008EEC40)
  {
    sub_100141EEC(&qword_1008EEC28);
    sub_1004A8530();
    sub_10014A6B0(&qword_1008EEC78, &qword_1008EEC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EEC40);
  }

  return result;
}

unint64_t sub_1004A8530()
{
  result = qword_1008EEC48;
  if (!qword_1008EEC48)
  {
    sub_100141EEC(&qword_1008EEC50);
    sub_10014A6B0(&qword_1008EEC58, &qword_1008EEC60);
    sub_10014A6B0(&qword_1008EEC68, &qword_1008EEC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EEC48);
  }

  return result;
}

unint64_t sub_1004A8614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EECB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100066F20(v5, v6);
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

__n128 sub_1004A8748@<Q0>(uint64_t a1@<X8>)
{
  sub_10047E7B8(*(v1 + 24), v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 72) = 0x3FFC71C71C71C71CLL;
  *(a1 + 80) = 0;
  return result;
}

unint64_t sub_1004A87B8()
{
  result = qword_1008EED28;
  if (!qword_1008EED28)
  {
    sub_100141EEC(&qword_1008EED20);
    sub_10014A6B0(&qword_1008EED30, &qword_1008EED38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EED28);
  }

  return result;
}

uint64_t sub_1004A8870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FitnessPlusUpNextView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100485260(a1, a2, v8, a3);
}

uint64_t sub_1004A88F8(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100140278(&qword_1008EED68);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1004A8960()
{
  View = type metadata accessor for FitnessPlusUpNextView();
  v2 = *(*(View - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(View - 8) + 64);
  v4 = type metadata accessor for CatalogLockup();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v7 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
  }

  v9 = v7 + *(View + 24);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v9, v10);
  Card = type metadata accessor for FitnessPlusUpNextCard();
  sub_10001D4F8(*(v9 + Card[5]), *(v9 + Card[5] + 8), *(v9 + Card[5] + 16));
  if (*(v9 + Card[9]) >= 4uLL)
  {
  }

  sub_100005A40(v9 + Card[10]);
  sub_100005A40(v9 + Card[11]);
  v12 = v7 + *(View + 28);
  if (*(v12 + 24))
  {
    sub_100005A40(v12);
  }

  v13 = (v3 + v17 + v6) & ~v6;
  v14 = (v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v13, v4);

  return _swift_deallocObject(v0, v14 + 8, v2 | v6 | 7);
}

uint64_t sub_1004A8BD4()
{
  v1 = *(type metadata accessor for FitnessPlusUpNextView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for CatalogLockup() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  return sub_10047DF94(v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1004A8CD8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FitnessPlusUpNextView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1004A8D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004A8EFC(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_1004A8FD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100140278(a2) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1004A9090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004A90F8(uint64_t *a1)
{
  v2 = sub_100140278(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1004A91A4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100140278(a2) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

void sub_1004A9240()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_1004A9304();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FitnessPlusUpNextCard();
      if (v2 <= 0x3F)
      {
        sub_10005C6EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004A9304()
{
  if (!qword_1008EEFF0)
  {
    type metadata accessor for DashboardCardCellViewCache();
    sub_100073C68(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EEFF0);
    }
  }
}

unint64_t sub_1004A9398()
{
  result = qword_1008EF030;
  if (!qword_1008EF030)
  {
    sub_100141EEC(&qword_1008EF038);
    sub_100487A50();
    sub_100487BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF030);
  }

  return result;
}

uint64_t sub_1004A9424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004A94B8(unint64_t a1, char a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 && a1 > 1)
  {
    v14 = v6;
    if (qword_1008DAC40 != -1)
    {
      swift_once();
    }

    v15 = qword_1008EF070;
    v16 = String._bridgeToObjectiveC()();
    [v15 setLocalizedDateFormatFromTemplate:v16];

    v17 = qword_1008EF070;
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v8, v14);
    v19 = [v17 stringFromDate:isa];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v24[0] = v20;
    v24[1] = v22;
    sub_10000FCBC();
    v23 = StringProtocol.localizedUppercase.getter();

    return v23;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 localizedStringForKey:v10 value:0 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v12;
  }
}

uint64_t sub_1004A97E8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    if (qword_1008DAC40 == -1)
    {
LABEL_6:
      v10 = qword_1008EF070;
      v11 = String._bridgeToObjectiveC()();
      [v10 setLocalizedDateFormatFromTemplate:v11];

      v12 = qword_1008EF070;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v14 = [v12 stringFromDate:isa];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v15;
    }

LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  if (a2)
  {
    if (qword_1008DAC40 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v17 = v7;
  if (qword_1008DAC40 != -1)
  {
    swift_once();
  }

  v18 = qword_1008EF070;
  v19 = String._bridgeToObjectiveC()();
  [v18 setDateFormat:v19];

  v20 = qword_1008EF070;
  v21 = Date._bridgeToObjectiveC()().super.isa;
  v22 = [v20 stringFromDate:v21];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = qword_1008EF070;
  Date.addingTimeInterval(_:)();
  v27 = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v17);
  v28 = [v26 stringFromDate:v27];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if ((v23 != v29 || v25 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v32 = [objc_opt_self() mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 localizedStringForKey:v33 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1006D1F70;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_10000A788();
    *(v35 + 32) = v23;
    *(v35 + 40) = v25;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 64) = v36;
    *(v35 + 72) = v29;
    *(v35 + 80) = v31;
    v23 = String.init(format:_:)();
  }

  return v23;
}

void sub_1004A9C98(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  if ((a2 & 1) == 0)
  {
    sub_100140278(&unk_1008E51B0);
    v17 = type metadata accessor for Calendar.Component();
    v18 = *(v17 - 8);
    v19 = v18;
    v33 = v10;
    v20 = *(v18 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006D1F70;
    v23 = v22 + v21;
    v24 = *(v19 + 104);
    v24(v23, enum case for Calendar.Component.year(_:), v17);
    v24(v23 + v20, enum case for Calendar.Component.month(_:), v17);
    sub_10001C970(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
LABEL_7:
    Calendar.dateComponents(_:from:)();

    (*(v11 + 8))(v13, v33);
    return;
  }

  if (!a1)
  {
    sub_100140278(&unk_1008E51B0);
    v25 = type metadata accessor for Calendar.Component();
    v26 = *(v25 - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1006D6950;
    v30 = v29 + v28;
    v32 = a3;
    v31 = *(v26 + 104);
    v31(v30, enum case for Calendar.Component.year(_:), v25);
    v31(v30 + v27, enum case for Calendar.Component.month(_:), v25);
    v33 = v10;
    v31(v30 + 2 * v27, enum case for Calendar.Component.day(_:), v25);
    v31(v30 + 3 * v27, enum case for Calendar.Component.hour(_:), v25);
    sub_10001C970(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_7;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = Calendar._bridgeToObjectiveC()().super.isa;
  v16 = _HKActivityCacheDateComponentsFromDate();

  if (v16)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 8))(v13, v10);
    (*(v7 + 32))(a3, v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004AA12C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void sub_1004AA248()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  qword_1008EF070 = v4;
}

Swift::Int sub_1004AA354()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1004AA3B0()
{
  v1 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1004AA3F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_1004AA448(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

void sub_1004AA4B0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for DateComponents();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1001AA4D8(v5);
  }

  sub_1004AA570(a1, a2);
  *v2 = v5;
}

void sub_1004AA570(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DateComponents();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for DateComponents() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1004AA6AC(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1000274FC(0, v5, 1, a1, a2);
  }
}

void sub_1004AA6AC(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = type metadata accessor for DateComponents();
  __chkstk_darwin(v163);
  v146 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v149 = &v134 - v14;
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v134 - v18;
  __chkstk_darwin(v20);
  v140 = &v134 - v21;
  __chkstk_darwin(v22);
  v29 = __chkstk_darwin(&v134 - v23);
  v161 = v26;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = _swiftEmptyArrayStorage;
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v25;
  v139 = v24;
  v151 = v19;
  v147 = v28;
  v148 = v27;
  v137 = a6;
  v31 = 0;
  v159 = (v26 + 8);
  v160 = v26 + 16;
  v155 = (v26 + 32);
  v32 = _swiftEmptyArrayStorage;
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163, v29);
      v157 = v36;
      v138 = v35;
      v39 = &v35[v36 * v144];
      v40 = v139;
      v152 = v37;
      (v37)(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
        goto LABEL_117;
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = &v138[v157 * (v144 + 2)];
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
LABEL_117:

          return;
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, &v63[v61], v163);
              if (v61 < a4 || &v63[v61] >= &v63[v58])
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v64(&v63[a4], v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32, v29);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                  goto LABEL_117;
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                v123(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = v138 - 1;
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    a4 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1001A1D54(0, *(v32 + 2) + 1, 1, v32);
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v32 = sub_1001A1D54((v67 > 1), v68 + 1, 1, v32);
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_1004AB2B8(*v162 + *(v161 + 72) * v110, *v162 + *(v161 + 72) * *&v32[16 * a4 + 32], *v162 + *(v161 + 72) * v111, v71, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1001A99A4(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    sub_1001A9918(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  v32 = sub_1001A99A4(v32);
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
    goto LABEL_117;
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_1004AB2B8(*v162 + *(v161 + 72) * v128, *v162 + *(v161 + 72) * *&v32[16 * v127 + 16], *v162 + *(v161 + 72) * v129, a4, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1001A99A4(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    sub_1001A9918(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_1004AB2B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v77 = a6;
  v78 = a5;
  v76 = type metadata accessor for DateComponents();
  v11 = *(v76 - 8);
  __chkstk_darwin(v76);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  __chkstk_darwin(v18);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = &v68 - v19;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v25 = (a2 - a1) / v22;
    v84 = a1;
    v83 = a4;
    v79 = v22;
    if (v25 < v24 / v22)
    {
      v26 = v25 * v22;
      if (a4 < a1 || a1 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = a4 + v26;
      v82 = a4 + v26;
      if (v26 >= 1 && a2 < a3)
      {
        v52 = *(v11 + 16);
        v73 = v17;
        v74 = v11 + 16;
        v71 = v52;
        v72 = (v11 + 8);
        v53 = v23;
        v54 = v76;
        v55 = v6;
        v70 = a3;
        while (1)
        {
          v80 = a1;
          v56 = v71;
          v71(v53, a2, v54);
          v57 = a2;
          v58 = v53;
          v59 = v73;
          v56(v73, a4, v54);
          v60 = v78(v58, v59);
          if (v55)
          {
            break;
          }

          v61 = v60;
          v81 = 0;
          v62 = *v72;
          (*v72)(v59, v54);
          v62(v58, v54);
          v53 = v58;
          if (v61)
          {
            v63 = v79;
            v64 = v80;
            a2 = v57 + v79;
            if (v80 < v57 || v80 >= a2)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }
          }

          else
          {
            v63 = v79;
            v64 = v80;
            v65 = a4 + v79;
            a2 = v57;
            if (v80 < a4 || v80 >= v65)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }

            v83 = v65;
            a4 = v65;
          }

          a1 = v64 + v63;
          v84 = a1;
          if (a4 >= v75 || a2 >= v70)
          {
            goto LABEL_65;
          }
        }

        v66 = *v72;
        (*v72)(v59, v54);
        v66(v58, v54);
      }

LABEL_65:
      sub_1004ABA3C(&v84, &v83, &v82, &type metadata accessor for DateComponents);
      return;
    }

    v75 = v20;
    v27 = a3;
    v28 = a2;
    v29 = v24 / v22 * v22;
    if (a4 < v28 || v28 + v29 <= a4)
    {
      v30 = v28;
      v31 = v76;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v30 = v28;
      v31 = v76;
      if (a4 == v28)
      {
LABEL_24:
        v81 = v6;
        v33 = a4 + v29;
        if (v29 >= 1)
        {
          v34 = -v22;
          v68 = a4;
          v69 = (v11 + 16);
          v71 = (v11 + 8);
          v35 = a4 + v29;
          v36 = v27;
          v37 = v75;
          v80 = a1;
          v73 = -v22;
          do
          {
            v74 = v33;
            v70 = v33;
            v38 = v30;
            v76 = v30 + v34;
            v72 = v30;
            while (1)
            {
              if (v38 <= a1)
              {
                v84 = v38;
                v33 = v70;
                goto LABEL_64;
              }

              v39 = v36;
              v40 = v73;
              v79 = v35;
              v41 = v35 + v73;
              v42 = *v69;
              (*v69)(v37, v35 + v73, v31);
              v42(v13, v76, v31);
              v43 = v37;
              v44 = v81;
              v45 = v78(v37, v13);
              v81 = v44;
              if (v44)
              {
                v67 = *v71;
                (*v71)(v13, v31);
                v67(v43, v31);
                v84 = v72;
                v33 = v74;
                goto LABEL_64;
              }

              v46 = v45;
              v47 = &v39[v40];
              v48 = v13;
              v49 = *v71;
              v50 = v48;
              (*v71)();
              v49(v43, v31);
              if (v46)
              {
                break;
              }

              v36 = &v39[v40];
              if (v39 < v79 || v47 >= v79)
              {
                swift_arrayInitWithTakeFrontToBack();
                v13 = v50;
                v37 = v75;
              }

              else
              {
                v13 = v50;
                v37 = v75;
                if (v39 != v79)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74 = v41;
              v35 = v41;
              a1 = v80;
              v38 = v72;
              if (v41 <= v68)
              {
                v30 = v72;
                v33 = v74;
                goto LABEL_63;
              }
            }

            v36 = &v39[v40];
            if (v39 < v72 || v47 >= v72)
            {
              v30 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v51 = v68;
              v13 = v50;
              v37 = v75;
            }

            else
            {
              v37 = v75;
              v30 = v76;
              v51 = v68;
              v13 = v50;
              if (v39 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v79;
            a1 = v80;
            v34 = v73;
            v33 = v74;
          }

          while (v79 > v51);
        }

LABEL_63:
        v84 = v30;
LABEL_64:
        v82 = v33;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v79;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_1004ABA3C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1004ABB24(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100140278(&qword_1008DE4B8);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1004ABC14(uint64_t result)
{
  if (result < 0)
  {
    _StringGuts.grow(_:)(77);
    v1._countAndFlagsBits = 0xD000000000000038;
    v1._object = 0x8000000100753B60;
    String.append(_:)(v1);
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    v3._object = 0x8000000100753BA0;
    v3._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v3);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004ABD04(uint64_t a1)
{
  v31 = a1;
  v30 = type metadata accessor for Date();
  v1 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Calendar();
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v11 = enum case for Calendar.Component.year(_:);
  v28 = *(v5 + 104);
  v28(v7, enum case for Calendar.Component.year(_:), v4);
  Date.init()();
  v12 = Calendar.component(_:from:)();
  (*(v1 + 8))(v3, v30);
  v13 = *(v5 + 8);
  v30 = v5 + 8;
  v14 = v4;
  v13(v7, v4);
  v15 = *(v8 + 8);
  v16 = v29;
  v15(v10, v29);
  static Calendar.current.getter();
  v28(v7, v11, v14);
  v17 = Calendar.component(_:from:)();
  v13(v7, v14);
  v15(v10, v16);
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    if (v18 >= v12)
    {
      return v19;
    }

    while ((v12 & 0x8000000000000000) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1001A2150(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1001A2150((v20 > 1), v21 + 1, 1, v19);
      }

      v22 = &v19[16 * v21];
      *(v22 + 4) = v12;
      *(v19 + 2) = v21 + 1;
      v22[40] = v12-- < 3;
      if (v18 >= v12)
      {
        return v19;
      }
    }
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v24._countAndFlagsBits = 0xD000000000000038;
  v24._object = 0x8000000100753B60;
  String.append(_:)(v24);
  v32 = v12;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._object = 0x8000000100753BA0;
  v26._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1004AC2B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLWorkoutControllerFactoryBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004AC30C()
{
  result = qword_1008EF0A0;
  if (!qword_1008EF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF0A0);
  }

  return result;
}

unint64_t sub_1004AC364()
{
  result = qword_1008EF0A8;
  if (!qword_1008EF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF0A8);
  }

  return result;
}

void *sub_1004AC3BC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_100453590(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_100453590(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004AC5D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100202054;

  return sub_1004B0CFC(a1);
}

uint64_t sub_1004AC678(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100202050;

  return sub_1004B0FD8();
}

unint64_t sub_1004AC720()
{
  result = qword_1008EF0B0;
  if (!qword_1008EF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF0B0);
  }

  return result;
}

unint64_t sub_1004AC77C()
{
  result = qword_1008EF0B8;
  if (!qword_1008EF0B8)
  {
    sub_100141EEC(&qword_1008EF0C0);
    sub_10006E15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF0B8);
  }

  return result;
}

uint64_t sub_1004AC800(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1004AC8B8();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1004AC8B8()
{
  result = qword_1008EF0C8;
  if (!qword_1008EF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF0C8);
  }

  return result;
}

uint64_t sub_1004AC90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = *(a1 + 8);
  v12 = *(a2 + 8);
  sub_1005C875C(v11, &v35 - v9);
  sub_1005C875C(v12, v7);
  v13 = Date.compare(_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  if (v13)
  {
    v15 = v13 == 1;
  }

  else
  {
    v16 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
    v17 = [v16 titleForAchievement:v11];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = sub_100073DA0(v11);
      v20 = v21;
    }

    v35 = v18;
    v36 = v20;
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = sub_1005CA540(v11);
    String.append(_:)(v23);

    v25 = v35;
    v24 = v36;
    v26 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
    v27 = [v26 titleForAchievement:v12];

    if (v27)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = sub_100073DA0(v12);
      v30 = v31;
    }

    v35 = v28;
    v36 = v30;
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = sub_1005CA540(v12);
    String.append(_:)(v33);

    if (v25 == v35 && v24 == v36)
    {

      v15 = 0;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v15 & 1;
}