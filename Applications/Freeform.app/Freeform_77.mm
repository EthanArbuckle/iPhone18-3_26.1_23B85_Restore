char *sub_100AA7624()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v35 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EE40);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
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
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v4;
    v16 = v6;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v34;
        v22 = *(v35 + 72) * v20;
        sub_10000C704(*(v4 + 48) + v22, v34, type metadata accessor for CRLBoardIdentifier);
        v23 = 40 * v20;
        v24 = *(v4 + 56) + 40 * v20;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 24);
        v37 = *(v24 + 16);
        v38 = *(v24 + 32);
        sub_100025460(v21, *(v16 + 48) + v22, type metadata accessor for CRLBoardIdentifier);
        v28 = *(v16 + 56) + v23;
        *v28 = v25;
        *(v28 + 8) = v26;
        *(v28 + 16) = v37;
        *(v28 + 24) = v27;
        *(v28 + 32) = v38;
        v29 = v27;
        v4 = v33;

        v14 = v39;
      }

      while (v39);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v32 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
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

void *sub_100AA78C0()
{
  v1 = v0;
  sub_1005B981C(&unk_101A0F2D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v19 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_10000BE14(*(v2 + 56) + v17, v20, &qword_1019FBEF0);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10003DFF8(v20, *(v4 + 56) + v17, &qword_1019FBEF0);
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

        v1 = v19;
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

void *sub_100AA7A70()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F248);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 56) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 56) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_100AA7CF8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EF78);
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

void *sub_100AA7E60()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EFD8);
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        result = sub_1006CE2EC(v20, v21);
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

void *sub_100AA7FE4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F240);
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

void *sub_100AA8130()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F070);
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(*(v2 + 56) + v17);
        v28 = *(v4 + 48) + v19;
        v29 = *(v20 + 48);
        *v28 = *v20;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v29;
        *(*(v4 + 56) + v17) = v27;
        sub_100076F8C(v21, v22, v23, v24, v25, v26, v29);
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

void *sub_100AA82D4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F208);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v26 = v4;
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = 40 * v17;
        sub_10000630C(*(v2 + 56) + 40 * v17, v27);
        v24 = *(v26 + 48) + v18;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        sub_100050F74(v27, *(v26 + 56) + v23);
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

        v1 = v25;
        v4 = v26;
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

id sub_100AA8490()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F238);
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

void *sub_100AA8600()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F2A8);
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
        v18 = (*(v2 + 56) + 24 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;
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

id sub_100AA8790(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
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

void *sub_100AA88EC()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F220);
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

void *sub_100AA8A5C(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
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

void *sub_100AA8BA8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F110);
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

void *sub_100AA8D34()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EEC8);
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

char *sub_100AA8EB8()
{
  v1 = v0;
  v42 = type metadata accessor for UUID();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F210);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v36 = v1;
    v37 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v43 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v38 = v44 + 32;
    v39 = v44 + 16;
    v40 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v47 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v44;
        v20 = *(v44 + 72) * v18;
        v21 = v41;
        v22 = v42;
        (*(v44 + 16))(v41, *(v3 + 48) + v20, v42);
        v23 = 48 * v18;
        v24 = *(v3 + 56) + 48 * v18;
        v25 = *v24;
        v26 = *(v24 + 40);
        v27 = v43;
        v28 = *(v43 + 48);
        v29 = *(v19 + 32);
        v30 = *(v24 + 8);
        v45 = *(v24 + 24);
        v46 = v30;
        v29(v28 + v20, v21, v22);
        v31 = *(v27 + 56) + v23;
        *v31 = v25;
        v32 = v46;
        *(v31 + 24) = v45;
        *(v31 + 8) = v32;
        *(v31 + 40) = v26;
        v33 = v32;

        v34 = v25;
        v3 = v40;
        result = v33;
        v13 = v47;
      }

      while (v47);
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

        v1 = v36;
        v5 = v43;
        goto LABEL_18;
      }

      v17 = *(v37 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v47 = (v17 - 1) & v17;
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

void *sub_100AA9190(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
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
        v18 = 16 * (v15 | (v9 << 6));
        v19 = *(v3 + 56);
        v20 = (*(v3 + 48) + v18);
        v21 = *v20;
        v22 = v20[1];
        v24 = *(v19 + v18);
        v23 = *(v19 + v18 + 8);
        v25 = (*(v5 + 48) + v18);
        *v25 = v21;
        v25[1] = v22;
        v26 = (*(v5 + 56) + v18);
        *v26 = v24;
        v26[1] = v23;
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

void *sub_100AA9308()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0BA60);
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
        sub_100064288(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000BF3C(v25, (*(v4 + 56) + v22));
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

void *sub_100AA94C0()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F200);
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
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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

char *sub_100AA9610()
{
  v1 = v0;
  v44 = type metadata accessor for UUID();
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F2B0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v38 = v1;
    v39 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v45 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v3;
    v15 = v43;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v52 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v46;
        v21 = *(v46 + 72) * v19;
        v22 = v44;
        (*(v46 + 16))(v15, *(v3 + 48) + v21, v44);
        v23 = v19 << 6;
        v24 = (*(v3 + 56) + (v19 << 6));
        v25 = *v24;
        v26 = v24[2];
        v47 = v24[1];
        v48 = v26;
        v27 = v24[4];
        v49 = v24[3];
        v28 = v24[6];
        v50 = v24[5];
        v51 = v25;
        v29 = v24[7];
        v30 = v45;
        (*(v20 + 32))(*(v45 + 48) + v21, v15, v22);
        v31 = (*(v30 + 56) + v23);
        v32 = v50;
        v34 = v47;
        v33 = v48;
        *v31 = v51;
        v31[1] = v34;
        v35 = v49;
        v31[2] = v33;
        v31[3] = v35;
        v31[4] = v27;
        v31[5] = v32;
        v31[6] = v28;
        v31[7] = v29;
        v36 = v27;
        v3 = v42;

        result = v35;
        v13 = v52;
      }

      while (v52);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v38;
        v5 = v45;
        goto LABEL_18;
      }

      v18 = *(v39 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v52 = (v18 - 1) & v18;
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

char *sub_100AA9934()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F1E8);
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

void *sub_100AA9BA4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F1D0);
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

void *sub_100AA9D1C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EFD0);
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
        v19 = *(v2 + 56) + 32 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 25);
        LOBYTE(v19) = *(v19 + 26);
        *(*(v4 + 48) + 8 * v17) = v18;
        v25 = *(v4 + 56) + 32 * v17;
        *v25 = v21;
        *(v25 + 8) = v20;
        *(v25 + 16) = v22;
        *(v25 + 24) = v23;
        *(v25 + 25) = v24;
        *(v25 + 26) = v19;
        v26 = v18;
        v27 = v21;
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

id sub_100AA9EFC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLZoneSyncResultScenarios();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F1B8);
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
        sub_10000C704(*(v4 + 56) + v23, v26, type metadata accessor for CRLZoneSyncResultScenarios);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        sub_100025460(v22, *(v24 + 56) + v23, type metadata accessor for CRLZoneSyncResultScenarios);
        result = v21;
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

void *sub_100AAA138()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EFC8);
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

void *sub_100AAA2B0()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F1D8);
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

void sub_100AAA428()
{
  sub_1005B981C(&qword_101A0F188);
  v24 = v0;
  v1 = *v0;
  v25 = static _DictionaryStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v2 = (v25 + 64);
    v3 = ((1 << *(v25 + 32)) + 63) >> 6;
    if (v25 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v25 + 16) = *(v1 + 16);
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
        v15 = *(*(v1 + 48) + 8 * v14);
        v16 = (*(v1 + 56) + 40 * v14);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        v21 = v16[4];
        *(*(v25 + 48) + 8 * v14) = v15;
        v22 = (*(v25 + 56) + 40 * v14);
        *v22 = v17;
        v22[1] = v18;
        v22[2] = v19;
        v22[3] = v20;
        v22[4] = v21;
        v23 = v15;
        sub_1009F5E18(v17, v18, v19, v20, v21);
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

    *v24 = v25;
  }
}

id sub_100AAA5F4(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
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

void *sub_100AAA758(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
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

id sub_100AAA8B8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F1C0);
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

void *sub_100AAAA5C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EB50);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
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
    v29 = v6;
    *(v6 + 16) = v10;
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_10000C704(*(v4 + 48) + v21, v27, type metadata accessor for CRLBoardIdentifier);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        result = sub_100025460(v20, *(v29 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

id sub_100AAACC8(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  sub_1005B981C(a2);
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

void *sub_100AAAF40()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F190);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_100024E98(v18, *(&v18 + 1));
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

id sub_100AAB0A8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F1E0);
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
        v19 = (*(v2 + 56) + 3 * v17);
        v20 = *v19;
        v21 = v19[1];
        LOBYTE(v19) = v19[2];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 3 * v17);
        *v22 = v20;
        v22[1] = v21;
        v22[2] = v19;
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

id sub_100AAB234()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F180);
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

char *sub_100AAB390()
{
  v1 = v0;
  v38 = type metadata accessor for Date();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F158);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v37;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = v35;
        v24 = *(v36 + 72) * v22;
        sub_10000C704(*(v5 + 48) + v24, v35, type metadata accessor for CRLBoardIdentifier);
        v25 = v40;
        v26 = *(v40 + 72) * v22;
        v27 = *(v5 + 56) + v26;
        v28 = v38;
        (*(v40 + 16))(v17, v27, v38);
        sub_100025460(v23, *(v18 + 48) + v24, type metadata accessor for CRLBoardIdentifier);
        v29 = v28;
        v5 = v34;
        result = (*(v25 + 32))(*(v18 + 56) + v26, v17, v29);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

void *sub_100AAB6B8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F150);
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

id sub_100AAB8C0(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
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
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
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

void *sub_100AABA0C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F120);
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
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

void *sub_100AABBA4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F0F8);
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
        result = sub_100064110(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = *v18;
        v21 = v18[1];
        v22 = v26;
        v23 = v25[1];
        *v19 = v25[0];
        *(v19 + 16) = v23;
        *(v19 + 32) = v22;
        v24 = (*(v4 + 56) + 32 * v17);
        *v24 = v20;
        v24[1] = v21;
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

void *sub_100AABD40()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F0D8);
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100024E98(v22, *(&v22 + 1));
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

void *sub_100AABF00(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v41 = a1(0);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - v5;
  sub_1005B981C(a2);
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

char *sub_100AAC1D8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EEB8);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_10000C704(*(v6 + 48) + v23, v29, type metadata accessor for CRLAssetReferrerIdentifier);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_10000C704(*(v6 + 56) + v25, v31, type metadata accessor for CRLBoardIdentifier);
        v26 = v33;
        sub_100025460(v22, *(v33 + 48) + v23, type metadata accessor for CRLAssetReferrerIdentifier);
        result = sub_100025460(v24, *(v26 + 56) + v25, type metadata accessor for CRLBoardIdentifier);
        v16 = v34;
      }

      while (v34);
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

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_100AAC508(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v6 = v4;
  v7 = a1(0);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v34 = &v32 - v8;
  sub_1005B981C(a2);
  v9 = *v4;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v32 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v37 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = *(v9 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    v33 = v9;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v34;
        v28 = *(v35 + 72) * v26;
        v29 = v36;
        sub_10000C704(*(v9 + 48) + v28, v34, v36);
        v30 = *(*(v9 + 56) + v26);
        v31 = v37;
        result = sub_100025460(v27, *(v37 + 48) + v28, v29);
        *(*(v31 + 56) + v26) = v30;
        v9 = v33;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v6 = v32;
        v11 = v37;
        goto LABEL_21;
      }

      v25 = *(v13 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_100AAC7A0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v46 = a1;
  v47 = a2;
  v6 = sub_1005B981C(a1);
  v45 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v44 = &v35 - v7;
  v43 = type metadata accessor for UUID();
  v48 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v36 = v3;
    v37 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v49 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v38 = v48 + 32;
    v39 = v48 + 16;
    v40 = v20;
    v41 = v9;
    v21 = v43;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = v48;
        v27 = *(v48 + 72) * v25;
        v28 = v42;
        (*(v48 + 16))(v42, *(v9 + 48) + v27, v21);
        v29 = v44;
        v30 = *(v45 + 72) * v25;
        v31 = *(v9 + 56) + v30;
        v32 = v46;
        sub_10000BE14(v31, v44, v46);
        v33 = v49;
        (*(v26 + 32))(*(v49 + 48) + v27, v28, v21);
        v34 = v32;
        v9 = v41;
        result = sub_10003DFF8(v29, *(v33 + 56) + v30, v34);
        v20 = v40;
        v19 = v50;
      }

      while (v50);
    }

    v23 = v15;
    v11 = v49;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v5 = v36;
        goto LABEL_18;
      }

      v24 = *(v37 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v50 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v11;
  }

  return result;
}

