void *sub_10012C330()
{
  v1 = v0;
  sub_1000CE6B8(&qword_10190BB30);
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
        v18 = 40 * v17;
        sub_10012EF50(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10004E374(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000D2BE0(v22, (*(v4 + 56) + v17));
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

void *sub_10012C4D4()
{
  v1 = v0;
  sub_1000CE6B8(&unk_10190BA60);
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

void *sub_10012C644()
{
  v1 = v0;
  sub_1000CE6B8(&qword_10190BAF8);
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

id sub_10012C7B4()
{
  v1 = v0;
  sub_1000CE6B8(&unk_10190BB00);
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

id sub_10012C924()
{
  v1 = v0;
  sub_1000CE6B8(&unk_10190BA88);
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
        v20 = (v18 & 0x1FFFFFFFFFFFFFFFLL);
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

id sub_10012CA88()
{
  v1 = v0;
  sub_1000CE6B8(&unk_1019080E0);
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

id sub_10012CBF8()
{
  v1 = v0;
  sub_1000CE6B8(&qword_101908178);
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
        sub_10005EB40(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10005E7BC(v19, *(v4 + 56) + 40 * v17);
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

void *sub_10012CD7C()
{
  v1 = v0;
  sub_1000CE6B8(&qword_101908188);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = (*(v2 + 56) + v17);
        v23 = *(v4 + 48) + v17;
        v29 = *v22;
        v24 = *v22;
        v30 = v22[1];
        v25 = *(v18 + 24);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v25;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v30;
        v27 = v19;
        sub_1000D2C54(v20, v21, v25);
        v28 = v29;
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

id sub_10012CF50()
{
  v1 = v0;
  sub_1000CE6B8(&unk_10190BB20);
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

        result = v22;
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

void *sub_10012D0D0()
{
  v1 = v0;
  sub_1000CE6B8(&qword_101908288);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v30 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v31 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 32 * v16;
        v18 = *(v2 + 48) + 32 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = 40 * v16;
        sub_10012EFAC(*(v2 + 56) + 40 * v16, v32);
        v24 = *(v30 + 48) + v17;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        v25 = *(v30 + 56) + v23;
        v26 = v33;
        v27 = v32[1];
        *v25 = v32[0];
        *(v25 + 16) = v27;
        *(v25 + 32) = v26;
        v28 = v19;
        result = sub_1000D2C54(v20, v21, v22);
        v11 = v31;
      }

      while (v31);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v29;
        v4 = v30;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v31 = (v15 - 1) & v15;
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

id sub_10012D2B4()
{
  v1 = v0;
  sub_1000CE6B8(&unk_10190BB50);
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

void *sub_10012D414()
{
  v1 = v0;
  sub_1000CE6B8(&qword_101908280);
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

char *sub_10012D598()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&qword_1019081B0);
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
        result = swift_unknownObjectRetain();
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

id sub_10012D818()
{
  v1 = v0;
  sub_1000CE6B8(&qword_101908100);
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v19;
        v24[1] = v20;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;
        v26 = v22;

        result = v23;
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

char *sub_10012D99C()
{
  v1 = v0;
  v35 = type metadata accessor for Handle();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&qword_10190BAF0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

id sub_10012DC30(uint64_t *a1)
{
  v2 = v1;
  sub_1000CE6B8(a1);
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

void *sub_10012DD90(uint64_t *a1)
{
  v2 = v1;
  sub_1000CE6B8(a1);
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

id sub_10012DEF0()
{
  v1 = v0;
  v2 = type metadata accessor for VisitsLoader.VisitData(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&unk_10190BAC0);
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
        v21 = *(v24 + 72) * v20;
        sub_10012EEEC(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1000D2BF0(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
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

char *sub_10012E118()
{
  v1 = v0;
  v33 = type metadata accessor for Date();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&qword_10190BA98);
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

id sub_10012E398(uint64_t *a1)
{
  v2 = v1;
  sub_1000CE6B8(a1);
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

id sub_10012E4F4(uint64_t *a1)
{
  v3 = v1;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(a1);
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
    v17 = v7;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = v35;
        v23 = *(v35 + 72) * v21;
        v25 = v32;
        v24 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v23, v33);
        v26 = *(*(v5 + 56) + 8 * v21);
        (*(v22 + 32))(*(v17 + 48) + v23, v25, v24);
        *(*(v17 + 56) + 8 * v21) = v26;
        result = v26;
        v15 = v36;
      }

      while (v36);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v20 = *(v29 + v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v36 = (v20 - 1) & v20;
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

id sub_10012E768()
{
  v1 = v0;
  sub_1000CE6B8(&qword_10190BA80);
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

void *sub_10012E8C8()
{
  v1 = v0;
  sub_1000CE6B8(&qword_10190BA78);
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

void *sub_10012EA24()
{
  v1 = v0;
  sub_1000CE6B8(&qword_10190BA70);
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

uint64_t (*sub_10012EB94(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10012F040;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10012EC14(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10012F044;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012ECAC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps20PlaceItemsController__placeItems) = *(v0 + 24);
}

void (*sub_10012ED0C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10012ED8C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10012ED94(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10012EE14;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10012EE1C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10012EE9C;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012EEA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012EEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitsLoader.VisitData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012EFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190BB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10012F070()
{
  sub_10012F7E8(319, &qword_10190BC00, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10012F7E8(319, &qword_10190BC08, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10012F148(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for ContentSizeCategory() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v6 + 64);
  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v6 + 64);
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(v12 + 80);
  if (v9 <= v13)
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  if (v8)
  {
    v18 = *(v6 + 64);
  }

  else
  {
    v18 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v18 + v14;
  v20 = v14 | 7;
  v21 = v11 + v15 + 1;
  v22 = a2 >= v17;
  v23 = a2 - v17;
  if (v23 != 0 && v22)
  {
    v24 = ((v21 + ((v20 + v18 + (v19 & ~v14)) & ~v20)) & ~v15) + *(v12 + 64);
    v25 = 8 * v24;
    if (v24 <= 3)
    {
      v27 = ((v23 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v27))
      {
        v26 = *(a1 + v24);
        if (!v26)
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v27 > 0xFF)
      {
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v27 < 2)
      {
        goto LABEL_40;
      }
    }

    v26 = *(a1 + v24);
    if (!*(a1 + v24))
    {
      goto LABEL_40;
    }

LABEL_27:
    v28 = (v26 - 1) << v25;
    if (v24 > 3)
    {
      v28 = 0;
    }

    if (v24)
    {
      if (v24 <= 3)
      {
        v29 = ((v21 + ((v20 + v18 + (v19 & ~v14)) & ~v20)) & ~v15) + *(v12 + 64);
      }

      else
      {
        v29 = 4;
      }

      if (v29 > 2)
      {
        if (v29 == 3)
        {
          v30 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v30 = *a1;
        }
      }

      else if (v29 == 1)
      {
        v30 = *a1;
      }

      else
      {
        v30 = *a1;
      }
    }

    else
    {
      v30 = 0;
    }

    return v17 + (v30 | v28) + 1;
  }

LABEL_40:
  if (v9 == v17)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v34 = (*(v7 + 48))(a1);
    if (v34 >= 2)
    {
      return v34 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v32 = (((a1 + v19) & ~v14) + v18 + v20) & ~v20;
    if (v16 > 0xFE)
    {
      v35 = *(v12 + 48);

      return v35((v21 + v32) & ~v15, v13);
    }

    else
    {
      v33 = *(v32 + v11);
      if (v33 >= 2)
      {
        return (v33 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_10012F404(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentSizeCategory();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v12 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(*(v8 - 8) + 64);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  v18 = *(v15 + 80);
  if (v13 <= v16)
  {
    v19 = *(v15 + 84);
  }

  else
  {
    v19 = v13;
  }

  if (v19 <= 0xFE)
  {
    v20 = 254;
  }

  else
  {
    v20 = v19;
  }

  if (v11)
  {
    v21 = *(*(v8 - 8) + 64);
  }

  else
  {
    v21 = v12 + 1;
  }

  v22 = v14 + 1;
  v23 = v14 + 1 + v18;
  v24 = ((v23 + (((v17 | 7) + v21 + ((v21 + v17) & ~v17)) & ~(v17 | 7))) & ~v18) + *(v15 + 64);
  if (a3 <= v20)
  {
    goto LABEL_27;
  }

  if (v24 <= 3)
  {
    v25 = ((a3 - v20 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v25))
    {
      v9 = 4;
      if (v20 >= a2)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v9 = v26;
    }

    else
    {
      v9 = 0;
    }

LABEL_27:
    if (v20 >= a2)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v9 = 1;
  if (v20 >= a2)
  {
LABEL_37:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_44;
      }

      *&a1[v24] = 0;
    }

    else if (v9)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

LABEL_44:
      if (v13 == v20)
      {
        v30 = *(v10 + 56);

        v30(a1, (a2 + 1));
      }

      else
      {
        v31 = (((&a1[v21 + v17] & ~v17) + v21 + (v17 | 7)) & ~(v17 | 7));
        if (v19 > 0xFE)
        {
          v32 = *(v15 + 56);

          v32(&v31[v23] & ~v18, a2, v16);
        }

        else if (a2 > 0xFE)
        {
          if (v22 <= 3)
          {
            v33 = ~(-1 << (8 * v22));
          }

          else
          {
            v33 = -1;
          }

          if (v14 != -1)
          {
            v34 = v33 & (a2 - 255);
            if (v22 <= 3)
            {
              v35 = v14 + 1;
            }

            else
            {
              v35 = 4;
            }

            bzero(v31, v22);
            if (v35 > 2)
            {
              if (v35 == 3)
              {
                *v31 = v34;
                v31[2] = BYTE2(v34);
              }

              else
              {
                *v31 = v34;
              }
            }

            else if (v35 == 1)
            {
              *v31 = v34;
            }

            else
            {
              *v31 = v34;
            }
          }
        }

        else
        {
          v31[v14] = -a2;
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

LABEL_28:
  v27 = ~v20 + a2;
  if (v24 >= 4)
  {
    bzero(a1, v24);
    *a1 = v27;
    v28 = 1;
    if (v9 > 1)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  v28 = (v27 >> (8 * v24)) + 1;
  if (!v24)
  {
LABEL_57:
    if (v9 > 1)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  v29 = v27 & ~(-1 << (8 * v24));
  bzero(a1, v24);
  if (v24 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_57;
  }

  if (v24 == 2)
  {
    *a1 = v29;
    if (v9 > 1)
    {
LABEL_61:
      if (v9 == 2)
      {
        *&a1[v24] = v28;
      }

      else
      {
        *&a1[v24] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v9 > 1)
    {
      goto LABEL_61;
    }
  }

LABEL_58:
  if (v9)
  {
    a1[v24] = v28;
  }
}

void sub_10012F7E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ContentSizeCategory();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10012F88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_10190BC28);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_1000D2DFC(v2 + *(a1 + 40), &v15 - v10, &qword_10190BC28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ContentSizeCategory();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10012FA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000CE6B8(&qword_10190BC20);
  __chkstk_darwin(v5 - 8);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for ContentSizeCategory();
  __chkstk_darwin(v10);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v48 - v13;
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v21 = v20;
  sub_1000D2DFC(v2, v9, &qword_10190BC20);
  v22 = v21[6];
  v23 = v22(v9, 1, v10);
  v56 = a1;
  if (v23 == 1)
  {
    sub_1001301A4(v9);
    goto LABEL_9;
  }

  v57 = a2;
  v49 = v21[4];
  v49(v19, v9, v10);
  v52 = v2;
  sub_10012F88C(a1, v16);
  v24 = static ContentSizeCategory.allCases.getter();
  v25 = v21;
  v26 = sub_1003CF320(v16, v24);
  v28 = v27;

  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26;
  }

  v30 = static ContentSizeCategory.allCases.getter();
  v50 = sub_1003CF320(v19, v30);
  v32 = v31;

  v51 = v25;
  v33 = v25[1];
  v33(v16, v10);
  if ((v32 & 1) == 0)
  {
    if (v29 >= v50)
    {
      goto LABEL_8;
    }

    return (v49)(v57, v19, v10);
  }

  if (v29 < 0)
  {
    return (v49)(v57, v19, v10);
  }

LABEL_8:
  v33(v19, v10);
  a2 = v57;
  v21 = v51;
  v2 = v52;
LABEL_9:
  v34 = v56;
  v35 = v54;
  sub_1000D2DFC(v2 + *(v56 + 36), v54, &qword_10190BC20);
  if (v22(v35, 1, v10) != 1)
  {
    v57 = a2;
    v36 = v55;
    v54 = v21[4];
    (v54)(v55, v35, v10);
    v37 = v53;
    v52 = v2;
    sub_10012F88C(v34, v53);
    v38 = static ContentSizeCategory.allCases.getter();
    v39 = sub_1003CF320(v37, v38);
    v41 = v40;

    if (v41)
    {
      v39 = 0;
    }

    v42 = static ContentSizeCategory.allCases.getter();
    v43 = sub_1003CF320(v36, v42);
    v45 = v44;

    v46 = v21[1];
    v46(v37, v10);
    if (v45)
    {
      if (v39 > 0)
      {
        return (v54)(v57, v55, v10);
      }
    }

    else if (v43 < v39)
    {
      return (v54)(v57, v55, v10);
    }

    v46(v55, v10);
    a2 = v57;
    return sub_10012F88C(v34, a2);
  }

  sub_1001301A4(v35);
  return sub_10012F88C(v34, a2);
}

uint64_t sub_10012FEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = type metadata accessor for ContentSizeCategory();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(a1 + 16);
  sub_1000D6664(&qword_10190BC10);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  swift_getKeyPath();
  sub_10012FA90(a1, v5);
  v13 = *(a1 + 24);
  View.environment<A>(_:_:)();

  (*(v3 + 8))(v5, v19);
  v14 = sub_100130140();
  v21 = v13;
  v22 = v14;
  WitnessTable = swift_getWitnessTable();
  sub_10010ADFC(v9, v6, WitnessTable);
  v16 = *(v7 + 8);
  v16(v9, v6);
  sub_10010ADFC(v12, v6, WitnessTable);
  return (v16)(v12, v6);
}

unint64_t sub_100130140()
{
  result = qword_10190BC18;
  if (!qword_10190BC18)
  {
    sub_1000D6664(&qword_10190BC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BC18);
  }

  return result;
}

uint64_t sub_1001301A4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10190BC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10013021C(id result, __int16 a2)
{
  v3 = &v2[OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_visitedPlacesCellState];
  v4 = *&v2[OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_visitedPlacesCellState];
  v5 = *&v2[OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_visitedPlacesCellState + 8];
  *v3 = result;
  *(v3 + 4) = a2;
  v6 = v5 & 0xFF00;
  if ((a2 & 0xFF00) == 0x500)
  {
    if (v6 == 1280)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v6 != 1280)
  {
    if (HIBYTE(a2) == 3)
    {
      if (v6 == 768)
      {
        return result;
      }

      goto LABEL_5;
    }

    if (HIBYTE(a2) == 4)
    {
      if (v6 == 1024)
      {
        return result;
      }

      goto LABEL_5;
    }

    v7 = v5 >> 8;
    if ((v5 >> 8) - 3 >= 2)
    {
      if (a2)
      {
        if ((v5 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((v5 & 1) != 0 || v4 != result)
      {
        goto LABEL_5;
      }

      if (HIBYTE(a2) == 2)
      {
        if (v7 == 2)
        {
          return result;
        }
      }

      else if (v7 != 2 && ((BYTE1(v5) ^ HIBYTE(a2)) & 1) == 0)
      {
        return result;
      }
    }
  }

LABEL_5:
  result = [v2 delegate];
  if (result)
  {
    [result sectionController:v2 setNeedsApplySnapshotAnimated:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_100130348(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = &v1[OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_visitedPlacesCellState];
  *v8 = 0;
  *(v8 + 4) = 1280;
  type metadata accessor for LibraryVisitedPlacesCellStateProvider();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *&v2[OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_visitedPlacesCellStateProvider] = v9;
  type metadata accessor for LibraryRecentsDataProvider();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_libraryRecentsDataProvider] = sub_10049B968();
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v23, "initWithConfiguration:", a1);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v13 = v10;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v12;

  sub_10020AAE4(0, 0, v7, &unk_1011E7DF0, v15);

  v16 = *&v13[OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_libraryRecentsDataProvider];
  swift_getKeyPath();
  v19 = v16;
  v20 = v10;
  v21 = &off_101604F40;
  v22 = v16;
  sub_100131CA8();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v13;
}

void *sub_100130618()
{
  sub_1000CE6B8(&qword_10190BCD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E7D60;
  *(inited + 32) = 0;
  *(inited + 40) = 1280;
  *(inited + 48) = 0;
  *(inited + 56) = 1536;
  *(inited + 64) = 0;
  *(inited + 72) = 1792;
  *(inited + 80) = 0;
  *(inited + 88) = 2048;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_visitedPlacesCellState + 8);
  if ((v2 & 0xFF00) != 0x500 && (HIBYTE(v2) - 3) >= 2u)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_visitedPlacesCellState);
    inited = sub_100356124(1, 5, 1, inited);
    *(inited + 16) = 5;
    *(inited + 96) = v3;
    *(inited + 104) = v2;
  }

  v4 = *(v0 + OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_libraryRecentsDataProvider);
  swift_getKeyPath();
  v20 = v4;
  sub_100131CA8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v4[2];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *(inited + 16);
  if (v6 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
    v20 = _swiftEmptyArrayStorage;
    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = v7;
  }

  else
  {
    v8 = *(inited + 24);
    v9 = v7 + 1;
    if (v7 >= v8 >> 1)
    {
      inited = sub_100356124((v8 > 1), v7 + 1, 1, inited);
    }

    *(inited + 16) = v9;
    v10 = inited + 16 * v7;
    *(v10 + 32) = 0;
    *(v10 + 40) = 2304;
    v20 = _swiftEmptyArrayStorage;
  }

  v12 = type metadata accessor for LibraryListSavedItemManagementItem();
  v13 = (inited + 40);
  do
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    v16 = objc_allocWithZone(v12);
    v17 = &v16[OBJC_IVAR____TtC4Maps34LibraryListSavedItemManagementItem_type];
    *v17 = v14;
    *(v17 + 4) = v15;
    v19.receiver = v16;
    v19.super_class = v12;
    objc_msgSendSuper2(&v19, "init");
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v13 += 8;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    --v9;
  }

  while (v9);
  v11 = v20;
LABEL_17:

  return v11;
}

uint64_t sub_100130AB4()
{
  v1 = v0;
  v2 = sub_100130618();
  sub_100192E84(v2);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v0 configuration];
  v5 = [v4 sectionIdentifier];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = objc_opt_self();
  v7 = [v1 expanded];
  v19 = sub_100130E58;
  v20 = 0;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100130ED0;
  v18 = &unk_101604F50;
  v8 = _Block_copy(&aBlock);

  v19 = sub_100130F84;
  v20 = 0;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100130F88;
  v18 = &unk_101604F78;
  v9 = _Block_copy(&aBlock);

  v19 = CarEVChargingAvailabilityViewController.preferredFocusEnvironments.getter;
  v20 = 0;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100131014;
  v18 = &unk_101604FA0;
  v10 = _Block_copy(&aBlock);

  v19 = variable initialization expression of CuratedCollectionItemLibraryCoordinator.isAddingToLibrary;
  v20 = 0;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1001310C0;
  v18 = &unk_101604FC8;
  v11 = _Block_copy(&aBlock);

  v12 = [v6 itemSnapshotsWithItems:v3.super.isa sectionIdentifier:v5 sectionExpanded:v7 itemIdentifierBlock:v8 viewModelBlock:v9 childItemsBlock:v10 expandedBlock:v11];
  _Block_release(v10);
  _Block_release(v9);
  _Block_release(v8);

  _Block_release(v11);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    sub_100131C5C();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v14;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100130E58(uint64_t a1)
{
  sub_10004E374(a1, v4);
  type metadata accessor for LibraryListSavedItemManagementItem();
  swift_dynamicCast();
  v1 = sub_1004B733C();

  return v1;
}

id sub_100130ED0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v11[3] = swift_getObjectType();
  v11[0] = a2;
  swift_unknownObjectRetain();
  v6 = a3;
  v5(v11, v6);
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  sub_10004E3D0(v11);

  return v9;
}

id sub_100130F88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = v5(v9, v6);

  sub_10004E3D0(v9);

  return v7;
}

Class sub_100131014(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  swift_unknownObjectRetain();
  v6 = a3;
  v5(v9, v6);

  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10004E3D0(v9);

  return v7.super.isa;
}

uint64_t sub_1001310C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = v5(v9, v6);

  sub_10004E3D0(v9);
  return v7 & 1;
}

void sub_10013113C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v1 delegate];
  if (v5)
  {
    v6 = v5;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v8 = [v6 sectionController:v1 nodeSnapshotAtIndexPath:isa];
    swift_unknownObjectRelease();

    if (v8)
    {
      [v8 viewModel];
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9 && (v10 = v9, v11 = [v1 configuration], v12 = objc_msgSend(v11, "homeActionDelegate"), v11, v12))
      {
        v13 = [v10 item];
        if (v13[OBJC_IVAR____TtC4Maps34LibraryListSavedItemManagementItem_type + 9] - 5 > 4)
        {
          v14 = &selRef_homeDidTapVisitedPlaces;
        }

        else
        {
          v14 = (&off_101605040)[(v13[OBJC_IVAR____TtC4Maps34LibraryListSavedItemManagementItem_type + 9] - 5)];
        }

        [v12 *v14];
        v15 = IndexPath._bridgeToObjectiveC()().super.isa;
        v16.receiver = v2;
        v16.super_class = ObjectType;
        objc_msgSendSuper2(&v16, "collectionView:didSelectItemAtIndexPath:", a1, v15);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10013154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1001315E4, v6, v5);
}

uint64_t sub_1001315E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = *(Strong + OBJC_IVAR____TtC4Maps35HomeOutlineLibrarySectionController_visitedPlacesCellStateProvider);

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1001316EC;

    return sub_10040C9DC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001316EC(uint64_t a1, __int16 a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  return _swift_task_switch(sub_10013183C, v6, v5);
}

uint64_t sub_10013183C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 104);

  sub_10013021C(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

id sub_100131930()
{
  result = [v0 delegate];
  if (result)
  {
    [result sectionController:v0 setNeedsApplySnapshotAnimated:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001319A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100131CA8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100131A20()
{
  swift_getKeyPath();
  sub_100131CA8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100131AC0(uint64_t a1)
{
  sub_10004E374(a1, v4);
  type metadata accessor for LibraryListSavedItemManagementItem();
  if (swift_dynamicCast())
  {
    v1 = [objc_allocWithZone(TwoLinesLibraryListSavedItemManagementCellModel) initWithItem:v3];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100131B80()
{
  v1 = v0;
  v2 = [v0 delegate];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [v3 sectionController:v1 nodeSnapshotAtIndexPath:isa];
  swift_unknownObjectRelease();

  if (v5)
  {
    v6 = [v5 viewModel];

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass() != 0;
    swift_unknownObjectRelease();
  }

  return v5;
}

unint64_t sub_100131C5C()
{
  result = qword_10190BCD0;
  if (!qword_10190BCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190BCD0);
  }

  return result;
}

unint64_t sub_100131CA8()
{
  result = qword_10190BCE0;
  if (!qword_10190BCE0)
  {
    type metadata accessor for LibraryRecentsDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BCE0);
  }

  return result;
}

uint64_t sub_100131D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10013154C(a1, v4, v5, v6);
}

uint64_t sub_100131E00(void *a1)
{
  v2 = [a1 type];
  if (!v2)
  {
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (v2 != 2)
  {
LABEL_5:

    return 0;
  }

  v3 = 1;
LABEL_7:
  v4 = [a1 allowedHoursStatesCount];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = [a1 allowedHoursStateAtIndex:v6] - 1;
      if (v8 < 7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100356138(0, *(v7 + 2) + 1, 1, v7);
        }

        v10 = *(v7 + 2);
        v9 = *(v7 + 3);
        if (v10 >= v9 >> 1)
        {
          v7 = sub_100356138((v9 > 1), v10 + 1, 1, v7);
        }

        *(v7 + 2) = v10 + 1;
        v7[v10 + 32] = v8;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (!*(v7 + 2))
  {
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for PlaceSummaryUnitHours.PlaceSummaryUnitHoursState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceSummaryUnitHours.PlaceSummaryUnitHoursState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001320B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_100132114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100132178()
{
  result = qword_10190BCE8;
  if (!qword_10190BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BCE8);
  }

  return result;
}

unint64_t sub_1001321E0()
{
  result = qword_10190BCF0;
  if (!qword_10190BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BCF0);
  }

  return result;
}

__n128 sub_100132234(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100132248(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100132290(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100132304()
{
  v1 = type metadata accessor for CarLabelViewModel();
  __chkstk_darwin(v1 - 8);
  sub_10005E838(v0, v0[3]);
  dispatch thunk of WatchPlaceAcceptsPaymentsViewModelProviding.title.getter();
  CarLabelViewModel.init(image:label:)();
  return CarLabel.init(model:)();
}

unint64_t sub_1001323D4()
{
  result = qword_10190BCF8;
  if (!qword_10190BCF8)
  {
    type metadata accessor for CarLabel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BCF8);
  }

  return result;
}

void *sub_10013242C()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v2 = *(v0 + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController);
  if (v2)
  {
    v3 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return _swiftEmptyArrayStorage;
}

void sub_100132658(void *a1, void *a2)
{
  v3 = [a1 iosBasedChromeViewController];
  if (v3)
  {
    v4 = v3;
    [v3 updateViewMode:3 animated:1 preserveMapSelection:1];
  }

  v5 = [a2 mapView];
  if (v5)
  {
    v6 = v5;
    [v5 _setApplicationState:7];
  }
}

void sub_100132998(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_100132B94(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_100132D94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TransitLineDisambiguationViewModel();

  State.init(wrappedValue:)();
  KeyPath = swift_getKeyPath();
  a1[3] = &type metadata for TransitLineDisambiguationView;
  a1[4] = sub_100133D3C();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v4;
  *(result + 24) = v5;
  *(result + 32) = KeyPath;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_100132E44()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_100133D98();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1001330A0(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100133110(a2, a3);
  }
}

void sub_100133110(void *a1, unint64_t a2)
{
  v5 = [objc_opt_self() sharedService];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (a2 >> 31)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [objc_opt_self() actionDetailsWithMapItem:0 timestamp:a2 resultIndex:objc_msgSend(a1 targetID:{"muid"), 0.0}];
  [v6 captureUserAction:1032 onTarget:638 eventValue:0 placeActionDetails:v7];

  v8 = *(v2 + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection);
  if (v8)
  {

    v8(v2, a1);

    sub_1000588AC(v8);
  }
}

void sub_10013324C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedService];
    if (v4)
    {
      v5 = v4;
      [v4 captureUserAction:4 onTarget:638 eventValue:0];

      v6.receiver = v3;
      v6.super_class = type metadata accessor for TransitLineDisambiguationContaineeViewController();
      objc_msgSendSuper2(&v6, "handleDismissAction:", v3);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100133314(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError);
    if (v5)
    {

      v5(v4, a2);
      sub_1000588AC(v5);
    }
  }
}

uint64_t sub_1001335C0()
{
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError));
}

uint64_t sub_1001336C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100133E30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10013377C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100118948;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100133D98();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1001338A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100133964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100133D98();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100133A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100133E00;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100133B4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100100EB8;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100133D98();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

id sub_100133C78(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_labelMarker;
  *&v2[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_labelMarker] = 0;
  v6 = &v2[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection];
  v7 = &v2[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError];
  *v6 = 0;
  *(v6 + 1) = 0;
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v2[v5] = a1;
  type metadata accessor for TransitLineDisambiguationViewModel();
  swift_allocObject();
  v8 = a1;
  *&v2[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_viewModel] = sub_10041AFF8(a1);
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

unint64_t sub_100133D3C()
{
  result = qword_10190BD48;
  if (!qword_10190BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BD48);
  }

  return result;
}

unint64_t sub_100133D98()
{
  result = qword_10190BD50;
  if (!qword_10190BD50)
  {
    type metadata accessor for TransitLineDisambiguationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BD50);
  }

  return result;
}

void sub_100133E64(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = _convertErrorToNSError(_:)();
  (*(v3 + 16))(v3, a1, v4);
}

id sub_10013405C()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1001340C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_100134248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHomeUserGuidesDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100134304(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_objects;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if (*(v4 + 16) > a1)
    {
      sub_10004E374(v4 + 32 * a1 + 32, v12);
      type metadata accessor for SearchHomeUserGuidesCellViewModel();
      if (swift_dynamicCast())
      {
        v5 = v13;
        v6 = *&v13[OBJC_IVAR____TtC4Maps33SearchHomeUserGuidesCellViewModel_collections];
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = a1;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_1001345C8;
        *(v9 + 24) = v8;
        v12[4] = sub_1001345D0;
        v12[5] = v9;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 1107296256;
        v12[2] = sub_1004CEAA8;
        v12[3] = &unk_101605550;
        v10 = _Block_copy(v12);
        v11 = v6;

        [v11 deleteCollection:v10];
        _Block_release(v10);
      }
    }
  }
}

uint64_t sub_1001344C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (!result)
  {
    v9 = v3;
    v10 = v4;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_beginAccess();
      sub_1003FA5B4(a3, v8);
      swift_endAccess();
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    return sub_1000DB2F4(v8);
  }

  return result;
}

void sub_100134644(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypointImage);
  *(v1 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypointImage) = a1;
  v4 = a1;

  if (a1)
  {
    sub_1000F1178();
    sub_100135BF0(&qword_10190DE60, sub_1000F1178);
  }

  dispatch thunk of ListCellViewModel.imageProvider.setter();
}

id sub_100134800(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1001348EC()
{
  v1 = type metadata accessor for RichTextType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_etaString + 8))
  {
    sub_1000CE6B8(&unk_1019157F0);
    v5 = swift_allocObject();
    v8 = xmmword_1011E1D30;
    *(v5 + 16) = xmmword_1011E1D30;
    sub_1000CE6B8(&qword_10190A070);
    type metadata accessor for RichTextViewModel();
    v6 = swift_allocObject();
    *(v6 + 16) = v8;
    (*(v2 + 104))(v4, enum case for RichTextType.line(_:), v1);

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v2 + 8))(v4, v1);
    *(v5 + 32) = v6;
    dispatch thunk of ListCellViewModel.richTextViews.setter();
  }

  else
  {

    dispatch thunk of ListCellViewModel.richTextViews.setter();
  }
}

id sub_100134C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v29 = a1;
  v5 = sub_1000CE6B8(&qword_10190BDF8);
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_model;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v17 = type metadata accessor for BottomAccessoryViewModel();
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  *&v3[v16] = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  v18 = *(v9 + 104);
  v18(v11, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.navigationCall(_:), v8);
  TrailingAccessoryViewModel.init(type:)();
  v18(v11, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.navigationDelete(_:), v8);
  v19 = v28;
  TrailingAccessoryViewModel.init(type:)();
  *&v3[OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypointImage] = 0;
  v20 = &v3[OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_title];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v3[OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_etaString];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v3[OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypoint] = 0;
  swift_unknownObjectWeakInit();
  if (v19)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for NavTrayWaypointCell();
  v31.receiver = v4;
  v31.super_class = v23;
  v24 = objc_msgSendSuper2(&v31, "initWithStyle:reuseIdentifier:", v29, v22, v27);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v24;
  UIHostingConfiguration<>.init(content:)();

  static Edge.Set.all.getter();
  *(&v36 + 1) = v5;
  v37 = sub_1000414C8(&qword_101922B00, &qword_10190BDF8);
  sub_10001A848(&v35);
  UIHostingConfiguration.margins(_:_:)();
  (*(v30 + 8))(v7, v5);
  UITableViewCell.contentConfiguration.setter();

  return v25;
}

uint64_t sub_100135104@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NavigationCell();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_10190BE00);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_model);

    v17[7] = type metadata accessor for ListCellViewModel();
    v17[8] = sub_100135BF0(&qword_10190B068, &type metadata accessor for ListCellViewModel);
    v17[4] = v12;
    NavigationCell.init(model:tapHandler:)();
    KeyPath = swift_getKeyPath();
    v14 = swift_allocObject();
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v3 + 32))(v8, v5, v2);
    v16 = &v8[*(v6 + 36)];
    *v16 = KeyPath;
    v16[1] = sub_100135B00;
    v16[2] = v14;
    sub_100135B08();
LABEL_4:
    result = AnyView.init<A>(_:)();
    *a1 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_10013539C(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == enum case for AccessoryType.call(_:))
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        [v9 pressedPhoneCallOnCell:v7];
LABEL_8:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      if (v8 != enum case for AccessoryType.delete(_:))
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        [v10 pressedDeleteOnCell:v7];
        goto LABEL_8;
      }
    }
  }
}

uint64_t sub_1001355D0(char a1, char a2)
{
  if (a1)
  {
    sub_1000CE6B8(&unk_10190D580);
    v4 = type metadata accessor for TrailingAccessoryViewModel();
    v5 = *(v4 - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    if (a2)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1011E1D60;
      v9 = *(v5 + 16);
      v9(v8 + v7, v2 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_callableAccessoryModel, v4);
      v9(v8 + v7 + v6, v2 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_deletableAccessoryModel, v4);
    }

    else
    {
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1011E1D30;
      (*(v5 + 16))(v14 + v7, v2 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_callableAccessoryModel, v4);
    }
  }

  else if (a2)
  {
    sub_1000CE6B8(&unk_10190D580);
    v10 = type metadata accessor for TrailingAccessoryViewModel();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1011E1D30;
    (*(v11 + 16))(v13 + v12, v2 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_deletableAccessoryModel, v10);
  }

  dispatch thunk of ListCellViewModel.trailingAccessory.setter();
}

id sub_1001358A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavTrayWaypointCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NavTrayWaypointCell()
{
  result = qword_10190BDE8;
  if (!qword_10190BDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100135A34()
{
  result = type metadata accessor for TrailingAccessoryViewModel();
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

unint64_t sub_100135B08()
{
  result = qword_10190BE08;
  if (!qword_10190BE08)
  {
    sub_1000D6664(&qword_10190BE00);
    sub_100135BF0(&qword_10190A030, &type metadata accessor for NavigationCell);
    sub_1000414C8(&unk_10190D690, &qword_10190BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BE08);
  }

  return result;
}

uint64_t sub_100135BF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100135C38()
{
  v1 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_model;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v10 = type metadata accessor for BottomAccessoryViewModel();
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  *(v0 + v9) = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  v11 = *(v2 + 104);
  v11(v4, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.navigationCall(_:), v1);
  TrailingAccessoryViewModel.init(type:)();
  v11(v4, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.navigationDelete(_:), v1);
  TrailingAccessoryViewModel.init(type:)();
  *(v0 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypointImage) = 0;
  v12 = (v0 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_title);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_etaString);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypoint) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10013603C()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps16PlaceCardContext_cardStack);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 2))
  {
    swift_beginAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v3 = *(v2 + 2);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = sub_100416618(v2);
      v3 = *(v2 + 2);
      if (v3)
      {
LABEL_4:
        v4 = v3 - 1;
        v5 = *&v2[8 * v4 + 32];
        *(v2 + 2) = v4;
        *(v1 + 16) = v2;
        swift_endAccess();

        v6 = *(v1 + 40);
        if (v6)
        {

          v6(v1);
          sub_1000588AC(v6);
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_100136128()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps16PlaceCardContext_cardStack);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 2))
  {
    swift_beginAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v3 = *(v2 + 2);
      if (v3)
      {
LABEL_4:
        v4 = v3 - 1;
        v5 = *&v2[8 * v4 + 32];
        *(v2 + 2) = v4;
        *(v1 + 16) = v2;
        swift_endAccess();

        return;
      }
    }

    else
    {
      v2 = sub_100416618(v2);
      v3 = *(v2 + 2);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001361E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_100136244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001362C4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v5 = sub_1000CE6B8(&qword_10190BC20);
  __chkstk_darwin(v5 - 8);
  v7 = &v40[-v6];
  v8 = sub_1000CE6B8(&qword_10190BE18);
  __chkstk_darwin(v8);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v45 = &v40[-v12];
  v13 = sub_1000CE6B8(&qword_10190BE20);
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  v16 = sub_1000CE6B8(&qword_10190BE28);
  __chkstk_darwin(v16);
  v18 = &v40[-v17];
  v19 = sub_1000CE6B8(&qword_10190BE30);
  __chkstk_darwin(v19);
  v22 = &v40[-v21];
  if (a1)
  {
    v23 = a1[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase];
    v46 = v20;
    v47 = a3;
    if (v23 == 1)
    {
      v44 = v13;
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v24 = a1;
      v25 = EnvironmentObject.init()();
      v42 = v26;
      v43 = v25;
      v27 = v24[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute];

      if (v27 == 1)
      {
        v41 = enum case for ContentSizeCategory.extraLarge(_:);
        v28 = type metadata accessor for ContentSizeCategory();
        v29 = *(v28 - 8);
        (*(v29 + 104))(v7, v41, v28);
        (*(v29 + 56))(v7, 0, 1, v28);
      }

      else
      {
        v28 = type metadata accessor for ContentSizeCategory();
        (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
      }

      sub_1000F11C4(v7, v10, &qword_10190BC20);
      v35 = v8[9];
      type metadata accessor for ContentSizeCategory();
      (*(*(v28 - 8) + 56))(&v10[v35], 1, 1, v28);
      *&v10[v8[10]] = swift_getKeyPath();
      sub_1000CE6B8(&qword_10190BC28);
      swift_storeEnumTagMultiPayload();
      v36 = &v10[v8[11]];
      v37 = v42;
      *v36 = v43;
      v36[1] = v37;
      v38 = v45;
      sub_1000F11C4(v10, v45, &qword_10190BE18);
      sub_1000D2DFC(v38, v18, &qword_10190BE18);
      swift_storeEnumTagMultiPayload();
      sub_100136A90();
      sub_1000414C8(&qword_10190BE48, &qword_10190BE18);
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v22, v15, &qword_10190BE30);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190BE50);
      sub_100136AE4();
      sub_1000414C8(&qword_10190BE60, &qword_10190BE50);
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v22, &qword_10190BE30);
      v33 = v38;
      v34 = &qword_10190BE18;
      return sub_100024F64(v33, v34);
    }

    if (v23 == 2)
    {
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v30 = EnvironmentObject.init()();
      *v18 = v30;
      v18[1] = v31;
      swift_storeEnumTagMultiPayload();
      sub_100136A90();
      sub_1000414C8(&qword_10190BE48, &qword_10190BE18);
      v32 = v30;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v22, v15, &qword_10190BE30);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190BE50);
      sub_100136AE4();
      sub_1000414C8(&qword_10190BE60, &qword_10190BE50);
      _ConditionalContent<>.init(storage:)();

      v33 = v22;
      v34 = &qword_10190BE30;
      return sub_100024F64(v33, v34);
    }
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100136A90()
{
  result = qword_10190BE40;
  if (!qword_10190BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BE40);
  }

  return result;
}

unint64_t sub_100136AE4()
{
  result = qword_10190BE58;
  if (!qword_10190BE58)
  {
    sub_1000D6664(&qword_10190BE30);
    sub_100136A90();
    sub_1000414C8(&qword_10190BE48, &qword_10190BE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BE58);
  }

  return result;
}

uint64_t sub_100136BAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_100136C08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100136C68()
{
  result = qword_10190BE68;
  if (!qword_10190BE68)
  {
    sub_1000D6664(&qword_10190BE70);
    sub_100136AE4();
    sub_1000414C8(&qword_10190BE60, &qword_10190BE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BE68);
  }

  return result;
}

uint64_t sub_100136D3C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a2;
  v5 = sub_1000CE6B8(&qword_10190D6F0);
  v163 = *(v5 - 8);
  __chkstk_darwin(v5);
  v140 = &v137 - v6;
  v7 = sub_1000CE6B8(&qword_10190BE78);
  __chkstk_darwin(v7 - 8);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v165 = &v137 - v11;
  v145 = sub_1000CE6B8(&qword_10190BE80);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v137 = &v137 - v12;
  v151 = sub_1000CE6B8(&qword_10190BE88);
  v13 = *(v151 - 8);
  __chkstk_darwin(v151);
  v139 = &v137 - v14;
  v143 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v15 = *(v143 - 8);
  __chkstk_darwin(v143);
  v138 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000CE6B8(&qword_10190BE90);
  __chkstk_darwin(v17 - 8);
  v154 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v137 - v20;
  v22 = sub_1000CE6B8(&qword_10190BE98);
  __chkstk_darwin(v22 - 8);
  v153 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v173 = &v137 - v25;
  v141 = sub_1000CE6B8(&qword_10190BEA0);
  __chkstk_darwin(v141);
  v149 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v172 = (&v137 - v28);
  v148 = sub_1000CE6B8(&qword_10190BEA8);
  __chkstk_darwin(v148);
  v174 = (&v137 - v29);
  v150 = sub_1000CE6B8(&qword_10190BEB0);
  __chkstk_darwin(v150);
  v155 = &v137 - v30;
  v152 = sub_1000CE6B8(&qword_10190BEB8);
  __chkstk_darwin(v152);
  v157 = &v137 - v31;
  v156 = sub_1000CE6B8(&qword_10190BEC0);
  __chkstk_darwin(v156);
  v160 = &v137 - v32;
  v159 = sub_1000CE6B8(&qword_10190BEC8);
  __chkstk_darwin(v159);
  v162 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v158 = &v137 - v35;
  __chkstk_darwin(v36);
  v161 = &v137 - v37;
  v38 = sub_1000CE6B8(&qword_10190BED0);
  __chkstk_darwin(v38 - 8);
  v40 = &v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v137 - v42;
  if (!a1)
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v146 = v13;
  v164 = v5;
  v166 = v9;
  v167 = a3;
  v44 = a1;
  v170 = sub_10021C698(1);
  sub_10021C924(v43);
  IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  v168 = v44;
  v169 = v43;
  v171 = IsEnabled_SearchAndDiscovery;
  if (IsEnabled_SearchAndDiscovery)
  {
    v46 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
    v47 = *&v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics];
    v48 = v47;

    v49 = v21;
    if (v47)
    {

      v50 = *&v44[v46];
      v51 = v50;

      if (!v50 || (v52 = v51[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_showPlatter], v51, (v52 & 1) != 0))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = v168;
        static Published.subscript.getter();

        v53 = v175 * 0.203562341;
LABEL_11:
        v43 = v169;
        goto LABEL_12;
      }

      v44 = v168;
    }

    else
    {
    }

    v53 = 64.0;
    goto LABEL_11;
  }

  v53 = 64.0;
  v49 = v21;
LABEL_12:
  v54 = *&v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics];
  v55 = v54;

  if (v54)
  {
    v142 = v55[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_showsDivider];
  }

  else
  {
    v142 = 0;
  }

  v56 = static HorizontalAlignment.leading.getter();
  v57 = v174;
  *v174 = v56;
  v57[1] = 0x4030000000000000;
  *(v57 + 16) = 0;
  v58 = static VerticalAlignment.center.getter();
  v59 = v172;
  *v172 = v58;
  v59[1] = 0;
  *(v59 + 16) = 0;
  v60 = v59 + *(sub_1000CE6B8(&qword_10190BED8) + 44);
  v61 = v171;
  v62 = v170;
  sub_100137DC8(a1, v147, v171, v43, v170, v60, v53);
  v63 = v59 + *(v141 + 36);
  *v63 = 0xD000000000000018;
  *(v63 + 1) = 0x800000010121E040;
  v63[16] = 9;
  v64 = v173;
  if ((v61 & 1) != 0 || !*(v62 + 16))
  {
    v66 = 1;
  }

  else
  {
    v65 = v137;
    sub_100139804(v62, v137);
    sub_1000F11C4(v65, v64, &qword_10190BE80);
    v66 = 0;
  }

  (*(v144 + 56))(v64, v66, 1, v145);
  sub_1000D2DFC(v43, v40, &qword_10190BED0);
  if ((*(v15 + 48))(v40, 1, v143) == 1)
  {
    sub_100024F64(v40, &qword_10190BED0);
    v67 = 1;
    v68 = v151;
  }

  else
  {
    v69 = v138;
    sub_10013BDC0(v40, v138, type metadata accessor for PlaceSummaryViewModelLine);
    v70 = v139;
    sub_10013B870(v69, v139, type metadata accessor for PlaceSummaryViewModelLine);
    *(v70 + *(_s4LineVMa(0) + 20)) = 0;
    sub_10013B8D8(v69, type metadata accessor for PlaceSummaryViewModelLine);
    v68 = v151;
    v71 = v70 + *(v151 + 36);
    *v71 = 0xD000000000000011;
    *(v71 + 8) = 0x800000010121E080;
    *(v71 + 16) = 9;
    sub_1000F11C4(v70, v49, &qword_10190BE88);
    v67 = 0;
  }

  (*(v146 + 56))(v49, v67, 1, v68);
  v72 = sub_1000CE6B8(&qword_10190BEE0);
  v73 = v174 + *(v72 + 44);
  v74 = v172;
  v75 = v149;
  sub_1000D2DFC(v172, v149, &qword_10190BEA0);
  v76 = v153;
  sub_1000D2DFC(v64, v153, &qword_10190BE98);
  v77 = v154;
  sub_1000D2DFC(v49, v154, &qword_10190BE90);
  sub_1000D2DFC(v75, v73, &qword_10190BEA0);
  v78 = sub_1000CE6B8(&qword_10190BEE8);
  sub_1000D2DFC(v76, v73 + *(v78 + 48), &qword_10190BE98);
  sub_1000D2DFC(v77, v73 + *(v78 + 64), &qword_10190BE90);
  sub_100024F64(v49, &qword_10190BE90);
  sub_100024F64(v173, &qword_10190BE98);
  sub_100024F64(v74, &qword_10190BEA0);
  sub_100024F64(v77, &qword_10190BE90);
  sub_100024F64(v76, &qword_10190BE98);
  sub_100024F64(v75, &qword_10190BEA0);

  v79 = v174;
  v80 = v174 + *(v148 + 36);
  *v80 = 0xD000000000000014;
  *(v80 + 1) = 0x800000010121E060;
  v80[16] = 9;
  LOBYTE(v73) = static Edge.Set.horizontal.getter();
  v81 = v142;
  EdgeInsets.init(_all:)();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v155;
  sub_1000F11C4(v79, v155, &qword_10190BEA8);
  v91 = v90 + *(v150 + 36);
  *v91 = v73;
  *(v91 + 8) = v83;
  *(v91 + 16) = v85;
  *(v91 + 24) = v87;
  *(v91 + 32) = v89;
  *(v91 + 40) = 0;
  LOBYTE(v73) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v90;
  v101 = v157;
  sub_1000F11C4(v100, v157, &qword_10190BEB0);
  v102 = v101 + *(v152 + 36);
  *v102 = v73;
  *(v102 + 8) = v93;
  *(v102 + 16) = v95;
  *(v102 + 24) = v97;
  *(v102 + 32) = v99;
  *(v102 + 40) = 0;
  LOBYTE(v73) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v111 = v101;
  v112 = v160;
  sub_1000F11C4(v111, v160, &qword_10190BEB8);
  v113 = v112 + *(v156 + 36);
  *v113 = v73;
  *(v113 + 8) = v104;
  *(v113 + 16) = v106;
  *(v113 + 24) = v108;
  *(v113 + 32) = v110;
  *(v113 + 40) = 0;
  v114 = v168;
  v115 = *&v168[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor];

  if (!v115)
  {
    v115 = static Color.clear.getter();
  }

  v116 = static Edge.Set.all.getter();
  v117 = v112;
  v118 = v158;
  sub_1000F11C4(v117, v158, &qword_10190BEC0);
  v119 = v118 + *(v159 + 36);
  *v119 = v115;
  *(v119 + 8) = v116;
  v120 = v161;
  sub_1000F11C4(v118, v161, &qword_10190BEC8);
  v121 = v164;
  v122 = v165;
  v123 = v169;
  if (v81)
  {
    v124 = v140;
    Divider.init()();
    v125 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v126 = v124 + *(v121 + 36);
    *v126 = v125;
    *(v126 + 8) = v127;
    *(v126 + 16) = v128;
    *(v126 + 24) = v129;
    *(v126 + 32) = v130;
    *(v126 + 40) = 0;
    sub_1000F11C4(v124, v122, &qword_10190D6F0);
    v131 = 0;
  }

  else
  {
    v131 = 1;
  }

  (*(v163 + 56))(v122, v131, 1, v121);
  v132 = v162;
  sub_1000D2DFC(v120, v162, &qword_10190BEC8);
  v133 = v166;
  sub_1000D2DFC(v122, v166, &qword_10190BE78);
  v134 = v167;
  sub_1000D2DFC(v132, v167, &qword_10190BEC8);
  v135 = sub_1000CE6B8(&qword_10190BEF0);
  sub_1000D2DFC(v133, v134 + *(v135 + 48), &qword_10190BE78);
  sub_100024F64(v122, &qword_10190BE78);
  sub_100024F64(v120, &qword_10190BEC8);
  sub_100024F64(v133, &qword_10190BE78);
  sub_100024F64(v132, &qword_10190BEC8);
  return sub_100024F64(v123, &qword_10190BED0);
}

uint64_t sub_100137DC8@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v200 = a4;
  v212 = a3;
  v206 = a2;
  v191 = sub_1000CE6B8(&qword_10190BF38);
  __chkstk_darwin(v191);
  v12 = &v176 - v11;
  v186 = sub_1000CE6B8(&qword_10190BF40);
  __chkstk_darwin(v186);
  v188 = &v176 - v13;
  v14 = sub_1000CE6B8(&qword_10190BF48);
  __chkstk_darwin(v14);
  v189 = &v176 - v15;
  v187 = sub_1000CE6B8(&qword_10190BF50);
  __chkstk_darwin(v187);
  v184 = &v176 - v16;
  v17 = sub_1000CE6B8(&qword_10190BF58);
  v207 = *(v17 - 8);
  v208 = v17;
  __chkstk_darwin(v17);
  v19 = &v176 - v18;
  v20 = sub_1000CE6B8(&qword_10190BF60);
  __chkstk_darwin(v20 - 8);
  v22 = &v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v214 = &v176 - v24;
  v25 = sub_1000CE6B8(&qword_10190BE80);
  v202 = *(v25 - 8);
  v203 = v25;
  __chkstk_darwin(v25);
  v185 = &v176 - v26;
  v27 = sub_1000CE6B8(&qword_10190BE98);
  __chkstk_darwin(v27 - 8);
  v205 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v213 = &v176 - v30;
  v31 = sub_1000CE6B8(&qword_10190BED0);
  v195 = *(v31 - 8);
  v196 = *(v195 + 64);
  __chkstk_darwin(v31 - 8);
  v197 = &v176 - v32;
  v201 = sub_1000CE6B8(&qword_10190BF68);
  v199 = *(v201 - 8);
  __chkstk_darwin(v201);
  v198 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v215 = &v176 - v35;
  v36 = sub_1000CE6B8(&qword_10190BF70);
  __chkstk_darwin(v36 - 8);
  v209 = &v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v217 = (&v176 - v39);
  __chkstk_darwin(v40);
  v216 = &v176 - v41;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v204 = a1;
    v42 = a1;
    static Published.subscript.getter();

    v43 = v247;
    v210 = v22;
    v211 = a6;
    v193 = v19;
    v194 = v12;
    v192 = v14;
    v190 = a5;
    if ((~v247 & 0xF000000000000007) != 0)
    {
      sub_10013BAE8(v247);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v44 = v260;
      v45 = v261;
      v46 = v262;
      v47 = v263;
      v181 = v265;
      v182 = v264;
      v48 = static Edge.Set.leading.getter();
      EdgeInsets.init(_all:)();
      v179 = v50;
      v180 = v49;
      v177 = v52;
      v178 = v51;
      LOBYTE(v234) = v45;
      LOBYTE(v232[0]) = v47;
      LOBYTE(v219) = 0;
      v53 = static Edge.Set.trailing.getter();
      EdgeInsets.init(_all:)();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v183 = a7;
      v61 = v60;
      LOBYTE(v247) = 0;
      v62 = static Edge.Set.vertical.getter();
      EdgeInsets.init(_all:)();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      sub_10013BD74(v43);
      *&v234 = v43;
      *(&v234 + 1) = v44;
      LOBYTE(v235) = v45;
      *(&v235 + 1) = v46;
      LOBYTE(v236) = v47;
      *(&v236 + 1) = v182;
      *&v237 = v181;
      BYTE8(v237) = v48;
      *&v238 = v180;
      *(&v238 + 1) = v179;
      *&v239 = v178;
      *(&v239 + 1) = v177;
      LOBYTE(v240) = 0;
      BYTE8(v240) = v53;
      *&v241 = v55;
      *(&v241 + 1) = v57;
      *&v242 = v59;
      *(&v242 + 1) = v61;
      LOBYTE(v243) = 0;
      BYTE8(v243) = v62;
      *&v244 = v64;
      *(&v244 + 1) = v66;
      *&v245 = v68;
      *(&v245 + 1) = v70;
      v246 = 0;
      UIView.annotateView(with:)(&v234);
      v257 = v244;
      v258 = v245;
      v259 = v246;
      v253 = v240;
      v254 = v241;
      v256 = v243;
      v255 = v242;
      v249 = v236;
      v250 = v237;
      v252 = v239;
      v251 = v238;
      v247 = v234;
      v248 = v235;
    }

    else
    {
      sub_10013B938(&v247);
    }

    v71 = static HorizontalAlignment.leading.getter();
    v72 = v212;
    v73 = 0x4000000000000000;
    if (v212)
    {
      v73 = 0x3FF0000000000000;
    }

    v74 = v217;
    *v217 = v71;
    v74[1] = v73;
    *(v74 + 16) = 0;
    v75 = v42;
    v76 = sub_10021C698(0);

    *&v234 = v76;
    v77 = v197;
    sub_1000D2DFC(v200, v197, &qword_10190BED0);
    v78 = (*(v195 + 80) + 16) & ~*(v195 + 80);
    v79 = (v196 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    sub_1000F11C4(v77, v80 + v78, &qword_10190BED0);
    v81 = (v80 + v79);
    v82 = v206;
    *v81 = v204;
    v81[1] = v82;
    v206 = v75;
    sub_1000CE6B8(&qword_10190BF10);
    type metadata accessor for UUID();
    sub_1000CE6B8(&qword_10190BF78);
    sub_1000414C8(&qword_10190BF18, &qword_10190BF10);
    sub_10013BA34();
    sub_10013B828(&qword_10190BF28, type metadata accessor for PlaceSummaryViewModelLine);
    ForEach<>.init(_:content:)();
    if ((v72 & 1) != 0 && *(v190 + 16))
    {
      v83 = v185;
      sub_100139804(v190, v185);
      sub_1000F11C4(v83, v213, &qword_10190BE80);
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = v213;
    (*(v202 + 56))(v213, v84, 1, v203);
    v86 = sub_1000CE6B8(&qword_10190BF88);
    v87 = v217 + *(v86 + 44);
    v89 = v198;
    v88 = v199;
    v90 = *(v199 + 16);
    v91 = v215;
    v92 = v201;
    v90(v198, v215, v201);
    v93 = v205;
    sub_1000D2DFC(v85, v205, &qword_10190BE98);
    v90(v87, v89, v92);
    v94 = sub_1000CE6B8(&qword_10190BF90);
    sub_1000D2DFC(v93, &v87[*(v94 + 48)], &qword_10190BE98);
    sub_100024F64(v85, &qword_10190BE98);
    v95 = *(v88 + 8);
    v95(v91, v92);
    sub_100024F64(v93, &qword_10190BE98);
    v95(v89, v92);
    sub_1000F11C4(v217, v216, &qword_10190BF70);
    swift_getKeyPath();
    swift_getKeyPath();
    v96 = v206;
    static Published.subscript.getter();

    v97 = 1;
    v98 = v234;
    if ((~v234 & 0xF000000000000007) != 0)
    {
      v99 = v234 >> 61;
      if ((v234 >> 61) - 1 < 2)
      {
        sub_10013BAE8(v234);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v126 = v266;
        v127 = v267;
        v128 = v268;
        v129 = v269;
        v130 = v270;
        v131 = v271;
        v132 = static Edge.Set.leading.getter();
        EdgeInsets.init(_all:)();
        LOBYTE(v232[0]) = v127;
        LOBYTE(v219) = v129;
        v218 = 0;
        *&v234 = v98;
        *(&v234 + 1) = v126;
        LOBYTE(v235) = v127;
        *(&v235 + 1) = v128;
        LOBYTE(v236) = v129;
        *(&v236 + 1) = v130;
        *&v237 = v131;
        BYTE8(v237) = v132;
        *&v238 = v133;
        *(&v238 + 1) = v134;
        *&v239 = v135;
        *(&v239 + 1) = v136;
        LOBYTE(v240) = 0;
        v137 = v239;
        v138 = v188;
        *(v188 + 4) = v238;
        *(v138 + 5) = v137;
        v138[96] = 0;
        v139 = v235;
        *v138 = v234;
        *(v138 + 1) = v139;
        v140 = v237;
        *(v138 + 2) = v236;
        *(v138 + 3) = v140;
        swift_storeEnumTagMultiPayload();
        sub_1000D2DFC(&v234, v232, &qword_10190BFA8);
        sub_1000CE6B8(&qword_10190BFA8);
        sub_10013C044(&qword_10190BFB8, &qword_10190BF50, &unk_1011E84F0, sub_10013BC04);
        sub_10013C044(&qword_10190BFF0, &qword_10190BFA8, &unk_1011E85D0, sub_10013BCBC);
        v141 = v189;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v141, v194, &qword_10190BF48);
        swift_storeEnumTagMultiPayload();
        sub_10013BB20();
        v123 = v193;
        _ConditionalContent<>.init(storage:)();
        sub_10013BD74(v98);
        sub_100024F64(&v234, &qword_10190BFA8);
        v124 = v141;
        v125 = &qword_10190BF48;
      }

      else if (v99 != 3 && v99)
      {
        sub_10013BAE8(v234);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v142 = v266;
        v143 = v267;
        v144 = v268;
        v145 = v269;
        v146 = v270;
        v147 = v271;
        v148 = static Edge.Set.leading.getter();
        EdgeInsets.init(_all:)();
        LOBYTE(v232[0]) = v143;
        LOBYTE(v219) = v145;
        v218 = 0;
        *&v234 = v98;
        *(&v234 + 1) = v142;
        LOBYTE(v235) = v143;
        *(&v235 + 1) = v144;
        LOBYTE(v236) = v145;
        *(&v236 + 1) = v146;
        *&v237 = v147;
        BYTE8(v237) = v148;
        *&v238 = v149;
        *(&v238 + 1) = v150;
        *&v239 = v151;
        *(&v239 + 1) = v152;
        LOBYTE(v240) = 0;
        v153 = v239;
        v154 = v194;
        *(v194 + 4) = v238;
        *(v154 + 80) = v153;
        *(v154 + 96) = 0;
        v155 = v235;
        *v154 = v234;
        *(v154 + 16) = v155;
        v156 = v237;
        *(v154 + 32) = v236;
        *(v154 + 48) = v156;
        swift_storeEnumTagMultiPayload();
        sub_1000D2DFC(&v234, v232, &qword_10190BFA8);
        sub_1000CE6B8(&qword_10190BFA8);
        sub_10013BB20();
        sub_10013C044(&qword_10190BFF0, &qword_10190BFA8, &unk_1011E85D0, sub_10013BCBC);
        v123 = v193;
        _ConditionalContent<>.init(storage:)();
        sub_10013BD74(v98);
        v124 = &v234;
        v125 = &qword_10190BFA8;
      }

      else
      {
        sub_10013BAE8(v234);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v217 = v266;
        LODWORD(v215) = v267;
        v100 = v268;
        v101 = v269;
        v102 = v270;
        v103 = v271;
        v104 = sub_1000CE6B8(&qword_10190BFC8);
        v105 = v184;
        v106 = &v184[*(v104 + 36)];
        v107 = *(type metadata accessor for RoundedRectangle() + 20);
        v108 = enum case for RoundedCornerStyle.continuous(_:);
        v109 = type metadata accessor for RoundedCornerStyle();
        (*(*(v109 - 8) + 104))(&v106[v107], v108, v109);
        __asm { FMOV            V0.2D, #6.0 }

        *v106 = _Q0;
        *&v106[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
        v115 = v217;
        *v105 = v98;
        *(v105 + 8) = v115;
        *(v105 + 16) = v215;
        *(v105 + 24) = v100;
        *(v105 + 32) = v101;
        *(v105 + 40) = v102;
        *(v105 + 48) = v103;
        LOBYTE(v108) = static Edge.Set.leading.getter();
        EdgeInsets.init(_all:)();
        v116 = v188;
        v117 = v105 + *(v187 + 36);
        *v117 = v108;
        *(v117 + 8) = v118;
        *(v117 + 16) = v119;
        *(v117 + 24) = v120;
        *(v117 + 32) = v121;
        *(v117 + 40) = 0;
        sub_1000D2DFC(v105, v116, &qword_10190BF50);
        swift_storeEnumTagMultiPayload();
        sub_1000CE6B8(&qword_10190BFA8);
        sub_10013C044(&qword_10190BFB8, &qword_10190BF50, &unk_1011E84F0, sub_10013BC04);
        sub_10013C044(&qword_10190BFF0, &qword_10190BFA8, &unk_1011E85D0, sub_10013BCBC);
        v122 = v189;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v122, v194, &qword_10190BF48);
        swift_storeEnumTagMultiPayload();
        sub_10013BB20();
        v123 = v193;
        _ConditionalContent<>.init(storage:)();
        sub_10013BD74(v98);
        sub_100024F64(v122, &qword_10190BF48);
        v124 = v105;
        v125 = &qword_10190BF50;
      }

      sub_100024F64(v124, v125);
      sub_1000F11C4(v123, v214, &qword_10190BF58);
      v97 = 0;
    }

    v157 = v214;
    (*(v207 + 56))(v214, v97, 1, v208);
    v229 = v257;
    v230 = v258;
    v231 = v259;
    v225 = v253;
    v226 = v254;
    v227 = v255;
    v228 = v256;
    v221 = v249;
    v222 = v250;
    v223 = v251;
    v224 = v252;
    v219 = v247;
    v220 = v248;
    v158 = v216;
    v159 = v209;
    sub_1000D2DFC(v216, v209, &qword_10190BF70);
    v160 = v210;
    sub_1000D2DFC(v157, v210, &qword_10190BF60);
    v161 = v230;
    v232[10] = v229;
    v232[11] = v230;
    v162 = v225;
    v163 = v226;
    v232[6] = v225;
    v232[7] = v226;
    v165 = v227;
    v164 = v228;
    v232[8] = v227;
    v232[9] = v228;
    v166 = v221;
    v167 = v222;
    v232[2] = v221;
    v232[3] = v222;
    v169 = v223;
    v168 = v224;
    v232[4] = v223;
    v232[5] = v224;
    v171 = v219;
    v170 = v220;
    v232[0] = v219;
    v232[1] = v220;
    v172 = v211;
    *(v211 + 160) = v229;
    *(v172 + 176) = v161;
    *(v172 + 96) = v162;
    *(v172 + 112) = v163;
    *(v172 + 128) = v165;
    *(v172 + 144) = v164;
    *(v172 + 32) = v166;
    *(v172 + 48) = v167;
    *(v172 + 64) = v169;
    *(v172 + 80) = v168;
    v233 = v231;
    *(v172 + 192) = v231;
    *v172 = v171;
    *(v172 + 16) = v170;
    v173 = sub_1000CE6B8(&qword_10190BF98);
    sub_1000D2DFC(v159, v172 + v173[12], &qword_10190BF70);
    v174 = v172 + v173[16];
    *v174 = 0;
    *(v174 + 8) = 0;
    sub_1000D2DFC(v160, v172 + v173[20], &qword_10190BF60);
    sub_1000D2DFC(v232, &v234, &qword_10190BFA0);
    sub_100024F64(v157, &qword_10190BF60);
    sub_100024F64(v158, &qword_10190BF70);
    sub_100024F64(v160, &qword_10190BF60);
    sub_100024F64(v159, &qword_10190BF70);
    v244 = v229;
    v245 = v230;
    v246 = v231;
    v240 = v225;
    v241 = v226;
    v242 = v227;
    v243 = v228;
    v236 = v221;
    v237 = v222;
    v238 = v223;
    v239 = v224;
    v234 = v219;
    v235 = v220;
    return sub_100024F64(&v234, &qword_10190BFA0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001391B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a4;
  v45 = a3;
  v47 = a2;
  v50 = a5;
  v6 = _s4LineVMa(0);
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_10190BFF8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = sub_1000CE6B8(&qword_10190BED0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  v46 = a1;
  sub_10013B870(a1, &v43 - v20, type metadata accessor for PlaceSummaryViewModelLine);
  (*(v9 + 56))(v21, 0, 1, v8);
  v22 = *(v13 + 56);
  sub_1000D2DFC(v47, v15, &qword_10190BED0);
  sub_1000D2DFC(v21, &v15[v22], &qword_10190BED0);
  v23 = *(v9 + 48);
  if (v23(v15, 1, v8) == 1)
  {
    sub_100024F64(v21, &qword_10190BED0);
    if (v23(&v15[v22], 1, v8) == 1)
    {
      sub_100024F64(v15, &qword_10190BED0);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_1000D2DFC(v15, v18, &qword_10190BED0);
  if (v23(&v15[v22], 1, v8) == 1)
  {
    sub_100024F64(v21, &qword_10190BED0);
    sub_10013B8D8(v18, type metadata accessor for PlaceSummaryViewModelLine);
LABEL_6:
    v24 = &qword_10190BFF8;
LABEL_14:
    sub_100024F64(v15, v24);
    goto LABEL_15;
  }

  sub_10013BDC0(&v15[v22], v11, type metadata accessor for PlaceSummaryViewModelLine);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_100024F64(v21, &qword_10190BED0);
LABEL_13:
    sub_10013B8D8(v11, type metadata accessor for PlaceSummaryViewModelLine);
    sub_10013B8D8(v18, type metadata accessor for PlaceSummaryViewModelLine);
    v24 = &qword_10190BED0;
    goto LABEL_14;
  }

  v25 = sub_1001EFFD8(*&v18[v8[5]], *&v11[v8[5]]);
  sub_100024F64(v21, &qword_10190BED0);
  if ((v25 & 1) == 0 || v18[v8[6]] != v11[v8[6]])
  {
    goto LABEL_13;
  }

  v26 = v8[7];
  v27 = v18[v26];
  v28 = v11[v26];
  sub_10013B8D8(v11, type metadata accessor for PlaceSummaryViewModelLine);
  sub_10013B8D8(v18, type metadata accessor for PlaceSummaryViewModelLine);
  sub_100024F64(v15, &qword_10190BED0);
  if (v27 == v28)
  {
    goto LABEL_17;
  }

LABEL_15:
  v29 = v45;
  if (v45)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v29;
    static Published.subscript.getter();

    v31 = v51;
    __chkstk_darwin(v32);
    v33 = v46;
    *(&v43 - 2) = v46;
    v34 = sub_100525204(sub_10013C390, (&v43 - 4), v31);
    LOBYTE(v30) = v35;

    if ((v30 & 1) == 0)
    {
      v39 = v44;
      sub_10013B870(v33, v44, type metadata accessor for PlaceSummaryViewModelLine);
      v40 = v49;
      *(v39 + *(v49 + 20)) = v34 == 0;
      v41 = v50;
      sub_10013BDC0(v39, v50, _s4LineVMa);
      v38 = v40;
      v37 = v41;
      v36 = 0;
      return (*(v48 + 56))(v37, v36, 1, v38);
    }

LABEL_17:
    v36 = 1;
    v38 = v49;
    v37 = v50;
    return (*(v48 + 56))(v37, v36, 1, v38);
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100139804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190BEF8);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  v7 = sub_1000CE6B8(&qword_10190BF00);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  v10 = _s4LineVMa(0);
  __chkstk_darwin(v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) == 1)
  {
    v13 = *(type metadata accessor for PlaceSummaryViewModelLine(0) - 8);
    sub_10013B870(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12, type metadata accessor for PlaceSummaryViewModelLine);
    v12[*(v10 + 20)] = 0;
    sub_10013B870(v12, v9, _s4LineVMa);
    swift_storeEnumTagMultiPayload();
    sub_10013B828(&qword_10190BF20, _s4LineVMa);
    sub_1000414C8(&qword_10190BF30, &qword_10190BEF8);
    _ConditionalContent<>.init(storage:)();
    return sub_10013B8D8(v12, _s4LineVMa);
  }

  else
  {
    *v6 = static HorizontalAlignment.leading.getter();
    *(v6 + 1) = 0x4000000000000000;
    v6[16] = 0;
    sub_1000CE6B8(&qword_10190BF08);
    v15[2] = v4;
    v15[3] = a1;

    sub_1000CE6B8(&qword_10190BF10);
    type metadata accessor for UUID();
    v15[1] = a2;
    sub_1000414C8(&qword_10190BF18, &qword_10190BF10);
    sub_10013B828(&qword_10190BF20, _s4LineVMa);
    sub_10013B828(&qword_10190BF28, type metadata accessor for PlaceSummaryViewModelLine);
    ForEach<>.init(_:content:)();
    sub_1000D2DFC(v6, v9, &qword_10190BEF8);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190BF30, &qword_10190BEF8);
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v6, &qword_10190BEF8);
  }
}

uint64_t sub_100139C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10013B870(a1, a2, type metadata accessor for PlaceSummaryViewModelLine);
  result = _s4LineVMa(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_100139C84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_10190C000);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1000CE6B8(&qword_10190C008);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  if (!a1)
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v12 = a1;
  v13 = sub_10021C698(1);
  v14 = *&v12[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons + 8];

  if (v14)
  {
  }

  else
  {
    v15 = *&v12[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons];

    if (!v15)
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  v16 = 1;
LABEL_7:
  v17 = static HorizontalAlignment.leading.getter();
  v18 = 0x4010000000000000;
  if (!*(v13 + 16))
  {
    v18 = 0x4020000000000000;
  }

  *v8 = v17;
  *(v8 + 1) = v18;
  v8[16] = 0;
  v19 = sub_1000CE6B8(&qword_10190C010);
  sub_100139F48(a1, a2, v13, v16, &v8[*(v19 + 44)]);

  v20 = static Edge.Set.horizontal.getter();
  sub_1000F11C4(v8, v11, &qword_10190C000);
  v21 = &v11[*(v9 + 36)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  sub_1000F11C4(v11, a3, &qword_10190C008);
  result = sub_1000CE6B8(&qword_10190C018);
  v23 = a3 + *(result + 36);
  *v23 = 0xD00000000000001ALL;
  *(v23 + 8) = 0x800000010121E0A0;
  *(v23 + 16) = 9;
  return result;
}

uint64_t sub_100139F48@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v174 = a3;
  v177 = a5;
  v8 = sub_1000CE6B8(&qword_10190BEF8);
  __chkstk_darwin(v8 - 8);
  v10 = v168 - v9;
  v169 = sub_1000CE6B8(&qword_10190C020);
  __chkstk_darwin(v169);
  v173 = v168 - v11;
  v12 = sub_1000CE6B8(&qword_10190C028);
  v13 = *(v12 - 8);
  v175 = v12;
  v176 = v13;
  __chkstk_darwin(v12);
  v171 = v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v170 = v168 - v16;
  v17 = sub_1000CE6B8(&qword_10190C030);
  __chkstk_darwin(v17 - 8);
  v178 = v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v181 = v168 - v20;
  v21 = sub_1000CE6B8(&qword_10190C038);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = v168 - v23;
  v25 = sub_1000CE6B8(&qword_10190C040);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v182 = v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v168 - v29;
  __chkstk_darwin(v31);
  v33 = v168 - v32;
  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v34 = &v24[*(sub_1000CE6B8(&qword_10190C048) + 44)];
  v179 = a1;
  v168[1] = a2;
  v35 = a2;
  v36 = v174;
  sub_10013ADC4(a1, v35, v34);
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v37 = &v24[*(v22 + 44)];
  *v37 = a1;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  v42 = *(v36 + 16);
  v172 = a4;
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1000F11C4(v24, v30, &qword_10190C038);
  v51 = &v30[*(v26 + 44)];
  *v51 = a1;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v180 = v33;
  sub_1000F11C4(v30, v33, &qword_10190C040);
  if (v42)
  {
    *v10 = static HorizontalAlignment.leading.getter();
    *(v10 + 1) = 0x4000000000000000;
    v10[16] = 0;
    sub_1000CE6B8(&qword_10190BF08);
    *&v229 = v36;

    sub_1000CE6B8(&qword_10190BF10);
    type metadata accessor for UUID();
    _s4LineVMa(0);
    sub_1000414C8(&qword_10190BF18, &qword_10190BF10);
    sub_10013B828(&qword_10190BF20, _s4LineVMa);
    sub_10013B828(&qword_10190BF28, type metadata accessor for PlaceSummaryViewModelLine);
    ForEach<>.init(_:content:)();
    v52 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = v173;
    sub_1000F11C4(v10, v173, &qword_10190BEF8);
    v62 = v61 + *(v169 + 36);
    *v62 = v52;
    *(v62 + 8) = v54;
    *(v62 + 16) = v56;
    *(v62 + 24) = v58;
    *(v62 + 32) = v60;
    *(v62 + 40) = 0;
    v63 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = v171;
    sub_1000F11C4(v61, v171, &qword_10190C020);
    v73 = v175;
    v74 = v72 + *(v175 + 36);
    *v74 = v63;
    *(v74 + 8) = v65;
    *(v74 + 16) = v67;
    *(v74 + 24) = v69;
    *(v74 + 32) = v71;
    *(v74 + 40) = 0;
    v75 = v72;
    v76 = v170;
    sub_1000F11C4(v75, v170, &qword_10190C028);
    v77 = v181;
    sub_1000F11C4(v76, v181, &qword_10190C028);
    v78 = 0;
    v79 = v73;
  }

  else
  {
    v78 = 1;
    v77 = v181;
    v79 = v175;
  }

  (*(v176 + 56))(v77, v78, 1, v79);
  v80 = v179;
  if (v179)
  {
    v81 = *&v179[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString + 8];
    if (v81)
    {
      *&v229 = *&v179[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString];
      *(&v229 + 1) = v81;
      sub_1000E5580();
      v82 = v80;

      v83 = Text.init<A>(_:)();
      v175 = v84;
      v176 = v83;
      v86 = v85;
      v88 = v87;
      v89 = static Font.subheadline.getter();
      KeyPath = swift_getKeyPath();
      v91 = v86 & 1;
      LOBYTE(v229) = v86 & 1;
      v92 = static Color.red.getter();
      v93 = swift_getKeyPath();
      v94 = swift_getKeyPath();
      LOBYTE(v212) = 0;
      v95 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      v103 = v102;
      LOBYTE(v229) = 0;
      v104 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      *&v212 = v176;
      *(&v212 + 1) = v175;
      LOBYTE(v213) = v91;
      *(&v213 + 1) = v88;
      v80 = v179;
      LOWORD(v214) = 256;
      *(&v214 + 1) = KeyPath;
      *&v215 = v89;
      *(&v215 + 1) = v93;
      *&v216 = v92;
      *(&v216 + 1) = v94;
      *&v217 = 1;
      BYTE8(v217) = 0;
      LOBYTE(v218[0]) = v95;
      *(&v218[0] + 1) = v97;
      *&v218[1] = v99;
      *(&v218[1] + 1) = v101;
      *&v219 = v103;
      BYTE8(v219) = 0;
      LOBYTE(v220) = v104;
      *(&v220 + 1) = v105;
      *&v221[0] = v106;
      *(&v221[0] + 1) = v107;
      *&v221[1] = v108;
      BYTE8(v221[1]) = 0;
      UIView.annotateView(with:)(&v212);
      v237 = v219;
      v238 = v220;
      v239[0] = v221[0];
      *(v239 + 9) = *(v221 + 9);
      v233 = v216;
      v234 = v217;
      v235 = v218[0];
      v236 = v218[1];
      v229 = v212;
      v230 = v213;
      v231 = v214;
      v232 = v215;
    }

    else
    {
      sub_10013BE28(&v229);
      v109 = v80;
    }

    v111 = *&v80[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons];
    v110 = *&v80[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons + 8];

    if (v110)
    {

      v112 = static Edge.Set.leading.getter();
      EdgeInsets.init(_all:)();
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v120 = v119;
      LOBYTE(v212) = 0;
      v121 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      *&v200 = v111;
      *(&v200 + 1) = v110;
      LOBYTE(v201) = v112;
      *(&v201 + 1) = v114;
      *&v202 = v116;
      *(&v202 + 1) = v118;
      *&v203 = v120;
      BYTE8(v203) = 0;
      LOBYTE(v204) = v121;
      *(&v204 + 1) = v122;
      *&v205 = v123;
      *(&v205 + 1) = v124;
      *&v206[0] = v125;
      BYTE8(v206[0]) = 0;
      sub_10013BF84(&v200);
    }

    else
    {
      v126 = *&v80[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons];

      if (!v126)
      {
        sub_10013BE4C(&v222);
        goto LABEL_13;
      }

      v127 = swift_getKeyPath();
      v128 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v136 = v135;
      LOBYTE(v200) = 0;
      LOBYTE(v190) = 0;
      v137 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      LOBYTE(v212) = 0;
      v200 = v127;
      LOBYTE(v201) = 0;
      *(&v201 + 1) = v126;
      LOBYTE(v202) = v128;
      *(&v202 + 1) = v130;
      *&v203 = v132;
      *(&v203 + 1) = v134;
      *&v204 = v136;
      BYTE8(v204) = 0;
      LOBYTE(v205) = v137;
      *(&v205 + 1) = v138;
      *&v206[0] = v139;
      *(&v206[0] + 1) = v140;
      *&v206[1] = v141;
      BYTE8(v206[1]) = 0;
      sub_10013BE70(&v200);
    }

    v216 = v204;
    v217 = v205;
    v218[0] = v206[0];
    *(v218 + 10) = *(v206 + 10);
    v212 = v200;
    v213 = v201;
    v214 = v202;
    v215 = v203;
    sub_1000CE6B8(&qword_10190C068);
    sub_1000CE6B8(&qword_10190C070);
    sub_10013C044(&qword_10190C078, &qword_10190C068, &unk_1011E86D8, sub_10013BE7C);
    sub_10013C044(&qword_10190C098, &qword_10190C070, &unk_1011E86E0, sub_10013BF00);
    _ConditionalContent<>.init(storage:)();
    v216 = v194;
    v217 = v195;
    v218[0] = v196[0];
    *(v218 + 10) = *(v196 + 10);
    v212 = v190;
    v213 = v191;
    v214 = v192;
    v215 = v193;
    UIView.annotateView(with:)(&v212);
    v226 = v216;
    v227 = v217;
    v228[0] = v218[0];
    *(v228 + 10) = *(v218 + 10);
    v222 = v212;
    v223 = v213;
    v224 = v214;
    v225 = v215;
LABEL_13:
    v142 = v182;
    sub_1000D2DFC(v180, v182, &qword_10190C040);
    v143 = v181;
    v144 = v178;
    sub_1000D2DFC(v181, v178, &qword_10190C030);
    v197 = v237;
    v198 = v238;
    v199[0] = v239[0];
    *(v199 + 9) = *(v239 + 9);
    v194 = v233;
    v195 = v234;
    v196[0] = v235;
    v196[1] = v236;
    v190 = v229;
    v191 = v230;
    v192 = v231;
    v193 = v232;
    v187 = v226;
    v188 = v227;
    v189[0] = v228[0];
    *(v189 + 10) = *(v228 + 10);
    v183 = v222;
    v184 = v223;
    v185 = v224;
    v186 = v225;
    v145 = v177;
    sub_1000D2DFC(v142, v177, &qword_10190C040);
    v146 = sub_1000CE6B8(&qword_10190C050);
    sub_1000D2DFC(v144, v145 + v146[12], &qword_10190C030);
    v147 = v146[16];
    v149 = v197;
    v148 = v198;
    v206[2] = v197;
    v206[3] = v198;
    v150 = v199[0];
    v207[0] = v199[0];
    *(v207 + 9) = *(v199 + 9);
    v152 = v194;
    v151 = v195;
    v204 = v194;
    v205 = v195;
    v153 = v196[1];
    v206[0] = v196[0];
    v206[1] = v196[1];
    v154 = v190;
    v155 = v191;
    v200 = v190;
    v201 = v191;
    v156 = v192;
    v157 = v193;
    v202 = v192;
    v203 = v193;
    v158 = (v145 + v147);
    v158[6] = v196[0];
    v158[7] = v153;
    v158[4] = v152;
    v158[5] = v151;
    *(v158 + 169) = *(v199 + 9);
    v158[9] = v148;
    v158[10] = v150;
    v158[8] = v149;
    *v158 = v154;
    v158[1] = v155;
    v158[2] = v156;
    v158[3] = v157;
    v159 = (v145 + v146[20]);
    v160 = v187;
    v161 = v188;
    v208[4] = v187;
    v208[5] = v188;
    v162 = v189[0];
    v209[0] = v189[0];
    v163 = *(v189 + 10);
    *(v209 + 10) = *(v189 + 10);
    v164 = v183;
    v165 = v184;
    v208[0] = v183;
    v208[1] = v184;
    v166 = v186;
    v208[2] = v185;
    v208[3] = v186;
    v159[2] = v185;
    v159[3] = v166;
    *v159 = v164;
    v159[1] = v165;
    *(v159 + 106) = v163;
    v159[5] = v161;
    v159[6] = v162;
    v159[4] = v160;
    sub_1000D2DFC(&v200, &v212, &qword_10190C058);
    sub_1000D2DFC(v208, &v212, &qword_10190C060);
    sub_100024F64(v143, &qword_10190C030);
    sub_100024F64(v180, &qword_10190C040);
    v210[4] = v187;
    v210[5] = v188;
    v211[0] = v189[0];
    *(v211 + 10) = *(v189 + 10);
    v210[0] = v183;
    v210[1] = v184;
    v210[2] = v185;
    v210[3] = v186;
    sub_100024F64(v210, &qword_10190C060);
    v219 = v197;
    v220 = v198;
    v221[0] = v199[0];
    *(v221 + 9) = *(v199 + 9);
    v216 = v194;
    v217 = v195;
    v218[0] = v196[0];
    v218[1] = v196[1];
    v212 = v190;
    v213 = v191;
    v214 = v192;
    v215 = v193;
    sub_100024F64(&v212, &qword_10190C058);
    sub_100024F64(v144, &qword_10190C030);
    return sub_100024F64(v182, &qword_10190C040);
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10013ADC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_10190C0B8);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  v69 = (&v64 - v9);
  if (a1)
  {
    v66 = a2;
    v67 = a3;
    v68 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v65 = a1;
    v64 = a1;
    static Published.subscript.getter();

    v10 = v91;
    if ((~v91 & 0xF000000000000007) != 0)
    {
      sub_10013BAE8(v91);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v22 = v98;
      v23 = v99;
      v24 = v100;
      v25 = v101;
      v26 = v102;
      v27 = v103;
      v28 = static Edge.Set.trailing.getter();
      EdgeInsets.init(_all:)();
      LOBYTE(v84) = v25;
      *&v77 = v10;
      *(&v77 + 1) = v22;
      LOBYTE(v78) = v23;
      *(&v78 + 1) = v24;
      LOBYTE(v79) = v25;
      *(&v79 + 1) = v26;
      *&v80 = v27;
      BYTE8(v80) = v28;
      *&v81 = v29;
      *(&v81 + 1) = v30;
      *&v82 = v31;
      *(&v82 + 1) = v32;
      LOBYTE(v83) = 0;
      v95 = v81;
      v96 = v82;
      v97 = 0;
      v91 = v77;
      v92 = v78;
      v93 = v79;
      v94 = v80;
      LOBYTE(v70) = 0;
      sub_1000D2DFC(&v77, &v84, &qword_10190C0C0);
      sub_1000CE6B8(&qword_10190C0C0);
      sub_1000CE6B8(&qword_10190C0C8);
      sub_10013C044(&qword_10190C0D0, &qword_10190C0C0, &unk_1011E8790, sub_10013BF8C);
      sub_10013C044(&qword_10190C0F8, &qword_10190C0C8, &unk_1011E8798, sub_10013C0C8);
      _ConditionalContent<>.init(storage:)();
      sub_10013BD74(v10);
      sub_100024F64(&v77, &qword_10190C0C0);
      v95 = v88;
      v96 = v89;
      v97 = v90;
      v91 = v84;
      v92 = v85;
      v93 = v86;
      v94 = v87;
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v11 = v98;
      v12 = v99;
      v13 = v100;
      v14 = v101;
      v15 = v102;
      v16 = v103;
      v17 = static Edge.Set.trailing.getter();
      EdgeInsets.init(_all:)();
      LOBYTE(v91) = v12;
      LOBYTE(v77) = 1;
      *&v84 = v11;
      BYTE8(v84) = v12;
      *&v85 = v13;
      BYTE8(v85) = v14;
      *&v86 = v15;
      *(&v86 + 1) = v16;
      LOBYTE(v87) = v17;
      *(&v87 + 1) = v18;
      *&v88 = v19;
      *(&v88 + 1) = v20;
      *&v89 = v21;
      BYTE8(v89) = 0;
      HIBYTE(v90) = 1;
      sub_1000CE6B8(&qword_10190C0C0);
      sub_1000CE6B8(&qword_10190C0C8);
      sub_10013C044(&qword_10190C0D0, &qword_10190C0C0, &unk_1011E8790, sub_10013BF8C);
      sub_10013C044(&qword_10190C0F8, &qword_10190C0C8, &unk_1011E8798, sub_10013C0C8);
      _ConditionalContent<>.init(storage:)();
    }

    v33 = static HorizontalAlignment.leading.getter();
    v34 = v69;
    *v69 = v33;
    v34[1] = 0x4000000000000000;
    *(v34 + 16) = 0;
    sub_1000CE6B8(&qword_10190C118);
    v35 = v64;
    v36 = sub_10021C698(0);

    *&v84 = v36;
    v37 = swift_allocObject();
    v38 = v66;
    *(v37 + 16) = v65;
    *(v37 + 24) = v38;
    v39 = v35;
    sub_1000CE6B8(&qword_10190BF10);
    type metadata accessor for UUID();
    sub_1000CE6B8(&qword_10190BF78);
    sub_1000414C8(&qword_10190BF18, &qword_10190BF10);
    sub_10013BA34();
    sub_10013B828(&qword_10190BF28, type metadata accessor for PlaceSummaryViewModelLine);
    ForEach<>.init(_:content:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v40 = v84;
    v41 = 0xF000000000000007;
    if ((~v84 & 0xF000000000000007) != 0)
    {
      v46 = static Edge.Set.trailing.getter();
      EdgeInsets.init(_all:)();
      v66 = v47;
      v43 = v48;
      v44 = v49;
      v45 = v50;
      v42 = v46;
      v41 = v40;
    }

    else
    {
      v42 = 0;
      v66 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
    }

    v74 = v95;
    v75 = v96;
    v76 = v97;
    v70 = v91;
    v71 = v92;
    v72 = v93;
    v73 = v94;
    v51 = v68;
    v52 = v69;
    sub_1000D2DFC(v69, v68, &qword_10190C0B8);
    v53 = v74;
    v54 = v75;
    v81 = v74;
    v82 = v75;
    v55 = v76;
    v83 = v76;
    v56 = v71;
    v77 = v70;
    v78 = v71;
    v58 = v72;
    v57 = v73;
    v79 = v72;
    v80 = v73;
    v59 = v67;
    *v67 = v70;
    v59[1] = v56;
    *(v59 + 48) = v55;
    v59[2] = v58;
    v59[3] = v57;
    v59[4] = v53;
    v59[5] = v54;
    v60 = sub_1000CE6B8(&qword_10190C120);
    sub_1000D2DFC(v51, v59 + v60[12], &qword_10190C0B8);
    v61 = v59 + v60[16];
    *v61 = 0;
    v61[8] = 0;
    v62 = v59 + v60[20];
    *v62 = v41;
    *(v62 + 1) = v42;
    *(v62 + 2) = v66;
    *(v62 + 3) = v43;
    *(v62 + 4) = v44;
    *(v62 + 5) = v45;
    v62[48] = 0;
    sub_1000D2DFC(&v77, &v84, &qword_10190C128);
    sub_10013C1B0(v41);
    sub_100024F64(v52, &qword_10190C0B8);
    sub_10013BD74(v41);
    sub_100024F64(v51, &qword_10190C0B8);
    v88 = v74;
    v89 = v75;
    v90 = v76;
    v84 = v70;
    v85 = v71;
    v86 = v72;
    v87 = v73;
    return sub_100024F64(&v84, &qword_10190C128);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10013B5B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s4LineVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = a2;
    static Published.subscript.getter();

    v11 = v18[1];
    __chkstk_darwin(v12);
    v18[-2] = a1;
    v13 = sub_100525204(sub_10013C1C4, &v18[-4], v11);
    v15 = v14;

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      sub_10013B870(a1, v9, type metadata accessor for PlaceSummaryViewModelLine);
      v9[*(v6 + 20)] = v13 == 0;
      sub_10013BDC0(v9, a3, _s4LineVMa);
      v16 = 0;
    }

    return (*(v7 + 56))(a3, v16, 1, v6);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_10013B828(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10013B828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013B870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013B8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10013B938(uint64_t a1)
{
  *a1 = 0xF000000000000007;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 177) = 0u;
  return result;
}

uint64_t sub_10013B978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1000CE6B8(&qword_10190BED0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1001391B8(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_10013BA34()
{
  result = qword_10190BF80;
  if (!qword_10190BF80)
  {
    sub_1000D6664(&qword_10190BF78);
    sub_10013B828(&qword_10190BF20, _s4LineVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BF80);
  }

  return result;
}

unint64_t sub_10013BAE8(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
  }

  return result;
}

unint64_t sub_10013BB20()
{
  result = qword_10190BFB0;
  if (!qword_10190BFB0)
  {
    sub_1000D6664(&qword_10190BF48);
    sub_10013C044(&qword_10190BFB8, &qword_10190BF50, &unk_1011E84F0, sub_10013BC04);
    sub_10013C044(&qword_10190BFF0, &qword_10190BFA8, &unk_1011E85D0, sub_10013BCBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BFB0);
  }

  return result;
}

unint64_t sub_10013BC04()
{
  result = qword_10190BFC0;
  if (!qword_10190BFC0)
  {
    sub_1000D6664(&qword_10190BFC8);
    sub_10013BCBC();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BFC0);
  }

  return result;
}

unint64_t sub_10013BCBC()
{
  result = qword_10190BFD0;
  if (!qword_10190BFD0)
  {
    sub_1000D6664(&qword_10190BFD8);
    sub_1000414C8(&qword_10190BFE0, &qword_10190BFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190BFD0);
  }

  return result;
}

unint64_t sub_10013BD74(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_10013BD88(result);
  }

  return result;
}

unint64_t sub_10013BD88(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
  }

  return result;
}

uint64_t sub_10013BDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_10013BE28(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_10013BE4C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -256;
  return result;
}

unint64_t sub_10013BEAC()
{
  result = qword_10190C090;
  if (!qword_10190C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C090);
  }

  return result;
}

unint64_t sub_10013BF30()
{
  result = qword_10190C0B0;
  if (!qword_10190C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C0B0);
  }

  return result;
}

unint64_t sub_10013BF8C()
{
  result = qword_10190C0D8;
  if (!qword_10190C0D8)
  {
    sub_1000D6664(&qword_10190C0E0);
    sub_1000414C8(&qword_10190C0E8, &qword_10190C0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C0D8);
  }

  return result;
}

uint64_t sub_10013C044(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10013C0C8()
{
  result = qword_10190C100;
  if (!qword_10190C100)
  {
    sub_1000D6664(&qword_10190C108);
    sub_10013C154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C100);
  }

  return result;
}

unint64_t sub_10013C154()
{
  result = qword_10190C110;
  if (!qword_10190C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C110);
  }

  return result;
}

unint64_t sub_10013C1B0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_10013BAE8(result);
  }

  return result;
}

unint64_t sub_10013C1F4()
{
  result = qword_10190C140;
  if (!qword_10190C140)
  {
    sub_1000D6664(&qword_10190C018);
    sub_10013C280();
    sub_10013C338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C140);
  }

  return result;
}

unint64_t sub_10013C280()
{
  result = qword_10190C148;
  if (!qword_10190C148)
  {
    sub_1000D6664(&qword_10190C008);
    sub_1000414C8(&qword_10190C150, &qword_10190C000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C148);
  }

  return result;
}

unint64_t sub_10013C338()
{
  result = qword_10190C158;
  if (!qword_10190C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C158);
  }

  return result;
}

uint64_t sub_10013C3B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10013C47C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v3 + 16);
  if (v1)
  {
    v2 = 0;
    while (v2 < *(v3 + 16))
    {
      type metadata accessor for RefinementsBarButtonViewModel(0);
      swift_unknownObjectRetain();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        swift_unknownObjectRelease();
        return 1;
      }

      result = swift_unknownObjectRelease();
      if (v1 == ++v2)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

id sub_10013C604()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RefinementsBarViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10013C6DC()
{
  sub_10013C774();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10013C774()
{
  if (!qword_10190C1A0)
  {
    sub_1000D6664(&qword_10191A3A0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10190C1A0);
    }
  }
}

uint64_t sub_10013C7D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RefinementsBarViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013C818@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10013C880()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10013C8F4()
{

  v1 = OBJC_IVAR____TtC4Maps35RefinementsMultiSelectCellViewModel__isSelected;
  v2 = sub_1000CE6B8(&unk_101918B30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10013C9F4()
{
  sub_10013CC28(319, &qword_10190C1E8, &type metadata for Bool, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10013CB24()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10013CC28(319, &unk_10190C328, &type metadata for RefinementsBarButtonViewModel.Submenu, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10013CC28(319, qword_10190FC10, &type metadata for Int, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10013CC28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10013CC78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10013CCC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10013CD2C()
{
  result = qword_1019156D0;
  if (!qword_1019156D0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019156D0);
  }

  return result;
}

uint64_t sub_10013CD84@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RefinementsMultiSelectCellViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013CE0C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10013D088()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher____lazy_storage___maxNumberOfCollections);
  if (*(v0 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher____lazy_storage___maxNumberOfCollections + 8) != 1)
  {
    return *v1;
  }

  result = GEOConfigGetUInteger();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
    v1[8] = 0;
  }

  return result;
}

uint64_t sub_10013D0E8()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_collectionDataProvider);
  [v3 setActive:1];
  v4 = [v3 collections];
  sub_10013D7D0();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_10013D088();
  if (v6 < 0)
  {
    goto LABEL_36;
  }

  v7 = v6;
  v1 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_37;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (result < v10)
  {
LABEL_47:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {

        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = v11 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v11);
            v11 = v12;
          }

          while (v10 != v12);
        }
      }

      else
      {
      }

      if (v1)
      {
        v14 = _CocoaArrayWrapper.subscript.getter();
        v15 = v17;
        v13 = v18;
        v16 = v19;
      }

      else
      {
        v13 = 0;
        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        v15 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v16 = (2 * v10) | 1;
      }

      v35 = v14;
      v36 = v15;
      v37 = v13;
      v38 = v16;
      v20 = [objc_opt_self() addToCollection];
      if ((v16 & 1) == 0 || (result = swift_isUniquelyReferenced_nonNull(), v35 = v14, (result & 1) == 0))
      {
        result = (v16 >> 1) - v13;
        if (__OFSUB__(v16 >> 1, v13))
        {
          goto LABEL_49;
        }

        result = sub_10013D9F8(result);
        v13 = v37;
        v16 = v38;
      }

      v21 = __OFSUB__(v16 >> 1, v13);
      v22 = ((v16 >> 1) - v13);
      if (v21)
      {
        break;
      }

      sub_10013D81C(v22);
      sub_10013D918(v22, v20);
      v5 = v35;
      v23 = _swiftEmptyArrayStorage;
      v34 = _swiftEmptyArrayStorage;
      v24 = (v38 >> 1) - v37;
      if (v38 >> 1 == v37)
      {
LABEL_34:
        *(v2 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_diffableSnapshotObjects) = v23;
        swift_unknownObjectRelease();
      }

      if (v37 <= (v38 >> 1))
      {
        v7 = v38 >> 1;
      }

      else
      {
        v7 = v37;
      }

      v1 = v7 - v37;
      v25 = (v36 + 8 * v37);
      while (v1)
      {
        v26 = *v25;
        v27 = type metadata accessor for SearchHomeUserGuidesCellViewModel();
        v28 = objc_allocWithZone(v27);
        *&v28[OBJC_IVAR____TtC4Maps33SearchHomeUserGuidesCellViewModel_collections] = v26;
        v33.receiver = v28;
        v33.super_class = v27;
        v29 = v26;
        objc_msgSendSuper2(&v33, "init");
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        --v1;
        ++v25;
        if (!--v24)
        {
          v23 = v34;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v30 = v7;
      v31 = _CocoaArrayWrapper.endIndex.getter();
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_50;
      }

      if (v31 >= v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      if (v31 < 0)
      {
        v32 = v30;
      }

      if (v30)
      {
        v10 = v32;
      }

      else
      {
        v10 = 0;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v10)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void sub_10013D434()
{
  [*(v0 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_collectionDataProvider) setActive:0];
  sub_10013D0E8();

  v2 = sub_100192E9C(v1);

  v4 = *(v0 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_title);
  v3 = *(v0 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_title + 8);
  v5 = type metadata accessor for SearchHomeUserGuidesDataProvider();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_objects] = v2;
  *&v6[OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_type] = 7;
  v7 = &v6[OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_identifier];
  *v7 = 0xD00000000000001BLL;
  *(v7 + 1) = 0x800000010121E400;
  v8 = &v6[OBJC_IVAR____TtC4Maps32SearchHomeUserGuidesDataProvider_title];
  *v8 = v4;
  *(v8 + 1) = v3;
  v12.receiver = v6;
  v12.super_class = v5;

  v9 = objc_msgSendSuper2(&v12, "init");
  sub_1000CE6B8(&qword_101908400);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E47B0;
  *(v10 + 32) = v9;
  *(v0 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_dataProviders) = v10;
  v11 = v9;

  if (*(v0 + OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_delegate))
  {
    [swift_unknownObjectRetain() didUpdateDataFetcher:{v0, v12.receiver, v12.super_class}];
    swift_unknownObjectRelease();
  }
}

id sub_10013D764(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10013D7D0()
{
  result = qword_101922CC0;
  if (!qword_101922CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101922CC0);
  }

  return result;
}

uint64_t sub_10013D81C(uint64_t result)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    __break(1u);
LABEL_11:

    return sub_10013D9F8(v1);
  }

  v1 = result;
  if (v3)
  {
    v6 = v2[1];
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
      v7 = _swiftEmptyArrayStorage;
    }

    v8 = v7[2];
    if ((v6 + 8 * v4 + 8 * v5) == &v7[v8 + 4])
    {
      v9 = v7[3];

      v10 = (v9 >> 1) - v8;
      v11 = __OFADD__(v5, v10);
      v5 += v10;
      if (v11)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  if (v5 < v1 + 1)
  {
    goto LABEL_11;
  }

  return result;
}

void *sub_10013D918(void *result, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v4 >> 1;
  v6 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  v8 = result - v6 + 1;
  if (__OFSUB__(result + 1, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v8)
  {
LABEL_10:
    *(v2[1] + 8 * v3 + 8 * v7) = a2;
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v10 = result[2];
  v11 = __OFADD__(v10, v8);
  v12 = &v8[v10];
  if (v11)
  {
    goto LABEL_13;
  }

  result[2] = v12;

  v13 = &v8[v5];
  if (__OFADD__(v5, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v2[3] = v4 & 1 | (2 * v13);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10013D9F8(uint64_t a1)
{
  v5 = sub_10013DA7C(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v3 = sub_10013DC3C();
  sub_10013DC58(&v5, a1, 0, v3);
}

uint64_t sub_10013DA7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == &v11[v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_10005EFF0(v6, v25);
}

uint64_t sub_10013DC58(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 8 * a2;
  v30 = v13;
  v31 = (v18 + 8 * a3);
  result = sub_10013DF20(v7);
  v34 = v9 + 32;
  if (result)
  {
    v19 = result;
    v29 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 8 * v20);
    v22 = &v21[8 * a2];
    sub_10013D7D0();
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 8 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[8 * v32];
    if (v31 != v23 || v31 >= &v23[8 * v30])
    {
      memmove(v31, v23, 8 * v30);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v29;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_10013D7D0();
    swift_arrayInitWithCopy();
    result = (a4)(v34 + 8 * a2, a3);
    v25 = v24 + v32;
    if (__OFADD__(v24, v32))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v4[3] >> 1;
    if (v26 < v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v25))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v27 = *(v9 + 16);
  v11 = __OFADD__(v20, v27);
  v28 = v20 + v27;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v34 - 8 * v20;
  v4[2] = v20;
  v4[3] = (2 * v28) | 1;
}

void *sub_10013DF20(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 8 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 8 * v7) != &v9[v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v15 = v8 - result - 25;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 3);
  v5 = v7 + (v15 >> 3);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = result[2];
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_10054E0C0(v5, v4, 0);
    return v16;
  }

  return result;
}

id sub_10013E080(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_delegate;
  *&v1[OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_delegate] = 0;
  *&v1[OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_dataProviders] = 0;
  v4 = OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_title;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v13._object = 0x800000010121E480;
  v5._countAndFlagsBits = 0x656469754720794DLL;
  v6._object = 0x800000010121E450;
  v13._countAndFlagsBits = 0xD000000000000035;
  v6._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0xE900000000000073;
  *&v1[v4] = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, qword_1019600D8, v5, v13);
  v7 = OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_collectionDataProvider;
  v8 = [objc_allocWithZone(CollectionsDataProvider) initWithContext:2 observeInfo:0 observeContents:0];
  *&v1[v7] = v8;
  v9 = &v1[OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher____lazy_storage___maxNumberOfCollections];
  *v9 = 0;
  v9[8] = 1;
  *&v1[OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_diffableSnapshotObjects] = _swiftEmptyArrayStorage;
  *&v1[v3] = a1;
  v10 = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v1[OBJC_IVAR____TtC4Maps31SearchHomeUserGuidesDataFetcher_isFetchingDataComplete] = 1;
  [v10 setActive:1];

  v12.receiver = v1;
  v12.super_class = type metadata accessor for SearchHomeUserGuidesDataFetcher();
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10013E230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v134 = type metadata accessor for CenteredCardHeaderNavigation();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v130 = &v103 - v5;
  v146 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v129 = *(v146 - 8);
  __chkstk_darwin(v146);
  v126 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = &v103 - v8;
  v121 = type metadata accessor for CardHeaderExpansionState();
  v117 = *(v121 - 8);
  __chkstk_darwin(v121);
  v125 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v124 = &v103 - v11;
  __chkstk_darwin(v12);
  v116 = &v103 - v13;
  v123 = sub_1000CE6B8(&qword_10190C688);
  __chkstk_darwin(v123);
  v127 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v148 = &v103 - v16;
  v17 = type metadata accessor for CenteredCardHeaderBackgroundImageStyle();
  v114 = *(v17 - 8);
  __chkstk_darwin(v17);
  v115 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for CardHeaderSize();
  v147 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000CE6B8(&qword_10190A518);
  __chkstk_darwin(v20 - 8);
  v112 = &v103 - v21;
  v145 = type metadata accessor for CenteredCardHeaderContentViewModel();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v113 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v143 = &v103 - v24;
  v25 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v25 - 8);
  v120 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v119 = &v103 - v28;
  __chkstk_darwin(v29);
  v118 = &v103 - v30;
  __chkstk_darwin(v31);
  v33 = &v103 - v32;
  __chkstk_darwin(v34);
  v36 = &v103 - v35;
  __chkstk_darwin(v37);
  v137 = (&v103 - v38);
  v140 = type metadata accessor for CardHeaderTextViewModel();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v122 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v138 = &v103 - v41;
  v42 = a1[1];
  v43 = a1[2];
  v103 = a1[3];
  v111 = v17;
  v135 = v36;
  v105 = v43;
  v106 = a1;
  v104 = v33;
  if (v42)
  {
    countAndFlagsBits = *a1;

    object = v42;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v151._object = 0x800000010121E510;
    v44._countAndFlagsBits = 0x634120656C707041;
    v44._object = 0xED0000746E756F63;
    v45._countAndFlagsBits = 0xD00000000000002FLL;
    v45._object = 0x800000010121E4E0;
    v151._countAndFlagsBits = 0xD00000000000005ALL;
    v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, qword_1019600D8, v44, v151);
    countAndFlagsBits = v46._countAndFlagsBits;
    object = v46._object;
  }

  v47 = v137;
  *v137 = 0x656D614E72657355;
  *(v47 + 1) = 0xE800000000000000;
  v48 = enum case for MapsDesignAccessibilityString.label(_:);
  v49 = type metadata accessor for MapsDesignAccessibilityString();
  v50 = *(v49 - 8);
  v51 = v50;
  v52 = *(v50 + 104);
  v53 = v50 + 104;
  v52(v47, v48, v49);
  v56 = *(v51 + 56);
  v54 = v51 + 56;
  v55 = v56;
  v56(v47, 0, 1, v49);
  v136 = v56;
  v110 = v52;
  v109 = v53;
  if (v42)
  {
    v57 = v135;
    *v135 = 0x69616D4572657355;
    *(v57 + 1) = 0xE90000000000006CLL;
    v58 = enum case for MapsDesignAccessibilityString.button(_:);

    v52(v57, v58, v49);
    v55(v57, 0, 1, v49);
    v55(v104, 1, 1, v49);
  }

  else
  {
    v55(v135, 1, 1, v49);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v152._object = 0x800000010121E5D0;
    v59._countAndFlagsBits = 0xD000000000000039;
    v59._object = 0x800000010121E570;
    v60._object = 0x800000010121E5B0;
    v152._countAndFlagsBits = 0xD00000000000005DLL;
    v60._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, qword_1019600D8, v60, v152);
    v61 = v104;
    *v104 = 0x69616D4572657355;
    *(v61 + 1) = 0xE90000000000006CLL;
    v52(v61, v48, v49);
    v136(v61, 0, 1, v49);
  }

  v105 = v54;
  v62 = v106;

  static HorizontalAlignment.center.getter();
  v63 = v138;
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  v64 = v139;
  v65 = v112;
  v66 = v63;
  v67 = v140;
  (*(v139 + 16))(v112, v66, v140);
  (*(v64 + 56))(v65, 0, 1, v67);
  LODWORD(v137) = enum case for CardHeaderSize.large(_:);
  v68 = *(v147 + 104);
  v147 += 104;
  v135 = v68;
  v68(v141);
  v150 = 0;
  memset(v149, 0, sizeof(v149));
  (*(v114 + 104))(v115, enum case for CenteredCardHeaderBackgroundImageStyle.fadedBlurred(_:), v111);
  v69 = v143;
  CenteredCardHeaderContentViewModel.init(textViewModel:size:backgroundImageProvider:backgroundImageStyle:editing:)();
  (*(v144 + 16))(v113, v69, v145);
  v70 = enum case for CardHeaderExpansionState.Expanded(_:);
  v71 = v117;
  v72 = *(v117 + 104);
  v73 = v116;
  v74 = v121;
  v72(v116, enum case for CardHeaderExpansionState.Expanded(_:), v121);
  CardHeaderExpansionState.rawValue.getter();
  (*(v71 + 8))(v73, v74);
  v75 = swift_allocObject();
  v76 = *(v62 + 5);
  v75[5] = *(v62 + 4);
  v75[6] = v76;
  v75[7] = *(v62 + 6);
  v77 = *(v62 + 1);
  v75[1] = *v62;
  v75[2] = v77;
  v78 = *(v62 + 3);
  v75[3] = *(v62 + 2);
  v75[4] = v78;
  v72(v124, enum case for CardHeaderExpansionState.Docked(_:), v74);
  v72(v125, v70, v74);
  sub_100142228(v62, v149);
  sub_1000CE6B8(&qword_10190C690);
  sub_100142A98();
  v79 = v148;
  CenteredCardHeaderContent.init(viewModel:expansionProgress:editableTitle:leadingButtonsWidthBinding:trailingButtonsWidthBinding:ornamentViewVisibilityRange:submitHandler:ornamentViewBuilder:)();
  v80 = v79 + *(v123 + 36);
  *v80 = xmmword_1011E8B60;
  *(v80 + 16) = 12;
  v81 = v118;
  v82 = v110;
  v110(v118, enum case for MapsDesignAccessibilityString.titleLabel(_:), v49);
  v83 = v136;
  v136(v81, 0, 1, v49);
  v84 = v119;
  v82(v119, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v49);
  v83(v84, 0, 1, v49);
  v85 = v83;
  v86 = v120;
  v82(v120, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v49);
  v85(v86, 0, 1, v49);
  static HorizontalAlignment.center.getter();
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v87 = swift_allocObject();
  v88 = *(v62 + 5);
  v87[5] = *(v62 + 4);
  v87[6] = v88;
  v87[7] = *(v62 + 6);
  v89 = *(v62 + 1);
  v87[1] = *v62;
  v87[2] = v89;
  v90 = *(v62 + 3);
  v87[3] = *(v62 + 2);
  v87[4] = v90;
  sub_100142228(v62, v149);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  (v135)(v141, v137, v142);
  v91 = v128;
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v92 = v129;
  (*(v129 + 16))(v126, v91, v146);
  v93 = v130;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v94 = v127;
  sub_1000D2DFC(v148, v127, &qword_10190C688);
  v95 = v133;
  v96 = *(v133 + 16);
  v97 = v132;
  v98 = v134;
  v96(v132, v93, v134);
  v99 = v131;
  sub_1000D2DFC(v94, v131, &qword_10190C688);
  v100 = sub_1000CE6B8(&qword_10190C6D8);
  v96((v99 + *(v100 + 48)), v97, v98);
  v101 = *(v95 + 8);
  v101(v93, v98);
  (*(v92 + 8))(v91, v146);
  sub_100024F64(v148, &qword_10190C688);
  (*(v144 + 8))(v143, v145);
  (*(v139 + 8))(v138, v140);
  v101(v97, v98);
  return sub_100024F64(v94, &qword_10190C688);
}

uint64_t sub_10013F45C@<X0>(uint64_t a1@<X8>)
{
  sub_10013F4DC(a1);
  v2 = sub_1000CE6B8(&qword_10190C690);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_10013F4DC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v46 = sub_1000CE6B8(&qword_10190C6E0);
  __chkstk_darwin(v46);
  v3 = v40 - v2;
  v45 = sub_1000CE6B8(&qword_10190C6C8);
  __chkstk_darwin(v45);
  v5 = v40 - v4;
  v47 = sub_1000CE6B8(&qword_10190C6B8);
  __chkstk_darwin(v47);
  v7 = v40 - v6;
  v49 = sub_1000CE6B8(&qword_10190C6A8);
  __chkstk_darwin(v49);
  v48 = v40 - v8;
  v9 = sub_1000CE6B8(&qword_10190C6E8);
  __chkstk_darwin(v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000CE6B8(&qword_10190C588);
  __chkstk_darwin(v16);
  v18 = v1[1];
  if (v18)
  {
    v42 = v3;
    v43 = v16;
    v44 = v9;
    v41 = v11;
    v20 = v1[3];
    v19 = v1[4];
    v40[1] = v20;
    if (v19)
    {
      v21 = *v1;
      v22 = v1[2];
      v23 = v18;
      *(&v54 + 1) = sub_1000F1178();
      *&v55 = sub_100142CF0(&qword_10190DE60, sub_1000F1178);
      *&v53 = v19;
      v24 = v19;
      sub_100142614(v21, v23, v22, v20, v19);
      static Alignment.center.getter();
      MapsDesignImage.init(imageProvider:aspectRatio:imageAlignment:resizable:placeholderContentViewBuilder:onImageLoaded:)();
      static MapsDesignConstants.Sizes.userProfileImageSize.getter();
      static MapsDesignConstants.Sizes.userProfileImageSize.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v25 = &v5[*(v45 + 36)];
      v26 = v54;
      *v25 = v53;
      *(v25 + 1) = v26;
      *(v25 + 2) = v55;
      v61 = 0x67616D4972657355;
      v62 = 0xE900000000000065;
      v27._countAndFlagsBits = 2003134806;
      v27._object = 0xE400000000000000;
      String.append(_:)(v27);
      sub_100142C34();
      View.accessibilityIdentifier(_:)();

      sub_100024F64(v5, &qword_10190C6C8);
      sub_1000D2DFC(v7, v42, &qword_10190C6B8);
      swift_storeEnumTagMultiPayload();
      sub_10014247C(&qword_10190C6B0, &qword_10190C6B8, &unk_1011E8E40, sub_100142C34);
      sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
      v28 = v48;
      _ConditionalContent<>.init(storage:)();

      sub_100024F64(v7, &qword_10190C6B8);
    }

    else
    {
      v34 = v40 - v17;

      Image.init(systemName:)();
      (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12);
      v35 = Image.resizable(capInsets:resizingMode:)();

      (*(v13 + 8))(v15, v12);
      v36 = [objc_opt_self() secondaryLabelColor];
      v37 = Color.init(uiColor:)();
      static MapsDesignConstants.Sizes.userProfileImageSize.getter();
      static MapsDesignConstants.Sizes.userProfileImageSize.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v60 = v62;
      v58 = v64;
      *&v53 = v35;
      *(&v53 + 1) = v37;
      *&v54 = v61;
      BYTE8(v54) = v62;
      *(&v54 + 9) = *v59;
      HIDWORD(v54) = *&v59[3];
      *&v55 = v63;
      BYTE8(v55) = v64;
      *(&v55 + 9) = *v57;
      HIDWORD(v55) = *&v57[3];
      v56 = v65;
      v51 = 0x67616D4972657355;
      v52 = 0xE900000000000065;
      v38._countAndFlagsBits = 2003134806;
      v38._object = 0xE400000000000000;
      String.append(_:)(v38);
      sub_1000CE6B8(&qword_10190C598);
      sub_1001422B4();
      View.accessibilityIdentifier(_:)();

      sub_1000D2DFC(v34, v42, &qword_10190C588);
      swift_storeEnumTagMultiPayload();
      sub_10014247C(&qword_10190C6B0, &qword_10190C6B8, &unk_1011E8E40, sub_100142C34);
      sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
      v28 = v48;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v34, &qword_10190C588);
      v24 = 0;
    }

    v33 = &qword_10190C6A8;
    sub_1000D2DFC(v28, v41, &qword_10190C6A8);
    swift_storeEnumTagMultiPayload();
    sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
    sub_100142B50();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v28 = v40 - v17;
    Image.init(systemName:)();
    (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12);
    v29 = Image.resizable(capInsets:resizingMode:)();

    (*(v13 + 8))(v15, v12);
    v30 = [objc_opt_self() secondaryLabelColor];
    v31 = Color.init(uiColor:)();
    static MapsDesignConstants.Sizes.userProfileImageSize.getter();
    static MapsDesignConstants.Sizes.userProfileImageSize.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v60 = v62;
    v58 = v64;
    *&v53 = v29;
    *(&v53 + 1) = v31;
    *&v54 = v61;
    BYTE8(v54) = v62;
    *(&v54 + 9) = *v59;
    HIDWORD(v54) = *&v59[3];
    *&v55 = v63;
    BYTE8(v55) = v64;
    *(&v55 + 9) = *v57;
    HIDWORD(v55) = *&v57[3];
    v56 = v65;
    v51 = 0x67616D4972657355;
    v52 = 0xE900000000000065;
    v32._countAndFlagsBits = 2003134806;
    v32._object = 0xE400000000000000;
    String.append(_:)(v32);
    sub_1000CE6B8(&qword_10190C598);
    sub_1001422B4();
    View.accessibilityIdentifier(_:)();

    v33 = &qword_10190C588;
    sub_1000D2DFC(v28, v11, &qword_10190C588);
    swift_storeEnumTagMultiPayload();
    sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
    sub_100142B50();
    _ConditionalContent<>.init(storage:)();
  }

  return sub_100024F64(v28, v33);
}

uint64_t sub_10013FFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190C538);
  __chkstk_darwin(v4 - 8);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v26[-v8];
  v10 = sub_1000CE6B8(&qword_10190C540);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v26[-v14];
  v16 = static VerticalAlignment.center.getter();
  v17 = *(a1 + 48);
  *v15 = v16;
  *(v15 + 1) = v17;
  v15[16] = 0;
  v18 = sub_1000CE6B8(&qword_10190C548);
  sub_1001402D4(a1, &v15[*(v18 + 44)]);
  v19 = swift_allocObject();
  v20 = *(a1 + 80);
  v19[5] = *(a1 + 64);
  v19[6] = v20;
  v19[7] = *(a1 + 96);
  v21 = *(a1 + 16);
  v19[1] = *a1;
  v19[2] = v21;
  v22 = *(a1 + 48);
  v19[3] = *(a1 + 32);
  v19[4] = v22;
  v27 = 0x6B72616D78;
  v28 = 0xE500000000000000;
  v29 = sub_100142200;
  v30 = v19;
  sub_100142228(a1, v26);
  sub_100142260();
  View.accessibilityIdentifier(_:)();

  sub_1000D2DFC(v15, v12, &qword_10190C540);
  sub_1000D2DFC(v9, v6, &qword_10190C538);
  sub_1000D2DFC(v12, a2, &qword_10190C540);
  v23 = sub_1000CE6B8(&qword_10190C558);
  v24 = a2 + *(v23 + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_1000D2DFC(v6, a2 + *(v23 + 64), &qword_10190C538);
  sub_100024F64(v9, &qword_10190C538);
  sub_100024F64(v15, &qword_10190C540);
  sub_100024F64(v6, &qword_10190C538);
  return sub_100024F64(v12, &qword_10190C540);
}

uint64_t sub_1001402D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = sub_1000CE6B8(&qword_10190C560);
  __chkstk_darwin(v70);
  v71 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = (v56 - v6);
  v62 = sub_1000CE6B8(&qword_10190C568);
  __chkstk_darwin(v62);
  v59 = v56 - v7;
  v60 = sub_1000CE6B8(&qword_10190C570);
  __chkstk_darwin(v60);
  v61 = v56 - v8;
  v9 = sub_1000CE6B8(&qword_10190C578);
  __chkstk_darwin(v9);
  v63 = v56 - v10;
  v66 = sub_1000CE6B8(&qword_10190C580);
  __chkstk_darwin(v66);
  v12 = v56 - v11;
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000CE6B8(&qword_10190C588);
  __chkstk_darwin(v17);
  v19 = v56 - v18;
  v20 = sub_1000CE6B8(&qword_10190C590);
  __chkstk_darwin(v20 - 8);
  v69 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v56 - v23;
  v25 = a1[1];
  v72 = a2;
  v68 = v9;
  v67 = v12;
  if (v25)
  {
    v57 = v56 - v23;
    v26 = a1[4];
    v64 = a1[3];
    v58 = a1;
    v56[1] = v25;
    if (v26)
    {
      v27 = *a1;
      v28 = a1[2];
      v29 = v25;
      v30 = v26;
      sub_100142614(v27, v29, v28, v64, v26);
      v31 = v30;
      Image.init(uiImage:)();
      (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
      v32 = Image.resizable(capInsets:resizingMode:)();

      (*(v14 + 8))(v16, v13);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v75 = v32;
      v76 = v85;
      LOBYTE(v77) = v86;
      v78 = v87;
      LOBYTE(v79) = v88;
      *v80 = v89;
      v73 = 0x67616D4972657355;
      v74 = 0xE900000000000065;
      v33._countAndFlagsBits = 2003134806;
      v33._object = 0xE400000000000000;
      String.append(_:)(v33);
      sub_1000CE6B8(&qword_10190C5C8);
      sub_1001423F8();
      v34 = v59;
      View.accessibilityIdentifier(_:)();

      sub_1000D2DFC(v34, v61, &qword_10190C568);
      swift_storeEnumTagMultiPayload();
      sub_10014247C(&qword_10190C5C0, &qword_10190C568, &unk_1011E8CF0, sub_1001423F8);
      sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
      v35 = v63;
      _ConditionalContent<>.init(storage:)();

      sub_100024F64(v34, &qword_10190C568);
    }

    else
    {

      Image.init(systemName:)();
      (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
      v43 = v19;
      v44 = Image.resizable(capInsets:resizingMode:)();

      (*(v14 + 8))(v16, v13);
      v45 = [objc_opt_self() secondaryLabelColor];
      v46 = Color.init(uiColor:)();
      static MapsDesignConstants.Sizes.userProfileImageSize.getter();
      static MapsDesignConstants.Sizes.userProfileImageSize.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v84 = v86;
      v82 = v88;
      v75 = v44;
      v76 = v46;
      v77 = v85;
      LOBYTE(v78) = v86;
      *(&v78 + 1) = *v83;
      HIDWORD(v78) = *&v83[3];
      v79 = v87;
      v80[0] = v88;
      *&v80[1] = *v81;
      *&v80[4] = *&v81[3];
      *&v80[8] = v89;
      v73 = 0x67616D4972657355;
      v74 = 0xE900000000000065;
      v47._countAndFlagsBits = 2003134806;
      v47._object = 0xE400000000000000;
      String.append(_:)(v47);
      sub_1000CE6B8(&qword_10190C598);
      sub_1001422B4();
      View.accessibilityIdentifier(_:)();

      sub_1000D2DFC(v43, v61, &qword_10190C588);
      swift_storeEnumTagMultiPayload();
      sub_10014247C(&qword_10190C5C0, &qword_10190C568, &unk_1011E8CF0, sub_1001423F8);
      sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
      v35 = v63;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v43, &qword_10190C588);
      v31 = 0;
    }

    sub_1000D2DFC(v35, v67, &qword_10190C578);
    swift_storeEnumTagMultiPayload();
    sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
    sub_100142530();
    v41 = v57;
    _ConditionalContent<>.init(storage:)();

    sub_100024F64(v35, &qword_10190C578);
    v42 = v72;
    v40 = v58;
  }

  else
  {
    Image.init(systemName:)();
    (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
    v36 = Image.resizable(capInsets:resizingMode:)();

    (*(v14 + 8))(v16, v13);
    v37 = [objc_opt_self() secondaryLabelColor];
    v38 = Color.init(uiColor:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v84 = v86;
    v82 = v88;
    v75 = v36;
    v76 = v38;
    v77 = v85;
    LOBYTE(v78) = v86;
    *(&v78 + 1) = *v83;
    HIDWORD(v78) = *&v83[3];
    v79 = v87;
    v80[0] = v88;
    *&v80[1] = *v81;
    *&v80[4] = *&v81[3];
    *&v80[8] = v89;
    v73 = 0x67616D4972657355;
    v74 = 0xE900000000000065;
    v39._countAndFlagsBits = 2003134806;
    v39._object = 0xE400000000000000;
    String.append(_:)(v39);
    sub_1000CE6B8(&qword_10190C598);
    sub_1001422B4();
    v40 = a1;
    View.accessibilityIdentifier(_:)();

    sub_1000D2DFC(v19, v67, &qword_10190C588);
    swift_storeEnumTagMultiPayload();
    sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
    sub_100142530();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v19, &qword_10190C588);
    v41 = v24;
    v42 = v72;
  }

  v48 = static HorizontalAlignment.leading.getter();
  v49 = v65;
  *v65 = v48;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0;
  v50 = sub_1000CE6B8(&qword_10190C5E0);
  sub_100141034(v40, v49 + *(v50 + 44));
  v51 = v49 + *(v70 + 36);
  *v51 = xmmword_1011E8B60;
  *(v51 + 16) = 12;
  v52 = v69;
  sub_1000D2DFC(v41, v69, &qword_10190C590);
  v53 = v71;
  sub_1000D2DFC(v49, v71, &qword_10190C560);
  sub_1000D2DFC(v52, v42, &qword_10190C590);
  v54 = sub_1000CE6B8(&qword_10190C5E8);
  sub_1000D2DFC(v53, v42 + *(v54 + 48), &qword_10190C560);
  sub_100024F64(v49, &qword_10190C560);
  sub_100024F64(v41, &qword_10190C590);
  sub_100024F64(v53, &qword_10190C560);
  return sub_100024F64(v52, &qword_10190C590);
}

uint64_t sub_100141034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = sub_1000CE6B8(&qword_10190C5F0);
  __chkstk_darwin(v49);
  v51 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v43 - v5;
  v46 = sub_1000CE6B8(&qword_10190C5F8);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = &v43 - v7;
  v9 = sub_1000CE6B8(&qword_10190C600);
  __chkstk_darwin(v9 - 8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v43 - v12;
  if (a1[1])
  {
    countAndFlagsBits = *a1;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v61._object = 0x800000010121E510;
    v15._countAndFlagsBits = 0x634120656C707041;
    v15._object = 0xED0000746E756F63;
    v16._object = 0x800000010121E4E0;
    v61._countAndFlagsBits = 0xD00000000000005ALL;
    v16._countAndFlagsBits = 0xD00000000000002FLL;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v15, v61);
    countAndFlagsBits = v17._countAndFlagsBits;
    object = v17._object;
  }

  *&v57[0] = countAndFlagsBits;
  *(&v57[0] + 1) = object;
  sub_1000E5580();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v26 = a1[7];
  v44 = a1[9];
  v27 = swift_getKeyPath();
  v60 = v22 & 1;
  v59 = 0;
  *&v52 = v18;
  *(&v52 + 1) = v20;
  LOBYTE(v53) = v22 & 1;
  *(&v53 + 1) = v24;
  *&v54 = KeyPath;
  *(&v54 + 1) = 1;
  LOBYTE(v55) = 0;
  *(&v55 + 1) = v27;
  v56 = v26;

  v28 = sub_1000CE6B8(&qword_10190C608);
  v29 = sub_1001426C4();
  View.fontWeight(_:)();
  v57[2] = v54;
  v57[3] = v55;
  v58 = v56;
  v57[0] = v52;
  v57[1] = v53;
  sub_100024F64(v57, &qword_10190C608);
  *&v52 = 0x656D614E72657355;
  *(&v52 + 1) = 0xE800000000000000;
  v30._countAndFlagsBits = 0x6C6562614CLL;
  v30._object = 0xE500000000000000;
  String.append(_:)(v30);
  *&v52 = v28;
  *(&v52 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v47;
  v32 = v46;
  View.accessibilityIdentifier(_:)();

  (*(v45 + 8))(v8, v32);
  sub_1001415BC(a1, v6);
  v33 = swift_getKeyPath();
  v34 = &v6[*(sub_1000CE6B8(&qword_10190C630) + 36)];
  *v34 = v33;
  *(v34 + 1) = 1;
  v34[16] = 0;
  v35 = swift_getKeyPath();
  v36 = &v6[*(v49 + 36)];
  v37 = v44;
  *v36 = v35;
  v36[1] = v37;
  v38 = v48;
  sub_1000D2DFC(v31, v48, &qword_10190C600);
  v39 = v51;
  sub_1000D2DFC(v6, v51, &qword_10190C5F0);
  v40 = v50;
  sub_1000D2DFC(v38, v50, &qword_10190C600);
  v41 = sub_1000CE6B8(&qword_10190C638);
  sub_1000D2DFC(v39, v40 + *(v41 + 48), &qword_10190C5F0);

  sub_100024F64(v6, &qword_10190C5F0);
  sub_100024F64(v31, &qword_10190C600);
  sub_100024F64(v39, &qword_10190C5F0);
  return sub_100024F64(v38, &qword_10190C600);
}

uint64_t sub_1001415BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1000CE6B8(&qword_10191DF90);
  __chkstk_darwin(v3);
  v54 = &v49 - v4;
  v56 = sub_1000CE6B8(&qword_10190C640);
  __chkstk_darwin(v56);
  v6 = &v49 - v5;
  v7 = type metadata accessor for PlainButtonStyle();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&qword_10191D8F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = sub_1000CE6B8(&qword_10190C648);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_1000CE6B8(&qword_10190C650);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = *(a1 + 8);
  v57 = v3;
  v55 = v21;
  if (v20)
  {
    v22 = *(a1 + 24);
    v59 = *(a1 + 16);
    v60 = v22;
    sub_1000E5580();

    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    v28 = [objc_opt_self() secondaryLabelColor];
    v59 = Color.init(uiColor:)();
    v29 = Text.foregroundStyle<A>(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_1000F0A40(v23, v25, v27 & 1);

    v59 = v29;
    v60 = v31;
    v61 = v33 & 1;
    v62 = v35;
    v63._countAndFlagsBits = 0x69616D4572657355;
    v63._object = 0xE90000000000006CLL;
    v36._countAndFlagsBits = 0x6E6F74747542;
    v36._object = 0xE600000000000000;
    String.append(_:)(v36);
    v37 = v54;
    View.accessibilityIdentifier(_:)();
    sub_1000F0A40(v29, v31, v33 & 1);

    sub_1000D2DFC(v37, v6, &qword_10191DF90);
    swift_storeEnumTagMultiPayload();
    sub_10014247C(&qword_10190C658, &qword_10190C650, &unk_1011E8E18, sub_100142834);
    sub_1001429AC();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v37, &qword_10191DF90);
  }

  else
  {
    v49 = v9;
    v50 = v11;
    v51 = v19;
    v52 = v7;
    v54 = v6;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v64._object = 0x800000010121E5D0;
    v39._countAndFlagsBits = 0xD000000000000039;
    v39._object = 0x800000010121E570;
    v40._object = 0x800000010121E5B0;
    v64._countAndFlagsBits = 0xD00000000000005DLL;
    v40._countAndFlagsBits = 0xD000000000000017;
    v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, qword_1019600D8, v40, v64);
    v41 = swift_allocObject();
    v42 = *(a1 + 80);
    v41[5] = *(a1 + 64);
    v41[6] = v42;
    v41[7] = *(a1 + 96);
    v43 = *(a1 + 16);
    v41[1] = *a1;
    v41[2] = v43;
    v44 = *(a1 + 48);
    v41[3] = *(a1 + 32);
    v41[4] = v44;
    sub_100142228(a1, &v59);
    sub_1000E5580();
    Button<>.init<A>(_:action:)();
    v45 = v49;
    PlainButtonStyle.init()();
    sub_1000414C8(&qword_10190C668, &qword_10191D8F0);
    sub_100142CF0(&qword_10190C670, &type metadata accessor for PlainButtonStyle);
    v46 = v52;
    View.buttonStyle<A>(_:)();
    (*(v53 + 8))(v45, v46);
    (*(v50 + 8))(v13, v10);
    *&v16[*(v14 + 36)] = static Color.accentColor.getter();
    v59 = 0x69616D4572657355;
    v60 = 0xE90000000000006CLL;
    v47._countAndFlagsBits = 0x6E6F74747542;
    v47._object = 0xE600000000000000;
    String.append(_:)(v47);
    sub_100142834();
    v48 = v51;
    View.accessibilityIdentifier(_:)();

    sub_100024F64(v16, &qword_10190C648);
    sub_1000D2DFC(v48, v54, &qword_10190C650);
    swift_storeEnumTagMultiPayload();
    sub_10014247C(&qword_10190C658, &qword_10190C650, &unk_1011E8E18, sub_100142834);
    sub_1001429AC();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v48, &qword_10190C650);
  }
}

uint64_t sub_100141D94@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.top.getter();
  a2[1] = v4;
  v5 = sub_1000CE6B8(&qword_10190C680);
  return sub_10013E230(a1, a2 + *(v5 + 44));
}

