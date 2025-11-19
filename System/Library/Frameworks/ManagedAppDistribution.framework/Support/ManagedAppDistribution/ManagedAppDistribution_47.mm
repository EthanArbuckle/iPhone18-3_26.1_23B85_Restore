void *sub_1005C5F70()
{
  v1 = v0;
  v2 = type metadata accessor for Restore();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&qword_1007887F0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1005C7A28(*(v4 + 56) + v23, v26, type metadata accessor for Restore);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_1005C7A90(v22, *(v24 + 56) + v23, type metadata accessor for Restore);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_1005C61A8()
{
  v1 = v0;
  sub_1001F0C48(&qword_100788810);
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
    for (i = (v9 + 63) >> 6; v11; result = sub_10046DA84(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 104;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 64);
      v22 = *(v21 + 80);
      v24 = *(v21 + 48);
      v41 = *(v21 + 96);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = *(v4 + 56) + v16;
      v29 = v35;
      v30 = v37;
      *(v28 + 16) = v36;
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v28 + 96) = v41;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      *(v28 + 48) = v31;
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

void *sub_1005C639C(uint64_t *a1)
{
  v2 = v1;
  sub_1001F0C48(a1);
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

void *sub_1005C64FC()
{
  v1 = v0;
  sub_1001F0C48(&qword_100788808);
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
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 104 * v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[5];
      v26 = *(v17 + 96);
      v25[4] = v19;
      v25[5] = v20;
      v25[3] = v18;
      v22 = v17[1];
      v21 = v17[2];
      v25[0] = *v17;
      v25[1] = v22;
      v25[2] = v21;
      v23 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 104 * v16), v17, 0x61uLL);
      *(*(v4 + 56) + 8 * v16) = v23;
      sub_10046DA84(v25, v24);
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

id sub_1005C66B8()
{
  v1 = v0;
  sub_1001F0C48(&unk_100786E70);
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
        sub_10020A6D0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1001F6498(v19, (*(v4 + 56) + 32 * v17));
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

id sub_1005C6838()
{
  v1 = v0;
  sub_1001F0C48(&unk_100786E90);
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

char *sub_1005C6994()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&qword_100787140);
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

void *sub_1005C6C04()
{
  v1 = v0;
  v2 = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&qword_100787150);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1005C7A28(*(v4 + 56) + v23, v26, type metadata accessor for AppInstallScheduler.ParkReason);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_1005C7A90(v22, *(v24 + 56) + v23, type metadata accessor for AppInstallScheduler.ParkReason);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_1005C6E64(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v41 = a1(0);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - v5;
  sub_1001F0C48(a2);
  v6 = *v2;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v36 = v4;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v14;
    v15 = 1 << *(v6 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v6 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v6;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = 16 * v22;
        v24 = *(v6 + 56);
        v25 = (*(v6 + 48) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v43;
        v29 = *(v43 + 72) * v22;
        v30 = v40;
        v31 = v41;
        (*(v43 + 16))(v40, v24 + v29, v41);
        v32 = v42;
        v33 = (*(v42 + 48) + v23);
        *v33 = v26;
        v33[1] = v27;
        v34 = *(v32 + 56) + v29;
        v6 = v39;
        (*(v28 + 32))(v34, v30, v31);

        v17 = v44;
      }

      while (v44);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v36;
        v8 = v42;
        goto LABEL_21;
      }

      v21 = *(v10 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
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

void *sub_1005C70EC()
{
  v1 = v0;
  sub_1001F0C48(&unk_100786F18);
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
        sub_10020A6D0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1001F6498(v25, (*(v4 + 56) + v22));
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

void *sub_1005C72B8(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  sub_1001F0C48(a2);
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

uint64_t sub_1005C7534(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for IPA_AppInstall();
  v28 = v8;
  v29 = &off_100763A38;
  *&v27 = a1;
  v9 = *a4;
  v11 = sub_10052BA64(a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = v17[7] + 40 * v11;
      sub_10000710C(v18);
      return sub_1001DFDBC(&v27, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_1005C4C7C();
    goto LABEL_7;
  }

  sub_1005BB454(v14, a3 & 1);
  v20 = sub_10052BA64(a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_100231ED8(&v27, v8);
  __chkstk_darwin(v22);
  v24 = (&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  sub_1005C7714(v11, a2, *v24, v17);
  return sub_10000710C(&v27);
}

uint64_t sub_1005C7714(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for IPA_AppInstall();
  v14 = &off_100763A38;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1001DFDBC(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

unint64_t sub_1005C77B4()
{
  result = qword_1007887A8;
  if (!qword_1007887A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007887A8);
  }

  return result;
}

uint64_t sub_1005C7800(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_1005B8D20(a1, v4, v5, v7, v6);
}

uint64_t sub_1005C791C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C79E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005C7A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C7A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C7AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a4;
  v6 = type metadata accessor for EvaluatorDownload();
  v7 = __chkstk_darwin(v6);
  v104 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v98 = &v95 - v10;
  v11 = __chkstk_darwin(v9);
  v100 = &v95 - v12;
  v13 = __chkstk_darwin(v11);
  v102 = &v95 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v95 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v95 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v95 - v22;
  __chkstk_darwin(v21);
  v25 = &v95 - v24;
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v106 = v26;
  v107 = v27;
  v28 = __chkstk_darwin(v26);
  v97 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v96 = &v95 - v31;
  v32 = __chkstk_darwin(v30);
  v99 = &v95 - v33;
  v34 = __chkstk_darwin(v32);
  v101 = &v95 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v95 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v95 - v40;
  __chkstk_darwin(v39);
  v105 = v43;
  v44 = *(v43 + 16);
  v109 = a3;
  v110 = &v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44();
  v108 = v6;
  if (*(a1 + *(v6 + 40)))
  {
    static Logger.download.getter();
    sub_10056B348(a1, v25);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = *&v25[*(v108 + 32)];
      sub_10056B3AC(v25);
      *(v54 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%@] Implicitly denied low data - automatic downloads are disabled", v54, 0xCu);
      sub_1001F8084(v55);
    }

    else
    {

      sub_10056B3AC(v25);
    }

    (*(v107 + 8))(v41, v106);
    goto LABEL_27;
  }

  static Logger.download.getter();
  sub_10056B348(a1, v23);
  sub_10056B348(a1, v20);
  v95 = a1;
  sub_10056B348(a1, v17);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412802;
    v49 = v108;
    v50 = *&v23[*(v108 + 32)];
    sub_10056B3AC(v23);
    *(v47 + 4) = v50;
    *v48 = v50;
    *(v47 + 12) = 2048;
    v51 = *&v20[*(v49 + 24)];
    sub_10056B3AC(v20);
    *(v47 + 14) = v51;
    *(v47 + 22) = 1024;
    LODWORD(v51) = v17[*(v49 + 40)] & 1;
    sub_10056B3AC(v17);
    *(v47 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "[%@] Evaluating download, size = %{iec-bytes}ld automatic = %{BOOL}d", v47, 0x1Cu);
    sub_1001F8084(v48);
  }

  else
  {
    sub_10056B3AC(v17);
    sub_10056B3AC(v20);

    sub_10056B3AC(v23);
  }

  v57 = *(v107 + 8);
  v58 = v38;
  v59 = v106;
  v57(v58, v106);
  v60 = sub_100364CF4();
  v61 = v104;
  v62 = v95;
  if ((v60 & 0x8000000000000000) != 0)
  {
    v71 = v101;
    static Logger.download.getter();
    v72 = v102;
    sub_10056B348(v62, v102);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = *(v72 + *(v108 + 32));
      sub_10056B3AC(v72);
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "[%@] Implicitly allowed low data - threshold disabled", v75, 0xCu);
      sub_1001F8084(v76);
    }

    else
    {

      sub_10056B3AC(v72);
    }

    v92 = v71;
    goto LABEL_30;
  }

  v63 = *(v95 + *(v108 + 24));
  if (v63 <= 0)
  {
    v78 = v99;
    static Logger.download.getter();
    v79 = v100;
    sub_10056B348(v62, v100);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      v84 = *(v79 + *(v108 + 32));
      sub_10056B3AC(v79);
      *(v82 + 4) = v84;
      *v83 = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "[%@] Implicitly denied low data - download size is unavailable", v82, 0xCu);
      sub_1001F8084(v83);
    }

    else
    {

      sub_10056B3AC(v79);
    }

    v85 = v78;
    goto LABEL_26;
  }

  if (v60 >= v63)
  {
    v86 = v97;
    static Logger.download.getter();
    sub_10056B348(v62, v61);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      v91 = *(v61 + *(v108 + 32));
      sub_10056B3AC(v61);
      *(v89 + 4) = v91;
      *v90 = v91;
      _os_log_impl(&_mh_execute_header, v87, v88, "[%@] Implicitly allowed low data - threshold applies", v89, 0xCu);
      sub_1001F8084(v90);
    }

    else
    {

      sub_10056B3AC(v61);
    }

    v92 = v86;
LABEL_30:
    v57(v92, v59);
    v93 = 1;
    goto LABEL_31;
  }

  v64 = v96;
  static Logger.download.getter();
  v65 = v98;
  sub_10056B348(v62, v98);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    v70 = *(v65 + *(v108 + 32));
    sub_10056B3AC(v65);
    *(v68 + 4) = v70;
    *v69 = v70;
    _os_log_impl(&_mh_execute_header, v66, v67, "[%@] Implicitly denied low data - over threshold, or threshold unavailable", v68, 0xCu);
    sub_1001F8084(v69);
  }

  else
  {

    sub_10056B3AC(v65);
  }

  v85 = v64;
LABEL_26:
  v57(v85, v59);
LABEL_27:
  v93 = 0;
LABEL_31:
  (*(v105 + 8))(v110, v109);
  return v93;
}

uint64_t sub_1005C8510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = type metadata accessor for EvaluatorDownload();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = *(a4 - 8);
  v5[19] = v8;
  v5[20] = swift_task_alloc();
  (*(v8 + 16))();

  return _swift_task_switch(sub_1005C86E4, 0, 0);
}

uint64_t sub_1005C86E4()
{
  v55 = v0;
  v1 = sub_1005C7AF8(*(v0 + 16), *(v0 + 160), *(v0 + 32), *(v0 + 40));
  v2 = (v1 >> 8) & 1;
  if (!v2 && (v1 & 1) == 0)
  {
    v3 = *(v0 + 16);
    v4 = *(v3 + *(*(v0 + 48) + 40));
    if (v4)
    {
      v12 = *(v0 + 80);
      static Logger.download.getter();
      sub_10056B348(v3, v12);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 136);
      v17 = *(v0 + 96);
      v18 = *(v0 + 104);
      v19 = *(v0 + 80);
      if (v15)
      {
        v20 = *(v0 + 48);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = *(v19 + *(v20 + 32));
        sub_10056B3AC(v19);
        *(v21 + 4) = v23;
        *v22 = v23;
        v24 = "[%@] Requires unconstrained network, but not prompting for automatic download.";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v13, v14, v24, v21, 0xCu);
        sub_1001F8084(v22);

LABEL_13:
        (*(v18 + 8))(v16, v17);
        LOBYTE(v1) = 0;
        v2 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      if (NWPath.isConstrained.getter())
      {
        v5 = *(v0 + 48);
        v6 = *(v0 + 16);
        v7 = (v6 + *(v5 + 20));
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v6 + *(v5 + 24));
        if ((v4 & 2) != 0)
        {
          v11 = sub_100429698(v8, v9, v10);
        }

        else
        {
          v11 = sub_100429D00(v8, v9, v10);
        }

        *(v0 + 168) = v11;

        return _swift_task_switch(sub_1005C8C1C, v11, 0);
      }

      v25 = *(v0 + 72);
      v26 = *(v0 + 16);
      static Logger.download.getter();
      sub_10056B348(v26, v25);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 128);
      v17 = *(v0 + 96);
      v18 = *(v0 + 104);
      v19 = *(v0 + 72);
      if (v27)
      {
        v28 = *(v0 + 48);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v29 = *(v19 + *(v28 + 32));
        sub_10056B3AC(v19);
        *(v21 + 4) = v29;
        *v22 = v29;
        v24 = "[%@] Requires unconstrained network, but not prompting for current network.";
        goto LABEL_11;
      }
    }

    sub_10056B3AC(v19);
    goto LABEL_13;
  }

LABEL_14:
  v52 = v2;
  v53 = v1;
  v30 = *(v0 + 88);
  v31 = *(v0 + 16);
  static Logger.download.getter();
  sub_10056B348(v31, v30);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 144);
  v37 = *(v0 + 96);
  v36 = *(v0 + 104);
  v38 = *(v0 + 88);
  if (v34)
  {
    v51 = *(v0 + 144);
    v39 = *(v0 + 48);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v54 = v42;
    *v40 = 138412546;
    v43 = *(v38 + *(v39 + 32));
    sub_10056B3AC(v38);
    *(v40 + 4) = v43;
    *v41 = v43;
    *(v40 + 12) = 2080;
    *(v0 + 200) = v53 & 1;
    *(v0 + 201) = v52;
    v44 = String.init<A>(describing:)();
    v46 = sub_1002346CC(v44, v45, &v54);

    *(v40 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v32, v33, "[%@] Evaluation for download completed with result: %s", v40, 0x16u);
    sub_1001F8084(v41);

    sub_10000710C(v42);

    (*(v36 + 8))(v51, v37);
  }

  else
  {

    sub_10056B3AC(v38);
    (*(v36 + 8))(v35, v37);
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 32));

  if (v52)
  {
    v47 = 256;
  }

  else
  {
    v47 = 0;
  }

  v48 = v47 & 0xFFFFFFFE | v53 & 1;
  v49 = *(v0 + 8);

  return v49(v48);
}

uint64_t sub_1005C8C1C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 176) = qword_100786178;

  return _swift_task_switch(sub_1005C8CB4, v1, 0);
}

uint64_t sub_1005C8CB4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = sub_10056B408();
  v4 = swift_task_alloc();
  v0[23] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1005C8DBC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 202, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1005C8DBC()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_1005C8EE8, v1, 0);
}