void *sub_100AACAD4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F088);
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

id sub_100AACC48(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
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
        v19 = *(*(v3 + 48) + 8 * v18);
        sub_100064288(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        sub_10000BF3C(v20, (*(v5 + 56) + 32 * v18));
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

void *sub_100AACDB8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F060);
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
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100024E98(v19, *(&v19 + 1));
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

void *sub_100AACF28()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F068);
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
        v18 = (*(v2 + 56) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v19;
        v22[1] = v20;
        sub_100024E98(v21, *(&v21 + 1));
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

void *sub_100AAD0C8(uint64_t *a1)
{
  v3 = v1;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(a1);
  v5 = *v1;
  v6 = static _DictionaryStorage.copy(original:)();
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

char *sub_100AAD37C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EF38);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
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
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v31;
        v21 = *(v32 + 72) * v19;
        sub_10000C704(*(v4 + 48) + v21, v31, type metadata accessor for CRLBoardIdentifier);
        v22 = 16 * v19;
        v23 = (*(v4 + 56) + 16 * v19);
        v25 = *v23;
        v24 = v23[1];
        v26 = v33;
        sub_100025460(v20, *(v33 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
        v27 = (*(v26 + 56) + v22);
        *v27 = v25;
        v27[1] = v24;
        v28 = v24;

        v14 = v34;
      }

      while (v34);
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
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
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

void *sub_100AAD5DC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EF30);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
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
    v29 = v6;
    *(v6 + 16) = v10;
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_10000C704(*(v4 + 48) + v21, v27, type metadata accessor for CRLBoardIdentifier);
        v22 = *(*(v4 + 56) + v19);
        v23 = v29;
        result = sub_100025460(v20, *(v29 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
        *(*(v23 + 56) + v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_100AAD834(uint64_t *a1)
{
  v2 = v1;
  sub_1005B981C(a1);
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
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
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

void *sub_100AAD99C(uint64_t *a1)
{
  v3 = v1;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(a1);
  v5 = *v1;
  v6 = static _DictionaryStorage.copy(original:)();
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

void *sub_100AADC14()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EF98);
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

void *sub_100AADD60()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EFA0);
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
    for (i = (v9 + 63) >> 6; v11; v22[1] = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = 32 * v14;
      v19 = (*(v2 + 56) + v18);
      v20 = *v19;
      v21 = v19[1];
      *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
      v22 = (*(v4 + 56) + v18);
      *v22 = v20;
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

void *sub_100AADEBC()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EF90);
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
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

char *sub_100AAE01C()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EF80);
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

void *sub_100AAE28C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EF70);
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
        sub_100064110(*(v2 + 48) + 40 * v17, v26);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + 40 * v17;
        v23 = v26[0];
        v24 = v26[1];
        *(v22 + 32) = v27;
        *v22 = v23;
        *(v22 + 16) = v24;
        v25 = (*(v4 + 56) + 24 * v17);
        *v25 = v19;
        v25[1] = v20;
        v25[2] = v21;
        result = sub_100AAFD98(v19, v20, v21);
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

Swift::Int sub_100AAE438(uint64_t *a1)
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
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100AAE728(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100AAE530(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100AAE530(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  if (a3 != a2)
  {
    v35 = *a4;
    v6 = (*a4 + (a3 << 6) - 64);
    v7 = result - a3;
LABEL_4:
    v33 = v6;
    v34 = a3;
    v32 = v7;
    while (1)
    {
      v44 = v5;
      v36 = v7;
      v8 = v6 + 8;
      v9 = v6[9];
      v10 = v6[10];
      v11 = v6[11];
      v12 = v6[12];
      v13 = v6[13];
      v14 = v6[14];
      v15 = v6[15];
      v43[0] = v6[8];
      v43[1] = v9;
      v43[2] = v10;
      v43[3] = v11;
      v43[4] = v12;
      v43[5] = v13;
      v43[6] = v14;
      v43[7] = v15;
      v16 = v6[1];
      v37 = v6[2];
      v39 = v6[3];
      v17 = v6[4];
      v18 = v6[5];
      v19 = v6[6];
      v20 = v6[7];
      v42[0] = *v6;
      v42[1] = v16;
      v42[2] = v37;
      v42[3] = v39;
      v42[4] = v17;
      v42[5] = v18;
      v42[6] = v19;
      v42[7] = v20;
      v41 = v17;

      v38 = v11;
      v21 = v12;

      v40 = v39;
      v22 = v44;
      v23 = sub_100A8510C(v43, v42);
      v5 = v22;

      if (v22)
      {
        break;
      }

      if (v23)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v25 = *(v6 + 6);
        v24 = *(v6 + 7);
        v26 = *(v6 + 5);
        v27 = *v6;
        v28 = *(v6 + 1);
        *v6 = *v8;
        *(v6 + 1) = v26;
        v29 = *(v6 + 2);
        v30 = *(v6 + 3);
        *(v6 + 2) = v25;
        *(v6 + 3) = v24;
        v6 -= 8;
        *v8 = v27;
        v8[1] = v28;
        v8[2] = v29;
        v8[3] = v30;
        v7 = v36 + 1;
        if (v36 != -1)
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v6 = v33 + 8;
      v7 = v32 - 1;
      if (v34 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100AAE728(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v116 = result;
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = v10;
      if (v10 + 1 >= v9)
      {
        v33 = v10 + 1;
      }

      else
      {
        v119 = v9;
        v115 = v11;
        v13 = v10;
        v14 = *v8;
        v15 = (*v8 + ((v10 + 1) << 6));
        v127 = v7;
        v16 = v15[1];
        v18 = v15[2];
        v17 = v15[3];
        v20 = v15[4];
        v19 = v15[5];
        v21 = v15[6];
        v22 = v15[7];
        v136 = *v15;
        v137 = v16;
        v138 = v18;
        v139 = v17;
        v140 = v20;
        v141 = v19;
        v142 = v21;
        v143 = v22;
        v23 = (v14 + (v10 << 6));
        v24 = v23[1];
        v25 = v23[2];
        v122 = v14;
        v124 = v23[3];
        v26 = v23[4];
        v27 = v23[5];
        v6 = v23[6];
        v28 = v23[7];
        v128 = *v23;
        v129 = v24;
        v130 = v25;
        v131 = v124;
        v132 = v26;
        v133 = v27;
        v134 = v6;
        v135 = v28;
        v126 = v26;

        v4 = v17;
        v29 = v20;

        v30 = v124;
        v118 = sub_100A8510C(&v136, &v128);
        if (v127)
        {
        }

        v31 = v13 + 2;
        v113 = v13;
        v120 = v13 << 6;
        v32 = (v122 + (v13 << 6) + 184);
        while (1)
        {
          v33 = v119;
          if (v119 == v31)
          {
            break;
          }

          v121 = v31;
          v34 = *(v32 - 6);
          v36 = *(v32 - 5);
          v35 = *(v32 - 4);
          v38 = *(v32 - 3);
          v37 = *(v32 - 2);
          v39 = *(v32 - 1);
          v40 = *v32;
          v136 = *(v32 - 7);
          v137 = v34;
          v138 = v36;
          v139 = v35;
          v140 = v38;
          v141 = v37;
          v142 = v39;
          v143 = v40;
          v41 = *(v32 - 14);
          v42 = *(v32 - 13);
          v123 = *(v32 - 12);
          v43 = *(v32 - 11);
          v44 = *(v32 - 10);
          v6 = *(v32 - 9);
          v45 = *(v32 - 8);
          v128 = *(v32 - 15);
          v129 = v41;
          v130 = v42;
          v131 = v123;
          v132 = v43;
          v133 = v44;
          v134 = v6;
          v135 = v45;
          v125 = v43;

          v46 = v35;
          v47 = v38;

          v4 = v123;
          LODWORD(v42) = sub_100A8510C(&v136, &v128);

          v31 = v121 + 1;
          v32 += 8;
          if ((v118 ^ v42))
          {
            v33 = v121;
            break;
          }
        }

        v7 = 0;
        v8 = a3;
        v11 = v115;
        v12 = v113;
        if (v118)
        {
          if (v33 < v113)
          {
            goto LABEL_118;
          }

          if (v113 < v33)
          {
            v48 = (v33 << 6) - 64;
            v49 = v33;
            v50 = v113;
            do
            {
              if (v50 != --v49)
              {
                v51 = *a3;
                if (!*a3)
                {
                  goto LABEL_121;
                }

                v52 = (v51 + v120);
                v53 = (v51 + v48);
                v55 = v52[2];
                v54 = v52[3];
                v57 = *v52;
                v56 = v52[1];
                v58 = v53[3];
                v60 = *v53;
                v59 = v53[1];
                v52[2] = v53[2];
                v52[3] = v58;
                *v52 = v60;
                v52[1] = v59;
                *v53 = v57;
                v53[1] = v56;
                v53[2] = v55;
                v53[3] = v54;
              }

              ++v50;
              v48 -= 64;
              v120 += 64;
            }

            while (v50 < v49);
          }
        }
      }

      v61 = v8[1];
      if (v33 >= v61)
      {
        goto LABEL_30;
      }

      if (__OFSUB__(v33, v12))
      {
        goto LABEL_114;
      }

      if (v33 - v12 >= a4)
      {
LABEL_30:
        v10 = v33;
        if (v33 < v12)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (__OFADD__(v12, a4))
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
          return result;
        }

        if (v12 + a4 >= v61)
        {
          v10 = v8[1];
        }

        else
        {
          v10 = v12 + a4;
        }

        if (v10 < v12)
        {
          goto LABEL_117;
        }

        v4 = v11;
        sub_100AAE530(v12, v10, v33, v8);
        if (v7)
        {
        }

        v11 = v4;
        if (v10 < v12)
        {
          goto LABEL_113;
        }
      }

      v62 = v11;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v11 = v62;
      }

      else
      {
        result = sub_100B355CC(0, *(v62 + 2) + 1, 1, v62);
        v11 = result;
      }

      v4 = *(v11 + 2);
      v63 = *(v11 + 3);
      v64 = v4 + 1;
      if (v4 >= v63 >> 1)
      {
        result = sub_100B355CC((v63 > 1), v4 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v64;
      v65 = &v11[16 * v4];
      *(v65 + 4) = v12;
      *(v65 + 5) = v10;
      v66 = *v116;
      if (!*v116)
      {
        goto LABEL_122;
      }

      if (v4)
      {
        while (1)
        {
          v67 = v64 - 1;
          if (v64 >= 4)
          {
            break;
          }

          if (v64 == 3)
          {
            v68 = *(v11 + 4);
            v69 = *(v11 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
LABEL_50:
            if (v71)
            {
              goto LABEL_102;
            }

            v84 = &v11[16 * v64];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_105;
            }

            v90 = &v11[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_109;
            }

            if (v88 + v93 >= v70)
            {
              if (v70 < v93)
              {
                v67 = v64 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          v94 = &v11[16 * v64];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_64:
          if (v89)
          {
            goto LABEL_104;
          }

          v97 = &v11[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_107;
          }

          if (v100 < v88)
          {
            goto LABEL_3;
          }

LABEL_71:
          v4 = v67 - 1;
          if (v67 - 1 >= v64)
          {
            __break(1u);
LABEL_98:
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
            result = sub_10113DE48(v4);
            goto LABEL_85;
          }

          if (!*v8)
          {
            goto LABEL_119;
          }

          v105 = v11;
          v106 = *&v11[16 * v4 + 32];
          v6 = *&v11[16 * v67 + 40];
          sub_100AAEF80((*v8 + (v106 << 6)), (*v8 + (*&v11[16 * v67 + 32] << 6)), (*v8 + (v6 << 6)), v66);
          if (v7)
          {
          }

          if (v6 < v106)
          {
            goto LABEL_98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_10113DE48(v105);
          }

          if (v4 >= *(v105 + 2))
          {
            goto LABEL_99;
          }

          v107 = &v105[16 * v4];
          *(v107 + 4) = v106;
          *(v107 + 5) = v6;
          v144 = v105;
          result = sub_10113DDBC(v67);
          v11 = v144;
          v64 = *(v144 + 2);
          if (v64 <= 1)
          {
            goto LABEL_3;
          }
        }

        v72 = &v11[16 * v64 + 32];
        v73 = *(v72 - 64);
        v74 = *(v72 - 56);
        v78 = __OFSUB__(v74, v73);
        v75 = v74 - v73;
        if (v78)
        {
          goto LABEL_100;
        }

        v77 = *(v72 - 48);
        v76 = *(v72 - 40);
        v78 = __OFSUB__(v76, v77);
        v70 = v76 - v77;
        v71 = v78;
        if (v78)
        {
          goto LABEL_101;
        }

        v79 = &v11[16 * v64];
        v81 = *v79;
        v80 = *(v79 + 1);
        v78 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v78)
        {
          goto LABEL_103;
        }

        v78 = __OFADD__(v70, v82);
        v83 = v70 + v82;
        if (v78)
        {
          goto LABEL_106;
        }

        if (v83 >= v75)
        {
          v101 = &v11[16 * v67 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v78 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v78)
          {
            goto LABEL_112;
          }

          if (v70 < v104)
          {
            v67 = v64 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_50;
      }

LABEL_3:
      v9 = v8[1];
      if (v10 >= v9)
      {
        goto LABEL_82;
      }
    }
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_82:
  v6 = *v116;
  if (!*v116)
  {
    goto LABEL_123;
  }

  v4 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_115;
  }

  result = v4;
LABEL_85:
  v108 = v7;
  v144 = result;
  v109 = *(result + 16);
  if (v109 >= 2)
  {
    while (1)
    {
      v110 = *v8;
      if (!*v8)
      {
        goto LABEL_120;
      }

      v4 = v109 - 1;
      v7 = *(result + 16 * v109);
      v111 = result;
      v8 = *(result + 16 * (v109 - 1) + 40);
      sub_100AAEF80((v110 + (v7 << 6)), (v110 + (*(result + 16 * (v109 - 1) + 32) << 6)), (v110 + (v8 << 6)), v6);
      if (v108)
      {
      }

      if (v8 < v7)
      {
        goto LABEL_110;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_10113DE48(v111);
      }

      if (v109 - 2 >= *(v111 + 2))
      {
        goto LABEL_111;
      }

      v112 = &v111[16 * v109];
      *v112 = v7;
      *(v112 + 1) = v8;
      v144 = v111;
      sub_10113DDBC(v4);
      result = v144;
      v109 = *(v144 + 2);
      v8 = a3;
      if (v109 <= 1)
      {
      }
    }
  }
}

uint64_t sub_100AAEF80(char *__src, char *a2, char *a3, char *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 6;
  v13 = a3 - a2;
  v14 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 6;
  if (v12 >= v14 >> 6)
  {
    if (a4 != a2 || &a2[64 * v15] <= a4)
    {
      memmove(a4, a2, v15 << 6);
      v8 = a2;
    }

    v17 = &v6[64 * v15];
    if (v13 < 64 || v8 <= v9)
    {
      v43 = v8;
    }

    else
    {
      __srcb = v6;
      __dsta = v9;
LABEL_27:
      v93 = v7;
      v116 = v5;
      v45 = 0;
      v46 = v17;
      v83 = v8 - 64;
      v84 = v17;
      v97 = v8;
      do
      {
        v47 = &v46[v45];
        v48 = &v46[v45 - 64];
        v50 = *&v46[v45 - 56];
        v49 = *&v46[v45 - 48];
        v51 = *&v46[v45 - 40];
        v89 = *&v46[v45 - 32];
        v91 = v45;
        v52 = *&v46[v45 - 24];
        v53 = *(v47 - 2);
        v54 = *(v47 - 1);
        v108 = *v48;
        v109 = v50;
        v110 = v49;
        v111 = v51;
        v112 = v89;
        v113 = v52;
        v114 = v53;
        v115 = v54;
        v55 = *(v8 - 7);
        v56 = *(v8 - 6);
        v88 = *(v8 - 5);
        v57 = *(v8 - 4);
        v58 = *(v8 - 3);
        v59 = *(v8 - 2);
        v60 = *(v8 - 1);
        v100 = *(v8 - 8);
        v101 = v55;
        v102 = v56;
        v103 = v88;
        v104 = v57;
        v105 = v58;
        v106 = v59;
        v107 = v60;
        v85 = v57;

        v61 = v51;
        v62 = v89;

        v63 = v88;
        v64 = v116;
        v65 = sub_100A8510C(&v108, &v100);
        v116 = v64;
        if (v64)
        {

          v43 = v97;
          v74 = __srcb;
          v77 = v84 - __srcb + v91;
          v78 = v77 + 63;
          if (v77 >= 0)
          {
            v78 = v84 - __srcb + v91;
          }

          v76 = v78 >> 6;
          if (v97 < __srcb || v97 >= &__srcb[v78 & 0xFFFFFFFFFFFFFFC0])
          {
            memmove(v97, __srcb, v76 << 6);
          }

          else if (v97 != __srcb)
          {
            goto LABEL_50;
          }

          return 1;
        }

        v66 = v65;

        if (v66)
        {
          v7 = v93 + v91 - 64;
          v6 = __srcb;
          v5 = v116;
          v43 = v83;
          if (v93 + v91 != v97)
          {
            v71 = *v83;
            v72 = *(v83 + 1);
            v73 = *(v83 + 3);
            *(v93 + v91 - 32) = *(v83 + 2);
            *(v93 + v91 - 16) = v73;
            *v7 = v71;
            *(v93 + v91 - 48) = v72;
          }

          v17 = &v84[v91];
          if (&v84[v91] <= __srcb || (v8 = v83, v83 <= __dsta))
          {
            v17 = &v84[v91];
            goto LABEL_52;
          }

          goto LABEL_27;
        }

        v8 = v97;
        v6 = __srcb;
        v46 = v84;
        if (v93 + v91 != v47)
        {
          v67 = (v93 + v91 - 64);
          v68 = *v48;
          v69 = *(v48 + 16);
          v70 = *(v48 + 48);
          v67[2] = *(v48 + 32);
          v67[3] = v70;
          *v67 = v68;
          v67[1] = v69;
        }

        v45 = v91 - 64;
        v17 = &v84[v91 - 64];
      }

      while (v17 > __srcb);
      v43 = v97;
    }
  }

  else
  {
    if (a4 != __src || &__src[64 * v12] <= a4)
    {
      memmove(a4, __src, v12 << 6);
      v8 = a2;
    }

    v17 = &v6[64 * v12];
    if (v10 >= 64 && v8 < v7)
    {
      v92 = v7;
      v86 = &v6[64 * v12];
      while (1)
      {
        v116 = v5;
        __dst = v9;
        v96 = v8;
        v18 = *(v8 + 1);
        v20 = *(v8 + 2);
        v19 = *(v8 + 3);
        v21 = *(v8 + 5);
        v90 = *(v8 + 4);
        v22 = *(v8 + 6);
        v23 = *(v8 + 7);
        v108 = *v8;
        v109 = v18;
        v110 = v20;
        v111 = v19;
        v112 = v90;
        v113 = v21;
        v114 = v22;
        v115 = v23;
        v24 = *(v6 + 1);
        v25 = *(v6 + 2);
        v26 = *(v6 + 3);
        v27 = *(v6 + 4);
        v28 = *(v6 + 5);
        v29 = *(v6 + 6);
        __srca = v6;
        v100 = *v6;
        v30 = *(v6 + 7);
        v101 = v24;
        v102 = v25;
        v103 = v26;
        v104 = v27;
        v105 = v28;
        v106 = v29;
        v107 = v30;
        v87 = v27;

        v31 = v19;
        v32 = v90;

        v33 = v26;
        v34 = v116;
        v35 = sub_100A8510C(&v108, &v100);
        if (v34)
        {

          v74 = __srca;
          v75 = v86 - __srca + 63;
          if (v86 - __srca >= 0)
          {
            v75 = v86 - __srca;
          }

          v76 = v75 >> 6;
          v43 = __dst;
          if (__dst < __srca || __dst >= &__srca[v75 & 0xFFFFFFFFFFFFFFC0])
          {
            memmove(__dst, __srca, v76 << 6);
          }

          else
          {
            if (__dst == __srca)
            {
              return 1;
            }

LABEL_50:
            v79 = v76 << 6;
LABEL_58:
            memmove(v43, v74, v79);
          }

          return 1;
        }

        v36 = v35;

        if ((v36 & 1) == 0)
        {
          break;
        }

        v37 = __dst;
        v38 = v96;
        v8 = v96 + 64;
        v6 = __srca;
        v39 = v92;
        if (__dst != v96)
        {
          goto LABEL_17;
        }

LABEL_18:
        v9 = v37 + 64;
        v17 = v86;
        v5 = 0;
        if (v6 >= v86 || v8 >= v39)
        {
          goto LABEL_20;
        }
      }

      v8 = v96;
      v38 = __srca;
      v6 = __srca + 64;
      v37 = __dst;
      v39 = v92;
      if (__dst == __srca)
      {
        goto LABEL_18;
      }

LABEL_17:
      v40 = *v38;
      v41 = *(v38 + 1);
      v42 = *(v38 + 3);
      *(v37 + 2) = *(v38 + 2);
      *(v37 + 3) = v42;
      *v37 = v40;
      *(v37 + 1) = v41;
      goto LABEL_18;
    }

LABEL_20:
    v43 = v9;
  }

LABEL_52:
  v80 = v17 - v6;
  v81 = v80 + 63;
  if (v80 >= 0)
  {
    v81 = v80;
  }

  if (v43 < v6 || v43 >= &v6[v81 & 0xFFFFFFFFFFFFFFC0] || v43 != v6)
  {
    v79 = v81 >> 6 << 6;
    v74 = v6;
    goto LABEL_58;
  }

  return 1;
}

void sub_100AAF598()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1019F1B88 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:static CRLMathCalculationController.mathHintsModeChangedNotificationName object:0 userInfo:0];
}

void _s8Freeform28CRLMathCalculationControllerC13mathHintsModeAA0bfG0Ovs_0(uint64_t a1)
{
  if (a1 == 3)
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v29[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v29);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 254;
    v14 = v29[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Should not set the math hint mode to answersSuppressed.", 55, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:254 isFatal:0 format:v23 args:v20];

    goto LABEL_5;
  }

  v30 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v31 = sub_10067BFD0();
  LOBYTE(v29[0]) = 0;
  v25 = isFeatureEnabled(_:)();
  sub_100005070(v29);
  if (v25)
  {
    v30 = &type metadata for CRLFeatureFlags;
    v31 = sub_100004D60();
    LOBYTE(v29[0]) = 15;
    v26 = isFeatureEnabled(_:)();
    sub_100005070(v29);
    if (v26)
    {
      if (qword_1019F2000 != -1)
      {
        swift_once();
      }

      v27 = qword_101A1AB00;
      v28 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
      swift_beginAccess();
      if (*(v27 + v28) == 1)
      {
        v23 = [objc_opt_self() standardUserDefaults];
        [v23 setInteger:a1 forKey:@"CRLMathRecognitionMode"];
LABEL_5:
      }
    }
  }
}

unint64_t sub_100AAFC6C()
{
  result = qword_101A0EDB8;
  if (!qword_101A0EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EDB8);
  }

  return result;
}

unint64_t sub_100AAFCC4()
{
  result = qword_101A0EDC0;
  if (!qword_101A0EDC0)
  {
    sub_1005C4E5C(&qword_101A0EDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EDC0);
  }

  return result;
}

void sub_100AAFD48(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

id sub_100AAFD98(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_100AAFE68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100AAFFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_100A83DE4();
}

uint64_t sub_100AB0058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_100AB00C0()
{
  result = qword_101A0F2A0;
  if (!qword_101A0F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F2A0);
  }

  return result;
}

uint64_t sub_100AB01E4(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_100AB0288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100A86278(a1, v4, v5, v7, v6);
}

float sub_100AB037C@<S0>(float *a1@<X8>)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLWPShapeItemData(0);
  v5 = *swift_dynamicCastClassUnconditional();
  (*(v5 + 896))();
  sub_1005B981C(&unk_101A0D9C0);
  CRRegister.wrappedValue.getter();
  sub_100AB78F8(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  result = v8;
  *a1 = v8;
  return result;
}

uint64_t sub_100AB04B4(uint64_t a1)
{
  result = sub_1011255D0(a1);
  if (result)
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v2 = *(*swift_dynamicCastClassUnconditional() + 912);

    v3 = v2(v4);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.setter();
    v3(v4, 0);
  }

  return result;
}

void sub_100AB06A0()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v13)
    {
      (*(*v13 + 896))(v9);
      sub_100AB77F4(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
      v14 = v12;
      sub_100AB78F8(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v2 + 16))(v4, v11, v1);
      sub_100AB78F8(v11, type metadata accessor for CRLWPStorageCRDTData);
      v15 = CRAttributedString.attributedString.getter();
      (*(v2 + 8))(v4, v1);
      [v15 length];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100AB0948()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v5 = v3(v4);

  v6 = [v5 widthValid];

  if (!v6)
  {
    return 1;
  }

  v7 = *(**(v1 + v2) + 296);

  v9 = v7(v8);

  v10 = [v9 heightValid];

  return v10 ^ 1;
}

char *sub_100AB0A4C(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage] = 0;
  v2[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CRLBoardItemBase(0);
  v5 = a1;

  v6 = objc_msgSendSuper2(&v16, "init");
  sub_1006950BC(v19);
  v17[12] = v19[12];
  v17[13] = v19[13];
  v17[14] = v19[14];
  v18 = v20;
  v17[8] = v19[8];
  v17[9] = v19[9];
  v17[10] = v19[10];
  v17[11] = v19[11];
  v17[4] = v19[4];
  v17[5] = v19[5];
  v17[6] = v19[6];
  v17[7] = v19[7];
  v17[0] = v19[0];
  v17[1] = v19[1];
  v17[2] = v19[2];
  v17[3] = v19[3];
  v7 = objc_allocWithZone(type metadata accessor for CRLWPStorage());
  v8 = v5;

  v9 = sub_100A41BB8(v8, a2, v17);

  v10 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v11 = *&v6[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  *&v6[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage] = v9;

  v12 = *&v6[v10];
  if (v12)
  {
    v13 = v12;
    v14 = v6;
    sub_100A29E08(v6);
  }

  return v6;
}

uint64_t sub_100AB0C14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);

    v7 = v5(v6);

    v8 = [v7 bezierPath];

    LOBYTE(v7) = [v8 isLineSegment];
    if (v7)
    {
      return 0;
    }

    v9 = *(**(v1 + v2) + 296);

    v11 = v9(v10);

    v12 = [v11 widthValid];

    if (!v12)
    {
      return 0;
    }

    else
    {
      v13 = *(**(v1 + v2) + 296);

      v15 = v13(v14);

      v16 = [v15 heightValid];

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100AB0E00()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v4 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
  v5 = v1;

  v7 = v4(v6);

  v8 = [v7 widthValid];

  if (v8)
  {
    v9 = *(**(v2 + v3) + 296);

    v11 = v9(v10);

    v12 = [v11 heightValid];

    if (v12)
    {

      return 0;
    }
  }

  v14 = [v5 characterCount];

  return v14 == 0;
}

void sub_100AB10B0()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v13)
    {
      (*(*v13 + 896))(v9);
      sub_100AB77F4(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
      v14 = v12;
      sub_100AB78F8(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v2 + 16))(v4, v11, v1);
      sub_100AB78F8(v11, type metadata accessor for CRLWPStorageCRDTData);
      v15 = CRAttributedString.attributedString.getter();
      (*(v2 + 8))(v4, v1);
      v16 = [v15 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_100AB13C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v51 = a2;
  v54 = type metadata accessor for UUID();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v6 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v52 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = v46 - v15;
  __chkstk_darwin(v16);
  v49 = v46 - v17;
  __chkstk_darwin(v18);
  v47 = v46 - v19;
  __chkstk_darwin(v20);
  v22 = v46 - v21;
  v55 = v4;
  type metadata accessor for CRLWPShapeItemData(0);
  v23 = *(*swift_dynamicCastClassUnconditional() + 504);

  v24 = v23(1);

  v25 = v24 + *(*v24 + 736);
  swift_beginAccess();
  sub_10000BE14(v25, v11, &unk_101A0F400);
  v48 = v9;

  v26 = sub_1005B981C(&unk_101A0F410);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v11, &unk_101A0F400);
  sub_10000BE14(v8, v22, &qword_1019F6990);
  sub_100AB78F8(v8, type metadata accessor for CRLShapeItemParentAffinity);
  swift_beginAccess();
  v27 = v25;
  v28 = v59;
  sub_10124E270(v57);
  swift_endAccess();
  if (v28)
  {

    sub_10000CAAC(v22, &qword_1019F6990);
  }

  else
  {
    v46[1] = v26;
    v57 = 0;
    v29 = v47;
    v59 = v22;
    sub_10000BE14(v25, v11, &unk_101A0F400);
    sub_1005B981C(&unk_1019F5250);
    v30 = v50;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v11, &unk_101A0F400);
    v31 = *(*v24 + 744);
    swift_beginAccess();
    v32 = v56;
    v33 = v54;
    (*(v56 + 40))(v24 + v31, v30, v54);
    swift_endAccess();
    v34 = v49;
    sub_10000BE14(v51, v49, &qword_1019F6990);
    v35 = *(v32 + 48);
    if (v35(v34, 1, v33) == 1)
    {
      v36 = v29;
      sub_10000BE14(v59, v29, &qword_1019F6990);
      v37 = v35(v34, 1, v33);
      v38 = v53;
      if (v37 != 1)
      {
        sub_10000CAAC(v34, &qword_1019F6990);
      }
    }

    else
    {
      v39 = v56;
      v36 = v29;
      (*(v56 + 32))(v29, v34, v33);
      (*(v39 + 56))(v29, 0, 1, v33);
      v38 = v53;
    }

    sub_10000BE14(v36, v38, &qword_1019F6990);
    swift_beginAccess();
    v40 = v52;
    sub_10000BE14(v38, v52, &qword_1019F6990);
    v41 = CRRegister.wrappedValue.modify();
    sub_10002C638(v40, v42, &qword_1019F6990);
    v41(v58, 0);
    sub_10000CAAC(v38, &qword_1019F6990);
    swift_endAccess();

    sub_10000CAAC(v36, &qword_1019F6990);
    v43 = *(v55 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v44 = objc_allocWithZone(type metadata accessor for CRLWPShapeItem());
    v27 = sub_100AB0A4C(v43, v24);
    sub_10000CAAC(v59, &qword_1019F6990);
  }

  return v27;
}

uint64_t sub_100AB1A94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v5 = v3(v4);

  v6 = [v5 widthValid];

  if (v6 && (v7 = *(**(v1 + v2) + 296), v8 = , v9 = v7(v8), , v10 = [v9 heightValid], v9, (v10 & 1) != 0))
  {
    v11 = *(v1 + v2);
    v12 = (*v11 + 464);
    v13 = *v12;
    v14 = (*v12)();
    if ((v16 & 0x100) != 0 && (!(v14 | v15) ? (v17 = v16 == 0) : (v17 = 0), !v17 && (v14 == 1 ? (v18 = v15 == 0) : (v18 = 0), v18 ? (v19 = v16 == 0) : (v19 = 0), v19)))
    {
      v26 = *v11;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v27 = *(v26 + 840);

        v29 = v27(v28);

        v30 = [v29 inferredAccessibilityDescriptionNoShapeNames];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v31;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      (v13)(v14);

      return sub_1009B6B8C();
    }
  }

  else
  {
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v25;
  }

  return result;
}

id sub_100AB1E2C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100AB1E9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v5 = v3(v4);

  v6 = [v5 widthValid];

  if (v6 && (v7 = *(**(v1 + v2) + 296), v8 = , v9 = v7(v8), , v10 = [v9 heightValid], v9, (v10 & 1) != 0))
  {
    v11 = *(v1 + v2);
    v12 = (*v11 + 464);
    v13 = *v12;
    v14 = (*v12)();
    if ((v16 & 0x100) != 0 && (!(v14 | v15) ? (v17 = v16 == 0) : (v17 = 0), !v17 && (v14 == 1 ? (v18 = v15 == 0) : (v18 = 0), v18 ? (v19 = v16 == 0) : (v19 = 0), v19)))
    {
      v26 = *v11;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v27 = *(v26 + 840);

        v29 = v27(v28);

        v30 = [v29 inferredLocalizedAccessibilityDescriptionPlaceholder];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v31;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      (v13)(v14);

      return sub_1009B7078();
    }
  }

  else
  {
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v25;
  }

  return result;
}

void sub_100AB2220()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    goto LABEL_9;
  }

  v6 = v1;
  v2 = [v6 range];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < v2)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  sub_100A2E55C(v2, v5, 0, 0xE000000000000000, 1);
}