uint64_t sub_100141DE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.top.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1000CE6B8(&qword_10190C530);
  return sub_10013FFF8(a1, a2 + *(v4 + 44));
}

uint64_t sub_100141E38()
{
  Solarium.init()();
  sub_1000CE6B8(&qword_10190C510);
  sub_1000CE6B8(&qword_10190C518);
  sub_1000414C8(&qword_10190C520, &qword_10190C510);
  sub_1000414C8(&qword_10190C528, &qword_10190C518);
  return View.staticIf<A, B, C>(_:then:else:)();
}

double sub_100141FA4()
{
  v0 = static Font.title2.getter();
  static Font.Weight.bold.getter();
  v2 = v1;
  v3 = static Font.body.getter();
  result = 36.0;
  xmmword_10195FB40 = xmmword_1011E8B70;
  qword_10195FB50 = v0;
  qword_10195FB58 = v2;
  qword_10195FB60 = v3;
  return result;
}

uint64_t sub_100141FFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100142014(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100142038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100142080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001420EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_10014213C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_100142198(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100142260()
{
  result = qword_10190C550;
  if (!qword_10190C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C550);
  }

  return result;
}

unint64_t sub_1001422B4()
{
  result = qword_10190C5A0;
  if (!qword_10190C5A0)
  {
    sub_1000D6664(&qword_10190C598);
    sub_100142340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C5A0);
  }

  return result;
}