uint64_t sub_1005C8EE8()
{

  *(v0 + 203) = *(v0 + 202);

  return _swift_task_switch(sub_1005C8F58, 0, 0);
}

uint64_t sub_1005C8F58()
{
  v45 = v0;
  v1 = *(v0 + 203);
  v2 = *(v0 + 16);
  v43 = v1;
  if (*(v0 + 203))
  {
    v3 = *(v0 + 56);
    static Logger.download.getter();
    sub_10056B348(v2, v3);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *(v0 + 56);
    if (v6)
    {
      v11 = *(v0 + 48);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = *(v10 + *(v11 + 32));
      sub_10056B3AC(v10);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = "[%@] We were asked to cancel download. Denying network access.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, v5, v15, v12, 0xCu);
      sub_1001F8084(v13);

      v1 = v43;

      goto LABEL_8;
    }
  }

  else
  {
    v16 = *(v0 + 64);
    static Logger.download.getter();
    sub_10056B348(v2, v16);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 64);
    if (v17)
    {
      v18 = *(v0 + 48);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v19 = *(v10 + *(v18 + 32));
      sub_10056B3AC(v10);
      *(v12 + 4) = v19;
      *v13 = v19;
      v15 = "[%@] We were asked to download now. Ignoring constrained network.";
      goto LABEL_6;
    }
  }

  sub_10056B3AC(v10);
LABEL_8:
  (*(v8 + 8))(v7, v9);
  v20 = *(v0 + 88);
  v21 = *(v0 + 16);
  static Logger.download.getter();
  sub_10056B348(v21, v20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 144);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v28 = *(v0 + 88);
  if (v24)
  {
    v42 = *(v0 + 144);
    v29 = v1 == 0;
    v30 = *(v0 + 48);
    v41 = *(v0 + 96);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = v33;
    *v31 = 138412546;
    v34 = *(v28 + *(v30 + 32));
    sub_10056B3AC(v28);
    *(v31 + 4) = v34;
    *v32 = v34;
    *(v31 + 12) = 2080;
    *(v0 + 200) = v29;
    *(v0 + 201) = 1;
    v35 = String.init<A>(describing:)();
    v37 = sub_1002346CC(v35, v36, &v44);

    *(v31 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Evaluation for download completed with result: %s", v31, 0x16u);
    sub_1001F8084(v32);

    sub_10000710C(v33);

    (*(v26 + 8))(v42, v41);
  }

  else
  {

    sub_10056B3AC(v28);
    (*(v26 + 8))(v25, v27);
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 32));

  if (v43)
  {
    v38 = 256;
  }

  else
  {
    v38 = 257;
  }

  v39 = *(v0 + 8);

  return v39(v38);
}

uint64_t sub_1005C93E0(void *a1, int a2)
{
  v5 = sub_1001F0C48(&qword_1007888C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_1005CBF08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2 & 0x101;
  v10[13] = 0;
  sub_1005CBFB0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[11] = BYTE2(a2) & 1;
    v10[12] = HIBYTE(a2) & 1;
    v10[10] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005C95A0()
{
  if (*v0)
  {
    return 0x69617274736E6F63;
  }

  else
  {
    return 0x7669736E65707865;
  }
}

uint64_t sub_1005C95E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7669736E65707865 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69617274736E6F63 && a2 == 0xEB0000000064656ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1005C96D0(uint64_t a1)
{
  v2 = sub_1005CBF08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C970C(uint64_t a1)
{
  v2 = sub_1005CBF08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005C9748@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005CBCFC(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
    a2[3] = BYTE3(result) & 1;
  }

  return result;
}

uint64_t sub_1005C9790(void *a1)
{
  if (v1[3])
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1005C93E0(a1, v4 | *v1 | v3 | v2);
}

uint64_t sub_1005C97E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005C98AC, 0, 0);
}

uint64_t sub_1005C98AC()
{
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1005C9964;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  return sub_1005D62B0(v4, v2, v3);
}

uint64_t sub_1005C9964()
{

  return _swift_task_switch(sub_1005C9A60, 0, 0);
}

uint64_t sub_1005C9A60()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005C9ADC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1005C9B00, 0, 0);
}

uint64_t sub_1005C9B00()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(type metadata accessor for NetworkPolicy() + 20);
  v5 = type metadata accessor for CellularIdentity();
  (*(*(v5 - 8) + 16))(&v3[v4], v2, v5);
  *v3 = v1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1005C9BB4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1005CC11C, 0, 0);
}

uint64_t sub_1005C9BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1496) = a8;
  *(v8 + 1488) = a7;
  *(v8 + 1696) = a5;
  *(v8 + 1480) = a4;
  *(v8 + 1432) = a3;
  *(v8 + 1384) = a2;
  *(v8 + 1336) = a1;
  v10 = type metadata accessor for CellularIdentity();
  *(v8 + 1504) = v10;
  v11 = *(v10 - 8);
  *(v8 + 1512) = v11;
  *(v8 + 1520) = *(v11 + 64);
  *(v8 + 1528) = swift_task_alloc();
  *(v8 + 1536) = type metadata accessor for NetworkPolicy();
  *(v8 + 1544) = swift_task_alloc();
  *(v8 + 1552) = swift_task_alloc();
  *(v8 + 1560) = type metadata accessor for NetworkPath();
  *(v8 + 1568) = swift_task_alloc();
  *(v8 + 1576) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v8 + 1584) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v8 + 1592) = v12;
  v13 = *(v12 - 8);
  *(v8 + 1600) = v13;
  *(v8 + 1608) = *(v13 + 64);
  *(v8 + 1616) = swift_task_alloc();
  *(v8 + 1624) = swift_task_alloc();
  v14 = *(a7 - 8);
  *(v8 + 1632) = v14;
  *(v8 + 1640) = swift_task_alloc();
  (*(v14 + 16))();

  return _swift_task_switch(sub_1005C9E58, 0, 0);
}

uint64_t sub_1005C9E58()
{
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);
  sub_100337114(*(v0 + 1336), v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10038B5B4(*(v0 + 1584));
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v5 = *(v0 + 1624);
    v6 = *(v0 + 1616);
    v7 = *(v0 + 1608);
    v8 = *(v0 + 1600);
    v9 = *(v0 + 1592);
    v24 = *(v0 + 1528);
    v10 = *(v0 + 1512);
    v23 = *(v0 + 1504);
    v25 = *(v0 + 1696);
    v22 = *(v0 + 1480);
    v11 = *(v0 + 1432);
    v21 = *(v0 + 1384);
    v12 = *(v8 + 32);
    v12(v5, *(v0 + 1584), v9);
    (*(v8 + 16))(v6, v5, v9);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v0 + 1648) = v14;
    v12(v14 + v13, v6, v9);
    v15 = (v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v15 = v21;
    v15[1] = v11;
    v16 = swift_task_alloc();
    *(v0 + 1656) = v16;
    *(v16 + 16) = &unk_1006B68F8;
    *(v16 + 24) = v14;

    swift_asyncLet_begin();
    (*(v10 + 16))(v24, v22, v23);
    v17 = (*(v10 + 80) + 17) & ~*(v10 + 80);
    v18 = swift_allocObject();
    *(v0 + 1664) = v18;
    *(v18 + 16) = v25;
    (*(v10 + 32))(v18 + v17, v24, v23);
    v19 = swift_task_alloc();
    *(v0 + 1672) = v19;
    *(v19 + 16) = &unk_1006B6918;
    *(v19 + 24) = v18;
    swift_asyncLet_begin();
    v20 = *(v0 + 1552);

    return _swift_asyncLet_get(v0 + 656, v20, sub_1005CA19C, v0 + 1296);
  }
}

uint64_t sub_1005CA19C()
{
  sub_1005CA994(v0[194], v0[193], type metadata accessor for NetworkPolicy);
  v1 = v0[197];

  return _swift_asyncLet_get(v0 + 2, v1, sub_1005CA220, v0 + 168);
}

uint64_t sub_1005CA220()
{
  sub_1005CA994(v0[197], v0[196], type metadata accessor for NetworkPath);
  v1 = swift_task_alloc();
  v0[210] = v1;
  *v1 = v0;
  v1[1] = sub_1005CA2FC;
  v2 = v0[205];
  v3 = v0[196];
  v4 = v0[193];
  v5 = v0[187];
  v6 = v0[186];
  v7 = v0[167];

  return sub_1005CA9FC(v7, v3, v2, v4, v6, v5);
}

uint64_t sub_1005CA2FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1568);
  v5 = *(*v1 + 1544);
  *(*v1 + 1688) = a1;

  sub_1005CBB48(v4, type metadata accessor for NetworkPath);
  sub_1005CBB48(v5, type metadata accessor for NetworkPolicy);
  v6 = *(v2 + 1552);

  return _swift_asyncLet_finish(v3 + 656, v6, sub_1005CA488, v3 + 1392);
}

uint64_t sub_1005CA4A4()
{

  v1 = *(v0 + 1576);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1005CA51C, v0 + 1440);
}

uint64_t sub_1005CA538()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[203];
  v4 = v0[200];
  v5 = v0[199];
  v9 = v0[211];
  v6 = v0[186];

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);

  v7 = v0[1];

  return v7(v9 & 0x101010101);
}

uint64_t type metadata accessor for NetworkPolicy()
{
  result = qword_100788878;
  if (!qword_100788878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005CA6DC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_1005C97E8(a1, v1 + v5, v7, v8);
}

uint64_t sub_1005CA7F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_100350320(a1, v4);
}

uint64_t sub_1005CA8B0(uint64_t a1)
{
  v4 = *(type metadata accessor for CellularIdentity() - 8);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1005C9ADC(a1, v6, v1 + v5);
}

uint64_t sub_1005CA994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005CA9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  v8 = type metadata accessor for NWInterface.InterfaceType();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  v9 = type metadata accessor for CellularIdentity();
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for ExpensiveNetworkEvaluator();
  v6[15] = swift_task_alloc();
  v10 = *(a5 - 8);
  v6[16] = v10;
  v6[17] = swift_task_alloc();
  (*(v10 + 16))();

  return _swift_task_switch(sub_1005CABDC, 0, 0);
}

uint64_t sub_1005CABDC()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 32);
  v34 = *(v0 + 16);
  v8 = type metadata accessor for NetworkPolicy();
  v9 = *(v6 + 16);
  v9(v3, v7 + *(v8 + 20), v5);
  v9(v1, v3, v5);
  v9(v4, v3, v5);
  v10 = (v1 + *(v2 + 20));
  v10[3] = type metadata accessor for CellularSettings();
  v10[4] = &off_10076B310;
  sub_10020A748(v10);
  CellularSettings.init(for:)();
  (*(v6 + 8))(v3, v5);
  v11 = *(v34 + *(type metadata accessor for EvaluatorDownload() + 28));
  if (v11 == 2)
  {
    v12 = swift_task_alloc();
    *(v0 + 144) = v12;
    *v12 = v0;
    v12[1] = sub_1005CB0A8;
    v13 = *(v0 + 120);
    v14 = *(v0 + 16);

    return sub_100569918(v14, v13);
  }

  v16 = HIWORD(v11) & 1;
  *(v0 + 177) = BYTE1(v11) & 1;
  *(v0 + 176) = v11 & 1;
  *(v0 + 175) = HIBYTE(v11) & 1;
  *(v0 + 174) = BYTE2(v11) & 1;
  if (**(v0 + 32))
  {
    if ((v11 & 1) == 0)
    {
      if (NWPath.isExpensive.getter() & 1) != 0 || (v23 = *(v0 + 64), v22 = *(v0 + 72), v24 = *(v0 + 56), (*(v23 + 104))(v22, enum case for NWInterface.InterfaceType.cellular(_:), v24), v25 = NWPath.usesInterfaceType(_:)(), (*(v23 + 8))(v22, v24), (v25))
      {
        v35 = sub_10056A078;
        v26 = swift_task_alloc();
        *(v0 + 160) = v26;
        *v26 = v0;
        v26[1] = sub_1005CB828;
        v18 = *(v0 + 120);
        goto LABEL_19;
      }
    }

    if (v11 & 0x10000) == 0 && (NWPath.isConstrained.getter())
    {
      v35 = sub_1005C8510;
      v17 = swift_task_alloc();
      *(v0 + 152) = v17;
      *v17 = v0;
      v17[1] = sub_1005CB53C;
      v18 = *(v0 + 136);
LABEL_19:
      v28 = *(v0 + 16);
      v27 = *(v0 + 24);

      return v35(v28, v27, v18);
    }
  }

  if (NWPath.isExpensive.getter() & 1) != 0 && (v11)
  {
    sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
    v19 = &_mh_execute_header;
    v20 = 1;
  }

  else
  {
    v21 = NWPath.isConstrained.getter();
    if (v11 & 0x10000) != 0 && (v21)
    {
      sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
      v19 = &_mh_execute_header;
      LOBYTE(v16) = 1;
    }

    else
    {
      v29 = NWPath.isExpensive.getter();
      v30 = *(v0 + 120);
      if (v29)
      {
        sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
        v19 = 0;
      }

      else
      {
        v31 = NWPath.isConstrained.getter();
        sub_1005CBB48(v30, type metadata accessor for ExpensiveNetworkEvaluator);
        if (v31)
        {
          v19 = 0;
        }

        else
        {
          v19 = &_mh_execute_header;
        }
      }
    }

    v20 = v11;
  }

  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 40));

  v32 = 0x10000;
  if ((v16 & 1) == 0)
  {
    v32 = 0;
  }

  v33 = *(v0 + 8);

  return v33(v32 | v19 | v11 & 0x1000100 | v20 & 1);
}

uint64_t sub_1005CB0A8(__int16 a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1005CB1A8, 0, 0);
}