float sub_100AB2470()
{
  v0 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v0);
  v2 = v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLWPShapeItemData(0);
  v3 = *swift_dynamicCastClassUnconditional();
  (*(v3 + 896))();
  sub_1005B981C(&unk_101A0D9C0);
  CRRegister.wrappedValue.getter();
  sub_100AB78F8(v2, type metadata accessor for CRLWPShapeItemCRDTData);
  return *&v5[3];
}

uint64_t sub_100AB2780()
{
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();

  v0 = sub_100693C3C();

  return v0;
}

uint64_t sub_100AB2840()
{
  result = sub_1011255D0();
  if (result)
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v1 = *(*swift_dynamicCastClassUnconditional() + 912);

    v2 = v1(v3);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
    sub_1005B981C(&unk_101A0F370);
    CRRegister.wrappedValue.setter();
    v2(v3, 0);
  }

  return result;
}

uint64_t sub_100AB2AB0()
{
  v0 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v0);
  v2 = &v5[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLWPShapeItemData(0);
  v3 = *swift_dynamicCastClassUnconditional();
  (*(v3 + 896))();
  type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_100AB78F8(v2, type metadata accessor for CRLWPShapeItemCRDTData);
  return v5[15];
}

double sub_100AB2D50(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  v4 = 0.0;
  if (!v3)
  {
    return v4;
  }

  v7 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical);
  v8 = v3;
  if ([v8 paragraphCount] < 1)
  {
    goto LABEL_17;
  }

  v9 = [v8 paragraphStyleAtCharIndex:0 effectiveRange:0];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = *&v9[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment];

  if (v10 <= 1)
  {
    if (v10 == 1)
    {

      if (v7)
      {
        return a2;
      }

      else
      {
        return a1;
      }
    }

    goto LABEL_17;
  }

  if (v10 != 2)
  {
    if (v10 == 4)
    {
      v11 = [v8 isWritingDirectionRightToLeftForParagraphAtParIndex:0];

      if (v7)
      {
        v12 = a2;
      }

      else
      {
        v12 = a1;
      }

      if (v11)
      {
        return v12;
      }

      else
      {
        return 0.0;
      }
    }

LABEL_17:

    return v4;
  }

  if (v7)
  {
    v14 = a2;
  }

  else
  {
    v14 = a1;
  }

  return v14 * 0.5;
}