unint64_t sub_100142340()
{
  result = qword_10190C5A8;
  if (!qword_10190C5A8)
  {
    sub_1000D6664(&qword_10190C5B0);
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C5A8);
  }

  return result;
}

unint64_t sub_1001423F8()
{
  result = qword_1019106A0;
  if (!qword_1019106A0)
  {
    sub_1000D6664(&qword_10190C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019106A0);
  }

  return result;
}

uint64_t sub_10014247C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    sub_100142CF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100142530()
{
  result = qword_10190C5D8;
  if (!qword_10190C5D8)
  {
    sub_1000D6664(&qword_10190C578);
    sub_10014247C(&qword_10190C5C0, &qword_10190C568, &unk_1011E8CF0, sub_1001423F8);
    sub_10014247C(&qword_10190C5D0, &qword_10190C588, &unk_1011E8D10, sub_1001422B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C5D8);
  }

  return result;
}

uint64_t sub_100142614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }

  return result;
}

uint64_t sub_100142660@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1001426C4()
{
  result = qword_10190C610;
  if (!qword_10190C610)
  {
    sub_1000D6664(&qword_10190C608);
    sub_10014277C();
    sub_1000414C8(&qword_10190C628, &qword_10190FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C610);
  }

  return result;
}

unint64_t sub_10014277C()
{
  result = qword_10190C618;
  if (!qword_10190C618)
  {
    sub_1000D6664(&unk_10190FE90);
    sub_1000414C8(&unk_10190FEA0, &qword_10190C620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C618);
  }

  return result;
}