uint64_t sub_1005CB1A8()
{
  v1 = sub_1005C7AF8(*(v0 + 16), *(v0 + 136), *(v0 + 40), *(v0 + 48));
  v2 = v1;
  v3 = *(v0 + 168);
  *(v0 + 177) = HIBYTE(v3) & 1;
  *(v0 + 176) = v3 & 1;
  *(v0 + 175) = BYTE1(v1) & 1;
  *(v0 + 174) = v1 & 1;
  v4 = v1;
  if (**(v0 + 32) == 1)
  {
    if ((v3 & 1) == 0)
    {
      if (NWPath.isExpensive.getter() & 1) != 0 || (v6 = *(v0 + 64), v5 = *(v0 + 72), v7 = *(v0 + 56), (*(v6 + 104))(v5, enum case for NWInterface.InterfaceType.cellular(_:), v7), v8 = NWPath.usesInterfaceType(_:)(), (*(v6 + 8))(v5, v7), (v8))
      {
        v22 = sub_10056A078;
        v9 = swift_task_alloc();
        *(v0 + 160) = v9;
        *v9 = v0;
        v9[1] = sub_1005CB828;
        v10 = *(v0 + 120);
LABEL_10:
        v13 = *(v0 + 16);
        v12 = *(v0 + 24);

        return v22(v13, v12, v10);
      }
    }

    if (v2)
    {
      v4 = 1;
    }

    else
    {
      if (NWPath.isConstrained.getter())
      {
        v22 = sub_1005C8510;
        v11 = swift_task_alloc();
        *(v0 + 152) = v11;
        *v11 = v0;
        v11[1] = sub_1005CB53C;
        v10 = *(v0 + 136);
        goto LABEL_10;
      }

      v4 = 0;
    }
  }

  v23 = v2 & 0x100;
  v15 = v3 & 0x100;
  if (NWPath.isExpensive.getter() & 1) != 0 && (v3)
  {
    sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
    v16 = &_mh_execute_header;
    LOBYTE(v3) = 1;
  }

  else if (NWPath.isConstrained.getter() & v4)
  {
    sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
    v16 = &_mh_execute_header;
    LOBYTE(v4) = 1;
  }

  else
  {
    v17 = NWPath.isExpensive.getter();
    v18 = *(v0 + 120);
    if (v17)
    {
      sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
      v16 = 0;
    }

    else
    {
      v19 = NWPath.isConstrained.getter();
      sub_1005CBB48(v18, type metadata accessor for ExpensiveNetworkEvaluator);
      if (v19)
      {
        v16 = 0;
      }

      else
      {
        v16 = &_mh_execute_header;
      }
    }
  }

  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 40));

  v20 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v20 = 0;
  }

  v21 = *(v0 + 8);

  return v21(v15 | v3 & 1u | (v23 << 16) | v20 | v16);
}

uint64_t sub_1005CB53C(__int16 a1)
{
  *(*v1 + 170) = a1;

  return _swift_task_switch(sub_1005CB63C, 0, 0);
}

uint64_t sub_1005CB63C()
{
  v1 = *(v0 + 170);
  v12 = *(v0 + 177);
  v2 = *(v0 + 176);
  if ((NWPath.isExpensive.getter() & 1) != 0 && v2)
  {
    sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
    v3 = &_mh_execute_header;
    v2 = 1;
LABEL_4:
    v4 = v1;
    goto LABEL_8;
  }

  if ((NWPath.isConstrained.getter() & 1) == 0 || (v1 & 1) == 0)
  {
    v9 = NWPath.isExpensive.getter();
    v10 = *(v0 + 120);
    if (v9)
    {
      sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
      v3 = 0;
    }

    else
    {
      v11 = NWPath.isConstrained.getter();
      sub_1005CBB48(v10, type metadata accessor for ExpensiveNetworkEvaluator);
      if (v11)
      {
        v3 = 0;
      }

      else
      {
        v3 = &_mh_execute_header;
      }
    }

    goto LABEL_4;
  }

  sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
  v3 = &_mh_execute_header;
  v4 = 1;
LABEL_8:
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 40));

  v5 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 256;
  if (!v12)
  {
    v6 = 0;
  }

  v7 = *(v0 + 8);

  return v7((v6 | v2) & 0xFFFFFFFFFEFFFFFFLL | ((((v1 & 0x100) >> 8) & 1) << 24) | v5 | v3);
}

uint64_t sub_1005CB828(__int16 a1)
{
  *(*v1 + 172) = a1;

  return _swift_task_switch(sub_1005CB928, 0, 0);
}

uint64_t sub_1005CB928()
{
  v1 = *(v0 + 172);
  v16 = v1 & 0x100;
  if ((v1 & 0x100) != 0)
  {
    if ((v1 & 1) == 0)
    {
      NWPath.isExpensive.getter();
      LOBYTE(v1) = 0;
      v2 = *(v0 + 175);
      v3 = *(v0 + 174);
      goto LABEL_9;
    }

    v4 = *(v0 + 175);
    v5 = *(v0 + 174);
    v6 = NWPath.isConstrained.getter();
    v3 = v6 | v5;
    v2 = v6 | v4;
    LOBYTE(v1) = 1;
  }

  else
  {
    v2 = *(v0 + 175);
    v3 = *(v0 + 174);
  }

  v7 = NWPath.isExpensive.getter();
  if (v1 & 1) != 0 && (v7)
  {
    sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
    v8 = &_mh_execute_header;
    LOBYTE(v1) = 1;
    goto LABEL_17;
  }

LABEL_9:
  if (NWPath.isConstrained.getter() & 1) != 0 && (v3)
  {
    sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
    v8 = &_mh_execute_header;
    v3 = 1;
  }

  else
  {
    v9 = NWPath.isExpensive.getter();
    v10 = *(v0 + 120);
    if (v9)
    {
      sub_1005CBB48(*(v0 + 120), type metadata accessor for ExpensiveNetworkEvaluator);
      v8 = 0;
    }

    else
    {
      v11 = NWPath.isConstrained.getter();
      sub_1005CBB48(v10, type metadata accessor for ExpensiveNetworkEvaluator);
      if (v11)
      {
        v8 = 0;
      }

      else
      {
        v8 = &_mh_execute_header;
      }
    }
  }

LABEL_17:
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 40));

  v12 = 0x1000000;
  if ((v2 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = *(v0 + 8);

  return v14(v12 | v8 | v13 | v16 | v1 & 1u);
}

uint64_t sub_1005CBB48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005CBBD0()
{
  result = type metadata accessor for CellularIdentity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkPolicy.Decision(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkPolicy.Decision(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1005CBCFC(void *a1)
{
  v3 = sub_1001F0C48(&qword_1007888B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  sub_100006D8C(a1, a1[3]);
  sub_1005CBF08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000710C(a1);
  }

  v19 = 0;
  sub_1005CBF5C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v20;
  v8 = v21;
  v16 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v10 = v17;
  v11 = v18;
  sub_10000710C(a1);
  if (v11)
  {
    v12 = 0x1000000;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return v14 | v7 | v13 | v12;
}

unint64_t sub_1005CBF08()
{
  result = qword_1007888B8;
  if (!qword_1007888B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007888B8);
  }

  return result;
}

unint64_t sub_1005CBF5C()
{
  result = qword_1007888C0;
  if (!qword_1007888C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007888C0);
  }

  return result;
}

unint64_t sub_1005CBFB0()
{
  result = qword_1007888D0;
  if (!qword_1007888D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007888D0);
  }

  return result;
}

unint64_t sub_1005CC018()
{
  result = qword_1007888D8;
  if (!qword_1007888D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007888D8);
  }

  return result;
}

unint64_t sub_1005CC070()
{
  result = qword_1007888E0;
  if (!qword_1007888E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007888E0);
  }

  return result;
}

unint64_t sub_1005CC0C8()
{
  result = qword_1007888E8;
  if (!qword_1007888E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007888E8);
  }

  return result;
}

uint64_t sub_1005CC120(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1005CC138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1005CC18C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1005CC1F8(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v25 = a2;
  v26 = sub_1001F0C48(&qword_100788930);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v19 - v4;
  v5 = sub_1001F0C48(&qword_100788938);
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_1001F0C48(&qword_100788940);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = sub_1001F0C48(&qword_100788948);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  sub_100006D8C(a1, a1[3]);
  sub_1005CD238();
  v15 = v27;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v28 = 0;
    sub_1005CD334();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_1005CD2E0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_1005CD28C();
  v17 = v23;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v18 = v26;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1005CC5C0()
{
  v1 = 0x6C616E6F73726570;
  if (*v0 != 1)
  {
    v1 = 0x6972707265746E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1005CC618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005CCB10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005CC640(uint64_t a1)
{
  v2 = sub_1005CD238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005CC67C(uint64_t a1)
{
  v2 = sub_1005CD238();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005CC6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453657571696E75 && a2 == 0xEC000000676E6972)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1005CC764(uint64_t a1)
{
  v2 = sub_1005CD28C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005CC7A0(uint64_t a1)
{
  v2 = sub_1005CD28C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005CC7DC(uint64_t a1)
{
  v2 = sub_1005CD334();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005CC818(uint64_t a1)
{
  v2 = sub_1005CD334();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005CC854(uint64_t a1)
{
  v2 = sub_1005CD2E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005CC890(uint64_t a1)
{
  v2 = sub_1005CD2E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005CC8CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1005CCC30(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1005CC914(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

unint64_t sub_1005CC974()
{
  result = 0x7B616E6F73726550;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000011;
    }

    else
    {
      v3 = *v0;
      String.append(_:)(*(&v2 - 1));
      v4._countAndFlagsBits = 125;
      v4._object = 0xE100000000000000;
      String.append(_:)(v4);
      return 0x7B616E6F73726550;
    }
  }

  return result;
}

BOOL sub_1005CCA14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1005CCA40()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005CCA74()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005CCAA8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005CCADC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005CCB10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E6F73726570 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6972707265746E65 && a2 == 0xEA00000000006573)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1005CCC30(void *a1)
{
  v40 = sub_1001F0C48(&qword_1007888F0);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - v2;
  v3 = sub_1001F0C48(&qword_1007888F8);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  v7 = sub_1001F0C48(&qword_100788900);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_1001F0C48(&qword_100788908);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = a1[3];
  v42 = a1;
  v15 = sub_100006D8C(a1, v14);
  sub_1005CD238();
  v16 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v18 = v39;
  v17 = v40;
  v41 = v11;
  v19 = v13;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    sub_1001F0C48(&qword_1007896A0);
    *v26 = &type metadata for Persona;
    v15 = v13;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v41 + 8))(v13, v10);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (!*(v20 + 32))
  {
    v43 = 0;
    sub_1005CD334();
    v15 = v13;
    v30 = v34;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v41;
    if (!v30)
    {
      (*(v35 + 8))(v9, v33);
      (*(v31 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v15 = 0;
      goto LABEL_10;
    }

    (*(v41 + 8))(v13, v10);
    goto LABEL_9;
  }

  v28 = v41;
  if (v22 == 1)
  {
    v44 = 1;
    sub_1005CD2E0();
    v15 = v19;
    v29 = v34;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v29)
    {
      (*(v37 + 8))(v6, v36);
      (*(v28 + 8))(v19, v10);
      swift_unknownObjectRelease();
      v15 = 0;
      goto LABEL_10;
    }

    (*(v28 + 8))(v19, v10);
    goto LABEL_9;
  }

  v45 = 2;
  sub_1005CD28C();
  v15 = v19;
  v32 = v34;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (!v32)
  {
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v38 + 8))(v18, v17);
  }

  (*(v28 + 8))(v19, v10);
  swift_unknownObjectRelease();
LABEL_10:
  sub_10000710C(v42);
  return v15;
}

unint64_t sub_1005CD238()
{
  result = qword_100788910;
  if (!qword_100788910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788910);
  }

  return result;
}

unint64_t sub_1005CD28C()
{
  result = qword_100788918;
  if (!qword_100788918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788918);
  }

  return result;
}

unint64_t sub_1005CD2E0()
{
  result = qword_100788920;
  if (!qword_100788920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788920);
  }

  return result;
}

unint64_t sub_1005CD334()
{
  result = qword_100788928;
  if (!qword_100788928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788928);
  }

  return result;
}

unint64_t sub_1005CD3CC()
{
  result = qword_100788950;
  if (!qword_100788950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788950);
  }

  return result;
}

unint64_t sub_1005CD424()
{
  result = qword_100788958;
  if (!qword_100788958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788958);
  }

  return result;
}

unint64_t sub_1005CD47C()
{
  result = qword_100788960;
  if (!qword_100788960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788960);
  }

  return result;
}

unint64_t sub_1005CD4D4()
{
  result = qword_100788968;
  if (!qword_100788968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788968);
  }

  return result;
}

unint64_t sub_1005CD52C()
{
  result = qword_100788970;
  if (!qword_100788970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788970);
  }

  return result;
}

unint64_t sub_1005CD584()
{
  result = qword_100788978;
  if (!qword_100788978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788978);
  }

  return result;
}

unint64_t sub_1005CD5DC()
{
  result = qword_100788980;
  if (!qword_100788980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788980);
  }

  return result;
}

unint64_t sub_1005CD634()
{
  result = qword_100788988;
  if (!qword_100788988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788988);
  }

  return result;
}

unint64_t sub_1005CD68C()
{
  result = qword_100788990;
  if (!qword_100788990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788990);
  }

  return result;
}

unint64_t sub_1005CD6E4()
{
  result = qword_100788998;
  if (!qword_100788998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788998);
  }

  return result;
}

uint64_t sub_1005CD74C()
{
  v1[223] = v0;
  type metadata accessor for OAuthClient();
  v1[224] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[225] = v2;
  v1[226] = *(v2 - 8);
  v1[227] = swift_task_alloc();
  v1[228] = swift_task_alloc();
  v1[229] = swift_task_alloc();
  v1[230] = swift_task_alloc();
  v1[231] = swift_task_alloc();
  sub_1001F0C48(&qword_100782240);
  v1[232] = swift_task_alloc();
  v3 = type metadata accessor for OAuthCredential();
  v1[233] = v3;
  v1[234] = *(v3 - 8);
  v1[235] = swift_task_alloc();
  v1[236] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[237] = v4;
  v1[238] = *(v4 - 8);
  v1[239] = swift_task_alloc();
  v1[240] = swift_task_alloc();
  v1[241] = swift_task_alloc();
  v1[242] = swift_task_alloc();

  return _swift_task_switch(sub_1005CD988, 0, 0);
}