double sub_100AB2F50(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical;
  v8 = *(v3 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical);
  v9 = 0.0;
  if ([a1 widthValid])
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    v9 = sub_100AB2D50(a2, a3);
    if ([a1 heightValid])
    {
      return v9;
    }

    goto LABEL_21;
  }

  v10 = *(v3 + v7);
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();

  v11 = sub_100693C3C();

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if (v10)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = a3;
      }

      goto LABEL_18;
    }

LABEL_12:
    if (v10)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0.0;
    }

    goto LABEL_18;
  }

  if (v11 != 1)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    v12 = a2;
  }

  else
  {
    v12 = a3;
  }

  v9 = v12 * 0.5;
LABEL_18:
  if (([a1 heightValid] & 1) == 0)
  {
    if (v8)
    {
      sub_100AB2D50(a2, a3);
      return v9;
    }

LABEL_21:
    type metadata accessor for CRLWPShapeItemData(0);
    swift_dynamicCastClassUnconditional();

    sub_100693C3C();
  }

  return v9;
}

void *sub_100AB32F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1010A07F0(v1, 1, __src);
  a1[3] = &type metadata for CRLWPShapePresetData;
  a1[4] = sub_100AB78A4();
  v3 = swift_allocObject();
  *a1 = v3;
  return memcpy((v3 + 16), __src, 0x370uLL);
}

BOOL sub_100AB3368(unsigned __int8 a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x4F8))();
  if (v3 != 6 && v3 == a1)
  {
    return 1;
  }

  v4 = a1 + 1;
  if (v4 == 5)
  {
    return 1;
  }

  return !(*((swift_isaMask & *v1) + 0x4F8))() && v4 == 6;
}