uint64_t sub_1005CD988()
{
  v1 = *(v0 + 1784);
  v2 = 22;
  if (*(v1 + 49))
  {
    v2 = 24;
  }

  v3 = 23;
  if (*(v1 + 49))
  {
    v3 = 25;
  }

  if (*(v1 + 48))
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 1480) = v4;
  *(v0 + 1504) = 0u;
  *(v0 + 1488) = 0u;
  *(v0 + 1520) = 0u;
  *(v0 + 1536) = 0;
  *(v0 + 1544) = 41;
  *(v0 + 1688) = 41;
  v5 = *(v0 + 1528);
  *(v0 + 1656) = *(v0 + 1512);
  *(v0 + 1672) = v5;
  v6 = *(v0 + 1496);
  *(v0 + 1624) = *(v0 + 1480);
  *(v0 + 1640) = v6;
  *(v0 + 1552) = 21;
  *(v0 + 1608) = 0;
  *(v0 + 1576) = 0u;
  *(v0 + 1592) = 0u;
  *(v0 + 1560) = 0u;
  *(v0 + 1616) = 41;
  *(v0 + 1696) = 4;
  *(v0 + 1752) = 0;
  *(v0 + 1720) = 0u;
  *(v0 + 1736) = 0u;
  *(v0 + 1704) = 0u;
  *(v0 + 1760) = 41;
  v7 = *(*sub_100006D8C((v1 + 56), *(v1 + 80)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1944) = v7;

  v8 = swift_allocObject();
  *(v0 + 1952) = v8;
  *(v8 + 16) = 1;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0;
  *(v8 + 80) = 41;
  *(v8 + 88) = v7;
  v9 = swift_task_alloc();
  *(v0 + 1960) = v9;
  *(v9 + 16) = &unk_10069F2C0;
  *(v9 + 24) = v8;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v10 = swift_task_alloc();
  *(v0 + 1968) = v10;
  *v10 = v0;
  v10[1] = sub_1005CDBA0;

  return sub_1006600F0(v0 + 1552);
}

uint64_t sub_1005CDBA0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[247] = a1;
  v3[248] = a2;

  v4 = swift_task_alloc();
  v3[249] = v4;
  *v4 = v6;
  v4[1] = sub_1005CDCF8;

  return sub_1006600F0((v3 + 203));
}

uint64_t sub_1005CDCF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[250] = a1;
  v3[251] = a2;

  sub_100222FFC((v3 + 185));
  v4 = swift_task_alloc();
  v3[252] = v4;
  *v4 = v6;
  v4[1] = sub_1005CDE58;

  return sub_1006600F0((v3 + 212));
}

uint64_t sub_1005CDE58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2024) = a1;
  *(v3 + 2032) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 1768, sub_1005CDF60, v3 + 656);
}

uint64_t sub_1005CDF7C()
{
  v6 = *(v0 + 2000);
  v7 = *(v0 + 2024);
  v5 = *(v0 + 1976);
  v1 = *(v0 + 1768);
  v2 = *(v0 + 1776);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 2040) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1768, sub_1005CE058, v0 + 1264);
}

uint64_t sub_1005CE058()
{
  sub_1005CFFA8(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005CE10C, v1, v0);
}

uint64_t sub_1005CE10C()
{
  v1 = *(v0 + 2040);

  return _swift_task_switch(sub_1005CE1A4, v1, 0);
}

uint64_t sub_1005CE1A4()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 2048) = qword_100786178;

  return _swift_task_switch(sub_1005CE23C, v1, 0);
}

uint64_t sub_1005CE23C()
{
  v1 = v0[256];
  v2 = v0[255];
  v3 = sub_1005CFFA8(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[257] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[258] = v5;
  *v5 = v0;
  v5[1] = sub_1005CE378;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1545, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1005CE378()
{
  v1 = *(*v0 + 2048);

  return _swift_task_switch(sub_1005CE4A4, v1, 0);
}

uint64_t sub_1005CE4A4()
{

  *(v0 + 1546) = *(v0 + 1545);

  return _swift_task_switch(sub_1005CE514, 0, 0);
}

uint64_t sub_1005CE514()
{
  v94 = v0;
  if (*(v0 + 1546))
  {
    v1 = *(v0 + 1784);
    static Logger.oauth.getter();
    sub_1005CFF10(v1, v0 + 696);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 1816);
    v6 = *(v0 + 1808);
    v7 = *(v0 + 1800);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v0 + 736);
      sub_1002FE258(v0 + 696);
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] User declined to provide OAuth authentication", v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);
    }

    else
    {

      sub_1002FE258(v0 + 696);
    }

    (*(v6 + 8))(v5, v7);
    type metadata accessor for InternalError();
    sub_1005CFFA8(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    v11 = *(v0 + 1872);
    v12 = *(v0 + 1864);
    v13 = *(v0 + 1856);
    v14 = *(v0 + 1784);
    v15 = *v14;
    *(v0 + 2072) = *v14;
    v16 = v14[1];
    *(v0 + 2080) = v16;
    v17 = v14[2];
    *(v0 + 2088) = v17;
    v18 = v14[3];
    *(v0 + 2096) = v18;
    v19 = v14[5];
    *(v0 + 2104) = v19;
    v92 = v19;
    sub_100489ADC(v15, v16, v17, v18, v19, v13);
    v20 = (*(v11 + 48))(v13, 1, v12);
    v21 = *(v0 + 1936);
    v22 = *(v0 + 1904);
    v23 = *(v0 + 1896);
    if (v20 == 1)
    {
      v89 = v17;
      v24 = *(v0 + 1920);
      v25 = *(v0 + 1784);
      sub_1000032A8(*(v0 + 1856), &qword_100782240);
      UUID.init()();
      static Logger.oauth.getter();
      sub_1005CFF10(v25, v0 + 792);
      v91 = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v26 = v24;
      v27 = *(v22 + 16);
      v27(v26, v21, v23);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 1920);
      v32 = *(v0 + 1904);
      v33 = *(v0 + 1896);
      v34 = *(v0 + 1808);
      v83 = *(v0 + 1840);
      v85 = *(v0 + 1800);
      if (v30)
      {
        v87 = v18;
        v35 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v93[0] = v79;
        *v35 = 138412546;
        v81 = v27;
        v36 = *(v0 + 832);
        sub_1002FE258(v0 + 792);
        *(v35 + 4) = v36;
        *v77 = v36;
        *(v35 + 12) = 2082;
        sub_1005CFFA8(&qword_100789F60, &type metadata accessor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        log = v28;
        v40 = v29;
        v41 = *(v32 + 8);
        v41(v31, v33);
        v42 = v37;
        v27 = v81;
        v43 = sub_1002346CC(v42, v39, v93);

        *(v35 + 14) = v43;
        _os_log_impl(&_mh_execute_header, log, v40, "[%@] Generating new client identifier: %{public}s", v35, 0x16u);
        sub_1000032A8(v77, &qword_10077F920);

        sub_10000710C(v79);

        v18 = v87;
      }

      else
      {

        v41 = *(v32 + 8);
        v41(v31, v33);
        sub_1002FE258(v0 + 792);
      }

      v64 = *(v34 + 8);
      v64(v83, v85);
      v17 = v89;
    }

    else
    {
      v88 = v18;
      v46 = *(v0 + 1928);
      v47 = *(v0 + 1888);
      v48 = *(v0 + 1784);
      sub_100391AA8(*(v0 + 1856), v47);
      v27 = *(v22 + 16);
      v91 = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v27(v21, v47, v23);
      static Logger.oauth.getter();
      sub_1005CFF10(v48, v0 + 1080);
      v27(v46, v21, v23);
      v49 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      v50 = os_log_type_enabled(v49, v82);
      v51 = *(v0 + 1928);
      v52 = *(v0 + 1904);
      v53 = *(v0 + 1896);
      v54 = *(v0 + 1848);
      v55 = *(v0 + 1808);
      v84 = *(v0 + 1888);
      v86 = *(v0 + 1800);
      if (v50)
      {
        v80 = *(v0 + 1848);
        v56 = swift_slowAlloc();
        loga = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v93[0] = v78;
        *v56 = 138412546;
        v90 = v17;
        v57 = *(v0 + 1120);
        sub_1002FE258(v0 + 1080);
        *(v56 + 4) = v57;
        loga->isa = v57;
        *(v56 + 12) = 2082;
        sub_1005CFFA8(&qword_100789F60, &type metadata accessor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v27;
        v61 = v60;
        v74 = v49;
        v41 = *(v52 + 8);
        v41(v51, v53);
        v62 = v58;
        v17 = v90;
        v63 = sub_1002346CC(v62, v61, v93);
        v27 = v59;

        *(v56 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v74, v82, "[%@] Using existing client identifier: %{public}s", v56, 0x16u);
        sub_1000032A8(loga, &qword_10077F920);

        sub_10000710C(v78);

        v64 = *(v55 + 8);
        v64(v80, v86);
      }

      else
      {

        v41 = *(v52 + 8);
        v41(v51, v53);
        sub_1002FE258(v0 + 1080);
        v64 = *(v55 + 8);
        v64(v54, v86);
      }

      sub_1005CFF48(v84, type metadata accessor for OAuthCredential);
      v18 = v88;
    }

    *(v0 + 2128) = v27;
    *(v0 + 2120) = v41;
    *(v0 + 2112) = v64;
    v65 = *(v0 + 1936);
    v66 = *(v0 + 1912);
    v67 = *(v0 + 1896);
    v68 = *(v0 + 1784);
    *(v0 + 2136) = v91;
    v27(v66, v65, v67);
    v69 = *(v68 + 32);

    v70 = v92;
    v71 = swift_task_alloc();
    *(v0 + 2144) = v71;
    *v71 = v0;
    v71[1] = sub_1005CEE38;
    v72 = *(v0 + 1912);
    v73 = *(v0 + 1792);

    return sub_10062C6D0(v73, v72, v17, v18, v69, v70);
  }
}

uint64_t sub_1005CEE38()
{
  v2 = *v1;
  v2[269] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005CF8FC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[270] = v3;
    *v3 = v2;
    v3[1] = sub_1005CEFBC;
    v4 = v2[263];
    v5 = v2[262];
    v6 = v2[261];
    v7 = v2[260];
    v8 = v2[259];

    return sub_10062DEF0(v8, v7, v6, v5, v4);
  }
}

uint64_t sub_1005CEFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[271] = a1;
  v6[272] = a2;
  v6[273] = a3;
  v6[274] = a4;
  v6[275] = v4;

  if (v4)
  {
    v7 = sub_1005CFA3C;
  }

  else
  {
    v7 = sub_1005CF0E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005CF0E0()
{
  v30 = v0;
  v1 = *(v0 + 1784);
  static Logger.oauth.getter();
  sub_1005CFF10(v1, v0 + 888);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v24 = *(v0 + 2184);
    v25 = *(v0 + 2192);
    v4 = *(v0 + 2176);
    v5 = *(v0 + 2168);
    v27 = *(v0 + 1832);
    v28 = *(v0 + 2112);
    v26 = *(v0 + 1800);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v6 = 138412546;
    v9 = *(v0 + 928);
    sub_1002FE258(v0 + 888);
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2082;

    v10 = sub_10062FAEC(v5, v4, v24, v25);
    v12 = v11;

    v13 = sub_1002346CC(v10, v12, &v29);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Received authorization code: %{public}s", v6, 0x16u);
    sub_1000032A8(v7, &qword_10077F920);

    sub_10000710C(v8);

    v28(v27, v26);
  }

  else
  {
    v14 = *(v0 + 2112);
    v15 = *(v0 + 1832);
    v16 = *(v0 + 1800);

    sub_1002FE258(v0 + 888);
    v14(v15, v16);
  }

  v17 = swift_task_alloc();
  *(v0 + 2208) = v17;
  *v17 = v0;
  v17[1] = sub_1005CF3C0;
  v18 = *(v0 + 2192);
  v19 = *(v0 + 2184);
  v20 = *(v0 + 2176);
  v21 = *(v0 + 2168);
  v22 = *(v0 + 2104);

  return sub_10062EA38(v0 + 1176, v21, v20, v19, v18, v22);
}

uint64_t sub_1005CF3C0()
{
  *(*v1 + 2216) = v0;

  if (v0)
  {
    v2 = sub_1005CFBA0;
  }

  else
  {
    v2 = sub_1005CF510;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005CF510()
{
  v37 = v0;
  v1 = *(v0 + 1784);
  static Logger.oauth.getter();
  sub_1005CFF10(v1, v0 + 984);
  sub_100391998(v0 + 1176, v0 + 1304);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1003919F4(v0 + 1176);
  if (os_log_type_enabled(v2, v3))
  {
    v35 = *(v0 + 2112);
    v33 = *(v0 + 1800);
    v34 = *(v0 + 1824);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v4 = 138412546;
    v7 = *(v0 + 1024);
    sub_1002FE258(v0 + 984);
    *(v4 + 4) = v7;
    *v5 = v7;
    *(v4 + 12) = 2082;
    sub_100391998(v0 + 1176, v0 + 1392);
    v8 = sub_10062FFE4();
    v10 = v9;
    sub_1003919F4(v0 + 1176);
    v11 = sub_1002346CC(v8, v10, &v36);

    *(v4 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Received access token: %{public}s", v4, 0x16u);
    sub_1000032A8(v5, &qword_10077F920);

    sub_10000710C(v6);

    v35(v34, v33);
  }

  else
  {
    v12 = *(v0 + 2112);
    v13 = *(v0 + 1824);
    v14 = *(v0 + 1800);

    sub_1002FE258(v0 + 984);
    v12(v13, v14);
  }

  v31 = *(v0 + 2104);
  v30 = *(v0 + 2096);
  v15 = *(v0 + 2088);
  v16 = *(v0 + 2080);
  v17 = *(v0 + 2072);
  v18 = *(v0 + 1936);
  v32 = *(v0 + 2120);
  v19 = *(v0 + 1896);
  v20 = *(v0 + 1880);
  v21 = *(v0 + 1864);
  v22 = *(v0 + 1792);
  (*(v0 + 2128))(v20, v18, v19);
  v23 = v20 + *(v21 + 20);
  v24 = *(v0 + 1192);
  *v23 = *(v0 + 1176);
  *(v23 + 16) = v24;
  v25 = *(v0 + 1208);
  v26 = *(v0 + 1224);
  v27 = *(v0 + 1240);
  *(v23 + 80) = *(v0 + 1256);
  *(v23 + 48) = v26;
  *(v23 + 64) = v27;
  *(v23 + 32) = v25;
  sub_10048B61C(v20, v17, v16, v15, v30, v31);
  sub_1005CFF48(v20, type metadata accessor for OAuthCredential);
  sub_1005CFF48(v22, type metadata accessor for OAuthClient);
  v32(v18, v19);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1005CF8FC()
{
  (*(v0 + 2120))(*(v0 + 1936), *(v0 + 1896));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005CFA3C()
{
  v1 = v0[265];
  v2 = v0[242];
  v3 = v0[237];
  sub_1005CFF48(v0[224], type metadata accessor for OAuthClient);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005CFBA0()
{
  v1 = v0[265];
  v2 = v0[242];
  v3 = v0[237];
  sub_1005CFF48(v0[224], type metadata accessor for OAuthClient);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005CFD04(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1005CFDF0;

  return v5();
}

uint64_t sub_1005CFDF0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1005CFF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005CFFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005CFFF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1005D0038(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1005D00A0()
{
  v1[107] = v0;
  v2 = type metadata accessor for Platform();
  v1[108] = v2;
  v1[109] = *(v2 - 8);
  v1[110] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EF30);
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[114] = v3;
  v1[115] = *(v3 - 8);
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[118] = v4;
  v1[119] = *(v4 - 8);
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  sub_1001F0C48(&qword_1007889A0);
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v5 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  v1[124] = v5;
  v1[125] = *(v5 - 8);
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  sub_1001F0C48(&qword_100782240);
  v1[130] = swift_task_alloc();
  type metadata accessor for ConfigurationBag(0);
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();

  return _swift_task_switch(sub_1005D03E0, 0, 0);
}

uint64_t sub_1005D03E0()
{
  v1 = *(v0 + 856);
  sub_10020A980(v1, v0 + 328);
  v2 = *(v1 + 48);
  v42 = *(v1 + 40);
  v40 = *(v1 + 175);
  *(v0 + 274) = v40;
  v43 = v2;

  v3 = sub_100625FA0();
  sub_10020A980(v1 + 176, v0 + 368);
  v4 = [objc_opt_self() ephemeralSessionConfiguration];
  [v4 setHTTPShouldSetCookies:0];
  [v4 setHTTPCookieAcceptPolicy:1];
  [v4 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v5 = [objc_opt_self() sessionWithConfiguration:v4];

  type metadata accessor for PlainHTTP();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v7 = *(v0 + 392);
  v8 = sub_100231ED8(v0 + 368, v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  v11 = *v10;
  v12 = type metadata accessor for Dependencies();
  *(v0 + 432) = v12;
  *(v0 + 440) = &off_100770208;
  *(v0 + 408) = v11;
  v41 = type metadata accessor for DecoratedHTTP();
  v13 = swift_allocObject();
  *(v0 + 1064) = v13;
  v14 = sub_100231ED8(v0 + 408, v12);
  v15 = *(v12 - 8);
  v16 = swift_task_alloc();
  v39 = *(v15 + 16);
  (v39)(v16, v14, v12);
  v17 = *v16;
  *(v0 + 472) = v12;
  *(v0 + 480) = &off_100770208;
  *(v0 + 448) = v17;
  v13[2] = v6;
  v13[3] = v3;
  sub_10020A980(v0 + 328, v0 + 488);
  v18 = v3;
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 776);
    v20 = *(v0 + 784);
    v21 = type metadata accessor for NativeDecorator();
    v22 = swift_allocObject();
    *(v22 + 32) = v43;
    *(v22 + 40) = v19;
    *(v22 + 48) = v20;
    v23 = &off_100762508;
    *(v22 + 16) = v18;
    *(v22 + 24) = v42;
  }

  else
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v33 = *(v0 + 792);
    v35 = *(v0 + 800);
    v36 = *(v0 + 1040);
    v38 = v13[2];
    sub_10020A980(v0 + 448, v0 + 528);
    v25 = *(v0 + 552);
    sub_100231ED8(v0 + 528, v25);
    v26 = *(v25 - 8);
    v37 = swift_task_alloc();
    (*(v26 + 16))();
    v27 = *v37;
    *(v0 + 592) = v12;
    *(v0 + 600) = &off_100770208;
    *(v0 + 568) = v27;
    v21 = type metadata accessor for OAuthDecorator();
    v22 = swift_allocObject();
    sub_100231ED8(v0 + 568, v12);
    v34 = swift_task_alloc();
    v39();
    v28 = *v34;
    *(v0 + 632) = v12;
    *(v0 + 640) = &off_100770208;
    *(v0 + 608) = v28;

    swift_defaultActor_initialize();
    v29 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7EC653A4C512B1F4D7EE1900495297C014OAuthDecorator_credential;
    v30 = type metadata accessor for OAuthCredential();
    (*(*(v30 - 8) + 56))(v22 + v29, 1, 1, v30);
    *(v22 + 176) = v42;
    *(v22 + 184) = v43;
    *(v22 + 192) = v33;
    *(v22 + 200) = v35;
    *(v22 + 120) = v40;

    sub_100489ADC(v42, v43, v33, v35, v18, v36);

    swift_beginAccess();
    sub_10038B4F8(v36, v22 + v29);
    swift_endAccess();
    *(v22 + 128) = v38;
    *(v22 + 112) = v18;
    sub_100236238((v0 + 608), v22 + 136);
    sub_10000710C(v0 + 568);

    sub_10000710C(v0 + 528);

    v23 = &off_100762528;
  }

  v13[7] = v21;
  v13[8] = v23;
  v13[4] = v22;
  sub_10000710C(v0 + 328);
  sub_10000710C(v0 + 448);
  sub_10000710C(v0 + 488);
  sub_10000710C(v0 + 408);

  sub_10000710C(v0 + 368);

  *(v0 + 672) = v41;
  *(v0 + 680) = &off_100762548;
  *(v0 + 648) = v13;

  v31 = swift_task_alloc();
  *(v0 + 1072) = v31;
  *v31 = v0;
  v31[1] = sub_1005D0A78;
  v32 = *(v0 + 1056);

  return sub_1005D3390(v32, v0 + 648);
}

uint64_t sub_1005D0A78()
{
  v2 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v3 = sub_1005D31FC;
  }

  else
  {
    sub_10000710C(v2 + 648);
    v3 = sub_1005D0BC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005D0BC8()
{
  v156 = v0;
  v1 = *(*(v0 + 856) + 56);
  v142 = *(v1 + 16);
  if (v142)
  {
    v2 = 0;
    v138 = *(v0 + 1000);
    v3 = (v1 + 72);
    v4 = &_swiftEmptyDictionarySingleton;
    v140 = *(*(v0 + 856) + 56);
    while (v2 < *(v1 + 16))
    {
      v5 = *(v0 + 1048);
      v6 = *(v0 + 1032);
      v7 = *(v3 - 4);
      v148 = *(v3 - 5);
      v8 = *(v3 - 3);
      v9 = *(v3 - 2);
      v10 = *v3;
      v144 = v2;
      v147 = *(v3 - 1);

      v152 = v8;
      sub_1003940B0(v8, v9, v5);
      sub_10052B800(v5, v6);
      sub_1005D3988(v5, type metadata accessor for ConfigurationBag);
      if (v4[2] && (v11 = sub_1005224AC(*(v0 + 1032)), (v12 & 1) != 0))
      {
        v13 = *(v4[7] + 8 * v11);
      }

      else
      {
        v13 = _swiftEmptyArrayStorage;
      }

      v14 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100362AE4(0, *(v13 + 2) + 1, 1, v13);
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      if (v16 >= v15 >> 1)
      {
        v13 = sub_100362AE4((v15 > 1), v16 + 1, 1, v13);
      }

      v17 = *(v0 + 1032);
      v18 = *(v0 + 1024);
      *(v13 + 2) = v16 + 1;
      v19 = &v13[48 * v16];
      *(v19 + 4) = v148;
      *(v19 + 5) = v14;
      *(v19 + 6) = v152;
      *(v19 + 7) = v9;
      *(v19 + 8) = v147;
      *(v19 + 9) = v10;
      sub_10052B800(v17, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v4;
      v21 = sub_1005224AC(v18);
      v23 = v4[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_81;
      }

      v27 = v22;
      if (v4[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = v21;
          sub_1005C42EC();
          v21 = v35;
          v4 = v155;
        }
      }

      else
      {
        v28 = *(v0 + 1024);
        sub_1005BA4A4(v26, isUniquelyReferenced_nonNull_native);
        v4 = v155;
        v21 = sub_1005224AC(v28);
        if ((v27 & 1) != (v29 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v30 = *(v0 + 1032);
      v31 = *(v0 + 1024);
      if (v27)
      {
        *(v4[7] + 8 * v21) = v13;

        sub_1005D3988(v31, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
        sub_1005D3988(v30, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
      }

      else
      {
        v4[(v21 >> 6) + 8] |= 1 << v21;
        v32 = v21;
        sub_10052B800(v31, v4[6] + *(v138 + 72) * v21);
        *(v4[7] + 8 * v32) = v13;
        sub_1005D3988(v31, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
        sub_1005D3988(v30, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
        v33 = v4[2];
        v25 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v25)
        {
          goto LABEL_82;
        }

        v4[2] = v34;
      }

      v2 = v144 + 1;
      v3 += 6;
      v1 = v140;
      if (v142 == v144 + 1)
      {
        goto LABEL_24;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
  }

  v4 = &_swiftEmptyDictionarySingleton;
LABEL_24:
  *(v0 + 1088) = v4;
  *(v0 + 840) = _swiftEmptyArrayStorage;
  v36 = *(v4 + 32);
  *(v0 + 275) = v36;
  v37 = 1 << v36;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v4[8];

  v40 = 0;
  while (2)
  {
    if (v39)
    {
      v41 = *(v0 + 1088);
      goto LABEL_40;
    }

    v42 = ((1 << *(v0 + 275)) + 63) >> 6;
    if (v42 <= (v40 + 1))
    {
      v43 = v40 + 1;
    }

    else
    {
      v43 = ((1 << *(v0 + 275)) + 63) >> 6;
    }

    v44 = v43 - 1;
    do
    {
      v45 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_80;
      }

      if (v45 >= v42)
      {
        v121 = *(v0 + 976);
        v122 = sub_1001F0C48(&qword_1007889A8);
        (*(*(v122 - 8) + 56))(v121, 1, 1, v122);
        v39 = 0;
        goto LABEL_41;
      }

      v41 = *(v0 + 1088);
      v39 = *(v41 + 8 * v45 + 64);
      ++v40;
    }

    while (!v39);
    v40 = v45;
LABEL_40:
    v46 = *(v0 + 1016);
    v47 = *(v0 + 976);
    v48 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v49 = v48 | (v40 << 6);
    sub_10052B800(*(v41 + 48) + *(*(v0 + 1000) + 72) * v49, v46);
    v50 = *(*(v41 + 56) + 8 * v49);
    v51 = sub_1001F0C48(&qword_1007889A8);
    v52 = *(v51 + 48);
    sub_1005D39E8(v46, v47);
    *(v47 + v52) = v50;
    (*(*(v51 - 8) + 56))(v47, 0, 1, v51);

    v44 = v40;
LABEL_41:
    *(v0 + 1104) = v44;
    *(v0 + 1096) = v39;
    v53 = *(v0 + 984);
    sub_10020A668(*(v0 + 976), v53, &qword_1007889A0);
    v54 = sub_1001F0C48(&qword_1007889A8);
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      sub_1005D3988(*(v0 + 1056), type metadata accessor for ConfigurationBag);

      v124 = *(v0 + 840);

      v125 = *(v0 + 8);

      return v125(v124);
    }

    v151 = v44;
    v55 = *(v0 + 274);
    v56 = *(v0 + 1008);
    v57 = *(v0 + 992);
    v58 = *(v0 + 984);
    v59 = *(v0 + 856);
    v153 = *(v58 + *(v54 + 48));
    sub_1005D39E8(v58, v56);
    *(v0 + 824) = 0;
    *(v0 + 832) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v60 = v59[3];
    v61 = v59[4];
    sub_100006D8C(v59, v60);
    v62 = (*(v61 + 40))(v60, v61);
    v64 = v63;

    *(v0 + 808) = v62;
    *(v0 + 816) = v64;
    v65._countAndFlagsBits = 45;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v149 = *(v57 + 20);
    v66._countAndFlagsBits = URL.absoluteString.getter();
    String.append(_:)(v66);

    v67._object = 0x80000001006CDF70;
    v67._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v67);
    *(v0 + 1112) = *(v0 + 808);
    *(v0 + 1120) = *(v0 + 816);
    if (v55)
    {
      break;
    }

    v68 = *(*(v0 + 1008) + *(*(v0 + 992) + 24)) * 3600.0;
    if (os_variant_has_internal_content())
    {
      *(v0 + 273) = 0;
      v69 = String._bridgeToObjectiveC()();
      v70 = String._bridgeToObjectiveC()();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v69, v70, (v0 + 273));

      if (*(v0 + 273))
      {
        if (AppBooleanValue)
        {
          static Logger.updates.getter();
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *v74 = 138412290;
            v76 = sub_100625FA0();
            *(v74 + 4) = v76;
            *v75 = v76;
            _os_log_impl(&_mh_execute_header, v72, v73, "[%@] Skipping minimum polling interval due to internal default being set", v74, 0xCu);
            sub_1000032A8(v75, &qword_10077F920);
          }

          v77 = *(v0 + 968);
          v78 = *(v0 + 952);
          v79 = *(v0 + 944);

          (*(v78 + 8))(v77, v79);
          v68 = 0.0;
        }
      }
    }

    v80 = *(*(v0 + 920) + 56);
    v80(*(v0 + 896), 1, 1, *(v0 + 912));
    v81 = [objc_opt_self() standardUserDefaults];
    if (!v81)
    {
      *(v0 + 688) = 0u;
      *(v0 + 704) = 0u;
LABEL_57:
      v95 = *(v0 + 912);
      v96 = *(v0 + 888);
      sub_1000032A8(v0 + 688, &qword_100783A30);
      v80(v96, 1, 1, v95);
      goto LABEL_58;
    }

    v82 = v81;
    v83 = String._bridgeToObjectiveC()();
    v84 = [v82 objectForKey:v83];

    if (v84)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 720) = 0u;
      *(v0 + 736) = 0u;
    }

    v85 = *(v0 + 736);
    *(v0 + 688) = *(v0 + 720);
    *(v0 + 704) = v85;
    if (!*(v0 + 712))
    {
      goto LABEL_57;
    }

    v86 = *(v0 + 920);
    v87 = *(v0 + 912);
    v88 = *(v0 + 888);
    v89 = swift_dynamicCast();
    v80(v88, v89 ^ 1u, 1, v87);
    v90 = *(v86 + 48);
    if (v90(v88, 1, v87) != 1)
    {
      v145 = v56;
      v91 = *(v0 + 920);
      v92 = *(v0 + 912);
      v93 = *(v0 + 904);
      v94 = *(v0 + 888);
      sub_1000032A8(*(v0 + 896), &qword_10077EF30);
      (*(v91 + 32))(v93, v94, v92);
      v56 = v145;
      v80(v93, 0, 1, v92);
      goto LABEL_60;
    }

LABEL_58:
    v97 = *(v0 + 920);
    v98 = *(v0 + 912);
    v99 = *(v0 + 888);
    sub_10020A668(*(v0 + 896), *(v0 + 904), &qword_10077EF30);
    v90 = *(v97 + 48);
    if (v90(v99, 1, v98) != 1)
    {
      sub_1000032A8(*(v0 + 888), &qword_10077EF30);
    }

LABEL_60:
    v100 = *(v0 + 920);
    v101 = *(v0 + 912);
    v102 = *(v0 + 904);
    if (v90(v102, 1, v101) == 1)
    {
      sub_1000032A8(v102, &qword_10077EF30);
    }

    else
    {
      (*(v100 + 32))(*(v0 + 936), v102, v101);
      Date.timeIntervalSinceNow.getter();
      if (fabs(v103) < v68)
      {
        v104 = *(v0 + 856);

        static Logger.updates.getter();
        sub_1005D3AF4(v104, v0 + 16);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();
        v107 = os_log_type_enabled(v105, v106);
        v150 = *(v0 + 1008);
        v108 = *(v0 + 960);
        v109 = *(v0 + 952);
        v154 = *(v0 + 944);
        v110 = *(v0 + 936);
        v111 = *(v0 + 920);
        v112 = *(v0 + 912);
        if (v107)
        {
          v146 = *(v0 + 936);
          v113 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v155 = v139;
          *v113 = 138412546;
          v114 = sub_100625FA0();
          *(v113 + 4) = v114;
          *v137 = v114;
          *(v113 + 12) = 2082;
          v141 = v108;
          v143 = v112;
          v115 = *(v0 + 40);
          v116 = *(v0 + 48);
          sub_100006D8C((v0 + 16), v115);
          v117 = (*(v116 + 40))(v115, v116);
          v119 = v118;
          sub_100231FCC(v0 + 16);
          v120 = sub_1002346CC(v117, v119, &v155);

          *(v113 + 14) = v120;
          _os_log_impl(&_mh_execute_header, v105, v106, "[%@] minimum polling interval not met for %{public}s, skipping check", v113, 0x16u);
          sub_1000032A8(v137, &qword_10077F920);

          sub_10000710C(v139);

          (*(v109 + 8))(v141, v154);
          (*(v111 + 8))(v146, v143);
          sub_1005D3988(v150, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
        }

        else
        {

          (*(v109 + 8))(v108, v154);
          (*(v111 + 8))(v110, v112);
          sub_1005D3988(v150, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
          sub_100231FCC(v0 + 16);
        }

        v40 = v151;
        continue;
      }

      (*(*(v0 + 920) + 8))(*(v0 + 936), *(v0 + 912));
    }

    break;
  }

  v126 = *(v0 + 856);
  v128 = *(v126 + 144);
  v127 = *(v126 + 152);
  if (*(v126 + 172))
  {
    v129 = 0xE600000000000000;
    v130 = 0x534F64615069;
  }

  else
  {
    v131 = *(v0 + 880);
    v132 = *(v0 + 872);
    v133 = *(v0 + 864);
    static Platform.iOS.getter();
    v130 = Platform.description.getter();
    v129 = v134;
    (*(v132 + 8))(v131, v133);
  }

  *(v0 + 256) = &type metadata for UpdatesRequest;
  *(v0 + 264) = sub_1005D3A4C();
  v135 = swift_allocObject();
  *(v0 + 232) = v135;
  v135[2] = v153;
  v135[3] = v130;
  v135[4] = v129;
  v135[5] = v128;
  v135[6] = v127;
  *(v0 + 272) = 0;

  *(v0 + 1128) = sub_100625FA0();
  sub_100391884(v0 + 232, v0 + 280);
  v136 = swift_task_alloc();
  *(v0 + 1136) = v136;
  *v136 = v0;
  v136[1] = sub_1005D1C80;

  return sub_10038FFA4(v56 + v149, 1, v0 + 280, 0, 1);
}

uint64_t sub_1005D1C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 1144) = a1;
  *(v5 + 1152) = a2;
  *(v5 + 1160) = a3;
  *(v5 + 1168) = v3;

  if (v3)
  {

    sub_1000032A8(v5 + 280, &qword_100780BA8);

    v6 = sub_1005D3008;
  }

  else
  {

    sub_1000032A8(v5 + 280, &qword_100780BA8);
    sub_1003918E0(v5 + 232);
    v6 = sub_1005D1E24;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005D1E24()
{
  v148 = v0;
  if ([*(v0 + 1160) statusCode] != 200)
  {
    v8 = *(v0 + 1160);
    v9 = *(v0 + 1152);
    v10 = *(v0 + 1144);
    v11 = *(v0 + 1056);
    v12 = *(v0 + 1008);

    v13 = [v8 statusCode];
    sub_10039403C();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    swift_willThrow();

    sub_100007158(v10, v9);

    sub_1005D3988(v12, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
    sub_1005D3988(v11, type metadata accessor for ConfigurationBag);
    goto LABEL_5;
  }

  v1 = (v0 + 848);
  v2 = *(v0 + 1168);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005D3AA0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    v3 = *(v0 + 1160);
    v4 = *(v0 + 1152);
    v5 = *(v0 + 1144);
    v6 = *(v0 + 1056);
    v7 = *(v0 + 1008);

    sub_100007158(v5, v4);

    sub_1005D3988(v7, type metadata accessor for ConfigurationBag.UpdatesConfiguration);

    sub_1005D3988(v6, type metadata accessor for ConfigurationBag);
LABEL_5:

    v15 = *(v0 + 8);

    return v15();
  }

  if (*(*v1 + 16))
  {
    sub_1006537B4(*v1);
  }

  else
  {
  }

  if (*(v0 + 274))
  {
    v17 = *(v0 + 1160);
    v18 = *(v0 + 1152);
    v19 = *(v0 + 1144);
    sub_1005D3988(*(v0 + 1008), type metadata accessor for ConfigurationBag.UpdatesConfiguration);

    sub_100007158(v19, v18);
  }

  else
  {
    Date.init()();
    v20 = [objc_opt_self() standardUserDefaults];
    if (v20)
    {
      v21 = v20;
      v22 = *(v0 + 1160);
      v23 = *(v0 + 1144);
      v142 = *(v0 + 1152);
      v144 = *(v0 + 1008);
      v24 = *(v0 + 928);
      v25 = *(v0 + 920);
      v26 = *(v0 + 912);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v28 = String._bridgeToObjectiveC()();

      [v21 setObject:isa forKey:v28];

      sub_100007158(v23, v142);
      (*(v25 + 8))(v24, v26);
      v29 = v144;
    }

    else
    {
      v30 = *(v0 + 1160);
      v31 = *(v0 + 1152);
      v32 = *(v0 + 1144);
      v33 = *(v0 + 1008);
      v34 = *(v0 + 928);
      v35 = *(v0 + 920);
      v36 = *(v0 + 912);

      sub_100007158(v32, v31);
      (*(v35 + 8))(v34, v36);
      v29 = v33;
    }

    sub_1005D3988(v29, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
  }

  v37 = *(v0 + 1104);
  v38 = *(v0 + 1096);
  while (1)
  {
    if (v38)
    {
      v39 = *(v0 + 1088);
LABEL_30:
      v44 = *(v0 + 1016);
      v45 = *(v0 + 976);
      v46 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v47 = v46 | (v37 << 6);
      sub_10052B800(*(v39 + 48) + *(*(v0 + 1000) + 72) * v47, v44);
      v48 = *(*(v39 + 56) + 8 * v47);
      v49 = sub_1001F0C48(&qword_1007889A8);
      v50 = *(v49 + 48);
      sub_1005D39E8(v44, v45);
      *(v45 + v50) = v48;
      (*(*(v49 - 8) + 56))(v45, 0, 1, v49);

      v42 = v37;
    }

    else
    {
      v40 = ((1 << *(v0 + 275)) + 63) >> 6;
      v41 = v40 <= (v37 + 1) ? v37 + 1 : ((1 << *(v0 + 275)) + 63) >> 6;
      v42 = v41 - 1;
      while (1)
      {
        v43 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
        }

        if (v43 >= v40)
        {
          break;
        }

        v39 = *(v0 + 1088);
        v38 = *(v39 + 8 * v43 + 64);
        ++v37;
        if (v38)
        {
          v37 = v43;
          goto LABEL_30;
        }
      }

      v119 = *(v0 + 976);
      v120 = sub_1001F0C48(&qword_1007889A8);
      (*(*(v120 - 8) + 56))(v119, 1, 1, v120);
      v38 = 0;
    }

    *(v0 + 1104) = v42;
    *(v0 + 1096) = v38;
    v51 = *(v0 + 984);
    sub_10020A668(*(v0 + 976), v51, &qword_1007889A0);
    v52 = sub_1001F0C48(&qword_1007889A8);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      break;
    }

    v53 = *(v0 + 274);
    v54 = *(v0 + 1008);
    v55 = *(v0 + 992);
    v56 = *(v0 + 984);
    v57 = *(v0 + 856);
    v143 = v42;
    v145 = *(v56 + *(v52 + 48));
    sub_1005D39E8(v56, v54);
    *(v0 + 824) = 0;
    *(v0 + 832) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v58 = v57[3];
    v59 = v57[4];
    sub_100006D8C(v57, v58);
    v60 = (*(v59 + 40))(v58, v59);
    v62 = v61;

    *(v0 + 808) = v60;
    *(v0 + 816) = v62;
    v63._countAndFlagsBits = 45;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v140 = *(v55 + 20);
    v64._countAndFlagsBits = URL.absoluteString.getter();
    String.append(_:)(v64);

    v65._object = 0x80000001006CDF70;
    v65._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v65);
    *(v0 + 1112) = *(v0 + 808);
    *(v0 + 1120) = *(v0 + 816);
    if (v53)
    {
      goto LABEL_60;
    }

    v66 = *(*(v0 + 1008) + *(*(v0 + 992) + 24)) * 3600.0;
    if (os_variant_has_internal_content())
    {
      *(v0 + 273) = 0;
      v67 = String._bridgeToObjectiveC()();
      v68 = String._bridgeToObjectiveC()();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v67, v68, (v0 + 273));

      if (*(v0 + 273))
      {
        if (AppBooleanValue)
        {
          static Logger.updates.getter();
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v72 = 138412290;
            v74 = sub_100625FA0();
            *(v72 + 4) = v74;
            *v73 = v74;
            _os_log_impl(&_mh_execute_header, v70, v71, "[%@] Skipping minimum polling interval due to internal default being set", v72, 0xCu);
            sub_1000032A8(v73, &qword_10077F920);
          }

          v75 = *(v0 + 968);
          v76 = *(v0 + 952);
          v77 = *(v0 + 944);

          (*(v76 + 8))(v75, v77);
          v66 = 0.0;
        }
      }
    }

    v78 = *(*(v0 + 920) + 56);
    v78(*(v0 + 896), 1, 1, *(v0 + 912));
    v79 = [objc_opt_self() standardUserDefaults];
    if (!v79)
    {
      *(v0 + 688) = 0u;
      *(v0 + 704) = 0u;
LABEL_47:
      v93 = *(v0 + 912);
      v94 = *(v0 + 888);
      sub_1000032A8(v0 + 688, &qword_100783A30);
      v78(v94, 1, 1, v93);
      goto LABEL_48;
    }

    v80 = v79;
    v81 = String._bridgeToObjectiveC()();
    v82 = [v80 objectForKey:v81];

    if (v82)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 720) = 0u;
      *(v0 + 736) = 0u;
    }

    v83 = *(v0 + 736);
    *(v0 + 688) = *(v0 + 720);
    *(v0 + 704) = v83;
    if (!*(v0 + 712))
    {
      goto LABEL_47;
    }

    v84 = *(v0 + 920);
    v85 = *(v0 + 912);
    v86 = *(v0 + 888);
    v87 = swift_dynamicCast();
    v78(v86, v87 ^ 1u, 1, v85);
    v88 = *(v84 + 48);
    if (v88(v86, 1, v85) != 1)
    {
      v138 = v54;
      v89 = *(v0 + 920);
      v90 = *(v0 + 912);
      v91 = *(v0 + 904);
      v92 = *(v0 + 888);
      sub_1000032A8(*(v0 + 896), &qword_10077EF30);
      (*(v89 + 32))(v91, v92, v90);
      v54 = v138;
      v78(v91, 0, 1, v90);
      goto LABEL_50;
    }

LABEL_48:
    v95 = *(v0 + 920);
    v96 = *(v0 + 912);
    v97 = *(v0 + 888);
    sub_10020A668(*(v0 + 896), *(v0 + 904), &qword_10077EF30);
    v88 = *(v95 + 48);
    if (v88(v97, 1, v96) != 1)
    {
      sub_1000032A8(*(v0 + 888), &qword_10077EF30);
    }

LABEL_50:
    v98 = *(v0 + 920);
    v99 = *(v0 + 912);
    v100 = *(v0 + 904);
    if (v88(v100, 1, v99) == 1)
    {
      sub_1000032A8(v100, &qword_10077EF30);
LABEL_60:
      v123 = *(v0 + 856);
      v125 = *(v123 + 144);
      v124 = *(v123 + 152);
      if (*(v123 + 172))
      {
        v126 = 0xE600000000000000;
        v127 = 0x534F64615069;
      }

      else
      {
        v128 = *(v0 + 880);
        v129 = *(v0 + 872);
        v130 = *(v0 + 864);
        static Platform.iOS.getter();
        v127 = Platform.description.getter();
        v126 = v131;
        (*(v129 + 8))(v128, v130);
      }

      *(v0 + 256) = &type metadata for UpdatesRequest;
      *(v0 + 264) = sub_1005D3A4C();
      v132 = swift_allocObject();
      *(v0 + 232) = v132;
      v132[2] = v145;
      v132[3] = v127;
      v132[4] = v126;
      v132[5] = v125;
      v132[6] = v124;
      *(v0 + 272) = 0;

      *(v0 + 1128) = sub_100625FA0();
      sub_100391884(v0 + 232, v0 + 280);
      v133 = swift_task_alloc();
      *(v0 + 1136) = v133;
      *v133 = v0;
      v133[1] = sub_1005D1C80;

      return sub_10038FFA4(v54 + v140, 1, v0 + 280, 0, 1);
    }

    (*(v98 + 32))(*(v0 + 936), v100, v99);
    Date.timeIntervalSinceNow.getter();
    if (fabs(v101) >= v66)
    {
      (*(*(v0 + 920) + 8))(*(v0 + 936), *(v0 + 912));
      goto LABEL_60;
    }

    v102 = *(v0 + 856);

    static Logger.updates.getter();
    sub_1005D3AF4(v102, v0 + 16);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    v105 = os_log_type_enabled(v103, v104);
    v141 = *(v0 + 1008);
    v106 = *(v0 + 960);
    v107 = *(v0 + 952);
    v146 = *(v0 + 944);
    v108 = *(v0 + 936);
    v109 = *(v0 + 920);
    v110 = *(v0 + 912);
    if (v105)
    {
      v139 = *(v0 + 936);
      v111 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v147 = v135;
      *v111 = 138412546;
      v112 = sub_100625FA0();
      *(v111 + 4) = v112;
      *v134 = v112;
      *(v111 + 12) = 2082;
      v136 = v106;
      v137 = v110;
      v113 = *(v0 + 40);
      v114 = *(v0 + 48);
      sub_100006D8C((v0 + 16), v113);
      v115 = (*(v114 + 40))(v113, v114);
      v117 = v116;
      sub_100231FCC(v0 + 16);
      v118 = sub_1002346CC(v115, v117, &v147);

      *(v111 + 14) = v118;
      _os_log_impl(&_mh_execute_header, v103, v104, "[%@] minimum polling interval not met for %{public}s, skipping check", v111, 0x16u);
      sub_1000032A8(v134, &qword_10077F920);

      sub_10000710C(v135);

      (*(v107 + 8))(v136, v146);
      (*(v109 + 8))(v139, v137);
      sub_1005D3988(v141, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
    }

    else
    {

      (*(v107 + 8))(v106, v146);
      (*(v109 + 8))(v108, v110);
      sub_1005D3988(v141, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
      sub_100231FCC(v0 + 16);
    }

    v37 = v143;
  }

  sub_1005D3988(*(v0 + 1056), type metadata accessor for ConfigurationBag);

  v121 = *(v0 + 840);

  v122 = *(v0 + 8);

  return v122(v121);
}

uint64_t sub_1005D3008()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1008);

  sub_1005D3988(v2, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
  sub_1005D3988(v1, type metadata accessor for ConfigurationBag);
  sub_1003918E0(v0 + 232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005D31FC()
{

  sub_10000710C(v0 + 648);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005D3390(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = type metadata accessor for Logger();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005D3454, 0, 0);
}

uint64_t sub_1005D3454()
{
  sub_10020A980(v0[11], (v0 + 2));
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v2 = v0[7];
    v1 = v0[8];
    v0[15] = v2;
    v0[16] = v1;

    v3 = sub_100625FA0();
    v0[17] = v3;
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_1005D3608;
    v5 = v0[9];
    v6 = v0[10];

    return sub_1003936EC(v5, v2, v1, v6, v3);
  }

  else
  {
    v8 = type metadata accessor for MarketplaceKitError();
    sub_1003040A8();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for MarketplaceKitError.featureUnavailable(_:), v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1005D3608()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005D3768, 0, 0);
  }

  else
  {
    v3 = v2[17];
    swift_bridgeObjectRelease_n();

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1005D3768()
{
  v20 = v0;

  static Logger.updates.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 128);
  if (v3)
  {
    v5 = *(v0 + 120);
    v18 = *(v0 + 112);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 138412546;
    v11 = sub_100625FA0();
    *(v8 + 4) = v11;
    *v9 = v11;
    *(v8 + 12) = 2082;
    v12 = sub_1002346CC(v5, v4, &v19);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error loading configuration bag for %{public}s", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 96);

    (*(v14 + 8))(v13, v15);
  }

  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1005D3988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005D39E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005D3A4C()
{
  result = qword_1007889B0;
  if (!qword_1007889B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007889B0);
  }

  return result;
}

unint64_t sub_1005D3AA0()
{
  result = qword_1007889B8;
  if (!qword_1007889B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007889B8);
  }

  return result;
}

__n128 sub_1005D3B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1005D3B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1005D3BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005D3C4C(uint64_t a1)
{
  *(a1 + 8) = sub_1005D3C7C();
  result = sub_1005D3CD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005D3C7C()
{
  result = qword_1007889C0;
  if (!qword_1007889C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007889C0);
  }

  return result;
}

unint64_t sub_1005D3CD0()
{
  result = qword_1007889C8[0];
  if (!qword_1007889C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1007889C8);
  }

  return result;
}

uint64_t sub_1005D3D24(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1005D4144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  if (a1)
  {
    __chkstk_darwin(a1);
    v17 = a3;
    v18 = v4;

    v19 = a3;
    swift_getExtendedExistentialTypeMetadata_unique();
    v5 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    sub_1005D3D24(sub_1005D4380, v16, v5, &type metadata for Any + 8, &type metadata for Never, WitnessTable, &protocol witness table for Never, v7);

    v8 = &selRef_predicateMatchingAnyPredicates_;
  }

  else
  {
    __chkstk_darwin(a1);
    v17 = a3;
    v18 = v9;

    v19 = a3;
    swift_getExtendedExistentialTypeMetadata_unique();
    v10 = type metadata accessor for Array();
    v11 = swift_getWitnessTable();
    sub_1005D3D24(sub_1005D6294, v16, v10, &type metadata for Any + 8, &type metadata for Never, v11, &protocol witness table for Never, v12);

    v8 = &selRef_predicateMatchingAllPredicates_;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [objc_opt_self() *v8];

  return v14;
}

uint64_t sub_1005D4398@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100006D8C(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  result = sub_100006190(0, &qword_100784690);
  a2[3] = result;
  *a2 = v5;
  return result;
}

id sub_1005D4434()
{
  v0 = objc_opt_self();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 isNullPredicateWithProperty:v1];

  return v2;
}

id sub_1005D4518(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 60));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v4 = *(a1 + 64);
  v13 = *(a1 + 24);
  v5 = v13;
  v14 = *(a1 + 40);
  v6 = sub_10020A748(v12);
  (*(*(v5 - 8) + 16))(v6, v1 + v4, v5);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  SQLiteEncodeValue(_:using:)(v12, v15);

  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  sub_10000710C(v12);
  v8 = String._bridgeToObjectiveC()();

  sub_100006D8C(v15, v15[3]);
  v9 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10 = [objc_opt_self() predicateWithProperty:v8 value:v9 comparisonType:v7];
  swift_unknownObjectRelease();

  sub_10000710C(v15);
  return v10;
}

Swift::Int sub_1005D473C(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1005D47D0()
{
  Hasher.init(_seed:)();
  sub_1005D4714(v2, *v0);
  return Hasher._finalize()();
}

id sub_1005D4824(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v3 = *(v1 + *(a1 + 40));
  v4 = String._bridgeToObjectiveC()();

  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 predicateWithProperty:v4 value:v6 comparisonType:5];

  return v7;
}

id sub_1005D4924(uint64_t a1)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v3 = JSONEncoder.init()();
  if (*(v1 + *(a1 + 60)) == 1)
  {
    v4 = objc_opt_self();
    v5 = *(a1 + 32);
    v6 = *(a1 + 16);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v7 = String._bridgeToObjectiveC()();

    v34 = *(v1 + *(a1 + 64));
    __chkstk_darwin(v8);
    v9 = *(a1 + 24);
    v28 = v6;
    v29 = v9;
    v30 = v5;
    v31 = *(a1 + 40);
    v32 = v3;
    v10 = type metadata accessor for Array();

    WitnessTable = swift_getWitnessTable();
    sub_1005D3D24(sub_1005D6238, v27, v10, &type metadata for Any + 8, &type metadata for Never, WitnessTable, &protocol witness table for Never, v12);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [v4 doesNotContainPredicateWithProperty:v7 values:isa];

    return v14;
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 16);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v18 = dispatch thunk of RawRepresentable.rawValue.getter();
    v33 = *(v1 + *(a1 + 64));
    __chkstk_darwin(v18);
    v19 = *(a1 + 24);
    v28 = v17;
    v29 = v19;
    v30 = v16;
    v31 = *(a1 + 40);
    v32 = v3;
    v20 = type metadata accessor for Array();

    v21 = swift_getWitnessTable();
    v23 = sub_1005D3D24(sub_1005D621C, v27, v20, &type metadata for Any + 8, &type metadata for Never, v21, &protocol witness table for Never, v22);

    v24 = String._bridgeToObjectiveC()();

    v33 = v23;

    sub_1001F0C48(&qword_100784D98);
    v25 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v26 = [objc_opt_self() containsPredicateWithProperty:v24 values:v25];

    swift_unknownObjectRelease();

    return v26;
  }
}

uint64_t sub_1005D4D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v11[5] = a4;
  v11[3] = a2;
  v11[4] = a3;
  v9 = sub_10020A748(v11);
  (*(*(a2 - 8) + 16))(v9, a1, a2);
  SQLiteEncodeValue(_:using:)(v11, a5);
  if (!v5)
  {
    return sub_10000710C(v11);
  }

  sub_10000710C(v11);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1005D4DF0()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005D4E70(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1005D5004(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t sub_1005D5250()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SQLitePredicateInequality.Operation();
    if (v2 <= 0x3F)
    {
      result = sub_100006190(319, &qword_100783A50);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1005D5328(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1005D54B8(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v9 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v9 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v9)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v10) = 0;
  }

  else if (v14)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v7 < 0x7FFFFFFF)
  {
    v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = (a2 - 1);
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v6 + 56);

    v17(a1, a2);
  }
}