uint64_t sub_100AB346C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);

    v7 = v5(v6);

    v8 = [v7 bezierPath];

    LOBYTE(v7) = [v8 isLineSegment];
    if (v7)
    {
      return 0;
    }

    v9 = **(v1 + v2);
    result = swift_conformsToProtocol2();
    if (result)
    {
      v10 = *(v9 + 840);

      v12 = v10(v11);

      v13 = [v12 bezierPath];

      LOBYTE(v12) = [v13 isLineSegment];
      if ((v12 & 1) == 0)
      {
        v14 = *(**(v1 + v2) + 296);

        v16 = v14(v15);

        v17 = [v16 widthValid];

        if (v17)
        {
          v18 = *(**(v1 + v2) + 296);

          v20 = v18(v19);

          v21 = [v20 heightValid];

          return v21;
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100AB3714(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v7 = a1;
  v8 = sub_100C349A0();

  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = a5;
  }

  sub_100006370(0, v9);

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_100AB37B8()
{
  v0 = _s13ShapeExporterCMa();
  sub_100AB785C(&qword_101A0F3F0, _s13ShapeExporterCMa);
  return v0;
}

char *sub_100AB381C()
{
  v1 = v0;
  type metadata accessor for CRLWPShapeItemData(0);
  v2 = *(*swift_dynamicCastClassUnconditional() + 504);

  v3 = v2(0);

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v5 = objc_allocWithZone(type metadata accessor for CRLWPShapeItem());
  return sub_100AB0A4C(v4, v3);
}

uint64_t sub_100AB3908(uint64_t a1)
{
  v3 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v51 - v7;
  v9 = sub_1005B981C(&qword_101A0F380);
  __chkstk_darwin(v9 - 8);
  v11 = v51 - v10;
  type metadata accessor for CRLWPShapeItem();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v51[0] = a1;
    swift_unknownObjectRetain();
    v14 = sub_1011F0C64(v13, v1);
    type metadata accessor for CRLWPShapeItemData(0);
    v15 = *swift_dynamicCastClassUnconditional();
    (*(v15 + 896))();
    v16 = *swift_dynamicCastClassUnconditional();
    (*(v16 + 896))();
    sub_100AB785C(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);
    CRStruct_4.actionUndoingDifference(from:)();
    sub_100AB78F8(v5, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_100AB78F8(v8, type metadata accessor for CRLWPShapeItemCRDTData);
    v17 = sub_1005B981C(&qword_101A0F388);
    if ((*(*(v17 - 1) + 48))(v11, 1, v17) == 1)
    {
      sub_10000CAAC(v11, &qword_101A0F380);
      memset(v52, 0, sizeof(v52));
      v53 = 1;
    }

    else
    {
      v18 = v17[12];
      v19 = v17[16];
      v20 = v17[20];
      v53 = v17;
      v21 = sub_10002C58C(v52);
      v22 = v17[12];
      v23 = v17[16];
      v24 = v17[20];
      sub_10003DFF8(v11, v21, &qword_101A0F3D0);
      sub_10003DFF8(&v11[v18], v21 + v22, &qword_101A0F3D8);
      sub_10003DFF8(&v11[v19], v21 + v23, &qword_101A0F3E0);
      sub_10003DFF8(&v11[v20], v21 + v24, &qword_101A0F3E8);
    }

    swift_beginAccess();
    sub_100BC1DF4(v52, 5);
    swift_endAccess();
    swift_unknownObjectRelease();
    return v14;
  }

  else
  {
    v26 = objc_opt_self();
    v27 = [v26 _atomicIncrementAssertCount];
    v52[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v52);
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    v30 = [v29 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v27;
    v36 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v36;
    v37 = sub_1005CF04C();
    *(inited + 104) = v37;
    *(inited + 72) = v28;
    *(inited + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    *(inited + 112) = v31;
    *(inited + 120) = v33;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v38;
    *(inited + 152) = 322;
    v39 = v52[0];
    *(inited + 216) = v36;
    *(inited + 224) = v37;
    *(inited + 192) = v39;
    v40 = v28;
    v41 = v39;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v43 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v43, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v46 file:v47 lineNumber:322 isFatal:1 format:v48 args:v45];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v49, v50);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100AB4060(uint64_t a1)
{
  v112 = sub_1005B981C(&qword_101A0F398);
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v107 = &v105 - v5;
  __chkstk_darwin(v6);
  v106 = &v105 - v7;
  __chkstk_darwin(v8);
  v109 = &v105 - v9;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v105 - v14;
  v16 = sub_1005B981C(&unk_101A0F3A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v105 - v20;
  type metadata accessor for CRLWPShapeItem();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    v111 = a1;
    swift_unknownObjectRetain();
    v113 = sub_100EB663C(v23, v1);
    type metadata accessor for CRLWPShapeItemData(0);
    v24 = *swift_dynamicCastClassUnconditional();
    (*(v24 + 896))();
    v25 = *swift_dynamicCastClassUnconditional();
    (*(v25 + 896))();
    sub_100AB785C(&qword_1019F7E60, type metadata accessor for CRLWPShapeItemCRDTData);
    CRType.observableDifference(from:)();
    sub_100AB78F8(v12, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_100AB78F8(v15, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_10000BE14(v21, v18, &unk_101A0F3A0);
    v26 = v112;
    if ((*(v110 + 48))(v18, 1, v112) == 1)
    {
      sub_10000CAAC(v18, &unk_101A0F3A0);
      v27 = _swiftEmptyArrayStorage;
      v28 = v113;
      if (!_swiftEmptyArrayStorage[2])
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    v29 = v109;
    sub_10003DFF8(v18, v109, &qword_101A0F398);
    v30 = v106;
    sub_10000BE14(v29, v106, &qword_101A0F398);
    v31 = v26[12];
    v32 = v26[16];
    v33 = v26[20];
    v34 = sub_1005B981C(&unk_101A0F3B0);
    if ((*(*(v34 - 8) + 48))(v30, 1, v34) == 1)
    {
      sub_10000CAAC(v30 + v33, &qword_101A01F00);
      sub_10000CAAC(v30 + v32, &qword_101A0F338);
      sub_10000CAAC(v30 + v31, &qword_101A0F328);
      sub_10000CAAC(v30, &unk_101A0F3C0);
      v28 = v113;
      v35 = v108;
    }

    else
    {
      sub_10000CAAC(v30, &unk_101A0F3C0);
      sub_10000CAAC(v30 + v33, &qword_101A01F00);
      sub_10000CAAC(v30 + v32, &qword_101A0F338);
      sub_10000CAAC(v30 + v31, &qword_101A0F328);
      v28 = v113;
      v36 = v107;
      v35 = v108;
      if (*(v113 + 16))
      {
        sub_1007C8124(5);
        if (v37)
        {
LABEL_13:
          sub_10000BE14(v29, v36, &qword_101A0F398);
          v59 = v26[12];
          v60 = v26[16];
          v61 = v26;
          v62 = v26[20];
          v63 = sub_1005B981C(&qword_101A0F330);
          if ((*(*(v63 - 8) + 48))(v36 + v59, 1, v63) == 1)
          {
            sub_10000CAAC(v36 + v62, &qword_101A01F00);
            sub_10000CAAC(v36 + v60, &qword_101A0F338);
            sub_10000CAAC(v36 + v59, &qword_101A0F328);
            sub_10000CAAC(v36, &unk_101A0F3C0);
            v27 = _swiftEmptyArrayStorage;
          }

          else
          {
            sub_10000CAAC(v36 + v59, &qword_101A0F328);
            sub_10000CAAC(v36 + v62, &qword_101A01F00);
            sub_10000CAAC(v36 + v60, &qword_101A0F338);
            sub_10000CAAC(v36, &unk_101A0F3C0);
            v27 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
            v65 = *(v27 + 2);
            v64 = *(v27 + 3);
            if (v65 >= v64 >> 1)
            {
              v27 = sub_100024CBC((v64 > 1), v65 + 1, 1, v27);
            }

            *(v27 + 2) = v65 + 1;
            v66 = &v27[16 * v65];
            *(v66 + 4) = 0xD000000000000013;
            *(v66 + 5) = 0x8000000101586880;
          }

          sub_10000BE14(v29, v35, &qword_101A0F398);
          v67 = v61[12];
          v68 = v61[16];
          v69 = v61[20];
          v70 = sub_1005B981C(&unk_101A0F340);
          if ((*(*(v70 - 8) + 48))(v35 + v68, 1, v70) == 1)
          {
            sub_10000CAAC(v29, &qword_101A0F398);
            sub_10000CAAC(v35 + v69, &qword_101A01F00);
            sub_10000CAAC(v35 + v68, &qword_101A0F338);
            sub_10000CAAC(v35 + v67, &qword_101A0F328);
            sub_10000CAAC(v35, &unk_101A0F3C0);
            if (!*(v27 + 2))
            {
LABEL_30:
              sub_10000CAAC(v21, &unk_101A0F3A0);

              swift_unknownObjectRelease();
              return v28;
            }
          }

          else
          {
            sub_10000CAAC(v35 + v68, &qword_101A0F338);
            sub_10000CAAC(v35 + v69, &qword_101A01F00);
            sub_10000CAAC(v35 + v67, &qword_101A0F328);
            sub_10000CAAC(v35, &unk_101A0F3C0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_100024CBC(0, *(v27 + 2) + 1, 1, v27);
            }

            v77 = *(v27 + 2);
            v76 = *(v27 + 3);
            if (v77 >= v76 >> 1)
            {
              v27 = sub_100024CBC((v76 > 1), v77 + 1, 1, v27);
            }

            sub_10000CAAC(v29, &qword_101A0F398);
            *(v27 + 2) = v77 + 1;
            v78 = &v27[16 * v77];
            *(v78 + 4) = 0xD000000000000010;
            *(v78 + 5) = 0x8000000101586860;
            if (!*(v27 + 2))
            {
              goto LABEL_30;
            }
          }

LABEL_20:
          if (v28[2] && (v71 = sub_1007C8124(5), (v72 & 1) != 0))
          {
            v115[0] = *(v28[7] + 8 * v71);

            sub_100798D48(v27);
            v73 = v115[0];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v114 = v28;
            sub_100A9B080(v73, 5, isUniquelyReferenced_nonNull_native);
            swift_unknownObjectRelease();
            v28 = v114;
          }

          else
          {
            v75 = swift_isUniquelyReferenced_nonNull_native();
            v115[0] = v28;
            sub_100A9B080(v27, 5, v75);
            swift_unknownObjectRelease();
            v28 = v115[0];
          }

          sub_10000CAAC(v21, &unk_101A0F3A0);
          return v28;
        }
      }

      v106 = v21;
      v105 = objc_opt_self();
      LODWORD(v110) = [v105 _atomicIncrementAssertCount];
      v115[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v115);
      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v39 = String._bridgeToObjectiveC()();

      v40 = [v39 lastPathComponent];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v110;
      v46 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v46;
      v47 = sub_1005CF04C();
      *(inited + 104) = v47;
      *(inited + 72) = v38;
      *(inited + 136) = &type metadata for String;
      v48 = sub_1000053B0();
      *(inited + 112) = v41;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v48;
      *(inited + 152) = 343;
      v49 = v115[0];
      *(inited + 216) = v46;
      *(inited + 224) = v47;
      *(inited + 192) = v49;
      v50 = v38;
      v51 = v49;
      v52 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v53, "If superData has changed, super should have built keys for it already.", 70, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v54 = swift_allocObject();
      v54[2] = 8;
      v54[3] = 0;
      v54[4] = 0;
      v54[5] = 0;
      v55 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      [v105 handleFailureInFunction:v56 file:v57 lineNumber:343 isFatal:0 format:v58 args:v55];

      v21 = v106;
      v26 = v112;
      v28 = v113;
      v35 = v108;
      v29 = v109;
    }

    v36 = v107;
    goto LABEL_13;
  }

  v80 = objc_opt_self();
  v81 = [v80 _atomicIncrementAssertCount];
  v115[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v115);
  StaticString.description.getter();
  v82 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v83 = String._bridgeToObjectiveC()();

  v84 = [v83 lastPathComponent];

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v88 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v89 = swift_initStackObject();
  *(v89 + 16) = xmmword_10146CA70;
  *(v89 + 56) = &type metadata for Int32;
  *(v89 + 64) = &protocol witness table for Int32;
  *(v89 + 32) = v81;
  v90 = sub_100006370(0, &qword_1019F4D30);
  *(v89 + 96) = v90;
  v91 = sub_1005CF04C();
  *(v89 + 104) = v91;
  *(v89 + 72) = v82;
  *(v89 + 136) = &type metadata for String;
  v92 = sub_1000053B0();
  *(v89 + 112) = v85;
  *(v89 + 120) = v87;
  *(v89 + 176) = &type metadata for UInt;
  *(v89 + 184) = &protocol witness table for UInt;
  *(v89 + 144) = v92;
  *(v89 + 152) = 334;
  v93 = v115[0];
  *(v89 + 216) = v90;
  *(v89 + 224) = v91;
  *(v89 + 192) = v93;
  v94 = v82;
  v95 = v93;
  v96 = static os_log_type_t.error.getter();
  sub_100005404(v88, &_mh_execute_header, v96, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v89);

  v97 = static os_log_type_t.error.getter();
  sub_100005404(v88, &_mh_execute_header, v97, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v98 = swift_allocObject();
  v98[2] = 8;
  v98[3] = 0;
  v98[4] = 0;
  v98[5] = 0;
  v99 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v100 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v101 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v102 = String._bridgeToObjectiveC()();

  [v80 handleFailureInFunction:v100 file:v101 lineNumber:334 isFatal:1 format:v102 args:v99];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v103, v104);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100AB5170(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A0F380);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1005B981C(&qword_101A0F388);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  result = sub_1009B611C(a1);
  if (!v1)
  {
    v14 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v15 = *(a1 + v14);
    if (*(v15 + 16))
    {

      v16 = sub_1007C8124(5);
      if (v17)
      {
        sub_10000BE14(*(v15 + 56) + 32 * v16, &v27, &unk_1019F4D00);

        v29[0] = v27;
        v29[1] = v28;
        if (*(&v28 + 1))
        {
          v18 = swift_dynamicCast();
          v19 = *(v10 + 56);
          v19(v8, v18 ^ 1u, 1, v9);
          if ((*(v10 + 48))(v8, 1, v9) != 1)
          {
            sub_10003DFF8(v8, v12, &qword_101A0F388);
            type metadata accessor for CRLWPShapeItemData(0);
            v20 = v19;
            v21 = swift_dynamicCastClassUnconditional();
            sub_10000BE14(v12, v5, &qword_101A0F388);
            v20(v5, 0, 1, v9);
            v22 = *(*v21 + 912);

            v23 = v22(v29);
            type metadata accessor for CRLWPShapeItemCRDTData(0);
            sub_100AB785C(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData);
            CRStruct_4.apply(_:)();
            sub_10000CAAC(v5, &qword_101A0F380);
            v23(v29, 0);

            v24 = v12;
            v25 = &qword_101A0F388;
            return sub_10000CAAC(v24, v25);
          }

LABEL_10:
          v25 = &qword_101A0F380;
          v24 = v8;
          return sub_10000CAAC(v24, v25);
        }

        sub_10000CAAC(v29, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100AB5588(char *a1, uint64_t a2, int a3, uint64_t a4, ProtocolDescriptor *a5)
{
  v202 = a1;
  LODWORD(v196) = a3;
  *&v200 = a2;
  v7 = sub_1005B981C(&qword_101A0F320);
  __chkstk_darwin(v7 - 8);
  v9 = v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v164 - v11;
  v184 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v184);
  v183 = v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v182 = v164 - v15;
  v16 = sub_1005B981C(&qword_101A0F328);
  __chkstk_darwin(v16 - 8);
  v181 = v164 - v17;
  v18 = sub_1005B981C(&qword_101A0F330);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v175 = v164 - v23;
  __chkstk_darwin(v24);
  v179 = v164 - v25;
  v194 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  __chkstk_darwin(v194);
  v190 = v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v189 = v164 - v28;
  v199 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v199);
  v180 = v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v164 - v31;
  __chkstk_darwin(v33);
  v195 = v164 - v34;
  v35 = sub_1005B981C(&qword_101A0F338);
  __chkstk_darwin(v35 - 8);
  v188 = v164 - v36;
  v198 = sub_1005B981C(&unk_101A0F340);
  v37 = *(v198 - 8);
  __chkstk_darwin(v198);
  v187 = v164 - v38;
  type metadata accessor for CRLWPShapeItem();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v172 = v9;
  v40 = *(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v197 = type metadata accessor for CRLWPShapeItemData(0);
  v192 = swift_dynamicCastClassUnconditional();
  v41 = v196;
  if (v196 != 5)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();

    sub_100C38590(v202, v200, v41, a4, v201, ObjectType, a5);
    swift_unknownObjectRelease();
  }

  v164[0] = a5;
  v193 = *(v200 + 16);
  v165 = a4;
  v164[2] = v40;
  if (!v193)
  {
    swift_unknownObjectRetain();

    v176 = _swiftEmptyArrayStorage;
LABEL_96:
    v161 = v176;
    if (*(v176 + 2))
    {
      v162 = v165;
      v163 = swift_getObjectType();
      sub_100C38590(v202, v161, 5u, v162, v201, v163, v164[0]);
    }

    swift_unknownObjectRelease();
  }

  v166 = v21;
  v178 = v18;
  v167 = v12;
  v42 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v173 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v191 = v200 + 32;
  v196 = 0x8000000101586860;
  v185 = 0x8000000101586880;
  v174 = (v19 + 48);
  v186 = (v37 + 48);
  swift_unknownObjectRetain();

  v43 = 0;
  v176 = _swiftEmptyArrayStorage;
  v177 = v32;
  while (1)
  {
    v46 = (v191 + 16 * v43);
    v47 = *v46;
    v48 = v46[1];
    v49 = *v46 == 0xD000000000000010 && v196 == v48;
    if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v50 = swift_dynamicCastClassUnconditional();
    v51 = v195;
    (*(*v50 + 896))(v50, v52, v53);
    v54 = v199;
    v55 = v189;
    sub_100AB77F4(v51 + *(v199 + 24), v189, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    v56 = sub_100AB78F8(v51, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(*v192 + 896))(v56);
    v57 = &v32[*(v54 + 24)];
    v58 = v190;
    sub_100AB77F4(v57, v190, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    sub_100AB78F8(v32, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_100AB785C(&unk_101A0F360, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    v59 = v188;
    CRType.observableDifference(from:)();
    sub_100AB78F8(v58, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    sub_100AB78F8(v55, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    if ((*v186)(v59, 1, v198) == 1)
    {
      v44 = v59;
      v45 = &qword_101A0F338;
    }

    else
    {
      v60 = v187;
      sub_10003DFF8(v59, v187, &unk_101A0F340);
      v61 = type metadata accessor for CRValueObservableDifference();
      v62 = *(*(v61 - 8) + 48);
      if (v62(v60, 1, v61) != 1)
      {
        v63 = swift_dynamicCastClassUnconditional();
        v64 = v195;
        (*(*v63 + 896))(v63, v65, v66);
        sub_1005B981C(&unk_101A0D9C0);
        CRRegister.wrappedValue.getter();
        sub_100AB78F8(v64, type metadata accessor for CRLWPShapeItemCRDTData);
        v208 = &type metadata for Float;
        sub_10000BE14(&v206, &v204, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(&v204, 33);
        v60 = v187;
        swift_endAccess();
        sub_10000CAAC(&v206, &unk_1019F4D00);
      }

      if (v62(v60 + *(v198 + 48), 1, v61) != 1)
      {
        v67 = swift_dynamicCastClassUnconditional();
        v68 = v180;
        (*(*v67 + 896))(v67, v69, v70);
        sub_1005B981C(&unk_101A0F370);
        CRRegister.wrappedValue.getter();
        v71 = v68;
        v32 = v177;
        sub_100AB78F8(v71, type metadata accessor for CRLWPShapeItemCRDTData);
        if (v207)
        {
          v72 = 0;
        }

        else
        {
          v72 = v206;
        }

        type metadata accessor for CRLWPVerticalAlignment(0);
        v208 = v73;
        v206 = v72;
        sub_10000BE14(&v206, &v204, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(&v204, 34);
        v60 = v187;
        swift_endAccess();
        sub_10000CAAC(&v206, &unk_1019F4D00);
      }

      if (v62(v60 + *(v198 + 64), 1, v61) != 1)
      {
        v86 = swift_dynamicCastClassUnconditional();
        v87 = v195;
        (*(*v86 + 896))(v86, v88, v89);
        sub_1005B981C(&qword_101A2C810);
        CRRegister.wrappedValue.getter();
        sub_100AB78F8(v87, type metadata accessor for CRLWPShapeItemCRDTData);
        v208 = &type metadata for Bool;
        sub_10000BE14(&v206, &v204, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(&v204, 35);
        swift_endAccess();
        sub_10000CAAC(&v206, &unk_1019F4D00);
      }

      v44 = v60;
      v45 = &unk_101A0F340;
    }

    sub_10000CAAC(v44, v45);
LABEL_7:
    if (++v43 == v193)
    {
      goto LABEL_96;
    }
  }

  v74 = v47 == 0xD000000000000013 && v185 == v48;
  if (!v74 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v176 = sub_100024CBC(0, *(v176 + 2) + 1, 1, v176);
    }

    v99 = *(v176 + 2);
    v98 = *(v176 + 3);
    if (v99 >= v98 >> 1)
    {
      v176 = sub_100024CBC((v98 > 1), v99 + 1, 1, v176);
    }

    v100 = v176;
    *(v176 + 2) = v99 + 1;
    v101 = &v100[16 * v99];
    *(v101 + 4) = v47;
    *(v101 + 5) = v48;
    goto LABEL_7;
  }

  v75 = swift_dynamicCastClassUnconditional();
  v76 = v195;
  (*(*v75 + 896))(v75, v77, v78);
  v79 = v199;
  v80 = v182;
  sub_100AB77F4(v76 + *(v199 + 20), v182, type metadata accessor for CRLWPStorageCRDTData);
  v81 = sub_100AB78F8(v76, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(*v192 + 896))(v81);
  v82 = &v32[*(v79 + 20)];
  v83 = v183;
  sub_100AB77F4(v82, v183, type metadata accessor for CRLWPStorageCRDTData);
  sub_100AB78F8(v32, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_100AB785C(&qword_101A0D160, type metadata accessor for CRLWPStorageCRDTData);
  v84 = v181;
  CRType.observableDifference(from:)();
  sub_100AB78F8(v83, type metadata accessor for CRLWPStorageCRDTData);
  sub_100AB78F8(v80, type metadata accessor for CRLWPStorageCRDTData);
  v85 = v178;
  if ((*v174)(v84, 1, v178) == 1)
  {
    sub_10000CAAC(v84, &qword_101A0F328);
LABEL_78:
    v151 = *(v201 + v173);
    if (!v151)
    {
      goto LABEL_105;
    }

    *(v151 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
    *(v151 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) = 0;
    *(v151 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) = 0;
    goto LABEL_7;
  }

  v90 = v84;
  v91 = v179;
  sub_10003DFF8(v90, v179, &qword_101A0F330);
  v92 = v175;
  sub_10000BE14(v91, v175, &qword_101A0F330);
  *&v200 = *(v85 + 48);
  v93 = v167;
  sub_10003DFF8(v92, v167, &qword_101A0F320);
  v94 = sub_1005B981C(&qword_101A0F350);
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  v170 = v95 + 48;
  v169 = v96;
  v97 = v96(v93, 1, v94);
  v171 = v94;
  v168 = v95;
  if (v97 == 1)
  {
    sub_10000CAAC(v92 + v200, &qword_101A0F320);
    sub_10000CAAC(v93, &qword_101A0F320);
  }

  else
  {
    v102 = CRAttributedString.ObservableDifference.edits.getter();
    (*(v95 + 8))(v93, v94);
    sub_10000CAAC(v92 + v200, &qword_101A0F320);
    v103 = *(v102 + 16);
    v164[1] = v102;
    if (v103)
    {
      v104 = (v102 + 56);
      v105 = _swiftEmptyArrayStorage;
      v106 = _swiftEmptyArrayStorage;
      do
      {
        v200 = *(v104 - 24);
        v154 = *(v104 - 1);
        v155 = *v104;
        if (v155 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_100B362F8(0, *(v106 + 2) + 1, 1, v106);
          }

          v157 = *(v106 + 2);
          v156 = *(v106 + 3);
          v158 = v157 + 1;
          if (v157 >= v156 >> 1)
          {
            v152 = sub_100B362F8((v156 > 1), v157 + 1, 1, v106);
            v106 = v152;
          }

          else
          {
            v152 = v106;
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_100B362F8(0, *(v105 + 2) + 1, 1, v105);
          }

          v157 = *(v105 + 2);
          v159 = *(v105 + 3);
          v158 = v157 + 1;
          if (v157 >= v159 >> 1)
          {
            v152 = sub_100B362F8((v159 > 1), v157 + 1, 1, v105);
            v105 = v152;
          }

          else
          {
            v152 = v105;
          }
        }

        *(v152 + 2) = v158;
        v153 = &v152[32 * v157];
        *(v153 + 2) = v200;
        *(v153 + 6) = v154;
        v153[56] = v155;
        v104 += 32;
        --v103;
      }

      while (v103);
    }

    else
    {
      v105 = _swiftEmptyArrayStorage;
      v106 = _swiftEmptyArrayStorage;
    }

    if (*(v106 + 2))
    {
      v208 = sub_1005B981C(&unk_101A27FA0);
      v206 = v106;
      sub_10000BE14(&v206, &v204, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(&v204, 29);
      swift_endAccess();
      sub_10000CAAC(&v206, &unk_1019F4D00);
    }

    else
    {
    }

    if (*(v105 + 2))
    {
      v208 = sub_1005B981C(&unk_101A27FA0);
      v206 = v105;
      sub_10000BE14(&v206, &v204, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(&v204, 30);
      swift_endAccess();
      sub_10000CAAC(&v206, &unk_1019F4D00);
    }

    else
    {
    }

    v91 = v179;
  }

  v107 = v166;
  sub_10000BE14(v91, v166, &qword_101A0F330);
  v108 = v172;
  sub_10003DFF8(v107 + *(v178 + 48), v172, &qword_101A0F320);
  v109 = v171;
  if (v169(v108, 1, v171) == 1)
  {
    sub_10000CAAC(v91, &qword_101A0F330);
    sub_10000CAAC(v107, &qword_101A0F320);
    v110 = v108;
    v111 = &qword_101A0F320;
LABEL_77:
    sub_10000CAAC(v110, v111);
    v32 = v177;
    goto LABEL_78;
  }

  v112 = CRAttributedString.ObservableDifference.edits.getter();
  (*(v168 + 8))(v108, v109);
  sub_10000CAAC(v107, &qword_101A0F320);
  v113 = *(v112 + 16);
  if (!v113)
  {
LABEL_76:

    v110 = v179;
    v111 = &qword_101A0F330;
    goto LABEL_77;
  }

  v114 = 0;
  v115 = (v112 + 56);
  while (2)
  {
    if (v114 < *(v112 + 16))
    {
      v117 = *(v115 - 3);
      v116 = *(v115 - 2);
      v118 = *(v115 - 1);
      if (*v115 == 1)
      {
        v208 = sub_1005B981C(&qword_101A0F358);
        v119 = swift_allocObject();
        v206 = v119;
        *(v119 + 16) = v117;
        *(v119 + 24) = v116;
        *(v119 + 32) = v118;
        *(v119 + 40) = 1;
        v120 = v202;
        swift_beginAccess();
        sub_10000BE14(&v206, &v204, &unk_1019F4D00);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = *&v120[v42];
        v122 = v203;
        *&v120[v42] = 0x8000000000000000;
        v123 = sub_1007CF108();
        v125 = v122[2];
        v126 = (v124 & 1) == 0;
        v127 = __OFADD__(v125, v126);
        v128 = v125 + v126;
        if (v127)
        {
          goto LABEL_102;
        }

        v129 = v124;
        if (v122[3] >= v128)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v149 = v123;
            sub_100AA3EA4();
            v123 = v149;
          }
        }

        else
        {
          sub_100A890C0(v128, isUniquelyReferenced_nonNull_native);
          v123 = sub_1007CF108();
          if ((v129 & 1) != (v130 & 1))
          {
            goto LABEL_106;
          }
        }

        v141 = v203;
        if ((v129 & 1) == 0)
        {
          v203[(v123 >> 6) + 8] |= 1 << v123;
          *(v141[6] + 8 * v123) = 31;
          v142 = (v141[7] + 32 * v123);
          v143 = v205;
          *v142 = v204;
          v142[1] = v143;
          v144 = v141[2];
          v127 = __OFADD__(v144, 1);
          v145 = v144 + 1;
          if (v127)
          {
            goto LABEL_104;
          }

          goto LABEL_75;
        }

LABEL_53:
        sub_10002C638(&v204, v141[7] + 32 * v123, &unk_1019F4D00);
      }

      else
      {
        v208 = sub_1005B981C(&qword_101A0F358);
        v131 = swift_allocObject();
        v206 = v131;
        *(v131 + 16) = v117;
        *(v131 + 24) = v116;
        *(v131 + 32) = v118;
        *(v131 + 40) = 0;
        v132 = v202;
        swift_beginAccess();
        sub_10000BE14(&v206, &v204, &unk_1019F4D00);
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v203 = *&v132[v42];
        v134 = v203;
        *&v132[v42] = 0x8000000000000000;
        v123 = sub_1007CF108();
        v136 = v134[2];
        v137 = (v135 & 1) == 0;
        v127 = __OFADD__(v136, v137);
        v138 = v136 + v137;
        if (v127)
        {
          goto LABEL_101;
        }

        v139 = v135;
        if (v134[3] >= v138)
        {
          if ((v133 & 1) == 0)
          {
            v150 = v123;
            sub_100AA3EA4();
            v123 = v150;
          }
        }

        else
        {
          sub_100A890C0(v138, v133);
          v123 = sub_1007CF108();
          if ((v139 & 1) != (v140 & 1))
          {
            goto LABEL_106;
          }
        }

        v141 = v203;
        if (v139)
        {
          goto LABEL_53;
        }

        v203[(v123 >> 6) + 8] |= 1 << v123;
        *(v141[6] + 8 * v123) = 32;
        v146 = (v141[7] + 32 * v123);
        v147 = v205;
        *v146 = v204;
        v146[1] = v147;
        v148 = v141[2];
        v127 = __OFADD__(v148, 1);
        v145 = v148 + 1;
        if (v127)
        {
          goto LABEL_103;
        }

LABEL_75:
        v141[2] = v145;
      }

      *&v202[v42] = v141;
      swift_endAccess();
      sub_10000CAAC(&v206, &unk_1019F4D00);
      ++v114;
      v115 += 32;
      if (v113 == v114)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

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
  type metadata accessor for CRLChangeProperty(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_100AB6F14()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1009B4F54();
  v12 = result;
  v13 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v13)
  {
    return v12;
  }

  v14 = *&v13[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v14)
  {
    (*(*v14 + 896))();
    sub_100AB77F4(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
    v15 = v13;
    sub_100AB78F8(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v2 + 16))(v4, v10, v1);
    sub_100AB78F8(v10, type metadata accessor for CRLWPStorageCRDTData);
    v16 = CRAttributedString.attributedString.getter();
    (*(v2 + 8))(v4, v1);
    v17 = [v16 string];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100024CBC(0, *(v12 + 2) + 1, 1, v12);
      }

      v23 = *(v12 + 2);
      v22 = *(v12 + 3);
      if (v23 >= v22 >> 1)
      {
        v12 = sub_100024CBC((v22 > 1), v23 + 1, 1, v12);
      }

      *(v12 + 2) = v23 + 1;
      v24 = &v12[16 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v20;
    }

    else
    {
    }

    return v12;
  }

  __break(1u);
  return result;
}

id sub_100AB7244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPShapeItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLWPShapeItem()
{
  result = qword_101A0F308;
  if (!qword_101A0F308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100AB73DC(void *a1)
{
  type metadata accessor for CRLBoardItemSelection();
  result = [a1 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    v4 = result;
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems;
      v8 = *(v5 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
      if ((v8 & 0xC000000000000001) != 0)
      {

        v9 = __CocoaSet.count.getter();

        if (v9 != 1)
        {
          goto LABEL_13;
        }
      }

      else if (*(v8 + 16) != 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 + v7);

      v11 = sub_10079DB40(v1, v10);

      if (v11)
      {
        sub_100006370(0, &qword_1019FFDF0);
        v12 = [a1 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
        if (v12)
        {
          v13 = v12;
          objc_opt_self();
          v14 = swift_dynamicCastObjCClass();
          if (v14)
          {
            v15 = [a1 indexForSelection:v14];
            v16 = [a1 indexForSelection:v6];

            if (v16 < v15)
            {
              v17 = *&v1[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
              if (v17)
              {
                v18 = *&v1[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
                v19 = v17;
                return v18;
              }
            }
          }

          else
          {
          }

          return 0;
        }
      }
    }

LABEL_13:

    return 0;
  }

  return result;
}

id sub_100AB7704()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    return [objc_allocWithZone(NSEnumerator) init];
  }

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 arrayWithObject:v3];
  v5 = [v4 objectEnumerator];

  return v5;
}

uint64_t sub_100AB77F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100AB785C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100AB78A4()
{
  result = qword_101A0F3F8;
  if (!qword_101A0F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F3F8);
  }

  return result;
}

uint64_t sub_100AB78F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100AB7958(_BYTE *a1)
{
  v3 = type metadata accessor for UUID();
  v80 = *(v3 - 8);
  v81 = v3;
  __chkstk_darwin(v3);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v89, a1, 0x258uLL);
  v6 = 0;
  v86 = sub_100C3B2CC(v89);
  v82 = a1;
  if ((a1[864] & 1) == 0)
  {
    v6 = v82[856];
  }

  KeyPath = swift_getKeyPath();
  v8 = sub_1005B981C(&unk_101A09590);
  v9 = objc_allocWithZone(v8);
  v10 = (v9 + *((swift_isaMask & *v9) + 0xF0));
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v79 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
  v11 = *((swift_isaMask & *v9) + 0xD8);
  v83 = v1;
  v12 = v81;
  v80 = *(v80 + 32);
  (v80)(v9 + v11, v5, v81);
  *(v9 + *((swift_isaMask & *v9) + 0xE0)) = v6;
  *(v9 + *((swift_isaMask & *v9) + 0xE8)) = KeyPath;
  v85.receiver = v9;
  v85.super_class = v8;
  objc_msgSendSuper2(&v85, "init");
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *(v82 + 212);
  v14 = swift_getKeyPath();
  v15 = sub_1005B981C(&unk_101A0F450);
  v16 = objc_allocWithZone(v15);
  v17 = (v16 + *((swift_isaMask & *v16) + 0xF0));
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  (*(**&v83[v79] + 264))();
  (v80)(v16 + *((swift_isaMask & *v16) + 0xD8), v5, v12);
  *(v16 + *((swift_isaMask & *v16) + 0xE0)) = v13;
  *(v16 + *((swift_isaMask & *v16) + 0xE8)) = v14;
  v84.receiver = v16;
  v84.super_class = v15;
  objc_msgSendSuper2(&v84, "init");
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = v86;
  v19 = v83;
  v20 = *&v83[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (!v20)
  {
    v83 = v86;
    v48 = objc_opt_self();
    v49 = [v48 _atomicIncrementAssertCount];
    *&v87[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v87);
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    v52 = [v51 lastPathComponent];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v56 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10146CA70;
    *(v57 + 56) = &type metadata for Int32;
    *(v57 + 64) = &protocol witness table for Int32;
    *(v57 + 32) = v49;
    v58 = sub_100006370(0, &qword_1019F4D30);
    *(v57 + 96) = v58;
    v59 = sub_1005CF04C();
    *(v57 + 104) = v59;
    *(v57 + 72) = v50;
    *(v57 + 136) = &type metadata for String;
    v60 = sub_1000053B0();
    *(v57 + 112) = v53;
    *(v57 + 120) = v55;
    *(v57 + 176) = &type metadata for UInt;
    *(v57 + 184) = &protocol witness table for UInt;
    *(v57 + 144) = v60;
    *(v57 + 152) = 255;
    v61 = *&v87[0];
    *(v57 + 216) = v58;
    *(v57 + 224) = v59;
    *(v57 + 192) = v61;
    v62 = v50;
    v63 = v61;
    v64 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v57);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v65, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v66 = swift_allocObject();
    v66[2] = 8;
    v66[3] = 0;
    v66[4] = 0;
    v66[5] = 0;
    v67 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v69 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v70 = String._bridgeToObjectiveC()();

    [v48 handleFailureInFunction:v68 file:v69 lineNumber:255 isFatal:0 format:v70 args:v67];

    return v83;
  }

  v21 = v20;
  v22 = [v21 range];
  v24 = v23;
  result = NSNotFound.getter();
  if (v22 == result)
  {
    v83 = v18;
    v82 = objc_opt_self();
    v26 = [v82 _atomicIncrementAssertCount];
    *&v87[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v87);
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10146CA70;
    *(v34 + 56) = &type metadata for Int32;
    *(v34 + 64) = &protocol witness table for Int32;
    *(v34 + 32) = v26;
    v35 = sub_100006370(0, &qword_1019F4D30);
    *(v34 + 96) = v35;
    v36 = sub_1005CF04C();
    *(v34 + 104) = v36;
    *(v34 + 72) = v27;
    *(v34 + 136) = &type metadata for String;
    v37 = sub_1000053B0();
    *(v34 + 112) = v30;
    *(v34 + 120) = v32;
    *(v34 + 176) = &type metadata for UInt;
    *(v34 + 184) = &protocol witness table for UInt;
    *(v34 + 144) = v37;
    *(v34 + 152) = 256;
    v38 = *&v87[0];
    *(v34 + 216) = v35;
    *(v34 + 224) = v36;
    *(v34 + 192) = v38;
    v39 = v27;
    v40 = v38;
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v34);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v42, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v43 = swift_allocObject();
    v43[2] = 8;
    v43[3] = 0;
    v43[4] = 0;
    v43[5] = 0;
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    [v82 handleFailureInFunction:v45 file:v46 lineNumber:256 isFatal:0 format:v47 args:v44];

    return v83;
  }

  if (__OFADD__(v22, v24))
  {
    __break(1u);
  }

  else
  {
    v88 = *(v82 + 105);
    v71 = *(v82 + 808);
    v87[12] = *(v82 + 792);
    v87[13] = v71;
    v87[14] = *(v82 + 824);
    v72 = *(v82 + 744);
    v87[8] = *(v82 + 728);
    v87[9] = v72;
    v73 = *(v82 + 776);
    v87[10] = *(v82 + 760);
    v87[11] = v73;
    v74 = *(v82 + 680);
    v87[4] = *(v82 + 664);
    v87[5] = v74;
    v75 = *(v82 + 712);
    v87[6] = *(v82 + 696);
    v87[7] = v75;
    v76 = *(v82 + 616);
    v87[0] = *(v82 + 600);
    v87[1] = v76;
    v77 = *(v82 + 648);
    v87[2] = *(v82 + 632);
    v87[3] = v77;
    sub_100A2197C(v87, v22, v22 + v24, v19);
    sub_100799F10(v78);

    return v86;
  }

  return result;
}

uint64_t sub_100AB8514(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_10000BE14(a1, v5, &unk_1019F33C0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000CAAC(v5, &unk_1019F33C0);
  }

  v14 = *(v7 + 32);
  v14(v12, v5, v6);
  (*(v7 + 16))(v9, v12, v6);
  v15 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_100B364FC(0, v15[2] + 1, 1, v15);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_100B364FC(v16 > 1, v17 + 1, 1, v15);
  }

  (*(v7 + 8))(v12, v6);
  v15[2] = v17 + 1;
  result = (v14)(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v9, v6);
  *v1 = v15;
  return result;
}

void sub_100AB8788()
{
  if ([objc_opt_self() isInternalOSInstall])
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 BOOLForKey:v1];

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  byte_101AD7170 = v3;
}

id sub_100AB8848()
{
  result = [objc_opt_self() isInternalOSInstall];
  byte_101AD7171 = result;
  return result;
}

uint64_t sub_100AB887C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a3)
  {
    v32 = v14;
    v33 = v13;
    v17 = a2;
    v31 = v17;
    v18 = a3;
    v19 = sub_100AB8CA4(v17, v18, 0, 0);
    sub_100006370(0, &qword_1019F2D90);
    v30 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    aBlock[4] = sub_100AB9F58;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_101893DE0;
    v21 = _Block_copy(aBlock);
    v29 = v18;
    v22 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006568(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v30;
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v21);
    (*(v9 + 8))(v11, v8);
    return (*(v32 + 8))(v16, v33);
  }

  else
  {
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = a2;
    v27 = a2;
    sub_10064191C(0, 0, v7, &unk_101492B48, v26);
  }
}

id sub_100AB8CA4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v58 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = objc_opt_self();
  [v6 labelFontSize];
  v7 = [v6 boldSystemFontOfSize:?];
  [v6 systemFontSize];
  v8 = [v6 systemFontOfSize:?];
  [v6 systemFontSize];
  v9 = [v6 boldSystemFontOfSize:?];
  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSFontAttributeName;
  v11 = sub_100006370(0, &qword_101A0DE60);
  *(inited + 64) = v11;
  *(inited + 40) = v7;
  v12 = NSFontAttributeName;
  v65 = v7;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_101A0DE70);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_10146C6B0;
  *(v13 + 32) = v12;
  *(v13 + 64) = v11;
  *(v13 + 40) = v8;
  v64 = v8;
  sub_10006E310(v13);
  swift_setDeallocating();
  sub_10000CAAC(v13 + 32, &unk_101A0DE70);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10146C6B0;
  *(v14 + 32) = v12;
  *(v14 + 64) = v11;
  *(v14 + 40) = v9;
  v63 = v9;
  sub_10006E310(v14);
  swift_setDeallocating();
  sub_10000CAAC(v14 + 32, &unk_101A0DE70);
  v15 = objc_allocWithZone(NSMutableAttributedString);
  v16 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100006568(&qword_1019F34A0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = [v15 initWithString:v16 attributes:isa];

  v18 = objc_allocWithZone(NSMutableAttributedString);
  v19 = String._bridgeToObjectiveC()();
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  v66 = [v18 initWithString:v19 attributes:v20];

  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v57 = [v21 rangeOfString:v22];
  v56 = v23;

  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v55 = [v24 rangeOfString:v25];
  v27 = v26;

  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 rangeOfString:v29];
  v32 = v31;

  v33 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v66 addAttributes:v33 range:{v57, v56}];

  v34 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v66 addAttributes:v34 range:{v55, v27}];

  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v66 addAttributes:v35 range:{v30, v32}];

  [v58 _setAttributedTitle:v67];
  [v58 _setAttributedMessage:v66];
  v36 = swift_allocObject();
  v36[2] = a1;
  v36[3] = a3;
  v36[4] = a4;
  v36[5] = a2;

  v37 = a2;
  v38 = a1;
  v39 = String._bridgeToObjectiveC()();
  v72 = sub_100ABD4C8;
  v73 = v36;
  aBlock = _NSConcreteStackBlock;
  v69 = *"";
  v70 = sub_10068B39C;
  v71 = &unk_101893E30;
  v40 = _Block_copy(&aBlock);

  v41 = objc_opt_self();
  v42 = [v41 actionWithTitle:v39 style:0 handler:v40];
  _Block_release(v40);

  [v58 addAction:v42];
  v43 = swift_allocObject();
  v43[2] = v38;
  v43[3] = a3;
  v43[4] = a4;
  v43[5] = v37;
  v44 = v38;

  v45 = v37;
  v46 = String._bridgeToObjectiveC()();
  v72 = sub_100ABD550;
  v73 = v43;
  aBlock = _NSConcreteStackBlock;
  v69 = *"";
  v70 = sub_10068B39C;
  v71 = &unk_101893E80;
  v47 = _Block_copy(&aBlock);

  v48 = [v41 actionWithTitle:v46 style:2 handler:v47];
  _Block_release(v47);

  [v58 addAction:v48];
  v49 = swift_allocObject();
  *(v49 + 16) = v58;
  v50 = v58;
  v51 = String._bridgeToObjectiveC()();
  v72 = sub_100ABD590;
  v73 = v49;
  aBlock = _NSConcreteStackBlock;
  v69 = *"";
  v70 = sub_10068B39C;
  v71 = &unk_101893ED0;
  v52 = _Block_copy(&aBlock);

  v53 = [v41 actionWithTitle:v51 style:1 handler:v52];
  _Block_release(v52);

  [v50 addAction:v53];
  return v50;
}

uint64_t sub_100AB9598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for URLComponents();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_1005B981C(&qword_101A00288);
  v4[7] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100AB9750, 0, 0);
}

uint64_t sub_100AB9750()
{
  sub_100ABBBD0(*(v0 + 24), 0, 0, *(v0 + 56));
  v1 = objc_allocWithZone(CRLTemporaryDirectory);
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 16) = 0;
  v3 = [v1 initWithSignature:v2 error:v0 + 16];

  v4 = *(v0 + 16);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (v3)
  {
    v8 = v4;
    [v3 leakTemporaryDirectory];
    if ((*(v7 + 48))(v5, 1, v6))
    {
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 64);

      (*(v10 + 56))(v11, 1, 1, v9);
    }

    else
    {
      v14 = *(v0 + 40);
      v13 = *(v0 + 48);
      v15 = *(v0 + 32);
      (*(v14 + 16))(v13, *(v0 + 56), v15);
      URLComponents.url.getter();

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v12 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if ((*(v7 + 48))(v5, 1, v6))
    {
      (*(*(v0 + 80) + 56))(*(v0 + 64), 1, 1, *(v0 + 72));
    }

    else
    {
      v17 = *(v0 + 40);
      v16 = *(v0 + 48);
      v18 = *(v0 + 32);
      (*(v17 + 16))(v16, *(v0 + 56), v18);
      URLComponents.url.getter();
      (*(v17 + 8))(v16, v18);
    }
  }

  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 64);
  sub_10000CAAC(*(v0 + 56), &qword_101A00288);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_10000CAAC(*(v0 + 64), &unk_1019F33C0);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    *(v0 + 96) = objc_opt_self();
    *(v0 + 104) = type metadata accessor for MainActor();
    *(v0 + 112) = static MainActor.shared.getter();
    v25 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100AB9B18, v25, v24);
  }
}

uint64_t sub_100AB9B18()
{
  v1 = *(v0 + 96);

  *(v0 + 120) = [v1 sharedApplication];

  return _swift_task_switch(sub_100AB9BCC, 0, 0);
}

uint64_t sub_100AB9BCC()
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v0[16].super.isa = v1;
  sub_100BD72C0(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100006568(&qword_1019F3CF0, type metadata accessor for OpenExternalURLOptionsKey);
  v0[17].super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[18].super.isa = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AB9D10, v3, v2);
}

uint64_t sub_100AB9D10()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];

  [v3 openURL:v2 options:v1 completionHandler:0];

  return _swift_task_switch(sub_100AB9DD8, 0, 0);
}

uint64_t sub_100AB9DD8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100AB9EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100AB9598(a1, v4, v5, v6);
}

uint64_t sub_100AB9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 144) = a4;
  *(v6 + 152) = a6;
  *(v6 + 336) = a5;
  *(v6 + 128) = a2;
  *(v6 + 136) = a3;
  *(v6 + 120) = a1;
  v7 = type metadata accessor for URLComponents();
  *(v6 + 160) = v7;
  *(v6 + 168) = *(v7 - 8);
  *(v6 + 176) = swift_task_alloc();
  v8 = type metadata accessor for URLQueryItem();
  *(v6 + 184) = v8;
  *(v6 + 192) = *(v8 - 8);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v6 + 216) = v9;
  *(v6 + 224) = *(v9 - 8);
  *(v6 + 232) = swift_task_alloc();
  sub_1005B981C(&qword_101A00288);
  *(v6 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_100ABA164, 0, 0);
}