uint64_t sub_1005D56C4()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005D576C(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *(((a1 + v8) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1005D58F8(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v9 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v9 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v9)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v10) = 0;
  }

  else if (v14)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v7 < 0x7FFFFFFF)
  {
    v18 = (a1 + v8) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = (a2 - 1);
    }

    *(v18 + 8) = v19;
  }

  else
  {
    v17 = *(v6 + 56);

    v17(a1, a2);
  }
}

uint64_t sub_1005D5AE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1005D5B3C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SQLitePredicateComparison.Operation();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1005D5C1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = a1 + v10;
        if (v12 > 0xFE)
        {
          v25 = *(v8 + 48);

          return v25(&v23[v11 + 1] & ~v11, v9);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 2)
          {
            return v24 - 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1005D5EA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + v12 + 1) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
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
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12];
    if (v14 > 0xFE)
    {
      v25 = *(v10 + 56);

      v25(&v24[v13 + 1] & ~v13, a2, v11);
    }

    else
    {
      *v24 = a2 + 1;
    }
  }
}

uint64_t sub_1005D62B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for NWEndpoint();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005D6374, 0, 0);
}

uint64_t sub_1005D6374()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(v1, v4, v6);
  (*(v2 + 104))(v1, enum case for NWEndpoint.url(_:), v3);
  type metadata accessor for NWParameters();
  static NWParameters.udp.getter();
  type metadata accessor for NWConnection();
  swift_allocObject();
  v7 = NWConnection.init(to:using:)();
  v0[9] = v7;
  if (v5)
  {
    NWConnection.parameters.getter();

    NWParameters.sourceApplicationBundleID.setter();
  }

  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = 0;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = type metadata accessor for NWPath();
  *v10 = v0;
  v10[1] = sub_1005D6574;
  v12 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v12, 0, 0, 0xD000000000000025, 0x80000001006CAE40, sub_1005DA7E0, v9, v11);
}