uint64_t sub_100ABA164()
{
  sub_100ABBBD0(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 240));
  v1 = objc_allocWithZone(CRLTemporaryDirectory);
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 104) = 0;
  v3 = [v1 initWithSignature:v2 error:v0 + 104];
  *(v0 + 248) = v3;

  v4 = *(v0 + 104);
  if (v3)
  {
    v5 = *(v0 + 152);
    v6 = swift_allocObject();
    *(v0 + 256) = v6;
    *(v6 + 16) = _swiftEmptyArrayStorage;
    v7 = v4;
    [v3 leakTemporaryDirectory];
    if (!v5 || (v8 = *(v0 + 152), type metadata accessor for CRLiOSBoardViewController(), v9 = swift_dynamicCastClass(), (*(v0 + 264) = v9) == 0))
    {
      v13 = *(v0 + 240);
      v14 = *(v0 + 160);
      v15 = *(v0 + 168);
      if ((*(v15 + 48))(v13, 1, v14))
      {
        v16 = *(v0 + 216);
        v17 = *(v0 + 224);
        v18 = *(v0 + 120);

        (*(v17 + 56))(v18, 1, 1, v16);
      }

      else
      {
        v20 = *(v0 + 176);
        (*(v15 + 16))(v20, v13, v14);
        URLComponents.url.getter();

        (*(v15 + 8))(v20, v14);
      }

      goto LABEL_17;
    }

    if (*(v0 + 336) == 1)
    {
      *(v0 + 272) = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator;
      type metadata accessor for MainActor();
      v10 = v8;
      *(v0 + 280) = static MainActor.shared.getter();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100ABA564, v12, v11);
    }
  }

  else
  {
    v19 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v21 = *(v0 + 240);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  if ((*(v23 + 48))(v21, 1, v22))
  {
    (*(*(v0 + 224) + 56))(*(v0 + 120), 1, 1, *(v0 + 216));
  }

  else
  {
    v24 = *(v0 + 176);
    (*(v23 + 16))(v24, v21, v22);
    URLComponents.url.getter();
    (*(v23 + 8))(v24, v22);
  }

LABEL_17:
  sub_10000CAAC(*(v0 + 240), &qword_101A00288);

  v25 = *(v0 + 8);

  return v25();
}