uint64_t sub_1005D6574()
{

  return _swift_task_switch(sub_1005D668C, 0, 0);
}

uint64_t sub_1005D668C()
{
  NWConnection.forceCancel()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005D6710()
{
  v1 = URL.host(percentEncoded:)(1);
  result = v1.value._countAndFlagsBits;
  if (v1.value._object)
  {
    URL.port.getter();
    if ((v2 & 1) == 0)
    {
      v3._countAndFlagsBits = 58;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);
    }

    return v1.value._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_1005D67B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_19:
    result = sub_1001F0C48(&qword_100788E08);
    a2[3] = result;
    a2[4] = &off_10076DDC8;
    *a2 = v5;
    return result;
  }

  v4 = a1 + 32;
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10020A980(v4, v19);
    v7 = v20;
    v8 = v21;
    sub_100006D8C(v19, v20);
    v9 = (*(v8 + 8))(v7, v8);
    result = sub_10000710C(v19);
    v10 = *(v9 + 16);
    v11 = v5[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v12 <= v5[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v14 = v11 + v10;
      }

      else
      {
        v14 = v11;
      }

      v5 = sub_1003627EC(isUniquelyReferenced_nonNull_native, v14, 1, v5);
      if (*(v9 + 16))
      {
LABEL_14:
        v15 = (v5[3] >> 1) - v5[2];
        result = type metadata accessor for URLQueryItem();
        if (v15 < v10)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v16 = v5[2];
          v17 = __OFADD__(v16, v10);
          v18 = v16 + v10;
          if (v17)
          {
            goto LABEL_23;
          }

          v5[2] = v18;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_21;
    }

LABEL_4:
    v4 += 40;
    if (!--v3)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1005D6980(uint64_t a1)
{
  sub_1005DA3AC();
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v4 = *(a1 + 64);
  v17 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  if ((v6 & v4) != 0)
  {
    do
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_1001DFDA4(*v11, v13, v14);
      sub_1003F16AC(v15, v12, v13, v14);
      result = sub_1001DFEBC(v15[0], v15[1], v16);
    }

    while (v7);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return v17;
    }

    v7 = *(a1 + 64 + 8 * v9);
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

uint64_t sub_1005D6ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for URLQueryItem();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = *(a3 + 16);
  if (!v11)
  {
    return 0;
  }

  v22 = &v22 - v10;
  v23 = v6;
  v13 = *(v6 + 16);
  v12 = v6 + 16;
  v24 = v13;
  v14 = a3 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v15 = *(v12 + 56);
  while (1)
  {
    v24(v9, v14, v5);
    if (URLQueryItem.name.getter() == a1 && v16 == v25)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_9;
    }

    (*(v12 - 8))(v9, v5);
    v14 += v15;
    if (!--v11)
    {
      return 0;
    }
  }

LABEL_9:
  v19 = v22;
  v20 = v23 + 32;
  (*(v23 + 32))(v22, v9, v5);
  v21 = URLQueryItem.value.getter();
  (*(v20 - 24))(v19, v5);
  return v21;
}

uint64_t sub_1005D6CB4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1005D9858(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_1005D6FB4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - v6;
  v46 = type metadata accessor for URLComponents();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();

  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.queryItems.setter();
  if (os_variant_has_internal_content())
  {
    v50 = a1;
    v51 = a2;
    v48 = 58;
    v49 = 0xE100000000000000;
    sub_100005E50();
    if (StringProtocol.contains<A>(_:)())
    {
      v50 = a1;
      v51 = a2;
      v48 = 58;
      v49 = 0xE100000000000000;
      v11 = StringProtocol.components<A>(separatedBy:)();

      if (v11[2] == 2)
      {

        URLComponents.host.setter();
        if (v11[2] < 2uLL)
        {
          __break(1u);
          goto LABEL_73;
        }

        v13 = v11[6];
        v12 = v11[7];

        v15 = HIBYTE(v12) & 0xF;
        v16 = v13 & 0xFFFFFFFFFFFFLL;
        if ((v12 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v12) & 0xF;
        }

        else
        {
          v17 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17)
        {
          goto LABEL_73;
        }

        if ((v12 & 0x1000000000000000) != 0)
        {
          sub_1005D9858(v13, v12, 10);
          goto LABEL_73;
        }

        if ((v12 & 0x2000000000000000) != 0)
        {
          v50 = v13;
          v51 = v12 & 0xFFFFFFFFFFFFFFLL;
          if (v13 == 43)
          {
            if (v15)
            {
              if (--v15)
              {
                v35 = 0;
                v36 = &v50 + 1;
                while (1)
                {
                  v37 = *v36 - 48;
                  if (v37 > 9)
                  {
                    break;
                  }

                  v38 = 10 * v35;
                  if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                  {
                    break;
                  }

                  v35 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    break;
                  }

                  ++v36;
                  if (!--v15)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_81:
            __break(1u);
            return result;
          }

          if (v13 != 45)
          {
            if (v15)
            {
              v42 = 0;
              v43 = &v50;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  break;
                }

                v45 = 10 * v42;
                if ((v42 * 10) >> 64 != (10 * v42) >> 63)
                {
                  break;
                }

                v42 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  break;
                }

                v43 = (v43 + 1);
                if (!--v15)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v15)
          {
            if (--v15)
            {
              v27 = 0;
              v28 = &v50 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  break;
                }

                v27 = v30 - v29;
                if (__OFSUB__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v15)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v13 & 0x1000000000000000) != 0)
          {
            result = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = _StringObject.sharedUTF8.getter();
          }

          v18 = *result;
          if (v18 == 43)
          {
            if (v16 >= 1)
            {
              v15 = v16 - 1;
              if (v16 != 1)
              {
                v31 = 0;
                if (result)
                {
                  v32 = result + 1;
                  while (1)
                  {
                    v33 = *v32 - 48;
                    if (v33 > 9)
                    {
                      goto LABEL_71;
                    }

                    v34 = 10 * v31;
                    if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                    {
                      goto LABEL_71;
                    }

                    v31 = v34 + v33;
                    if (__OFADD__(v34, v33))
                    {
                      goto LABEL_71;
                    }

                    ++v32;
                    if (!--v15)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_80;
          }

          if (v18 != 45)
          {
            if (v16)
            {
              v39 = 0;
              if (result)
              {
                while (1)
                {
                  v40 = *result - 48;
                  if (v40 > 9)
                  {
                    goto LABEL_71;
                  }

                  v41 = 10 * v39;
                  if ((v39 * 10) >> 64 != (10 * v39) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v39 = v41 + v40;
                  if (__OFADD__(v41, v40))
                  {
                    goto LABEL_71;
                  }

                  ++result;
                  if (!--v16)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v15) = 1;
            goto LABEL_72;
          }

          if (v16 >= 1)
          {
            v15 = v16 - 1;
            if (v16 != 1)
            {
              v19 = 0;
              if (result)
              {
                v20 = result + 1;
                while (1)
                {
                  v21 = *v20 - 48;
                  if (v21 > 9)
                  {
                    goto LABEL_71;
                  }

                  v22 = 10 * v19;
                  if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v19 = v22 - v21;
                  if (__OFSUB__(v22, v21))
                  {
                    goto LABEL_71;
                  }

                  ++v20;
                  if (!--v15)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v15) = 0;
LABEL_72:
              LOBYTE(v48) = v15;
LABEL_73:

              URLComponents.port.setter();
              goto LABEL_25;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }
  }

LABEL_25:
  URLComponents.url.getter();
  (*(v8 + 8))(v10, v46);
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
    sub_1000032A8(v7, &unk_1007809F0);
    v25 = 1;
    v26 = v47;
  }

  else
  {
    v26 = v47;
    (*(v24 + 32))(v47, v7, v23);
    v25 = 0;
  }

  return (*(v24 + 56))(v26, v25, 1, v23);
}

uint64_t sub_1005D75BC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = URL.host(percentEncoded:)(1);
  if (v4.value._object)
  {
    sub_10060014C(v4.value._countAndFlagsBits, v4.value._object);
    v6 = v5;
  }

  else
  {
    static Logger.general.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "URL does not have a valid host.", v9, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v6;
}

uint64_t sub_1005D772C()
{
  v0 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = URL.host(percentEncoded:)(1);
  if (!v7.value._object)
  {
    return 0;
  }

  v8 = (v7.value._object >> 56) & 0xF;
  if ((v7.value._object & 0x2000000000000000) == 0)
  {
    v8 = v7.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = URL.scheme.getter();
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_15:

    return 0;
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URL.port.getter();
  URLComponents.port.setter();
  URLComponents.url.getter();
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v2, 1, v12) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000032A8(v2, &unk_1007809F0);
    return 0;
  }

  v15 = URL.absoluteString.getter();
  (*(v4 + 8))(v6, v3);
  (*(v13 + 8))(v2, v12);
  return v15;
}

uint64_t sub_1005D79D0(char a1)
{
  v1 = a1 & 1;
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1005D835C();
  if ((result & 1) != v1)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    URL.setResourceValues(_:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1005D7D18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1005DA58C(a1, v8);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    sub_100006D8C(v8, v9);
    v5 = (*(v4 + 8))(v3, v4);
    sub_10000710C(v8);
  }

  else
  {
    sub_1000032A8(v8, &qword_1007850E8);
    v5 = 0;
  }

  result = sub_1001F0C48(&qword_100788E08);
  a2[3] = result;
  a2[4] = &off_10076DDC8;
  v7 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1005D7DE8()
{
  v1[2] = v0;
  v2 = type metadata accessor for NWInterface.InterfaceType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWEndpoint();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for NWPath();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005D7F60, 0, 0);
}

uint64_t sub_1005D7F60()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for NWEndpoint.url(_:), v3);
  type metadata accessor for NWParameters();
  static NWParameters.udp.getter();
  type metadata accessor for NWConnection();
  swift_allocObject();
  v6 = NWConnection.init(to:using:)();
  v0[12] = v6;
  v7 = swift_allocObject();
  v0[13] = v7;
  *(v7 + 16) = 0;
  v8 = swift_task_alloc();
  v0[14] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1005D8120;
  v10 = v0[11];
  v11 = v0[9];

  return withCheckedContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000025, 0x80000001006CAE40, sub_1003EED98, v8, v11);
}

uint64_t sub_1005D8120()
{

  return _swift_task_switch(sub_1005D8238, 0, 0);
}

uint64_t sub_1005D8238()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  NWConnection.forceCancel()();

  (*(v5 + 104))(v4, enum case for NWInterface.InterfaceType.loopback(_:), v6);
  v7 = NWPath.usesInterfaceType(_:)();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8(v7 & 1);
}

uint64_t sub_1005D835C()
{
  v0 = type metadata accessor for URL();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for Logger();
  v11[2] = *(v1 - 8);
  v11[3] = v1;
  __chkstk_darwin(v1);
  v11[4] = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&qword_10077E920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = NSURLIsExcludedFromBackupKey;
  v8 = NSURLIsExcludedFromBackupKey;
  sub_1005DA258(inited);
  swift_setDeallocating();
  sub_1001F643C(inited + 32);
  URL.resourceValues(forKeys:)();

  v9 = URLResourceValues.isExcludedFromBackup.getter();
  (*(v4 + 8))(v6, v3);
  return v9 & 1;
}

void sub_1005D8784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a2;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F0C48(&qword_10077E688);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - v11;
  (*(v10 + 16))(v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v10 + 32))(v14 + v13, v12, v9);

  NWConnection.pathUpdateHandler.setter();
  sub_1001F0FB0();
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v5);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  NWConnection.start(queue:)();
}

uint64_t sub_1005D89C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWPath();
  result = __chkstk_darwin(v4);
  if ((atomic_exchange((a2 + 16), 1u) & 1) == 0)
  {
    (*(v7 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    sub_1001F0C48(&qword_10077E688);
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

void sub_1005D8ABC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_1005D8B64(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100788DF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (aBlock - v9);
  URL._bridgeToObjectiveC()(v9);
  v12 = v11;
  sub_1001F0FB0();
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.utility(_:), v6);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v10, v6);
  (*(v3 + 16))(v5, a1, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v5, v2);
  aBlock[4] = sub_1005DA400;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005D8ABC;
  aBlock[3] = &unk_10076DE50;
  v16 = _Block_copy(aBlock);

  ACSLocateCachingServer();
  _Block_release(v16);
}

uint64_t sub_1005D8E00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&unk_1007809F0);
  v9 = __chkstk_darwin(a1);
  v11 = &v25 - v10;
  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = 0;
  }

  else
  {
    if (a3)
    {
      v13 = a3;
      static Logger.general.getter();
      v14 = v13;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v25 = v17;
        v26 = swift_slowAlloc();
        *v17 = 138543362;
        type metadata accessor for CFError(0);
        sub_1005DA798(&qword_1007805F0, type metadata accessor for CFError);
        swift_allocError();
        *v18 = v14;
        v19 = v14;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v25;
        v22 = v26;
        *(v25 + 1) = v20;
        *v22 = v20;
        _os_log_impl(&_mh_execute_header, v15, v16, "Asset cache lookup failed: %{public}@", v21, 0xCu);
        sub_1000032A8(v22, &qword_10077F920);
      }

      else
      {
        v19 = v15;
        v15 = v14;
      }

      (*(v6 + 8))(v8, v5);
    }

    v12 = 1;
  }

  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v11, v12, 1, v23);
  sub_1001F0C48(&qword_100788DF8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1005D9108(uint64_t a1)
{
  sub_1001F0C48(&qword_1007815B0);
  v3 = *(a1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10069E680;
  (*(v3 + 16))(v5 + v4, v1, a1);
  return v5;
}

uint64_t sub_1005D91E0(uint64_t a1)
{
  sub_1001F0C48(&qword_10077E688);
  v3 = *(v1 + 16);

  return sub_1005D89C8(a1, v3);
}

void *sub_1005D9260(uint64_t a1, uint64_t a2)
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

  sub_1001F0C48(&qword_10077EF80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1005D92D4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1005D9DE4();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1005D9858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1005D9DE4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}