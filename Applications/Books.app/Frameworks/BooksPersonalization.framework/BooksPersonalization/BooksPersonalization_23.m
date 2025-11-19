char *sub_185F44()
{
  v1 = v0;
  v34 = sub_1B40F4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22E180, &unk_1D1530);
  v4 = *v0;
  v5 = sub_1B5294();
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

void *sub_1861EC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v5 = v3;
  sub_2B0C(a1, a2);
  v6 = *v3;
  v7 = sub_1B5294();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        sub_404C4(*(v6 + 56) + 40 * v21, v23);
        *(*(v8 + 48) + v21) = v22;
        result = a3(v23, *(v8 + 56) + 40 * v21);
      }

      while (v16);
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

        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

void *sub_186378()
{
  v1 = v0;
  sub_2B0C(&qword_22BD20, &qword_1C6110);
  v2 = *v0;
  v3 = sub_1B5294();
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

void *sub_1864C4()
{
  v1 = v0;
  sub_2B0C(&qword_2297C0, &qword_1BCC38);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_5EDD8(&v29, v28))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 88 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v34 = *(v18 + 80);
      v32 = v20;
      v33 = v21;
      v22 = *(v18 + 16);
      v29 = *v18;
      v30 = v22;
      v31 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v23 = *(v4 + 56) + 88 * v16;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v23 + 80) = v34;
      *(v23 + 48) = v26;
      *(v23 + 64) = v27;
      *(v23 + 32) = v25;
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

void *sub_186684()
{
  v1 = v0;
  sub_2B0C(&qword_2297B8, &qword_1BCC30);
  v2 = *v0;
  v3 = sub_1B5294();
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

void *sub_186814(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v33 = sub_1B40F4();
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v33);
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(a1, a2);
  v8 = *v2;
  v9 = sub_1B5294();
  v10 = v9;
  if (*(v8 + 16))
  {
    v31[0] = v5;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v34 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v31[1] = v35 + 32;
    v31[2] = v35 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v35;
        v25 = *(v35 + 72) * v23;
        v26 = v32;
        v27 = v33;
        (*(v35 + 16))(v32, *(v8 + 48) + v25, v33);
        v23 *= 16;
        v28 = v34;
        v29 = *(v34 + 48);
        v30 = *(v24 + 32);
        v37 = *(*(v8 + 56) + v23);
        v30(v29 + v25, v26, v27);
        *(*(v28 + 56) + v23) = v37;

        v18 = v36;
      }

      while (v36);
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

        v5 = v31[0];
        v10 = v34;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v36 = (v22 - 1) & v22;
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

id sub_186AC8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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
        result = v20;
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

void *sub_186C14()
{
  v1 = v0;
  sub_2B0C(&qword_22D6F0, &unk_1CCCA0);
  v2 = *v0;
  v3 = sub_1B5294();
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

void *sub_186D60()
{
  v1 = v0;
  sub_2B0C(&qword_22D6E8, &qword_1D1570);
  v2 = *v0;
  v3 = sub_1B5294();
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

void *sub_186EE4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v18 = v15 | (v10 << 6);
      v19 = *(v4 + 48);
      memcpy(__dst, (v19 + 568 * v18), 0x231uLL);
      v20 = *(*(v4 + 56) + 8 * v18);
      memmove((*(v6 + 48) + 568 * v18), (v19 + 568 * v18), 0x231uLL);
      *(*(v6 + 56) + 8 * v18) = v20;
      sub_4299C(__dst, v21);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {

        goto LABEL_21;
      }

      v17 = *(v4 + 64 + 8 * v10);
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

LABEL_21:
    *v3 = v6;
  }

  return result;
}

void *sub_187088()
{
  v1 = v0;
  sub_2B0C(&qword_22F570, &qword_1D14E8);
  v2 = *v0;
  v3 = sub_1B5294();
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

void *sub_1871EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_187328()
{
  v1 = v0;
  sub_2B0C(&qword_22E250, &qword_1D14F0);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_4299C(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      memcpy(__dst, (*(v2 + 56) + 568 * v16), 0x231uLL);
      *(*(v4 + 48) + 8 * v16) = v17;
      memcpy((*(v4 + 56) + 568 * v16), __dst, 0x231uLL);
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

void *sub_1874E4()
{
  v1 = v0;
  sub_2B0C(&qword_22D6E0, &unk_1CCC90);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; *(v22 + 32) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      result = *(v4 + 48);
      v21 = *v17;
      *(result + v14) = *(*(v2 + 48) + 8 * v14);
      v22 = *(v4 + 56) + 40 * v14;
      *v22 = v21;
      *(v22 + 16) = v18;
      *(v22 + 24) = v19;
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

void *sub_187658()
{
  v1 = v0;
  sub_2B0C(&qword_22F578, &qword_1D14F8);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        v23 = *(v18 + 32);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 40 * v17;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v22;
        *(v24 + 24) = v21;
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

void *sub_1877E4()
{
  v1 = v0;
  sub_2B0C(&qword_22D6C8, &qword_1CCC78);
  v2 = *v0;
  v3 = sub_1B5294();
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

void *sub_187944()
{
  v1 = v0;
  sub_2B0C(&qword_22F588, &unk_1D1520);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
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

void *sub_187AC0()
{
  v1 = v0;
  sub_2B0C(&qword_22D730, &unk_1CCCD0);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v20 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 48 * v17;
        *v24 = v23;
        *(v24 + 16) = v19;
        *(v24 + 24) = v21;
        *(v24 + 32) = v20;
        *(v24 + 40) = v22;
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

void *sub_187C74(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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

void *sub_187DD4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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

void *sub_187F20()
{
  v1 = v0;
  sub_2B0C(&qword_22F508, &qword_1D1420);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v18 = *(*(v2 + 48) + v17);
        sub_404C4(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_264B8(v19, *(v4 + 56) + 40 * v17);
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

void *sub_1880A0()
{
  v1 = v0;
  v2 = type metadata accessor for Package();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22F5C0, &qword_1D1598);
  v5 = *v0;
  v6 = sub_1B5294();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_189504(v22 + v28, v33, type metadata accessor for Package);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_18956C(v27, *(v29 + 56) + v28, type metadata accessor for Package);

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

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
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

void *sub_188328(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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

void *sub_188490(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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

void *sub_1885F0()
{
  v1 = v0;
  sub_2B0C(&qword_22F5B0, &qword_1D1588);
  v2 = *v0;
  v3 = sub_1B5294();
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

id sub_188768()
{
  v1 = v0;
  sub_2B0C(&qword_22F5A0, &qword_1D1578);
  v2 = *v0;
  v3 = sub_1B5294();
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

uint64_t sub_1888D4(uint64_t a1)
{
  v2 = sub_1B4274();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v36 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1B4344();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4284();
  sub_2B0C(&qword_22C080, &qword_1C65E0);
  sub_1B4304();

  v10 = enum case for Scope.singleton(_:);
  v11 = v6[13];
  v11(v9, enum case for Scope.singleton(_:), v5);
  sub_1B4214();

  v12 = v6[1];
  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22A7F0, &unk_1C05F0);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22F490, &qword_1D1398);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22F498, &qword_1D13A0);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4294();
  sub_2B0C(&qword_22F4A0, &qword_1D13A8);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4294();
  type metadata accessor for DefaultBookClusteringService();
  sub_1B42F4();

  v11(v9, v10, v5);
  v40 = v11;
  sub_1B4214();

  v12(v9, v5);
  sub_1B4294();
  type metadata accessor for AllCollectionTypesFillingClusteringService();
  sub_1B42F4();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  v13 = a1;
  sub_1B4294();
  v35 = type metadata accessor for SeedBasedRecommendationServiceResolver();
  sub_1B42F4();

  v14 = v10;
  v15 = v10;
  v16 = v40;
  v40(v9, v14, v5);
  sub_1B4214();

  v12(v9, v5);
  v32 = v12;
  sub_1B4294();
  v34 = type metadata accessor for DelegatingCollectionService();
  sub_1B42F4();

  v30 = v15;
  v16(v9, v15, v5);
  sub_1B4214();

  v12(v9, v5);
  v17 = v13;
  sub_1B4294();
  sub_2B0C(&qword_22F4A8, &unk_1D13B0);
  sub_1B4304();

  v16(v9, v15, v5);
  v18 = v16;
  sub_1B4214();

  v19 = v32;
  v32(v9, v5);
  sub_1B4294();
  type metadata accessor for SeedBasedMoreFromYourAuthorsService();
  sub_1B42F4();

  v20 = v30;
  v18(v9, v30, v5);
  sub_1B4214();

  v19(v9, v5);
  v39 = v17;
  sub_1B4294();
  v33 = sub_2B0C(&qword_2291F8, &unk_1CFD30);
  sub_1B4304();

  v21 = v40;
  v40(v9, v20, v5);
  sub_1B4214();

  v19(v9, v5);
  sub_1B4294();
  type metadata accessor for InternalCollectionRecommendationService(0);
  sub_1B42F4();

  v31 = v6 + 13;
  v21(v9, v20, v5);
  sub_1B4214();

  v19(v9, v5);
  sub_1B4294();
  sub_2B0C(&qword_22F4B0, &qword_1D13C0);
  sub_1B4304();

  v21(v9, v20, v5);
  sub_1B4214();

  v19(v9, v5);
  sub_1B4294();
  sub_1B4304();

  v21(v9, v20, v5);
  sub_1B4214();

  v19(v9, v5);
  sub_1B42A4();
  sub_2698(v41, v42);
  v22 = enum case for CallbackScope.any(_:);
  v24 = v36;
  v23 = v37;
  v25 = *(v37 + 104);
  v26 = v38;
  v25(v36, enum case for CallbackScope.any(_:), v38);
  sub_1B4314();
  v27 = *(v23 + 8);
  v27(v24, v26);
  sub_2BF8(v41);
  sub_1B42A4();
  sub_2698(v41, v42);
  v25(v24, v22, v26);
  sub_1B4314();
  v27(v24, v26);
  return sub_2BF8(v41);
}

uint64_t sub_189494(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229728, &unk_1D14A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_189504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18956C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1895D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18961C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_189640, 0, 0);
}

uint64_t sub_189640()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_189768;

  return v8(v2, v3);
}

uint64_t sub_189768(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 40);
  v8 = *v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = v2;

  if (v2)
  {
    v6 = sub_18995C;
  }

  else
  {
    v6 = sub_189880;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_189880()
{
  object = v0[3].value._object;
  countAndFlagsBits = v0[2].value._countAndFlagsBits;
  v3 = v0[1].value._countAndFlagsBits;
  v4 = sub_1B3B64();
  (*(*(v4 - 8) + 16))(v3, countAndFlagsBits, v4);
  if (object)
  {
    v5 = v0[1].value._countAndFlagsBits;
    v9._object = 0x80000000001D78F0;
    v9._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1B3B54(v0[3], v9);
  }

  v6 = v0->value._object;

  return v6();
}

uint64_t sub_18995C()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];

  v4 = sub_1B3B64();
  (*(*(v4 - 8) + 16))(v3, v2, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_189A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v8 = sub_1B3B64();
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[6] = v11;
  v12 = *v5;
  v13 = swift_task_alloc();
  v6[7] = v13;
  *v13 = v6;
  v13[1] = sub_189B34;

  return sub_18961C(v11, v12, a1);
}

uint64_t sub_189B34()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 16);
  v4 = *v0;

  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v4;
  v6[1] = sub_189CFC;
  v7 = v1[6];
  v8 = v1[3];

  return v10(v7);
}

uint64_t sub_189CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 64);
  v10 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v11 = sub_189EC0;
  }

  else
  {
    v8[10] = a3;
    v8[11] = a2;
    v8[12] = a1;
    v11 = sub_189E38;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_189E38()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  return v1(v2, v3, v4);
}

uint64_t sub_189EC0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_189F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_379D8(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_379D8((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    *(&_swiftEmptyArrayStorage[4] + v14) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_42FF0(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_42FF0(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
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
  return result;
}

uint64_t sub_18A15C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_E000C(*(*(a1 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18A23C(uint64_t result, char a2, uint64_t a3, int a4)
{
  v22 = a4;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = result + 32;
    if (a2)
    {
      v6 = 0x6F6F626F69647561;
    }

    else
    {
      v6 = 0x6B6F6F6265;
    }

    if (a2)
    {
      v7 = 0xE90000000000006BLL;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    while (1)
    {
      v8 = *(v5 + 112);
      v19 = *(v5 + 96);
      v20 = v8;
      v21 = *(v5 + 128);
      v9 = *(v5 + 16);
      v18[0] = *v5;
      v18[1] = v9;
      v10 = *(v5 + 48);
      v18[2] = *(v5 + 32);
      v18[3] = v10;
      v11 = *(v5 + 80);
      v18[4] = *(v5 + 64);
      v18[5] = v11;
      v12 = *&v18[0];
      v13 = BYTE8(v18[0]) ? 0x6F6F626F69647561 : 0x6B6F6F6265;
      v14 = BYTE8(v18[0]) ? 0xE90000000000006BLL : 0xE500000000000000;
      if (v13 == v6 && v14 == v7)
      {
        break;
      }

      v15 = sub_1B5604();
      sub_429F8(v18, v17);

      if (v15)
      {
        goto LABEL_20;
      }

LABEL_8:
      sub_111CE0(v17, v12);
LABEL_9:
      result = sub_5C740(v18);
      v5 += 136;
      if (!--v4)
      {
        return result;
      }
    }

    sub_429F8(v18, v17);

LABEL_20:
    if ((v22 & 1) != 0 || v20 != 2 && *(&v19 + 1) == a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_18A3F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 4072) = v4;
  *(v5 + 4064) = a4;
  *(v5 + 577) = a3;
  *(v5 + 4056) = a2;
  *(v5 + 4048) = a1;
  return _swift_task_switch(sub_18A420, 0, 0);
}

void sub_18A420()
{
  v40 = v0;
  v1 = *(v0 + 4056);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 200;
    v36 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v4 + 568 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= v2)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        memcpy((v0 + 16), v5 - 168, 0x231uLL);
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_42;
        }

        memcpy((v0 + 2288), v5, 0x179uLL);
        if (sub_42D84(v0 + 2288) == 1)
        {
          goto LABEL_44;
        }

        memcpy(__dst, (v0 + 2288), 0x179uLL);
        if (sub_DF2A8())
        {
          break;
        }

        ++v6;
        v5 += 568;
        if (v3 == v2)
        {
          goto LABEL_17;
        }
      }

      sub_4299C(v0 + 16, v0 + 584);
      v7 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_3749C(0, v36[2] + 1, 1);
        v7 = v39;
      }

      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        sub_3749C((v9 > 1), v10 + 1, 1);
        v7 = v39;
      }

      v7[2] = v10 + 1;
      v36 = v7;
      memcpy(&v7[71 * v10 + 4], (v0 + 16), 0x231uLL);
    }

    while (v3 != v2);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  v11 = _swiftEmptySetSingleton;
  v39 = _swiftEmptySetSingleton;
  v12 = v36;
  v37 = v36[2];
  if (v37)
  {
    v13 = 0;
    while (v13 < v12[2])
    {
      memcpy((v0 + 1152), &v36[71 * v13 + 4], 0x231uLL);
      v14 = *(v0 + 1184);
      v15 = *(v0 + 1240);
      v16 = *(v0 + 1152);
      v17 = *(v0 + 1192);
      sub_4299C(v0 + 1152, v0 + 1720);
      sub_111CE0(__dst, v16);
      v18 = _swiftEmptyArrayStorage;
      if ((v17 & 1) == 0)
      {
        sub_2B0C(&qword_229238, &qword_1C09C0);
        v18 = swift_allocObject();
        *(v18 + 1) = xmmword_1BCA80;
        v18[4] = v14;
      }

      __dst[0] = v18;
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      sub_5F33C(v19);
      v20 = *(__dst[0] + 16);
      if (v20)
      {
        v21 = 0;
        v22 = __dst[0] + 32;
        v23 = v39;
        v24 = (v39 + 7);
        do
        {
          while (1)
          {
            v25 = *(v22 + 8 * v21++);
            v26 = *(v23 + 40);
            v27 = sub_1B57E4();
            v28 = -1 << *(v23 + 32);
            v29 = v27 & ~v28;
            if ((*(v24 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
            {
              break;
            }

LABEL_34:
            v31 = swift_isUniquelyReferenced_nonNull_native();
            __dst[0] = v23;
            sub_115EFC(v25, v29, v31);
            v23 = __dst[0];
            if (v21 == v20)
            {
              goto LABEL_19;
            }

            v24 = __dst[0] + 56;
          }

          v30 = ~v28;
          while (*(*(v23 + 48) + 8 * v29) != v25)
          {
            v29 = (v29 + 1) & v30;
            if (((*(v24 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_34;
            }
          }
        }

        while (v21 != v20);
LABEL_19:
        v39 = v23;

        v12 = v36;
      }

      else
      {
      }

      ++v13;
      sub_2601C(v0 + 1152);
      if (v13 == v37)
      {
        v11 = v39;
        goto LABEL_38;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_38:

    *(v0 + 4080) = v11;
    v32 = swift_task_alloc();
    *(v0 + 4088) = v32;
    *v32 = v0;
    v32[1] = sub_18A81C;
    v33 = *(v0 + 4072);
    v34 = *(v0 + 4056);
    v35 = *(v0 + 4048);

    sub_18B0EC(v35, v34);
  }
}

uint64_t sub_18A81C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 4088);
  v5 = *v2;
  *(*v2 + 4096) = a1;

  if (v1)
  {
    v6 = *(v3 + 4080);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_18A96C, 0, 0);
  }
}

uint64_t sub_18A96C()
{
  v9 = v0;
  v1 = v0[512];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_3503C(*(v1 + 16), 0);
    v4 = sub_43128(&v8, v3 + 4, v2, v1);

    sub_417B8();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[513] = v3;
  v5 = swift_task_alloc();
  v0[514] = v5;
  *v5 = v0;
  v5[1] = sub_18AA98;
  v6 = v0[509];

  return sub_18C0F4(v3);
}

uint64_t sub_18AA98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 4112);
  v6 = *v2;
  v4[515] = a1;
  v4[516] = v1;

  v7 = v3[513];
  if (v1)
  {
    v8 = v4[512];
    v9 = v4[510];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_18AC1C, 0, 0);
  }
}

uint64_t sub_18AC1C()
{
  v69 = v0;
  v1 = *(v0 + 4048);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    __dst[0] = _swiftEmptyArrayStorage;
    sub_3741C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *v4;
      v4 += 17;
      v6 = v7;
      __dst[0] = v3;
      v8 = *(v3 + 3);
      if (v5 >= v8 >> 1)
      {
        sub_3741C((v8 > 1), v5 + 1, 1);
        v3 = __dst[0];
      }

      *(v3 + 2) = v5 + 1;
      *&v3[8 * v5++ + 32] = v6;
      --v2;
    }

    while (v2);
    v1 = *(v0 + 4048);
  }

  v9 = *(v0 + 4128);
  v10 = *(v0 + 4096);
  v11 = *(v0 + 4056);
  v12 = sub_40854(v3);

  v13 = sub_192D68(v10, v12, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  swift_getKeyPath();
  __dst[0] = v1;

  sub_191A64(__dst);

  if (v9)
  {
  }

  else
  {
    v66 = v13;
    v67 = v15;
    v21 = *(v0 + 4096);

    v22 = __dst[0];
    __dst[0] = _swiftEmptySetSingleton;

    v23 = sub_18E3FC(_swiftEmptyArrayStorage, v22, v21, __dst);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = (v0 + 3776);
      v27 = -v24;
      v28 = v23 + 32;
      do
      {
        v29 = *(v23 + 16);
        v30 = v29 >= v25;
        v31 = v29 - v25;
        if (!v30)
        {
          v31 = 0;
        }

        v32 = v28 + 136 * v25++;
        while (1)
        {
          if (!v31)
          {
            __break(1u);
            return result;
          }

          v33 = *(v32 + 16);
          v34 = *(v32 + 32);
          v35 = *(v32 + 64);
          *(v0 + 3824) = *(v32 + 48);
          *(v0 + 3840) = v35;
          v36 = *(v32 + 80);
          v37 = *(v32 + 96);
          v38 = *(v32 + 112);
          *(v0 + 3904) = *(v32 + 128);
          *(v0 + 3872) = v37;
          *(v0 + 3888) = v38;
          *(v0 + 3856) = v36;
          v39 = *v32;
          *(v0 + 3792) = v33;
          *(v0 + 3808) = v34;
          *v26 = v39;
          if (*(v0 + 3832) > 0.0)
          {
            break;
          }

          --v31;
          ++v25;
          v32 += 136;
          if (v27 + v25 == 1)
          {
            goto LABEL_25;
          }
        }

        sub_429F8(v0 + 3776, v0 + 3912);
        result = swift_isUniquelyReferenced_nonNull_native();
        v64 = v28;
        if ((result & 1) == 0)
        {
          result = sub_37574(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v41 = _swiftEmptyArrayStorage[2];
        v40 = _swiftEmptyArrayStorage[3];
        if (v41 >= v40 >> 1)
        {
          result = sub_37574((v40 > 1), v41 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v41 + 1;
        v42 = &_swiftEmptyArrayStorage[17 * v41];
        *(v42 + 2) = *v26;
        v43 = *(v0 + 3792);
        v44 = *(v0 + 3808);
        v45 = *(v0 + 3840);
        *(v42 + 5) = *(v0 + 3824);
        *(v42 + 6) = v45;
        *(v42 + 3) = v43;
        *(v42 + 4) = v44;
        v46 = *(v0 + 3856);
        v47 = *(v0 + 3872);
        v48 = *(v0 + 3888);
        *(v42 + 160) = *(v0 + 3904);
        *(v42 + 8) = v47;
        *(v42 + 9) = v48;
        *(v42 + 7) = v46;
        v28 = v64;
      }

      while (v27 + v25);
    }

LABEL_25:
    v49 = *(v0 + 4120);
    v50 = *(v0 + 4096);
    v51 = *(v0 + 4080);
    v52 = v19;
    v53 = v17;
    v54 = *(v0 + 4072);
    v55 = *(v0 + 4064);
    v65 = *(v0 + 577);

    memcpy((v0 + 3040), (v54 + 168), 0x16BuLL);
    v56 = (v54 + 168);
    v57 = v53;
    v58 = v52;
    memcpy(__dst, v56, 0x16BuLL);
    sub_71E28(v0 + 3040, v0 + 3408);
    v59 = sub_18C474(v49, v50, __dst, v55, _swiftEmptyArrayStorage);

    memcpy((v0 + 2672), __dst, 0x16BuLL);
    sub_71DC0(v0 + 2672);
    v60 = sub_18CBA8(v66, v67, v57, v52, v59);

    v61 = sub_18D064(v51, v50, v60);

    if (v65)
    {

      v58 = _swiftEmptySetSingleton;
    }

    v62 = sub_18D3B4(v58, v61);

    v63 = *(v0 + 8);

    return v63(v62);
  }
}

uint64_t sub_18B0EC(uint64_t a1, uint64_t a2)
{
  v3[168] = v2;
  v3[167] = a2;
  v3[166] = a1;
  return _swift_task_switch(sub_18B114, 0, 0);
}

unint64_t sub_18B114()
{
  v1 = *(v0 + 1336);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_52:
    *(v0 + 1352) = _swiftEmptyDictionarySingleton;
    v54 = *(v0 + 1328);
    v55 = *(v54 + 16);
    if (v55)
    {
      sub_3741C(0, v55, 0);
      v56 = (v54 + 32);
      v57 = _swiftEmptyArrayStorage[2];
      do
      {
        v59 = *v56;
        v56 += 17;
        v58 = v59;
        v60 = _swiftEmptyArrayStorage[3];
        if (v57 >= v60 >> 1)
        {
          sub_3741C((v60 > 1), v57 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v57 + 1;
        _swiftEmptyArrayStorage[v57++ + 4] = v58;
        --v55;
      }

      while (v55);
    }

    *(v0 + 1360) = _swiftEmptyArrayStorage;
    v61 = *(v0 + 1344);
    v62 = v61[3];
    v63 = v61[4];
    sub_2698(v61, v62);

    sub_5F33C(v64);
    *(v0 + 1368) = v33;
    v65 = *(v63 + 16);
    v71 = (v65 + *v65);
    v66 = v65[1];
    v67 = swift_task_alloc();
    *(v0 + 1376) = v67;
    *v67 = v0;
    v67[1] = sub_18B728;

    return (v71)(v33, v62, v63);
  }

  v4 = (v1 + 32);
  v69 = *(v1 + 16);
  while (1)
  {
    memcpy((v0 + 16), v4, 0x231uLL);
    v15 = *(v0 + 16);
    sub_4299C(v0 + 16, v0 + 584);
    sub_5EDD8(v0 + 24, v0 + 1152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_43124(v15);
    v18 = _swiftEmptyDictionarySingleton[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (_swiftEmptyDictionarySingleton[3] < v21)
    {
      sub_17FD40(v21, isUniquelyReferenced_nonNull_native);
      result = sub_43124(v15);
      if ((v22 & 1) != (v23 & 1))
      {

        return sub_1B5784();
      }

LABEL_10:
      if ((v22 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v31 = result;
    sub_1864C4();
    result = v31;
    if ((v22 & 1) == 0)
    {
LABEL_11:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      *(_swiftEmptyDictionarySingleton[6] + 8 * result) = v15;
      v24 = _swiftEmptyDictionarySingleton[7] + 88 * result;
      v25 = *(v0 + 40);
      *v24 = *(v0 + 24);
      *(v24 + 16) = v25;
      v26 = *(v0 + 56);
      v27 = *(v0 + 72);
      v28 = *(v0 + 88);
      *(v24 + 80) = *(v0 + 104);
      *(v24 + 48) = v27;
      *(v24 + 64) = v28;
      *(v24 + 32) = v26;
      result = sub_2601C(v0 + 16);
      v29 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v20)
      {
        goto LABEL_70;
      }

      _swiftEmptyDictionarySingleton[2] = v30;
      goto LABEL_4;
    }

LABEL_3:
    v5 = _swiftEmptyDictionarySingleton[7] + 88 * result;
    v6 = *(v5 + 16);
    *(v0 + 1240) = *v5;
    *(v0 + 1256) = v6;
    v7 = *(v5 + 32);
    v8 = *(v5 + 48);
    v9 = *(v5 + 64);
    *(v0 + 1320) = *(v5 + 80);
    *(v0 + 1288) = v8;
    *(v0 + 1304) = v9;
    *(v0 + 1272) = v7;
    v10 = *(v0 + 72);
    v11 = *(v0 + 88);
    v12 = *(v0 + 56);
    *(v5 + 80) = *(v0 + 104);
    *(v5 + 48) = v10;
    *(v5 + 64) = v11;
    *(v5 + 32) = v12;
    v13 = *(v0 + 40);
    *v5 = *(v0 + 24);
    *(v5 + 16) = v13;
    sub_85554(v0 + 1240);
    result = sub_2601C(v0 + 16);
LABEL_4:
    v4 += 568;
    if (!--v2)
    {
      v32 = *(v0 + 1336) + 64;
      v33 = _swiftEmptyArrayStorage;
      v34 = v69;
      while (1)
      {
        v36 = *(v32 + 56);
        v68 = v33;
        v70 = v34;
        if (*(v32 + 8) == 1)
        {
          v37 = *(v3 + 2);
          v38 = v3;
        }

        else
        {
          v39 = *v32;
          sub_2B0C(&qword_229238, &qword_1C09C0);
          result = swift_allocObject();
          v38 = result;
          *(result + 16) = xmmword_1BCA80;
          *(result + 32) = v39;
          v37 = 1;
        }

        v40 = v3;
        if (v36)
        {
          v41 = v36;
        }

        else
        {
          v41 = v3;
        }

        v42 = *(v41 + 2);
        v43 = v37 + v42;
        if (__OFADD__(v37, v42))
        {
          goto LABEL_64;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v43 > *(v38 + 3) >> 1)
        {
          if (v37 <= v43)
          {
            v44 = v37 + v42;
          }

          else
          {
            v44 = v37;
          }

          result = sub_33008(result, v44, 1, v38);
          v38 = result;
        }

        v3 = v40;
        if (!*(v41 + 2))
        {
          break;
        }

        v45 = *(v38 + 2);
        if ((*(v38 + 3) >> 1) - v45 < v42)
        {
          goto LABEL_68;
        }

        memcpy(&v38[8 * v45 + 32], v41 + 32, 8 * v42);

        if (!v42)
        {
          goto LABEL_37;
        }

        v46 = *(v38 + 2);
        v47 = v46 + v42;
        if (__OFADD__(v46, v42))
        {
          goto LABEL_71;
        }

        *(v38 + 2) = v47;
LABEL_38:
        v33 = v68;
        v48 = v68[2];
        v49 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          goto LABEL_66;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v49 <= v68[3] >> 1)
        {
          if (!*(v38 + 2))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v48 <= v49)
          {
            v50 = v48 + v47;
          }

          else
          {
            v50 = v48;
          }

          result = sub_33008(result, v50, 1, v68);
          v33 = result;
          if (!*(v38 + 2))
          {
LABEL_16:

            v35 = v70;
            if (v47)
            {
              goto LABEL_67;
            }

            goto LABEL_17;
          }
        }

        v51 = v33[2];
        if ((v33[3] >> 1) - v51 < v47)
        {
          goto LABEL_69;
        }

        memcpy(&v33[v51 + 4], v38 + 32, 8 * v47);

        v35 = v70;
        if (v47)
        {
          v52 = v33[2];
          v20 = __OFADD__(v52, v47);
          v53 = v52 + v47;
          if (v20)
          {
            goto LABEL_72;
          }

          v33[2] = v53;
        }

LABEL_17:
        v32 += 568;
        v34 = v35 - 1;
        if (!v34)
        {
          goto LABEL_52;
        }
      }

      if (v42)
      {
        goto LABEL_65;
      }

LABEL_37:
      v47 = *(v38 + 2);
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_18B728(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1376);
  v6 = *v2;
  *(*v2 + 1384) = v1;

  if (v1)
  {
    v7 = sub_18C008;
  }

  else
  {
    v8 = *(v4 + 1368);

    *(v4 + 1392) = a1;
    v7 = sub_18B858;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_18B858()
{
  v64 = v0;
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[169];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = v1;
  sub_191B08(v3, sub_18E388, 0, isUniquelyReferenced_nonNull_native, &v63);
  if (v2)
  {
    v5 = v0[169];
  }

  v7 = v0[170];
  v8 = v0[169];

  v9 = v0;
  v10 = v63;
  v9[175] = v63;
  v11 = *(v7 + 16);
  v60 = v9;
  if (v11)
  {
    v12 = (v9[170] + 32);
    v13 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage;
    v61 = v10;
    while (1)
    {
      if (*(v10 + 16))
      {
        result = sub_43124(*v12);
        if (v15)
        {
          break;
        }
      }

LABEL_8:
      ++v12;
      if (!--v11)
      {
        v32 = v60[170];

        v33 = v14[2];
        if (v33)
        {
          goto LABEL_35;
        }

LABEL_53:
        v35 = _swiftEmptyArrayStorage;
LABEL_54:

        v45 = v35[2];
        if (v45)
        {
          v46 = v35 + 4;
          v47 = _swiftEmptyArrayStorage;
          do
          {
            v51 = *v46++;
            v50 = v51;
            if (!*(v10 + 16) || (sub_43124(v50), (v52 & 1) == 0))
            {
              v53 = swift_isUniquelyReferenced_nonNull_native();
              v63 = v47;
              if ((v53 & 1) == 0)
              {
                sub_3741C(0, v47[2] + 1, 1);
                v47 = v63;
              }

              v49 = v47[2];
              v48 = v47[3];
              if (v49 >= v48 >> 1)
              {
                sub_3741C((v48 > 1), v49 + 1, 1);
                v47 = v63;
              }

              v47[2] = v49 + 1;
              v47[v49 + 4] = v50;
            }

            --v45;
          }

          while (v45);
        }

        else
        {
          v47 = _swiftEmptyArrayStorage;
        }

        v60[176] = v47;
        v54 = v60[168];

        v55 = v54[3];
        v56 = v54[4];
        sub_2698(v54, v55);
        v57 = *(v56 + 16);
        v62 = (v57 + *v57);
        v58 = v57[1];
        v59 = swift_task_alloc();
        v60[177] = v59;
        *v59 = v60;
        v59[1] = sub_18BE10;

        return (v62)(v47, v55, v56);
      }
    }

    v16 = *(v10 + 56) + 88 * result;
    v17 = *(v16 + 80);
    if (*(v16 + 32) == 1)
    {
      v18 = *(v13 + 2);
      v19 = v13;
    }

    else
    {
      v20 = *(v16 + 24);
      sub_2B0C(&qword_229238, &qword_1C09C0);
      result = swift_allocObject();
      v19 = result;
      *(result + 16) = xmmword_1BCA80;
      *(result + 32) = v20;
      v18 = 1;
    }

    v21 = v13;
    if (v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = v13;
    }

    v23 = *(v22 + 2);
    v24 = v18 + v23;
    if (__OFADD__(v18, v23))
    {
      goto LABEL_73;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v24 <= *(v19 + 3) >> 1)
    {
      if (*(v22 + 2))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v18 <= v24)
      {
        v29 = v18 + v23;
      }

      else
      {
        v29 = v18;
      }

      result = sub_33008(result, v29, 1, v19);
      v19 = result;
      if (*(v22 + 2))
      {
LABEL_21:
        v25 = *(v19 + 2);
        if ((*(v19 + 3) >> 1) - v25 < v23)
        {
          goto LABEL_75;
        }

        memcpy(&v19[8 * v25 + 32], v22 + 32, 8 * v23);

        if (v23)
        {
          v26 = *(v19 + 2);
          v27 = __OFADD__(v26, v23);
          v28 = v26 + v23;
          if (v27)
          {
            goto LABEL_76;
          }

          *(v19 + 2) = v28;
        }

        goto LABEL_30;
      }
    }

    if (v23)
    {
      goto LABEL_74;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_34910(0, v14[2] + 1, 1, v14);
    }

    v13 = v21;
    v31 = v14[2];
    v30 = v14[3];
    v10 = v61;
    if (v31 >= v30 >> 1)
    {
      v14 = sub_34910((v30 > 1), v31 + 1, 1, v14);
    }

    v14[2] = v31 + 1;
    v14[v31 + 4] = v19;
    goto LABEL_8;
  }

  v14 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage[2];
  if (!v33)
  {
    goto LABEL_53;
  }

LABEL_35:
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  while (v34 < v14[2])
  {
    v36 = v14[v34 + 4];
    v37 = *(v36 + 16);
    v38 = v35[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      goto LABEL_69;
    }

    v40 = v14[v34 + 4];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v39 <= v35[3] >> 1)
    {
      if (*(v36 + 16))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v38 <= v39)
      {
        v41 = v38 + v37;
      }

      else
      {
        v41 = v38;
      }

      result = sub_33008(result, v41, 1, v35);
      v35 = result;
      if (*(v36 + 16))
      {
LABEL_48:
        v42 = v35[2];
        if ((v35[3] >> 1) - v42 < v37)
        {
          goto LABEL_71;
        }

        memcpy(&v35[v42 + 4], (v36 + 32), 8 * v37);

        if (v37)
        {
          v43 = v35[2];
          v27 = __OFADD__(v43, v37);
          v44 = v43 + v37;
          if (v27)
          {
            goto LABEL_72;
          }

          v35[2] = v44;
        }

        goto LABEL_37;
      }
    }

    if (v37)
    {
      goto LABEL_70;
    }

LABEL_37:
    if (v33 == ++v34)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_18BE10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1416);
  v8 = *v2;
  v3[178] = a1;
  v3[179] = v1;

  if (v1)
  {
    v5 = sub_18C084;
  }

  else
  {
    v6 = v3[176];

    v5 = sub_18BF30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_18BF30()
{
  v10 = v0;
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[175];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3;
  sub_191B08(v2, sub_18E388, 0, isUniquelyReferenced_nonNull_native, &v9);
  v5 = v0[178];

  v6 = v9;
  if (v1)
  {
  }

  else
  {
    v8 = v0[1];

    return v8(v6);
  }
}

uint64_t sub_18C008()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];

  v4 = v0[173];
  v5 = v0[1];

  return v5();
}

uint64_t sub_18C084()
{
  v1 = v0[176];
  v2 = v0[175];

  v3 = v0[179];
  v4 = v0[1];

  return v4();
}

uint64_t sub_18C0F4(uint64_t a1)
{
  *(v2 + 5632) = v1;
  *(v2 + 5624) = a1;
  return _swift_task_switch(sub_18C118, 0, 0);
}

uint64_t sub_18C118()
{
  v1 = v0[704];
  v2 = v0[703];
  v3 = v1[8];
  v4 = v1[9];
  sub_2698(v1 + 5, v3);
  v0[702] = v2;

  v5 = sub_40228(&off_20E7A8);
  v0[705] = v5;
  memcpy(v0 + 2, v1 + 10, 0x460uLL);
  memcpy(v0 + 142, v1 + 10, 0x460uLL);
  v6 = *(v4 + 8);
  sub_84BC0((v0 + 2), (v0 + 282));
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[706] = v8;
  *v8 = v0;
  v8[1] = sub_18C2BC;

  return (v10)(v0 + 702, v5, 0x7FFFFFFFFFFFFFFFLL, v0 + 142, v3, v4);
}

uint64_t sub_18C2BC(uint64_t a1)
{
  v4 = *(*v2 + 5648);
  v5 = *v2;
  v5[707] = v1;

  if (v1)
  {
    v6 = v5[705];

    memcpy(v5 + 422, v5 + 142, 0x460uLL);
    sub_2B54((v5 + 422));
    v7 = v5[702];

    return _swift_task_switch(sub_18C45C, 0, 0);
  }

  else
  {
    v8 = v5[705];

    memcpy(v5 + 562, v5 + 142, 0x460uLL);
    sub_2B54((v5 + 562));
    v9 = v5[702];

    v10 = v5[1];

    return v10(a1);
  }
}

void *sub_18C474(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (a4)
  {
    v88 = sub_189F40(a4);
  }

  else
  {
    v88 = _swiftEmptyArrayStorage;
  }

  v9 = *(a5 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a5 + 32;
    v80 = _swiftEmptyArrayStorage;
    v81 = v11;
    v82 = v9;
    v83 = a2;
    v85 = a1;
    while (1)
    {
      while (1)
      {
        if (v10 >= v9)
        {
          goto LABEL_73;
        }

        v12 = (v11 + 136 * v10);
        v13 = v12[7];
        v147 = v12[6];
        v148 = v13;
        v149 = *(v12 + 128);
        v14 = v12[3];
        v143 = v12[2];
        v144 = v14;
        v15 = v12[5];
        v145 = v12[4];
        v146 = v15;
        v16 = v12[1];
        v141 = *v12;
        v142 = v16;
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_74;
        }

        if (*(a2 + 16))
        {
          v18 = v141;
          v19 = sub_43124(v141);
          if (v20)
          {
            break;
          }
        }

LABEL_7:
        if (v10 == v9)
        {
          goto LABEL_71;
        }
      }

      v84 = v10;
      v21 = *(a2 + 56) + 88 * v19;
      v22 = *(v21 + 8);
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      v25 = *(v21 + 32);
      v26 = *(v21 + 80);
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BCA80;
      *(v27 + 32) = v18;
      v140 = v27;
      v28 = _swiftEmptyArrayStorage;
      if ((v25 & 1) == 0)
      {
        v28 = swift_allocObject();
        *(v28 + 1) = xmmword_1BCA80;
        v28[4] = v24;
      }

      __srca[0] = v28;
      if (v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = _swiftEmptyArrayStorage;
      }

      sub_429F8(&v141, &v96);

      swift_bridgeObjectRetain_n();
      sub_5F33C(v29);
      sub_5F33C(__srca[0]);

      v30 = v140;
      v31 = *(v140 + 16);
      if (v31)
      {
        v32 = 0;
        v33 = v140 + 32;
        v89 = v140;
        v86 = v140 + 32;
        v87 = *(v140 + 16);
        while (v32 < *(v30 + 16))
        {
          if (*(a1 + 16))
          {
            v34 = sub_43124(*(v33 + 8 * v32));
            if (v35)
            {
              v36 = *(a1 + 56) + 384 * v34;
              v96 = *v36;
              v139 = *(v36 + 16);
              *v98 = *(v36 + 17);
              *&v98[7] = *(v36 + 24);
              v138 = *(v36 + 32);
              v100 = *(v36 + 33);
              *v101 = *(v36 + 49);
              *&v101[15] = *(v36 + 64);
              v37 = *(v36 + 80);
              v38 = *(v36 + 81);
              *&v103[15] = *(v36 + 96);
              *v103 = v38;
              v137 = *(v36 + 104);
              *v105 = *(v36 + 105);
              *&v105[7] = *(v36 + 112);
              v136 = *(v36 + 120);
              *v107 = *(v36 + 121);
              *&v107[7] = *(v36 + 128);
              v135 = *(v36 + 136);
              v39 = *(v36 + 137);
              *&v109[7] = *(v36 + 144);
              *v109 = v39;
              v40 = *(v36 + 152);
              *&v111[7] = *(v36 + 160);
              *v111 = *(v36 + 153);
              v41 = *(v36 + 168);
              *&v113[7] = *(v36 + 176);
              *v113 = *(v36 + 169);
              v42 = *(v36 + 184);
              *v115 = *(v36 + 185);
              *&v115[7] = *(v36 + 192);
              v43 = *(v36 + 200);
              v44 = *(v36 + 201);
              v45 = *(v36 + 217);
              *&v118[15] = *(v36 + 232);
              *v118 = v45;
              v117 = v44;
              v46 = *(v36 + 240);
              v47 = *(v36 + 241);
              *&v120[7] = *(v36 + 248);
              *v120 = v47;
              v48 = *(v36 + 256);
              v49 = *(v36 + 257);
              v50 = *(v36 + 273);
              *&v123[15] = *(v36 + 288);
              v122 = v49;
              *v123 = v50;
              v51 = *(v36 + 296);
              v52 = *(v36 + 297);
              *&v125[7] = *(v36 + 304);
              *v125 = v52;
              v53 = *(v36 + 312);
              v54 = *(v36 + 313);
              *&v127[7] = *(v36 + 320);
              *v127 = v54;
              v55 = *(v36 + 328);
              v56 = *(v36 + 329);
              *&v129[7] = *(v36 + 336);
              *v129 = v56;
              v57 = *(v36 + 344);
              v58 = *(v36 + 345);
              *&v131[7] = *(v36 + 352);
              *v131 = v58;
              v59 = *(v36 + 360);
              v60 = *(v36 + 361);
              *&v133[7] = *(v36 + 368);
              *v133 = v60;
              v61 = *(v36 + 376);
              v97 = v139;
              v99 = v138;
              v93 = v40;
              v94 = v37;
              v102 = v37;
              v104 = v137;
              v106 = v136;
              v108 = v135;
              v110 = v40;
              v91 = v42;
              v92 = v41;
              v112 = v41;
              v114 = v42;
              v90 = v43;
              v116 = v43;
              v62 = v46;
              v119 = v46;
              v63 = v48;
              v121 = v48;
              v64 = v51;
              v124 = v51;
              v126 = v53;
              v128 = v55;
              v130 = v57;
              v132 = v59;
              v134 = v61;
              memcpy(__srca, __dst, 0x16BuLL);
              if (!BookHistory.isEligibleForRecommendation(with:)(__srca))
              {
LABEL_6:
                sub_5C740(&v141);

                v9 = v82;
                a2 = v83;
                a1 = v85;
                v10 = v84;
                v11 = v81;
                goto LABEL_7;
              }

              v65 = v88[2];
              if (v65)
              {
                v66 = (v88 + 4);
                while (2)
                {
                  v67 = *v66++;
                  switch(v67)
                  {
                    case 1:
                      if (v94 != 255)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 2:
                      if ((v138 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 3:
                      if ((v137 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 4:
                      if ((v136 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 5:
                      if ((v135 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 6:
                      if ((v93 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 7:
                      if ((v92 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 8:
                      if ((v91 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 9:
                      if ((v90 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 10:
                      if (v62 != 255)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 11:
                      if ((v63 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 12:
                      if (v64 != 255)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 13:
                      if ((v53 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 14:
                      if ((v55 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 15:
                      if ((v57 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 16:
                      if (v59)
                      {
                        goto LABEL_28;
                      }

                      goto LABEL_6;
                    case 17:
                      if ((v61 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    default:
                      if ((v139 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

LABEL_28:
                      if (--v65)
                      {
                        continue;
                      }

                      goto LABEL_19;
                  }
                }
              }

LABEL_19:
              a1 = v85;
              v33 = v86;
              v30 = v89;
              v31 = v87;
            }
          }

          if (++v32 == v31)
          {
            goto LABEL_64;
          }
        }

        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        JUMPOUT(0x18CB60);
      }

LABEL_64:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v80;
      v150 = v80;
      v9 = v82;
      v10 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_37574(0, v80[2] + 1, 1);
        v69 = v150;
      }

      v71 = v69[2];
      v70 = v69[3];
      if (v71 >= v70 >> 1)
      {
        sub_37574((v70 > 1), v71 + 1, 1);
        v69 = v150;
      }

      v69[2] = v71 + 1;
      v80 = v69;
      v72 = &v69[17 * v71];
      *(v72 + 2) = v141;
      v73 = v142;
      v74 = v143;
      v75 = v145;
      *(v72 + 5) = v144;
      *(v72 + 6) = v75;
      *(v72 + 3) = v73;
      *(v72 + 4) = v74;
      v76 = v146;
      v77 = v147;
      v78 = v148;
      *(v72 + 160) = v149;
      *(v72 + 8) = v77;
      *(v72 + 9) = v78;
      *(v72 + 7) = v76;
      a2 = v83;
      v11 = v81;
      if (v84 == v82)
      {
        goto LABEL_71;
      }
    }
  }

  v80 = _swiftEmptyArrayStorage;
LABEL_71:

  return v80;
}

void *sub_18CBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v88 = _swiftEmptySetSingleton;
  if (v7)
  {
    v8 = (a5 + 32);
    v9 = v7;
    while (1)
    {
      v23 = v8[7];
      v85 = v8[6];
      v86 = v23;
      v87 = *(v8 + 128);
      v24 = v8[1];
      v79 = *v8;
      v80 = v24;
      v25 = v8[3];
      v81 = v8[2];
      v82 = v25;
      v26 = v8[5];
      v83 = v8[4];
      v84 = v26;
      v27 = v79;
      sub_429F8(&v79, v77);
      sub_429F8(&v79, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_43124(v27);
      v31 = _swiftEmptyDictionarySingleton[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        result = sub_1B5784();
        __break(1u);
        return result;
      }

      v35 = v30;
      if (_swiftEmptyDictionarySingleton[3] < v34)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v46 = v29;
      sub_1856D0();
      v29 = v46;
      if (v35)
      {
LABEL_3:
        v10 = _swiftEmptyDictionarySingleton[7] + 136 * v29;
        v77[0] = *v10;
        v11 = *(v10 + 64);
        v13 = *(v10 + 16);
        v12 = *(v10 + 32);
        v77[3] = *(v10 + 48);
        v77[4] = v11;
        v77[1] = v13;
        v77[2] = v12;
        v15 = *(v10 + 96);
        v14 = *(v10 + 112);
        v16 = *(v10 + 80);
        v78 = *(v10 + 128);
        v77[6] = v15;
        v77[7] = v14;
        v77[5] = v16;
        *v10 = v79;
        v17 = v80;
        v18 = v81;
        v19 = v83;
        *(v10 + 48) = v82;
        *(v10 + 64) = v19;
        *(v10 + 16) = v17;
        *(v10 + 32) = v18;
        v20 = v84;
        v21 = v85;
        v22 = v86;
        *(v10 + 128) = v87;
        *(v10 + 96) = v21;
        *(v10 + 112) = v22;
        *(v10 + 80) = v20;
        sub_5C740(v77);
        sub_5C740(&v79);
        goto LABEL_4;
      }

LABEL_11:
      _swiftEmptyDictionarySingleton[(v29 >> 6) + 8] |= 1 << v29;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v29) = v27;
      v37 = _swiftEmptyDictionarySingleton[7] + 136 * v29;
      *v37 = v79;
      v38 = v83;
      v40 = v80;
      v39 = v81;
      *(v37 + 48) = v82;
      *(v37 + 64) = v38;
      *(v37 + 16) = v40;
      *(v37 + 32) = v39;
      v41 = v84;
      v42 = v85;
      v43 = v86;
      *(v37 + 128) = v87;
      *(v37 + 96) = v42;
      *(v37 + 112) = v43;
      *(v37 + 80) = v41;
      sub_5C740(&v79);
      v44 = _swiftEmptyDictionarySingleton[2];
      v33 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v33)
      {
        goto LABEL_37;
      }

      _swiftEmptyDictionarySingleton[2] = v45;
LABEL_4:
      v8 = (v8 + 136);
      if (!--v9)
      {
        goto LABEL_15;
      }
    }

    sub_17DB74(v34, isUniquelyReferenced_nonNull_native);
    v29 = sub_43124(v27);
    if ((v35 & 1) != (v36 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    if (v35)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  v47 = *(a1 + 16);

  if (v47)
  {
    v48 = (a1 + 32);
    do
    {
      v49 = *v48++;
      *&v79 = v49;

      sub_19014C(&v79, _swiftEmptyDictionarySingleton, a2, a3);

      --v47;
    }

    while (v47);
  }

  swift_bridgeObjectRelease_n();

  if (v7)
  {
    v51 = 0;
    v52 = v50 + 32;
    v53 = v88;
    v54 = v88 + 7;
    while (v51 < v7)
    {
      v64 = v52 + 136 * v51;
      v65 = *(v64 + 112);
      v85 = *(v64 + 96);
      v86 = v65;
      v87 = *(v64 + 128);
      v66 = *(v64 + 48);
      v81 = *(v64 + 32);
      v82 = v66;
      v67 = *(v64 + 80);
      v83 = *(v64 + 64);
      v84 = v67;
      v68 = *(v64 + 16);
      v79 = *v64;
      v80 = v68;
      v33 = __OFADD__(v51++, 1);
      if (v33)
      {
        goto LABEL_36;
      }

      if (v53[2] && (v69 = v79, v70 = v53[5], v71 = sub_1B57E4(), v72 = -1 << *(v53 + 32), v73 = v71 & ~v72, ((*(v54 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) != 0))
      {
        v74 = ~v72;
        while (*(v53[6] + 8 * v73) != v69)
        {
          v73 = (v73 + 1) & v74;
          if (((*(v54 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
LABEL_31:
        sub_429F8(&v79, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_37574(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v56 = _swiftEmptyArrayStorage[2];
        v55 = _swiftEmptyArrayStorage[3];
        if (v56 >= v55 >> 1)
        {
          sub_37574((v55 > 1), v56 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v56 + 1;
        v57 = &_swiftEmptyArrayStorage[17 * v56];
        *(v57 + 2) = v79;
        v58 = v80;
        v59 = v81;
        v60 = v83;
        *(v57 + 5) = v82;
        *(v57 + 6) = v60;
        *(v57 + 3) = v58;
        *(v57 + 4) = v59;
        v61 = v84;
        v62 = v85;
        v63 = v86;
        *(v57 + 160) = v87;
        *(v57 + 8) = v62;
        *(v57 + 9) = v63;
        *(v57 + 7) = v61;
      }

      if (v51 == v7)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_35;
  }

LABEL_33:

  return _swiftEmptyArrayStorage;
}

unint64_t sub_18D064(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2;
  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  v8 = result + 56;
  v46 = _swiftEmptyArrayStorage;
  v47 = a3 + 32;
  v48 = *(a3 + 16);
  while (v6 < v3)
  {
    v9 = (v7 + 136 * v6);
    v10 = v9[7];
    v59 = v9[6];
    v60 = v10;
    v61 = *(v9 + 128);
    v11 = v9[3];
    v55 = v9[2];
    v56 = v11;
    v12 = v9[5];
    v57 = v9[4];
    v58 = v12;
    v13 = v9[1];
    v53 = *v9;
    v54 = v13;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_34;
    }

    if (*(v4 + 16) && (v15 = v53, result = sub_43124(v53), (v16 & 1) != 0))
    {
      v17 = *(v4 + 56) + 88 * result;
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = *(v17 + 32);
      v22 = *(v17 + 80);
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCA80;
      *(inited + 32) = v15;
      v52 = inited;
      v24 = _swiftEmptyArrayStorage;
      if ((v21 & 1) == 0)
      {
        v24 = swift_allocObject();
        *(v24 + 1) = xmmword_1BCA80;
        v24[4] = v20;
      }

      v51 = v24;
      if (v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = _swiftEmptyArrayStorage;
      }

      sub_429F8(&v53, v50);

      swift_bridgeObjectRetain_n();
      sub_5F33C(v25);
      sub_5F33C(v51);

      v26 = *(v52 + 16);
      if (v26)
      {
        v27 = 0;
        v28 = v52 + 32;
        v29 = *(v5 + 16);
        v4 = a2;
        while (1)
        {
          if (v29)
          {
            v30 = *(v28 + 8 * v27);
            v31 = *(v5 + 40);
            v32 = sub_1B57E4();
            v33 = -1 << *(v5 + 32);
            v34 = v32 & ~v33;
            if ((*(v8 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
            {
              break;
            }
          }

LABEL_16:
          if (++v27 == v26)
          {

            goto LABEL_25;
          }
        }

        v35 = ~v33;
        while (*(*(v5 + 48) + 8 * v34) != v30)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v8 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        sub_5C740(&v53);

        v7 = v47;
        v3 = v48;
        goto LABEL_4;
      }

      v4 = a2;
LABEL_25:
      v36 = v46;
      result = swift_isUniquelyReferenced_nonNull_native();
      v62 = v46;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v46[2] + 1, 1);
        v36 = v62;
      }

      v38 = v36[2];
      v37 = v36[3];
      if (v38 >= v37 >> 1)
      {
        result = sub_37574((v37 > 1), v38 + 1, 1);
        v36 = v62;
      }

      v36[2] = v38 + 1;
      v46 = v36;
      v39 = &v36[17 * v38];
      *(v39 + 2) = v53;
      v40 = v54;
      v41 = v55;
      v42 = v57;
      *(v39 + 5) = v56;
      *(v39 + 6) = v42;
      *(v39 + 3) = v40;
      *(v39 + 4) = v41;
      v43 = v58;
      v44 = v59;
      v45 = v60;
      *(v39 + 160) = v61;
      *(v39 + 8) = v44;
      *(v39 + 9) = v45;
      *(v39 + 7) = v43;
      v7 = v47;
      v3 = v48;
      if (v6 == v48)
      {
        return v46;
      }
    }

    else
    {
LABEL_4:
      if (v6 == v3)
      {
        return v46;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_18D3B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = result + 56;
    v7 = _swiftEmptyArrayStorage;
    while (v4 < v2)
    {
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_38;
      }

      v9 = (v5 + 136 * v4++);
      if (*(v9 + 112) != 2 && *(v3 + 16) && (v10 = *v9, v11 = v9[13], v12 = *(v3 + 40), result = sub_1B57E4(), v13 = -1 << *(v3 + 32), v14 = result & ~v13, ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (*(*(v3 + 48) + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v15;
          if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_33008(0, *(v7 + 2) + 1, 1, v7);
          v7 = result;
        }

        v17 = *(v7 + 2);
        v16 = *(v7 + 3);
        if (v17 >= v16 >> 1)
        {
          result = sub_33008((v16 > 1), v17 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 2) = v17 + 1;
        *&v7[8 * v17 + 32] = v10;
        if (v8 == v2)
        {
          goto LABEL_20;
        }
      }

      else
      {
LABEL_3:
        if (v8 == v2)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_20:
  v18 = sub_40854(v7);

  if (v2)
  {
    v19 = 0;
    v20 = v18 + 56;
    v21 = _swiftEmptyArrayStorage;
    while (v19 < v2)
    {
      v31 = a2 + 32 + 136 * v19;
      v32 = *(v31 + 112);
      v50 = *(v31 + 96);
      v51 = v32;
      v52 = *(v31 + 128);
      v33 = *(v31 + 48);
      v46 = *(v31 + 32);
      v47 = v33;
      v34 = *(v31 + 80);
      v48 = *(v31 + 64);
      v49 = v34;
      v35 = *(v31 + 16);
      v44 = *v31;
      v45 = v35;
      if (__OFADD__(v19++, 1))
      {
        goto LABEL_40;
      }

      if (*(v18 + 16) && (v37 = v44, v38 = *(v18 + 40), result = sub_1B57E4(), v39 = -1 << *(v18 + 32), v40 = result & ~v39, ((*(v20 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
      {
        v41 = ~v39;
        while (*(*(v18 + 48) + 8 * v40) != v37)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v20 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
LABEL_33:
        sub_429F8(&v44, v43);
        result = swift_isUniquelyReferenced_nonNull_native();
        v53 = v21;
        if ((result & 1) == 0)
        {
          result = sub_37574(0, v21[2] + 1, 1);
          v21 = v53;
        }

        v23 = v21[2];
        v22 = v21[3];
        if (v23 >= v22 >> 1)
        {
          result = sub_37574((v22 > 1), v23 + 1, 1);
          v21 = v53;
        }

        v21[2] = v23 + 1;
        v24 = &v21[17 * v23];
        *(v24 + 2) = v44;
        v25 = v45;
        v26 = v46;
        v27 = v48;
        *(v24 + 5) = v47;
        *(v24 + 6) = v27;
        *(v24 + 3) = v25;
        *(v24 + 4) = v26;
        v28 = v49;
        v29 = v50;
        v30 = v51;
        *(v24 + 160) = v52;
        *(v24 + 8) = v29;
        *(v24 + 9) = v30;
        *(v24 + 7) = v28;
      }

      if (v19 == v2)
      {
        goto LABEL_36;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_36:

  return v21;
}

uint64_t sub_18D6F8(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a2[7];
  v57 = a2[6];
  v58 = v5;
  v59 = *(a2 + 128);
  v6 = a2[1];
  v51 = *a2;
  v52 = v6;
  v7 = a2[3];
  v53 = a2[2];
  v54 = v7;
  v8 = a2[5];
  v55 = a2[4];
  v56 = v8;
  v9 = v51;
  v10 = *(&v54 + 1);
  if (*(a3 + 16) && (v12 = sub_43124(v51), (v13 & 1) != 0))
  {
    v14 = *(a3 + 56) + 88 * v12;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v19 = *(v14 + 80);
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BCA80;
    *(v20 + 32) = v9;
    v50[0] = v20;
    v21 = _swiftEmptyArrayStorage;
    if ((v18 & 1) == 0)
    {
      v21 = swift_allocObject();
      *(v21 + 1) = xmmword_1BCA80;
      v21[4] = v17;
    }

    v49 = v21;
    if (v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

    swift_bridgeObjectRetain_n();
    sub_5F33C(v22);
    sub_5F33C(v49);

    v23 = v50[0];
    v24 = *(v50[0] + 16);
    v4 = a4;
    if (!v24)
    {
LABEL_22:

      if (v10 > 0.0)
      {
        v37 = *a1;
        sub_429F8(&v51, v50);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_33358(0, *(v37 + 16) + 1, 1, v37);
          v37 = result;
        }

        v39 = *(v37 + 16);
        v38 = *(v37 + 24);
        if (v39 >= v38 >> 1)
        {
          result = sub_33358((v38 > 1), v39 + 1, 1, v37);
          v37 = result;
        }

        *(v37 + 16) = v39 + 1;
        v40 = v37 + 136 * v39;
        *(v40 + 32) = v51;
        v41 = v52;
        v42 = v53;
        v43 = v55;
        *(v40 + 80) = v54;
        *(v40 + 96) = v43;
        *(v40 + 48) = v41;
        *(v40 + 64) = v42;
        v44 = v56;
        v45 = v57;
        v46 = v58;
        *(v40 + 160) = v59;
        *(v40 + 128) = v45;
        *(v40 + 144) = v46;
        *(v40 + 112) = v44;
        *a1 = v37;
      }

      return result;
    }
  }

  else
  {
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BCA80;
    *(v23 + 32) = v9;
    v24 = 1;
  }

  v25 = 0;
  v26 = *v4;
  v27 = *(*v4 + 16);
  v28 = *v4 + 56;
  while (1)
  {
    if (v27)
    {
      v29 = *(v23 + 32 + 8 * v25);
      v30 = *(v26 + 40);
      v31 = sub_1B57E4();
      v32 = -1 << *(v26 + 32);
      v33 = v31 & ~v32;
      if ((*(v28 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        break;
      }
    }

LABEL_12:
    if (++v25 == v24)
    {
      v36 = 32;
      do
      {
        sub_111CE0(v50, *(v23 + v36));
        v36 += 8;
        --v24;
      }

      while (v24);
      goto LABEL_22;
    }
  }

  v34 = ~v32;
  while (*(*(v26 + 48) + 8 * v33) != v29)
  {
    v33 = (v33 + 1) & v34;
    if (((*(v28 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      goto LABEL_12;
    }
  }
}

BOOL sub_18DA50(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[7];
  v10 = *(a1 + 7);
  v41 = *(a1 + 6);
  v42 = v10;
  v43 = *(a1 + 128);
  v11 = *(a1 + 4);
  v40 = *(a1 + 5);
  v39 = v11;
  v22 = *a2;
  v12 = *(a2 + 8);
  v13 = a2[7];
  v14 = *(a2 + 7);
  v31 = *(a2 + 6);
  v32 = v14;
  v33 = *(a2 + 128);
  v15 = *(a2 + 4);
  v30 = *(a2 + 5);
  v29 = v15;
  sub_2B0C(&qword_2294A8, &qword_1BC540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C00E0;
  v34 = v7;
  v35 = v8;
  v36 = *(a1 + 9);
  *v37 = *(a1 + 25);
  *&v37[15] = *(a1 + 5);
  v38 = v9;
  *(inited + 32) = sub_18DC48(&v34, a3);
  if (sub_2B404(v8 & 1, a4))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  *(inited + 40) = v17;
  *(inited + 48) = v9;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1C00E0;
  v24 = v22;
  v25 = v12;
  v26 = *(a2 + 9);
  *v27 = *(a2 + 25);
  *&v27[15] = *(a2 + 5);
  v28 = v13;
  *(v18 + 32) = sub_18DC48(&v24, a3);
  if (sub_2B404(v12 & 1, a4))
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  *(v18 + 40) = v19;
  *(v18 + 48) = v13;
  v20 = sub_18DD00(v18, inited);
  swift_setDeallocating();
  swift_setDeallocating();
  return (v20 & 1) == 0;
}

double sub_18DC48(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (*(a1 + 112) != 2 && *(a2 + 16))
  {
    v3 = *(a1 + 104);
    v4 = *(a2 + 40);
    v6 = sub_1B57E4();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      result = 0.0;
      while (*(*(a2 + 48) + 8 * v8) != v3)
      {
        v8 = (v8 + 1) & v9;
        if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          return result;
        }
      }

      return 1.0;
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_18DD00(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a2 + 32 + 8 * v2);
    v6 = *(result + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_18DD80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 16))
  {
    v6 = result;
    result = sub_43124(a2);
    if (v7)
    {
      v8 = *(a3 + 56);
      v9 = *(v8 + 8 * result);
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = *(v8 + 8 * result);

        for (i = 0; i != v10; ++i)
        {
          if (i >= *(v9 + 16))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            result = sub_1B5784();
            __break(1u);
            return result;
          }

          v14 = *(v9 + 8 * i + 32);
          v15 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *a4;
          v17 = v42;
          *a4 = 0x8000000000000000;
          v19 = sub_43124(v6);
          v20 = *(v17 + 16);
          v21 = (v18 & 1) == 0;
          v22 = v20 + v21;
          if (__OFADD__(v20, v21))
          {
            goto LABEL_28;
          }

          v23 = v18;
          if (*(v17 + 24) >= v22)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_187930();
              v17 = v42;
            }
          }

          else
          {
            sub_1825E8(v22, isUniquelyReferenced_nonNull_native);
            v17 = v42;
            v24 = sub_43124(v6);
            if ((v23 & 1) != (v25 & 1))
            {
              goto LABEL_30;
            }

            v19 = v24;
          }

          v26 = *a4;
          *a4 = v17;

          v27 = *a4;
          if ((v23 & 1) == 0)
          {
            sub_15C8E0(v19, v6, _swiftEmptySetSingleton, *a4);
          }

          v28 = *(v27 + 56) + 8 * v19;
          sub_111CE0(&v42, v14);
          v29 = *a4;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          v42 = *a4;
          v31 = v42;
          *a4 = 0x8000000000000000;
          v33 = sub_43124(v14);
          v34 = *(v31 + 16);
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_29;
          }

          v37 = v32;
          if (*(v31 + 24) >= v36)
          {
            if ((v30 & 1) == 0)
            {
              sub_187930();
              v31 = v42;
            }
          }

          else
          {
            sub_1825E8(v36, v30);
            v31 = v42;
            v38 = sub_43124(v14);
            if ((v37 & 1) != (v39 & 1))
            {
              goto LABEL_30;
            }

            v33 = v38;
          }

          v40 = *a4;
          *a4 = v31;

          v41 = *a4;
          if ((v37 & 1) == 0)
          {
            sub_15C8E0(v33, v14, _swiftEmptySetSingleton, *a4);
          }

          v13 = *(v41 + 56) + 8 * v33;
          sub_111CE0(&v42, v6);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (*(v6 + 16) && (v7 = *(v6 + 40), result = sub_1B57E4(), v9 = -1 << *(v6 + 32), v10 = result & ~v9, ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    while (*(*(v6 + 48) + 8 * v10) != a1)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    swift_beginAccess();
    sub_111CE0(&v22, a1);
    result = swift_endAccess();
    if (*(a3 + 16))
    {
      result = sub_43124(a1);
      if (v12)
      {
        v13 = *(*(a3 + 56) + 8 * result);
        v14 = 1 << *(v13 + 32);
        v15 = -1;
        if (v14 < 64)
        {
          v15 = ~(-1 << v14);
        }

        v16 = v15 & *(v13 + 56);
        v17 = (v14 + 63) >> 6;
        v18 = *(*(a3 + 56) + 8 * result);
        result = swift_bridgeObjectRetain_n();
        for (i = 0; v16; result = sub_18E018(*(*(v13 + 48) + ((v20 << 9) | (8 * v21))), a2, a3))
        {
          v20 = i;
LABEL_16:
          v21 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
        }

        while (1)
        {
          v20 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v20 >= v17)
          {
          }

          v16 = *(v13 + 56 + 8 * v20);
          ++i;
          if (v16)
          {
            i = v20;
            goto LABEL_16;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

BOOL sub_18E1E4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v19[0] = *a1;
  v19[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v19[2] = a1[2];
  v19[3] = v3;
  v6 = a2[1];
  v15 = *a2;
  v16 = v6;
  v7 = a2[3];
  v17 = a2[2];
  v18 = v7;
  v21 = v5;
  v22 = v4;
  v8 = a1[3];
  v23 = a1[2];
  v24 = v8;
  sub_42BA4(v19, v20);
  swift_getAtKeyPath();
  v20[0] = v21;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  sub_43FF4(v20);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  sub_42BA4(&v15, &v21);
  swift_getAtKeyPath();
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  sub_43FF4(&v21);
  if (v25 == v14)
  {
    return *&v19[0] < v15;
  }

  else
  {
    return v14 < v25;
  }
}

void *sub_18E2EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1928F8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_18E388@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v5 = *(a1 + 9);
  v12 = *(a1 + 7);
  v4 = v12;
  v13 = v5;
  v14 = a1[11];
  v6 = v14;
  v8 = *(a1 + 3);
  v11[0] = *(a1 + 1);
  v7 = v11[0];
  v11[1] = v8;
  v11[2] = v3;
  *(a2 + 40) = v3;
  *(a2 + 56) = v4;
  *(a2 + 72) = v5;
  *(a2 + 88) = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v8;
  *a2 = v2;
  return sub_5EDD8(v11, v10);
}

uint64_t sub_18E3FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    for (i = a2 + 32; ; i += 136)
    {
      v9 = *(i + 80);
      v10 = *(i + 112);
      v40 = *(i + 96);
      v41 = v10;
      v11 = *(i + 16);
      v12 = *(i + 48);
      v36 = *(i + 32);
      v37 = v12;
      v13 = *(i + 48);
      v14 = *(i + 80);
      v38 = *(i + 64);
      v39 = v14;
      v15 = *(i + 16);
      v35[0] = *i;
      v35[1] = v15;
      v16 = *(i + 112);
      v32 = v40;
      v33 = v16;
      v28 = v36;
      v29 = v13;
      v30 = v38;
      v31 = v9;
      v42 = *(i + 128);
      v34 = *(i + 128);
      v26 = v35[0];
      v27 = v11;
      sub_429F8(v35, &v17);
      sub_18D6F8(&v43, &v26, a3, a4);
      if (v4)
      {
        break;
      }

      v23 = v32;
      v24 = v33;
      v25 = v34;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      v22 = v31;
      v17 = v26;
      v18 = v27;
      sub_5C740(&v17);
      if (!--v5)
      {
        return v43;
      }
    }

    v23 = v32;
    v24 = v33;
    v25 = v34;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v17 = v26;
    v18 = v27;
    sub_5C740(&v17);
  }

  return result;
}

uint64_t sub_18E54C(char *__dst, char *__src, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 136;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 136;
  if (v11 >= v13)
  {
    v40 = 136 * v13;
    if (a4 != __src || &__src[v40] <= a4)
    {
      memmove(a4, __src, 136 * v13);
    }

    v15 = &v6[v40];
    if (v12 >= 136 && v8 > v9)
    {
      v65 = v9;
      v66 = v6;
LABEL_28:
      v41 = v8 - 136;
      v7 -= 136;
      v42 = v15;
      do
      {
        v15 = v42;
        v43 = v7 + 136;
        v78 = *(v42 - 136);
        v44 = *(v42 - 120);
        v45 = *(v42 - 104);
        v46 = *(v42 - 72);
        v81 = *(v42 - 88);
        v82 = v46;
        v79 = v44;
        v80 = v45;
        v47 = *(v42 - 56);
        v48 = *(v42 - 40);
        v49 = *(v42 - 24);
        v86 = *(v42 - 8);
        v84 = v48;
        v85 = v49;
        v83 = v47;
        v50 = *(v8 - 88);
        v89 = *(v8 - 104);
        v90 = v50;
        v51 = *(v8 - 120);
        v87 = *v41;
        v88 = v51;
        v95 = *(v8 - 8);
        v52 = *(v8 - 24);
        v93 = *(v8 - 40);
        v94 = v52;
        v53 = *(v8 - 56);
        v91 = *(v8 - 72);
        v92 = v53;
        sub_2B0C(&qword_2294A8, &qword_1BC540);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1C00E0;
        v75 = v84;
        v76 = v85;
        v77 = v86;
        v71 = v80;
        v72 = v81;
        v73 = v82;
        v74 = v83;
        v69 = v78;
        v70 = v79;
        *(v54 + 32) = sub_18DC48(&v69, a5);
        v55 = BYTE8(v78);
        v56 = *(&v81 + 1);
        sub_429F8(&v78, &v69);
        sub_429F8(&v87, &v69);
        if (sub_2B404(v55, a6))
        {
          v57 = 1.0;
        }

        else
        {
          v57 = 0.0;
        }

        *(v54 + 40) = v57;
        *(v54 + 48) = v56;
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1C00E0;
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v71 = v89;
        v72 = v90;
        v73 = v91;
        v74 = v92;
        v69 = v87;
        v70 = v88;
        *(v58 + 32) = sub_18DC48(&v69, a5);
        v59 = *(&v90 + 1);
        if (sub_2B404(SBYTE8(v87), a6))
        {
          v60 = 1.0;
        }

        else
        {
          v60 = 0.0;
        }

        *(v58 + 40) = v60;
        *(v58 + 48) = v59;
        v61 = sub_18DD00(v58, v54);
        swift_setDeallocating();
        swift_deallocClassInstance();
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_5C740(&v87);
        sub_5C740(&v78);
        if ((v61 & 1) == 0)
        {
          if (v43 < v8 || v7 >= v8)
          {
            memmove(v7, v8 - 136, 0x88uLL);
            v62 = v65;
          }

          else
          {
            v62 = v65;
            if (v43 != v8)
            {
              memmove(v7, v8 - 136, 0x88uLL);
            }
          }

          v6 = v66;
          if (v15 <= v66 || (v8 -= 136, v41 <= v62))
          {
            v8 = v41;
            goto LABEL_51;
          }

          goto LABEL_28;
        }

        v42 = v15 - 136;
        if (v43 < v15 || v7 >= v15 || v43 != v15)
        {
          memmove(v7, v15 - 136, 0x88uLL);
        }

        v6 = v66;
        v7 -= 136;
      }

      while (v42 > v66);
      v15 -= 136;
    }
  }

  else
  {
    v14 = 136 * v11;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v6[v14];
    if (v10 >= 136 && v8 < v7)
    {
      while (1)
      {
        v16 = v9;
        v78 = *v8;
        v17 = *(v8 + 1);
        v18 = *(v8 + 2);
        v19 = *(v8 + 4);
        v81 = *(v8 + 3);
        v82 = v19;
        v79 = v17;
        v80 = v18;
        v20 = *(v8 + 5);
        v21 = *(v8 + 6);
        v22 = *(v8 + 7);
        v86 = v8[128];
        v84 = v21;
        v85 = v22;
        v83 = v20;
        v87 = *v6;
        v23 = *(v6 + 1);
        v24 = *(v6 + 2);
        v25 = *(v6 + 4);
        v90 = *(v6 + 3);
        v91 = v25;
        v88 = v23;
        v89 = v24;
        v26 = *(v6 + 5);
        v27 = *(v6 + 6);
        v28 = *(v6 + 7);
        v95 = v6[128];
        v93 = v27;
        v94 = v28;
        v92 = v26;
        sub_2B0C(&qword_2294A8, &qword_1BC540);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1C00E0;
        v75 = v84;
        v76 = v85;
        v77 = v86;
        v71 = v80;
        v72 = v81;
        v73 = v82;
        v74 = v83;
        v69 = v78;
        v70 = v79;
        *(v29 + 32) = sub_18DC48(&v69, a5);
        v30 = BYTE8(v78);
        v31 = *(&v81 + 1);
        sub_429F8(&v78, &v69);
        sub_429F8(&v87, &v69);
        v32 = (sub_2B404(v30, a6) & 1) != 0 ? 1.0 : 0.0;
        *(v29 + 40) = v32;
        *(v29 + 48) = v31;
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1C00E0;
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v71 = v89;
        v72 = v90;
        v73 = v91;
        v74 = v92;
        v69 = v87;
        v70 = v88;
        *(v33 + 32) = sub_18DC48(&v69, a5);
        v34 = *(&v90 + 1);
        v35 = (sub_2B404(SBYTE8(v87), a6) & 1) != 0 ? 1.0 : 0.0;
        *(v33 + 40) = v35;
        *(v33 + 48) = v34;
        v36 = sub_18DD00(v33, v29);
        swift_setDeallocating();
        swift_deallocClassInstance();
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_5C740(&v87);
        sub_5C740(&v78);
        if ((v36 & 1) == 0)
        {
          break;
        }

        v37 = v6;
        v38 = v16;
        v39 = v16 == v6;
        v6 += 136;
        if (!v39)
        {
          goto LABEL_18;
        }

LABEL_19:
        v9 = v38 + 136;
        if (v6 >= v15 || v8 >= v7)
        {
          goto LABEL_21;
        }
      }

      v37 = v8;
      v38 = v16;
      v39 = v16 == v8;
      v8 += 136;
      if (v39)
      {
        goto LABEL_19;
      }

LABEL_18:
      memmove(v38, v37, 0x88uLL);
      goto LABEL_19;
    }

LABEL_21:
    v8 = v9;
  }

LABEL_51:
  v63 = 136 * ((v15 - v6) / 136);
  if (v8 != v6 || v8 >= &v6[v63])
  {
    memmove(v8, v6, v63);
  }

  return 1;
}

uint64_t sub_18EBB4(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a1;

  v23 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v23 = sub_52E40(v23);
  }

  v20 = v7;
  *v7 = v23;
  v10 = v23 + 16;
  v9 = *(v23 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v23;
LABEL_11:

    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v23[16 * v9];
      v7 = *v12;
      v13 = v10;
      v14 = &v10[16 * v9];
      v15 = *(v14 + 1);
      v16 = (v11 + 136 * *v14);
      v24 = (v11 + 136 * v15);
      v25 = (v11 + 136 * *v12);

      sub_18E54C(v25, v16, v24, a2, a4, a5);
      if (v26)
      {

        *v20 = v23;

        goto LABEL_11;
      }

      if (v15 < v7)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v13;
      if (v9 - 2 >= *v13)
      {
        goto LABEL_13;
      }

      *v12 = v7;
      *(v12 + 1) = v15;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v10 = v13;
      v9 = v17 - 1;
      memmove(v14, v14 + 16, 16 * v18);
      *v13 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v23;

    __break(1u);
  }

  return result;
}

uint64_t sub_18ED98(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v244 = _swiftEmptyArrayStorage;
  v8 = a3[1];
  if (v8 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v162 = a5;
    v157 = a6;
    while (1)
    {
      v154 = v10;
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        ++v9;
        goto LABEL_18;
      }

      v13 = *a3;
      v14 = *a3 + 136 * v12;
      v226 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v230 = *(v14 + 64);
      v229 = v17;
      v228 = v16;
      v227 = v15;
      v18 = *(v14 + 80);
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v234 = *(v14 + 128);
      v233 = v20;
      v232 = v19;
      v231 = v18;
      v222 = *(v14 + 80);
      v223 = *(v14 + 96);
      v224 = *(v14 + 112);
      v225 = *(v14 + 128);
      v218 = *(v14 + 16);
      v219 = *(v14 + 32);
      v220 = *(v14 + 48);
      v221 = *(v14 + 64);
      v217 = *v14;
      v21 = v13 + 136 * v9;
      v235 = *v21;
      v22 = *(v21 + 16);
      v23 = *(v21 + 32);
      v24 = *(v21 + 64);
      v238 = *(v21 + 48);
      v239 = v24;
      v236 = v22;
      v237 = v23;
      v25 = *(v21 + 80);
      v26 = *(v21 + 96);
      v27 = *(v21 + 112);
      v243 = *(v21 + 128);
      v241 = v26;
      v242 = v27;
      v240 = v25;
      v28 = *(v21 + 112);
      v214 = *(v21 + 96);
      v215 = v28;
      v216 = *(v21 + 128);
      v29 = *(v21 + 48);
      v210 = *(v21 + 32);
      v211 = v29;
      v30 = *(v21 + 80);
      v212 = *(v21 + 64);
      v213 = v30;
      v31 = *(v21 + 16);
      v208 = *v21;
      v209 = v31;
      sub_429F8(&v226, &v199);
      sub_429F8(&v235, &v199);
      v158 = sub_18DA50(&v217, &v208, a5, a6);
      if (v161)
      {
        break;
      }

      v196 = v214;
      v197 = v215;
      v198 = v216;
      v192 = v210;
      v193 = v211;
      v194 = v212;
      v195 = v213;
      v190 = v208;
      v191 = v209;
      sub_5C740(&v190);
      v205 = v223;
      v206 = v224;
      v207 = v225;
      v201 = v219;
      v202 = v220;
      v203 = v221;
      v204 = v222;
      v199 = v217;
      v200 = v218;
      sub_5C740(&v199);
      v32 = v9 + 2;
      if (v9 + 2 >= v8)
      {
        v9 += 2;
        if (!v158)
        {
          goto LABEL_18;
        }

        goto LABEL_42;
      }

      v33 = v13 + 136 * v9 + 272;
      while (1)
      {
        v9 = v32;
        v172 = *v33;
        v34 = *(v33 + 16);
        v35 = *(v33 + 32);
        v36 = *(v33 + 64);
        v175 = *(v33 + 48);
        v176 = v36;
        v173 = v34;
        v174 = v35;
        v37 = *(v33 + 80);
        v38 = *(v33 + 96);
        v39 = *(v33 + 112);
        v180 = *(v33 + 128);
        v178 = v38;
        v179 = v39;
        v177 = v37;
        v181 = *(v33 - 136);
        v40 = *(v33 - 120);
        v41 = *(v33 - 104);
        v42 = *(v33 - 72);
        v184 = *(v33 - 88);
        v185 = v42;
        v182 = v40;
        v183 = v41;
        v43 = *(v33 - 56);
        v44 = *(v33 - 40);
        v45 = *(v33 - 24);
        v189 = *(v33 - 8);
        v187 = v44;
        v188 = v45;
        v186 = v43;
        sub_2B0C(&qword_2294A8, &qword_1BC540);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1C00E0;
        v169 = v178;
        v170 = v179;
        v171 = v180;
        v165 = v174;
        v166 = v175;
        v167 = v176;
        v168 = v177;
        v163 = v172;
        v164 = v173;
        *(v46 + 32) = sub_18DC48(&v163, a5);
        v47 = BYTE8(v172);
        v48 = *(&v175 + 1);
        sub_429F8(&v172, &v163);
        sub_429F8(&v181, &v163);
        v49 = (sub_2B404(v47, a6) & 1) != 0 ? 1.0 : 0.0;
        *(v46 + 40) = v49;
        *(v46 + 48) = v48;
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1C00E0;
        v169 = v187;
        v170 = v188;
        v171 = v189;
        v165 = v183;
        v166 = v184;
        v167 = v185;
        v168 = v186;
        v163 = v181;
        v164 = v182;
        *(v50 + 32) = sub_18DC48(&v163, a5);
        v51 = *(&v184 + 1);
        v52 = (sub_2B404(SBYTE8(v181), a6) & 1) != 0 ? 1.0 : 0.0;
        *(v50 + 40) = v52;
        *(v50 + 48) = v51;
        v53 = sub_18DD00(v50, v46) & 1;
        swift_setDeallocating();
        swift_deallocClassInstance();
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_5C740(&v181);
        sub_5C740(&v172);
        if (v158 == v53)
        {
          break;
        }

        v32 = v9 + 1;
        v33 += 136;
        a5 = v162;
        if (v8 == v9 + 1)
        {
          v12 = v9;
          v9 = v8;
          if (!v158)
          {
            goto LABEL_18;
          }

LABEL_42:
          if (v9 >= v11)
          {
            if (v11 <= v12)
            {
              v86 = 136 * v9 - 136;
              v87 = 136 * v11;
              v88 = v9;
              v89 = v11;
              while (1)
              {
                if (v89 != --v88)
                {
                  v90 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_134;
                  }

                  v91 = v90 + v86;
                  v186 = *(v90 + v87 + 80);
                  v187 = *(v90 + v87 + 96);
                  v188 = *(v90 + v87 + 112);
                  v189 = *(v90 + v87 + 128);
                  v182 = *(v90 + v87 + 16);
                  v183 = *(v90 + v87 + 32);
                  v184 = *(v90 + v87 + 48);
                  v185 = *(v90 + v87 + 64);
                  v181 = *(v90 + v87);
                  memmove((v90 + v87), (v90 + v86), 0x88uLL);
                  *(v91 + 80) = v186;
                  *(v91 + 96) = v187;
                  *(v91 + 112) = v188;
                  *(v91 + 128) = v189;
                  *(v91 + 16) = v182;
                  *(v91 + 32) = v183;
                  *(v91 + 48) = v184;
                  *(v91 + 64) = v185;
                  *v91 = v181;
                }

                ++v89;
                v86 -= 136;
                v87 += 136;
                if (v89 >= v88)
                {
                  goto LABEL_18;
                }
              }
            }

            goto LABEL_18;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_133:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_134:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_135;
        }
      }

      v12 = v9 - 1;
      a5 = v162;
      if (v158)
      {
        goto LABEL_42;
      }

LABEL_18:
      v10 = v154;
      v54 = a3[1];
      if (v9 < v54)
      {
        if (__OFSUB__(v9, v11))
        {
          goto LABEL_128;
        }

        if (v9 - v11 < a4)
        {
          v55 = v11 + a4;
          if (__OFADD__(v11, a4))
          {
            goto LABEL_129;
          }

          if (v55 >= v54)
          {
            v55 = a3[1];
          }

          if (v55 < v11)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v9 != v55)
          {
            v56 = *a3;
            v57 = *a3 + 136 * v9;
            v147 = v11;
            v58 = v11 - v9 + 1;
            v150 = v55;
            do
            {
              v159 = v9;
              v59 = v58;
              v152 = v57;
              for (i = v57; ; i -= 136)
              {
                v226 = *i;
                v61 = *(i + 16);
                v62 = *(i + 32);
                v63 = *(i + 48);
                v230 = *(i + 64);
                v229 = v63;
                v228 = v62;
                v227 = v61;
                v64 = *(i + 80);
                v65 = *(i + 96);
                v66 = *(i + 112);
                v234 = *(i + 128);
                v233 = v66;
                v232 = v65;
                v231 = v64;
                v235 = *(i - 136);
                v67 = *(i - 120);
                v68 = *(i - 104);
                v69 = *(i - 72);
                v238 = *(i - 88);
                v239 = v69;
                v236 = v67;
                v237 = v68;
                v70 = *(i - 56);
                v71 = *(i - 40);
                v72 = *(i - 24);
                v243 = *(i - 8);
                v241 = v71;
                v242 = v72;
                v240 = v70;
                sub_2B0C(&qword_2294A8, &qword_1BC540);
                v73 = swift_allocObject();
                *(v73 + 16) = xmmword_1C00E0;
                v223 = v232;
                v224 = v233;
                v225 = v234;
                v219 = v228;
                v220 = v229;
                v222 = v231;
                v221 = v230;
                v217 = v226;
                v218 = v227;
                *(v73 + 32) = sub_18DC48(&v217, a5);
                v74 = BYTE8(v226);
                v75 = *(&v229 + 1);
                sub_429F8(&v226, &v217);
                sub_429F8(&v235, &v217);
                v76 = (sub_2B404(v74, a6) & 1) != 0 ? 1.0 : 0.0;
                *(v73 + 40) = v76;
                *(v73 + 48) = v75;
                v77 = swift_allocObject();
                *(v77 + 16) = xmmword_1C00E0;
                v223 = v241;
                v224 = v242;
                v225 = v243;
                v219 = v237;
                v220 = v238;
                v222 = v240;
                v221 = v239;
                v217 = v235;
                v218 = v236;
                *(v77 + 32) = sub_18DC48(&v217, a5);
                v78 = *(&v238 + 1);
                v79 = (sub_2B404(SBYTE8(v235), a6) & 1) != 0 ? 1.0 : 0.0;
                *(v77 + 40) = v79;
                *(v77 + 48) = v78;
                v80 = sub_18DD00(v77, v73);
                swift_setDeallocating();
                swift_deallocClassInstance();
                swift_setDeallocating();
                swift_deallocClassInstance();
                sub_5C740(&v235);
                sub_5C740(&v226);
                if (v80)
                {
                  break;
                }

                if (!v56)
                {
                  goto LABEL_132;
                }

                v81 = i - 136;
                v222 = *(i + 80);
                v223 = *(i + 96);
                v224 = *(i + 112);
                v225 = *(i + 128);
                v218 = *(i + 16);
                v219 = *(i + 32);
                v220 = *(i + 48);
                v221 = *(i + 64);
                v217 = *i;
                v82 = *(i - 56);
                *(i + 64) = *(i - 72);
                *(i + 80) = v82;
                v83 = *(i - 24);
                *(i + 96) = *(i - 40);
                *(i + 112) = v83;
                *(i + 128) = *(i - 8);
                v84 = *(i - 88);
                *(i + 32) = *(i - 104);
                *(i + 48) = v84;
                v85 = *(i - 120);
                *i = *(i - 136);
                *(i + 16) = v85;
                *(v81 + 64) = v221;
                *(v81 + 80) = v222;
                *(v81 + 96) = v223;
                *(v81 + 112) = v224;
                *(v81 + 128) = v225;
                *(v81 + 16) = v218;
                *(v81 + 32) = v219;
                *(v81 + 48) = v220;
                *v81 = v217;
                if (!v59)
                {
                  break;
                }

                ++v59;
              }

              v9 = v159 + 1;
              v57 = v152 + 136;
              --v58;
            }

            while (v159 + 1 != v150);
            v9 = v150;
            v10 = v154;
            v11 = v147;
          }
        }
      }

      if (v9 < v11)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_32F04(0, *(v10 + 2) + 1, 1, v10);
      }

      v93 = *(v10 + 2);
      v92 = *(v10 + 3);
      v94 = v93 + 1;
      if (v93 >= v92 >> 1)
      {
        v10 = sub_32F04((v92 > 1), v93 + 1, 1, v10);
      }

      *(v10 + 2) = v94;
      v95 = v10 + 32;
      v96 = &v10[16 * v93 + 32];
      *v96 = v11;
      *(v96 + 1) = v9;
      v244 = v10;
      v153 = *a1;
      if (!*a1)
      {
LABEL_135:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        __break(1u);
        goto LABEL_136;
      }

      if (v93)
      {
        v160 = v9;
        v151 = v10 + 32;
        v155 = v10;
        while (1)
        {
          v97 = v94 - 1;
          a5 = v162;
          if (v94 >= 4)
          {
            break;
          }

          if (v94 == 3)
          {
            v98 = *(v10 + 4);
            v99 = *(v10 + 5);
            v108 = __OFSUB__(v99, v98);
            v100 = v99 - v98;
            v101 = v108;
LABEL_71:
            if (v101)
            {
              goto LABEL_118;
            }

            v114 = &v10[16 * v94];
            v116 = *v114;
            v115 = *(v114 + 1);
            v117 = __OFSUB__(v115, v116);
            v118 = v115 - v116;
            v119 = v117;
            if (v117)
            {
              goto LABEL_121;
            }

            v120 = &v95[16 * v97];
            v122 = *v120;
            v121 = *(v120 + 1);
            v108 = __OFSUB__(v121, v122);
            v123 = v121 - v122;
            if (v108)
            {
              goto LABEL_124;
            }

            if (__OFADD__(v118, v123))
            {
              goto LABEL_125;
            }

            if (v118 + v123 >= v100)
            {
              if (v100 < v123)
              {
                v97 = v94 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          v124 = &v10[16 * v94];
          v126 = *v124;
          v125 = *(v124 + 1);
          v108 = __OFSUB__(v125, v126);
          v118 = v125 - v126;
          v119 = v108;
LABEL_85:
          if (v119)
          {
            goto LABEL_120;
          }

          v127 = &v95[16 * v97];
          v129 = *v127;
          v128 = *(v127 + 1);
          v108 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v108)
          {
            goto LABEL_123;
          }

          if (v130 < v118)
          {
            v244 = v10;
            goto LABEL_101;
          }

LABEL_92:
          if (v97 - 1 >= v94)
          {
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
            goto LABEL_130;
          }

          v135 = *a3;
          if (!*a3)
          {
            goto LABEL_133;
          }

          v136 = &v95[16 * v97 - 16];
          v137 = *v136;
          v138 = v97;
          v139 = &v95[16 * v97];
          v140 = *(v139 + 1);
          v141 = (v135 + 136 * *v136);
          v142 = (v135 + 136 * *v139);
          v143 = (v135 + 136 * v140);

          sub_18E54C(v141, v142, v143, v153, v162, v157);
          if (v161)
          {

            v244 = v155;

            goto LABEL_108;
          }

          if (v140 < v137)
          {
            goto LABEL_113;
          }

          v161 = 0;
          v10 = v155;
          v144 = *(v155 + 2);
          if (v138 > v144)
          {
            goto LABEL_114;
          }

          *v136 = v137;
          *(v136 + 1) = v140;
          if (v138 >= v144)
          {
            goto LABEL_115;
          }

          v94 = v144 - 1;
          memmove(v139, v139 + 16, 16 * (v144 - 1 - v138));
          *(v155 + 2) = v144 - 1;
          a6 = v157;
          v9 = v160;
          v95 = v151;
          if (v144 <= 2)
          {
            v244 = v155;
            goto LABEL_100;
          }
        }

        v102 = &v95[16 * v94];
        v103 = *(v102 - 8);
        v104 = *(v102 - 7);
        v108 = __OFSUB__(v104, v103);
        v105 = v104 - v103;
        if (v108)
        {
          goto LABEL_116;
        }

        v107 = *(v102 - 6);
        v106 = *(v102 - 5);
        v108 = __OFSUB__(v106, v107);
        v100 = v106 - v107;
        v101 = v108;
        if (v108)
        {
          goto LABEL_117;
        }

        v109 = &v10[16 * v94];
        v111 = *v109;
        v110 = *(v109 + 1);
        v108 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v108)
        {
          goto LABEL_119;
        }

        v108 = __OFADD__(v100, v112);
        v113 = v100 + v112;
        if (v108)
        {
          goto LABEL_122;
        }

        if (v113 >= v105)
        {
          v131 = &v95[16 * v97];
          v133 = *v131;
          v132 = *(v131 + 1);
          v108 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v108)
          {
            goto LABEL_126;
          }

          if (v100 < v134)
          {
            v97 = v94 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_71;
      }

LABEL_100:
      a5 = v162;
LABEL_101:
      v8 = a3[1];
      if (v9 >= v8)
      {
        goto LABEL_105;
      }
    }

    v196 = v214;
    v197 = v215;
    v198 = v216;
    v192 = v210;
    v193 = v211;
    v194 = v212;
    v195 = v213;
    v190 = v208;
    v191 = v209;
    sub_5C740(&v190);
    v205 = v223;
    v206 = v224;
    v207 = v225;
    v201 = v219;
    v202 = v220;
    v203 = v221;
    v204 = v222;
    v199 = v217;
    v200 = v218;
    sub_5C740(&v199);
    goto LABEL_108;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
LABEL_105:
  v145 = *a1;
  if (*a1)
  {

    sub_18EBB4(&v244, v145, a3, a5, a6);
    if (!v161)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

LABEL_108:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_136:
  swift_bridgeObjectRelease_n();
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_18FB88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = *a4 + 136 * a3;
    v10 = result - a3 + 1;
LABEL_5:
    v38 = v9;
    v39 = a3;
    v37 = v10;
    while (1)
    {
      v49 = *v9;
      v11 = *(v9 + 16);
      v12 = *(v9 + 32);
      v13 = *(v9 + 64);
      v52 = *(v9 + 48);
      v53 = v13;
      v50 = v11;
      v51 = v12;
      v14 = *(v9 + 80);
      v15 = *(v9 + 96);
      v16 = *(v9 + 112);
      v57 = *(v9 + 128);
      v55 = v15;
      v56 = v16;
      v54 = v14;
      v58 = *(v9 - 136);
      v17 = *(v9 - 120);
      v18 = *(v9 - 104);
      v19 = *(v9 - 72);
      v61 = *(v9 - 88);
      v62 = v19;
      v59 = v17;
      v60 = v18;
      v20 = *(v9 - 56);
      v21 = *(v9 - 40);
      v22 = *(v9 - 24);
      v66 = *(v9 - 8);
      v64 = v21;
      v65 = v22;
      v63 = v20;
      sub_2B0C(&qword_2294A8, &qword_1BC540);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C00E0;
      v45 = v54;
      v46 = v55;
      v47 = v56;
      v48 = v57;
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v40 = v49;
      v41 = v50;
      *(inited + 32) = sub_18DC48(&v40, a5);
      v24 = BYTE8(v49);
      v25 = *(&v52 + 1);
      sub_429F8(&v49, &v40);
      sub_429F8(&v58, &v40);
      if (sub_2B404(v24, a6))
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }

      *(inited + 40) = v26;
      *(inited + 48) = v25;
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_1C00E0;
      v45 = v63;
      v46 = v64;
      v47 = v65;
      v48 = v66;
      v42 = v60;
      v43 = v61;
      v44 = v62;
      v40 = v58;
      v41 = v59;
      *(v27 + 32) = sub_18DC48(&v40, a5);
      v28 = *(&v61 + 1);
      if (sub_2B404(SBYTE8(v58), a6))
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      *(v27 + 40) = v29;
      *(v27 + 48) = v28;
      v30 = sub_18DD00(v27, inited);
      swift_setDeallocating();
      swift_setDeallocating();
      sub_5C740(&v58);
      result = sub_5C740(&v49);
      if (v30)
      {
LABEL_4:
        a3 = v39 + 1;
        v9 = v38 + 136;
        v10 = v37 - 1;
        if (v39 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v31 = v9 - 136;
      v45 = *(v9 + 80);
      v46 = *(v9 + 96);
      v47 = *(v9 + 112);
      v48 = *(v9 + 128);
      v41 = *(v9 + 16);
      v42 = *(v9 + 32);
      v43 = *(v9 + 48);
      v44 = *(v9 + 64);
      v40 = *v9;
      v32 = *(v9 - 56);
      *(v9 + 64) = *(v9 - 72);
      *(v9 + 80) = v32;
      v33 = *(v9 - 24);
      *(v9 + 96) = *(v9 - 40);
      *(v9 + 112) = v33;
      *(v9 + 128) = *(v9 - 8);
      v34 = *(v9 - 88);
      *(v9 + 32) = *(v9 - 104);
      *(v9 + 48) = v34;
      v35 = *(v9 - 120);
      *v9 = *(v9 - 136);
      *(v9 + 16) = v35;
      *(v31 + 64) = v44;
      *(v31 + 80) = v45;
      *(v31 + 96) = v46;
      *(v31 + 112) = v47;
      *(v31 + 128) = v48;
      *(v31 + 16) = v41;
      *(v31 + 32) = v42;
      *(v31 + 48) = v43;
      *v31 = v40;
      if (!v10)
      {
        goto LABEL_4;
      }

      ++v10;
      v9 -= 136;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_18FECC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  result = sub_1B5584(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v10 = sub_1B4B34();
        v10[2] = v9;
      }

      v11[0] = (v10 + 4);
      v11[1] = v9;

      sub_18ED98(v11, v12, a1, v8, a2, a3);

      v10[2] = 0;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_18FB88(0, v6, 1, a1, a2, a3);
  }

  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_190070(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_56B58(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = (v6 + 32);
  v9[1] = v7;

  sub_18FECC(v9, a2, a3);

  *a1 = v6;
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_19014C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a1 + 56;
  v9 = 1 << *(*a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(*a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  while (v11)
  {
    v15 = v11;
LABEL_10:
    v11 = (v15 - 1) & v15;
    if (*(a2 + 16))
    {
      v17 = sub_43124(*(*(v7 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v15))))));
      if (v18)
      {
        v19 = *(a2 + 56) + 136 * v17;
        v64 = *v19;
        v20 = *(v19 + 64);
        v22 = *(v19 + 16);
        v21 = *(v19 + 32);
        v67 = *(v19 + 48);
        v68 = v20;
        v65 = v22;
        v66 = v21;
        v24 = *(v19 + 96);
        v23 = *(v19 + 112);
        v25 = *(v19 + 80);
        v72 = *(v19 + 128);
        v70 = v24;
        v71 = v23;
        v69 = v25;
        sub_429F8(&v64, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_33358(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v62 = v27 + 1;
          v36 = v14;
          v37 = *(v14 + 2);
          v38 = sub_33358((v26 > 1), v27 + 1, 1, v36);
          v27 = v37;
          v28 = v62;
          v14 = v38;
        }

        *(v14 + 2) = v28;
        v29 = &v14[136 * v27];
        *(v29 + 2) = v64;
        v30 = v65;
        v31 = v66;
        v32 = v68;
        *(v29 + 5) = v67;
        *(v29 + 6) = v32;
        *(v29 + 3) = v30;
        *(v29 + 4) = v31;
        v33 = v69;
        v34 = v70;
        v35 = v71;
        v29[160] = v72;
        *(v29 + 8) = v34;
        *(v29 + 9) = v35;
        *(v29 + 7) = v33;
      }
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v16 >= v12)
    {
      break;
    }

    v15 = *(v8 + 8 * v16);
    ++v13;
    if (v15)
    {
      v13 = v16;
      goto LABEL_10;
    }
  }

  if (*(a3 + 16) && (v39 = sub_3B15C(v7), (v40 & 1) != 0))
  {
    v41 = *(*(a3 + 56) + 8 * v39);

    if (!*(a4 + 16))
    {
LABEL_24:
      v44 = _swiftEmptySetSingleton;
      goto LABEL_25;
    }
  }

  else
  {
    v41 = _swiftEmptySetSingleton;
    if (!*(a4 + 16))
    {
      goto LABEL_24;
    }
  }

  v42 = sub_3B15C(v7);
  if ((v43 & 1) == 0)
  {
    goto LABEL_24;
  }

  v44 = *(*(a4 + 56) + 8 * v42);

LABEL_25:
  v45 = v73;
  *&v64 = v14;

  sub_190070(&v64, v41, v44);
  if (v45)
  {
LABEL_44:

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v46 = v64;
  v47 = *(v64 + 16);
  if (v47)
  {
    v48 = 0;
    v49 = *(v64 + 40);
    v50 = _swiftEmptyArrayStorage;
LABEL_28:
    v51 = v46 + 136 * v48;
    while (v47 != v48)
    {
      if (v48 >= *(v46 + 16))
      {
        goto LABEL_43;
      }

      ++v48;
      v52 = (v51 + 136);
      v53 = *(v51 + 144);
      v51 += 136;
      if (v53 != 2)
      {
        v73 = v14;
        v54 = *v52;
        v55 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_33008(0, *(v50 + 2) + 1, 1, v50);
        }

        v57 = *(v50 + 2);
        v56 = *(v50 + 3);
        if (v57 >= v56 >> 1)
        {
          v50 = sub_33008((v56 > 1), v57 + 1, 1, v50);
        }

        *(v50 + 2) = v57 + 1;
        *&v50[8 * v57 + 32] = v54;
        v49 = v55;
        v14 = v73;
        goto LABEL_28;
      }
    }

    v58 = *(v50 + 2);
    if (v58)
    {
      v59 = *(v50 + 4);
    }

    else
    {
      v59 = 0;
    }

    v61 = v58 == 0;

    sub_18A23C(v14, v49, v59, v61);
  }

  else
  {
  }
}

uint64_t sub_190570(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 136;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 136;
  if (v9 >= v11)
  {
    v29 = 136 * v11;
    if (a4 != __src || &__src[v29] <= a4)
    {
      memmove(a4, __src, 136 * v11);
    }

    v13 = &v4[v29];
    if (v10 >= 136 && v6 > v7)
    {
LABEL_23:
      v30 = v6 - 136;
      v5 -= 136;
      v31 = v13;
      do
      {
        v13 = v31;
        v32 = v5 + 136;
        v54 = *(v31 - 136);
        v33 = *(v31 - 120);
        v34 = *(v31 - 104);
        v35 = *(v31 - 72);
        v57 = *(v31 - 88);
        v58 = v35;
        v55 = v33;
        v56 = v34;
        v36 = *(v31 - 56);
        v37 = *(v31 - 40);
        v38 = *(v31 - 24);
        v62 = *(v31 - 8);
        v60 = v37;
        v61 = v38;
        v59 = v36;
        v39 = *(v6 - 88);
        v65 = *(v6 - 104);
        v66 = v39;
        v40 = *(v6 - 120);
        v63 = *v30;
        v64 = v40;
        v71 = *(v6 - 8);
        v41 = *(v6 - 24);
        v69 = *(v6 - 40);
        v70 = v41;
        v42 = *(v6 - 56);
        v67 = *(v6 - 72);
        v68 = v42;
        v50 = v54;
        v51 = v55;
        v52 = v56;
        v53 = v57;
        sub_429F8(&v54, &v46);
        sub_429F8(&v63, &v46);
        sub_42BA4(&v54, &v46);
        swift_getAtKeyPath();
        v72 = v50;
        v73 = v51;
        v74 = v52;
        v75 = v53;
        sub_43FF4(&v72);
        v46 = v63;
        v47 = v64;
        v48 = v65;
        v49 = v66;
        sub_42BA4(&v63, &v50);
        swift_getAtKeyPath();
        v76 = v46;
        v77 = v47;
        v78 = v48;
        v79 = v49;
        sub_43FF4(&v76);
        sub_5C740(&v63);
        sub_5C740(&v54);
        v43 = *&v50 < v80;
        if (v80 == *&v50)
        {
          v43 = v54 < v63;
        }

        if (v43)
        {
          if (v32 < v6 || v5 >= v6 || v32 != v6)
          {
            memmove(v5, v6 - 136, 0x88uLL);
          }

          if (v31 <= v4 || (v6 -= 136, v30 <= v7))
          {
            v6 = v30;
            goto LABEL_42;
          }

          goto LABEL_23;
        }

        v31 -= 136;
        if (v32 < v13 || v5 >= v13 || v32 != v13)
        {
          memmove(v5, v13 - 136, 0x88uLL);
        }

        v5 -= 136;
      }

      while (v31 > v4);
      v13 -= 136;
    }
  }

  else
  {
    v12 = 136 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 136)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (1)
        {
          v54 = *v6;
          v14 = *(v6 + 1);
          v15 = *(v6 + 2);
          v16 = *(v6 + 4);
          v57 = *(v6 + 3);
          v58 = v16;
          v55 = v14;
          v56 = v15;
          v17 = *(v6 + 5);
          v18 = *(v6 + 6);
          v19 = *(v6 + 7);
          v62 = v6[128];
          v60 = v18;
          v61 = v19;
          v59 = v17;
          v63 = *v4;
          v20 = *(v4 + 1);
          v21 = *(v4 + 2);
          v22 = *(v4 + 4);
          v66 = *(v4 + 3);
          v67 = v22;
          v64 = v20;
          v65 = v21;
          v23 = *(v4 + 5);
          v24 = *(v4 + 6);
          v25 = *(v4 + 7);
          v71 = v4[128];
          v69 = v24;
          v70 = v25;
          v68 = v23;
          v72 = v54;
          v73 = v55;
          v74 = v56;
          v75 = v57;
          sub_429F8(&v54, &v46);
          sub_429F8(&v63, &v46);
          sub_42BA4(&v54, &v46);
          swift_getAtKeyPath();
          v76 = v72;
          v77 = v73;
          v78 = v74;
          v79 = v75;
          sub_43FF4(&v76);
          v72 = v63;
          v73 = v64;
          v74 = v65;
          v75 = v66;
          sub_42BA4(&v63, &v46);
          swift_getAtKeyPath();
          v46 = v72;
          v47 = v73;
          v48 = v74;
          v49 = v75;
          sub_43FF4(&v46);
          sub_5C740(&v63);
          sub_5C740(&v54);
          v26 = v80 < *&v50;
          if (*&v50 == v80)
          {
            v26 = v54 < v63;
          }

          if (!v26)
          {
            break;
          }

          v27 = v6;
          v28 = v7 == v6;
          v6 += 136;
          if (!v28)
          {
            goto LABEL_14;
          }

LABEL_15:
          v7 += 136;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_17;
          }
        }

        v27 = v4;
        v28 = v7 == v4;
        v4 += 136;
        if (v28)
        {
          goto LABEL_15;
        }

LABEL_14:
        memmove(v7, v27, 0x88uLL);
        goto LABEL_15;
      }

LABEL_17:
      v6 = v7;
    }
  }

LABEL_42:
  v44 = 136 * ((v13 - v4) / 136);
  if (v6 != v4 || v6 >= &v4[v44])
  {
    memmove(v6, v4, v44);
  }

  return 1;
}

uint64_t sub_190A4C(char *a1, char *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = sub_52E40(v22);
  }

  v19 = v5;
  *v5 = v22;
  v7 = (v22 + 16);
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v5 = &v22[16 * v8];
      v11 = *v5;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      __dst = (v9 + 136 * *v5);
      v14 = (v9 + 136 * *v12);
      v15 = (v9 + 136 * v13);

      sub_190570(__dst, v14, v15, a2);
      v4 = v10;

      if (v10)
      {
        *v19 = v22;

        return 1;
      }

      if (v13 < v11)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v5 = v11;
      *(v5 + 1) = v13;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

uint64_t sub_190BF8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  v184 = _swiftEmptyArrayStorage;
  swift_retain_n();
  if (v5 < 1)
  {
LABEL_97:
    v130 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    sub_190A4C(&v184, v130, a3);
    if (!v139)
    {
    }

LABEL_100:
  }

  v132 = a4;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      ++v6;
      goto LABEL_27;
    }

    v10 = *a3;
    v11 = *a3 + 136 * v9;
    v180[0] = *v11;
    v12 = *(v11 + 64);
    v14 = *(v11 + 16);
    v13 = *(v11 + 32);
    v180[3] = *(v11 + 48);
    v180[4] = v12;
    v180[1] = v14;
    v180[2] = v13;
    v16 = *(v11 + 96);
    v15 = *(v11 + 112);
    v17 = *(v11 + 80);
    v181 = *(v11 + 128);
    v180[6] = v16;
    v180[7] = v15;
    v180[5] = v17;
    v18 = v10 + 136 * v8;
    v19 = *(v18 + 80);
    v20 = *(v18 + 96);
    v21 = *(v18 + 112);
    v183 = *(v18 + 128);
    v182[6] = v20;
    v182[7] = v21;
    v182[5] = v19;
    v22 = *(v18 + 16);
    v23 = *(v18 + 32);
    v24 = *(v18 + 64);
    v182[3] = *(v18 + 48);
    v182[4] = v24;
    v182[1] = v22;
    v182[2] = v23;
    v182[0] = *v18;
    sub_429F8(v180, &v163);
    sub_429F8(v182, &v163);
    v25 = sub_18E1E4(v180, v182);
    if (v139)
    {
      sub_5C740(v182);
      sub_5C740(v180);
      goto LABEL_100;
    }

    v26 = v25;
    sub_5C740(v182);
    sub_5C740(v180);
    v27 = (v8 + 2);
    if (v8 + 2 >= v5)
    {
      v6 = v8 + 2;
      if (!v26)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v28 = v10 + 136 * v8 + 272;
    while (1)
    {
      v6 = v27;
      v154 = *v28;
      v29 = *(v28 + 16);
      v30 = *(v28 + 32);
      v31 = *(v28 + 64);
      v157 = *(v28 + 48);
      v158 = v31;
      v155 = v29;
      v156 = v30;
      v32 = *(v28 + 80);
      v33 = *(v28 + 96);
      v34 = *(v28 + 112);
      v162 = *(v28 + 128);
      v160 = v33;
      v161 = v34;
      v159 = v32;
      v163 = *(v28 - 136);
      v35 = *(v28 - 120);
      v36 = *(v28 - 104);
      v37 = *(v28 - 72);
      v166 = *(v28 - 88);
      v167 = v37;
      v164 = v35;
      v165 = v36;
      v38 = *(v28 - 56);
      v39 = *(v28 - 40);
      v40 = *(v28 - 24);
      v171 = *(v28 - 8);
      v169 = v39;
      v170 = v40;
      v168 = v38;
      v172 = v154;
      v173 = v155;
      v174 = v156;
      v175 = v157;
      sub_429F8(&v154, &v140);
      sub_429F8(&v163, &v140);
      sub_42BA4(&v154, &v140);
      swift_getAtKeyPath();
      v176 = v172;
      v177 = v173;
      v178 = v174;
      v179 = v175;
      sub_43FF4(&v176);
      v172 = v163;
      v173 = v164;
      v174 = v165;
      v175 = v166;
      sub_42BA4(&v163, &v140);
      swift_getAtKeyPath();
      v140 = v172;
      v141 = v173;
      v142 = v174;
      v143 = v175;
      sub_43FF4(&v140);
      sub_5C740(&v163);
      sub_5C740(&v154);
      v41 = v154 >= v163;
      if (*&v149 != v153)
      {
        v41 = v153 >= *&v149;
      }

      if (v26 == v41)
      {
        break;
      }

      v27 = (v6 + 1);
      v28 += 136;
      if (v5 == v6 + 1)
      {
        v9 = v6;
        v6 = v5;
        if (!v26)
        {
          goto LABEL_27;
        }

LABEL_19:
        if (v6 >= v8)
        {
          if (v8 <= v9)
          {
            v42 = 136 * v6 - 136;
            v43 = v6;
            v44 = 136 * v8;
            v45 = v43;
            v46 = v8;
            do
            {
              if (v46 != --v43)
              {
                v47 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v48 = v47 + v42;
                v168 = *(v47 + v44 + 80);
                v169 = *(v47 + v44 + 96);
                v170 = *(v47 + v44 + 112);
                v171 = *(v47 + v44 + 128);
                v164 = *(v47 + v44 + 16);
                v165 = *(v47 + v44 + 32);
                v166 = *(v47 + v44 + 48);
                v167 = *(v47 + v44 + 64);
                v163 = *(v47 + v44);
                memmove((v47 + v44), (v47 + v42), 0x88uLL);
                *(v48 + 80) = v168;
                *(v48 + 96) = v169;
                *(v48 + 112) = v170;
                *(v48 + 128) = v171;
                *(v48 + 16) = v164;
                *(v48 + 32) = v165;
                *(v48 + 48) = v166;
                *(v48 + 64) = v167;
                *v48 = v163;
              }

              ++v46;
              v42 -= 136;
              v44 += 136;
            }

            while (v46 < v43);
            v6 = v45;
          }

          goto LABEL_27;
        }

LABEL_123:
        __break(1u);
LABEL_124:

        __break(1u);
LABEL_125:

        __break(1u);
LABEL_126:

        __break(1u);
        goto LABEL_127;
      }
    }

    v9 = v6 - 1;
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_27:
    v49 = a3[1];
    if (v6 < v49)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < v132)
      {
        if (__OFADD__(v8, v132))
        {
          goto LABEL_121;
        }

        if (v8 + v132 >= v49)
        {
          v50 = a3[1];
        }

        else
        {
          v50 = v8 + v132;
        }

        if (v50 < v8)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v6 != v50)
        {
          v51 = *a3;
          v52 = v8;
          v53 = *a3 + 136 * v6;
          v136 = v52;
          v54 = v52 - v6 + 1;
          do
          {
            v55 = v6;
            v56 = v54;
            for (i = v53; ; i -= 136)
            {
              v154 = *i;
              v58 = *(i + 16);
              v59 = *(i + 32);
              v60 = *(i + 64);
              v157 = *(i + 48);
              v158 = v60;
              v155 = v58;
              v156 = v59;
              v61 = *(i + 80);
              v62 = *(i + 96);
              v63 = *(i + 112);
              v162 = *(i + 128);
              v160 = v62;
              v161 = v63;
              v159 = v61;
              v163 = *(i - 136);
              v64 = *(i - 120);
              v65 = *(i - 104);
              v66 = *(i - 72);
              v166 = *(i - 88);
              v167 = v66;
              v164 = v64;
              v165 = v65;
              v67 = *(i - 56);
              v68 = *(i - 40);
              v69 = *(i - 24);
              v171 = *(i - 8);
              v169 = v68;
              v170 = v69;
              v168 = v67;
              v149 = v154;
              v150 = v155;
              v151 = v156;
              v152 = v157;
              sub_429F8(&v154, &v140);
              sub_429F8(&v163, &v140);
              sub_42BA4(&v154, &v140);
              swift_getAtKeyPath();
              v172 = v149;
              v173 = v150;
              v174 = v151;
              v175 = v152;
              sub_43FF4(&v172);
              v140 = v163;
              v141 = v164;
              v142 = v165;
              v143 = v166;
              sub_42BA4(&v163, &v149);
              swift_getAtKeyPath();
              v176 = v140;
              v177 = v141;
              v178 = v142;
              v179 = v143;
              sub_43FF4(&v176);
              sub_5C740(&v163);
              sub_5C740(&v154);
              v70 = *&v149 < v153;
              if (v153 == *&v149)
              {
                v70 = v154 < v163;
              }

              if (!v70)
              {
                break;
              }

              if (!v51)
              {
                goto LABEL_124;
              }

              v71 = i - 136;
              v145 = *(i + 80);
              v146 = *(i + 96);
              v147 = *(i + 112);
              v148 = *(i + 128);
              v141 = *(i + 16);
              v142 = *(i + 32);
              v143 = *(i + 48);
              v144 = *(i + 64);
              v140 = *i;
              v72 = *(i - 56);
              *(i + 64) = *(i - 72);
              *(i + 80) = v72;
              v73 = *(i - 24);
              *(i + 96) = *(i - 40);
              *(i + 112) = v73;
              *(i + 128) = *(i - 8);
              v74 = *(i - 88);
              *(i + 32) = *(i - 104);
              *(i + 48) = v74;
              v75 = *(i - 120);
              *i = *(i - 136);
              *(i + 16) = v75;
              *(v71 + 64) = v144;
              *(v71 + 80) = v145;
              *(v71 + 96) = v146;
              *(v71 + 112) = v147;
              *(v71 + 128) = v148;
              *(v71 + 16) = v141;
              *(v71 + 32) = v142;
              *(v71 + 48) = v143;
              *v71 = v140;
              if (!v56)
              {
                break;
              }

              ++v56;
            }

            v6 = v55 + 1;
            v53 += 136;
            --v54;
          }

          while (v55 + 1 != v50);
          v6 = v50;
          v8 = v136;
        }
      }
    }

    if (v6 < v8)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_32F04(0, *(v7 + 2) + 1, 1, v7);
    }

    v77 = *(v7 + 2);
    v76 = *(v7 + 3);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      v7 = sub_32F04((v76 > 1), v77 + 1, 1, v7);
    }

    *(v7 + 2) = v78;
    v79 = v7 + 32;
    v80 = &v7[16 * v77 + 32];
    *v80 = v8;
    *(v80 + 1) = v6;
    v184 = v7;
    v137 = *a1;
    if (!*a1)
    {
      break;
    }

    if (v77)
    {
      v133 = v6;
      v135 = v7 + 32;
      while (1)
      {
        v81 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v82 = *(v7 + 4);
          v83 = *(v7 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_67:
          if (v85)
          {
            goto LABEL_110;
          }

          v98 = &v7[16 * v78];
          v100 = *v98;
          v99 = *(v98 + 1);
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_113;
          }

          v104 = &v79[16 * v81];
          v106 = *v104;
          v105 = *(v104 + 1);
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_117;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              v81 = v78 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v108 = &v7[16 * v78];
        v110 = *v108;
        v109 = *(v108 + 1);
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_81:
        if (v103)
        {
          goto LABEL_112;
        }

        v111 = &v79[16 * v81];
        v113 = *v111;
        v112 = *(v111 + 1);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_115;
        }

        if (v114 < v102)
        {
          goto LABEL_3;
        }

LABEL_88:
        if (v81 - 1 >= v78)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_125;
        }

        v120 = v7;
        v121 = &v79[16 * v81 - 16];
        v122 = *v121;
        v123 = v81;
        v124 = &v79[16 * v81];
        v125 = *(v124 + 1);
        v126 = (v119 + 136 * *v121);
        v127 = (v119 + 136 * *v124);
        v128 = (v119 + 136 * v125);

        sub_190570(v126, v127, v128, v137);
        if (v139)
        {

          v184 = v120;
          goto LABEL_100;
        }

        if (v125 < v122)
        {
          goto LABEL_105;
        }

        v129 = *(v120 + 2);
        if (v123 > v129)
        {
          goto LABEL_106;
        }

        *v121 = v122;
        *(v121 + 1) = v125;
        if (v123 >= v129)
        {
          goto LABEL_107;
        }

        v139 = 0;
        v78 = v129 - 1;
        memmove(v124, v124 + 16, 16 * (v129 - 1 - v123));
        v7 = v120;
        *(v120 + 2) = v129 - 1;
        v79 = v135;
        if (v129 <= 2)
        {
LABEL_3:
          v184 = v7;
          v6 = v133;
          goto LABEL_4;
        }
      }

      v86 = &v79[16 * v78];
      v87 = *(v86 - 8);
      v88 = *(v86 - 7);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_108;
      }

      v91 = *(v86 - 6);
      v90 = *(v86 - 5);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_109;
      }

      v93 = &v7[16 * v78];
      v95 = *v93;
      v94 = *(v93 + 1);
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_111;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_114;
      }

      if (v97 >= v89)
      {
        v115 = &v79[16 * v81];
        v117 = *v115;
        v116 = *(v115 + 1);
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_118;
        }

        if (v84 < v118)
        {
          v81 = v78 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_4:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_97;
    }
  }

LABEL_127:

  __break(1u);
LABEL_128:

  __break(1u);
  return result;
}

uint64_t sub_191668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 136 * a3;
    v8 = result - a3 + 1;
LABEL_5:
    v9 = v8;
    for (i = v7; ; i -= 136)
    {
      v42 = *i;
      v11 = *(i + 16);
      v12 = *(i + 32);
      v13 = *(i + 64);
      v45 = *(i + 48);
      v46 = v13;
      v43 = v11;
      v44 = v12;
      v14 = *(i + 80);
      v15 = *(i + 96);
      v16 = *(i + 112);
      v50 = *(i + 128);
      v48 = v15;
      v49 = v16;
      v47 = v14;
      v51 = *(i - 136);
      v17 = *(i - 120);
      v18 = *(i - 104);
      v19 = *(i - 72);
      v54 = *(i - 88);
      v55 = v19;
      v52 = v17;
      v53 = v18;
      v20 = *(i - 56);
      v21 = *(i - 40);
      v22 = *(i - 24);
      v59 = *(i - 8);
      v57 = v21;
      v58 = v22;
      v56 = v20;
      v38 = v42;
      v39 = v43;
      v40 = v44;
      v41 = v45;
      sub_429F8(&v42, &v29);
      sub_429F8(&v51, &v29);
      sub_42BA4(&v42, &v29);
      swift_getAtKeyPath();
      v60[0] = v38;
      v60[1] = v39;
      v60[2] = v40;
      v60[3] = v41;
      sub_43FF4(v60);
      v29 = v51;
      v30 = v52;
      v31 = v53;
      v32 = v54;
      sub_42BA4(&v51, &v38);
      swift_getAtKeyPath();
      v61[0] = v29;
      v61[1] = v30;
      v61[2] = v31;
      v61[3] = v32;
      sub_43FF4(v61);
      sub_5C740(&v51);
      result = sub_5C740(&v42);
      v23 = *&v38 < v62;
      if (v62 == *&v38)
      {
        v23 = v42 < v51;
      }

      if (!v23)
      {
LABEL_4:
        ++v4;
        v7 += 136;
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

      v24 = i - 136;
      v34 = *(i + 80);
      v35 = *(i + 96);
      v36 = *(i + 112);
      v37 = *(i + 128);
      v30 = *(i + 16);
      v31 = *(i + 32);
      v32 = *(i + 48);
      v33 = *(i + 64);
      v29 = *i;
      v25 = *(i - 56);
      *(i + 64) = *(i - 72);
      *(i + 80) = v25;
      v26 = *(i - 24);
      *(i + 96) = *(i - 40);
      *(i + 112) = v26;
      *(i + 128) = *(i - 8);
      v27 = *(i - 88);
      *(i + 32) = *(i - 104);
      *(i + 48) = v27;
      v28 = *(i - 120);
      *i = *(i - 136);
      *(i + 16) = v28;
      *(v24 + 64) = v33;
      *(v24 + 80) = v34;
      *(v24 + 96) = v35;
      *(v24 + 112) = v36;
      *(v24 + 128) = v37;
      *(v24 + 16) = v30;
      *(v24 + 32) = v31;
      *(v24 + 48) = v32;
      *v24 = v29;
      if (!v9)
      {
        goto LABEL_4;
      }

      ++v9;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_19191C(uint64_t *a1)
{
  v2 = a1[1];
  swift_retain_n();
  result = sub_1B5584(v2);
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
        v6 = sub_1B4B34();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;

      sub_190BF8(v7, v8, a1, v4);

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

    sub_191668(0, v2, 1, a1);
  }
}

uint64_t sub_191A64(char **a1)
{
  v2 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B58(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;

  sub_19191C(v5);

  *a1 = v2;
}

uint64_t sub_191B08(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, uint64_t *a5)
{
  v72 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v53 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v20)
  {
    v19 = v9;
    v20 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v22 = __clz(__rbit64(v19)) | (v20 << 6);
    v23 = *(*(a1 + 48) + 8 * v22);
    v24 = *(a1 + 56) + 88 * v22;
    v25 = *(v24 + 16);
    v57[0] = *v24;
    v57[1] = v25;
    v27 = *(v24 + 48);
    v26 = *(v24 + 64);
    v28 = *(v24 + 32);
    v58 = *(v24 + 80);
    v57[3] = v27;
    v57[4] = v26;
    v57[2] = v28;
    v29 = *(v24 + 48);
    *&v56[40] = *(v24 + 32);
    *&v56[56] = v29;
    *&v56[72] = *(v24 + 64);
    *&v56[88] = *(v24 + 80);
    v30 = *(v24 + 16);
    *&v56[8] = *v24;
    *&v56[24] = v30;
    *v56 = v23;
    sub_5EDD8(v57, &v59);
    a2(&v65, v56);
    v61 = *&v56[32];
    v62 = *&v56[48];
    v63 = *&v56[64];
    v64 = *&v56[80];
    v59 = *v56;
    v60 = *&v56[16];
    sub_193878(&v59);
    if (!*(&v66 + 1))
    {
LABEL_22:
      sub_417B8();
    }

    v31 = a4;
    v32 = v65;
    v33 = *v72;
    v35 = sub_43124(v65);
    v36 = *(v33 + 16);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_24;
    }

    v39 = v34;
    if (*(v33 + 24) >= v38)
    {
      if ((v31 & 1) == 0)
      {
        sub_1864C4();
      }
    }

    else
    {
      v40 = v72;
      sub_17FD40(v38, v31 & 1);
      v41 = *v40;
      v42 = sub_43124(v32);
      if ((v39 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

      v35 = v42;
    }

    v9 = (v19 - 1) & v19;
    if (v39)
    {
      v12 = *(*v72 + 56) + 88 * v35;
      v13 = *(v12 + 16);
      v59 = *v12;
      v60 = v13;
      v15 = *(v12 + 48);
      v14 = *(v12 + 64);
      v16 = *(v12 + 32);
      *&v64 = *(v12 + 80);
      v62 = v15;
      v63 = v14;
      v61 = v16;
      v17 = v69;
      *(v12 + 32) = v68;
      *(v12 + 48) = v17;
      *(v12 + 64) = v70;
      *(v12 + 80) = v71;
      v18 = v67;
      *v12 = v66;
      *(v12 + 16) = v18;
      sub_85554(&v59);
    }

    else
    {
      v44 = *v72;
      v44[(v35 >> 6) + 8] |= 1 << v35;
      *(v44[6] + 8 * v35) = v32;
      v45 = v44[7] + 88 * v35;
      v46 = v67;
      *v45 = v66;
      *(v45 + 16) = v46;
      *(v45 + 80) = v71;
      v47 = v70;
      v48 = v68;
      *(v45 + 48) = v69;
      *(v45 + 64) = v47;
      *(v45 + 32) = v48;
      v49 = v44[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_25;
      }

      v44[2] = v51;
    }

    a4 = 1;
  }

  v21 = i;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v10)
    {
      goto LABEL_22;
    }

    v19 = *(v6 + 8 * v20);
    ++v21;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_191E50(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = _swiftEmptyDictionarySingleton;
  v142 = v1;
  while (1)
  {
    v8 = v6;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v6 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v12 = *(a1 + 56) + 88 * v10;
    v13 = *(v12 + 64);
    v14 = *(v12 + 80);
    v15 = *(v12 + 32);
    v156 = *(v12 + 48);
    v16 = *(v12 + 16);
    v153 = *v12;
    v154 = v16;
    v158 = v14;
    v155 = v15;
    v157 = v13;
    if (BYTE8(v156) != 2)
    {
      v17 = v7;
      v18 = v156;
      sub_5EDD8(&v153, v152);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152[0] = v17;
      v20 = sub_43124(v11);
      v22 = *(v17 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_128;
      }

      v26 = v21;
      if (*(v17 + 24) >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v29 = v20;
        sub_18535C();
        v20 = v29;
        v28 = v152[0];
        if ((v26 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_15:
        *(v28[7] + 8 * v20) = v18;
        sub_85554(&v153);
        v7 = v28;
        v1 = v142;
      }

      else
      {
        sub_17D544(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_43124(v11);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_130;
        }

LABEL_14:
        v28 = v152[0];
        if (v26)
        {
          goto LABEL_15;
        }

LABEL_17:
        v28[(v20 >> 6) + 8] |= 1 << v20;
        *(v28[6] + 8 * v20) = v11;
        *(v28[7] + 8 * v20) = v18;
        sub_85554(&v153);
        v30 = v28[2];
        v24 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v24)
        {
          goto LABEL_129;
        }

        v7 = v28;
        v28[2] = v31;
        v1 = v142;
      }
    }
  }

  while (1)
  {
    v6 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_120;
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v32 = v7 + 8;
  v33 = 1 << *(v7 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v7[8];
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v38 = _swiftEmptyDictionarySingleton;
  v146 = v7;
  v147 = v7 + 8;
  if (v35)
  {
    while (1)
    {
LABEL_26:
      v40 = (v37 << 9) | (8 * __clz(__rbit64(v35)));
      v41 = v7[7];
      v42 = *(v7[6] + v40);
      v43 = *(v41 + v40);
      v44 = v38;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v44;
      v47 = sub_43124(v43);
      v48 = v44[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_124;
      }

      v51 = v46;
      if (v44[3] < v50)
      {
        break;
      }

      if (v45)
      {
        if ((v46 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1854E4();
        v44 = v153;
        if ((v51 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_35:
      v57 = v44[7];
      v58 = *(v57 + 8 * v47);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *(v57 + 8 * v47) = v58;
      if ((v59 & 1) == 0)
      {
        v58 = sub_33008(0, *(v58 + 2) + 1, 1, v58);
        *(v57 + 8 * v47) = v58;
      }

      v61 = *(v58 + 2);
      v60 = *(v58 + 3);
      if (v61 >= v60 >> 1)
      {
        v62 = sub_33008((v60 > 1), v61 + 1, 1, v58);
        v38 = v44;
        v58 = v62;
        *(v57 + 8 * v47) = v62;
      }

      else
      {
        v38 = v44;
      }

      v35 &= v35 - 1;
      *(v58 + 2) = v61 + 1;
      *&v58[8 * v61 + 32] = v42;
      v7 = v146;
      v32 = v147;
      if (!v35)
      {
        goto LABEL_22;
      }
    }

    sub_17D824(v50, v45);
    v52 = v153;
    v53 = sub_43124(v43);
    if ((v51 & 1) != (v54 & 1))
    {
      goto LABEL_130;
    }

    v47 = v53;
    v44 = v52;
    if (v51)
    {
      goto LABEL_35;
    }

LABEL_33:
    v44[(v47 >> 6) + 8] |= 1 << v47;
    *(v44[6] + 8 * v47) = v43;
    *(v44[7] + 8 * v47) = _swiftEmptyArrayStorage;
    v55 = v44[2];
    v24 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v24)
    {
      goto LABEL_126;
    }

    v44[2] = v56;
    goto LABEL_35;
  }

  while (1)
  {
LABEL_22:
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_121;
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = v32[v39];
    ++v37;
    if (v35)
    {
      v37 = v39;
      goto LABEL_26;
    }
  }

  v141 = v38;

  v63 = 1 << *(a1 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & *(a1 + 64);
  v66 = (v63 + 63) >> 6;

  v67 = 0;
  v68 = _swiftEmptyDictionarySingleton;
  v139 = v66;
  while (2)
  {
    if (v65)
    {
      v69 = v67;
    }

    else
    {
      do
      {
        v69 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_122;
        }

        if (v69 >= v66)
        {

          *&v153 = v68;
          v130 = 1 << *(v7 + 32);
          v131 = -1;
          if (v130 < 64)
          {
            v131 = ~(-1 << v130);
          }

          v132 = v131 & v7[8];
          v133 = (v130 + 63) >> 6;

          v134 = 0;
          if (!v132)
          {
            goto LABEL_109;
          }

          while (1)
          {
            v135 = v134;
            v136 = v141;
            while (1)
            {
              v137 = __clz(__rbit64(v132));
              v132 &= v132 - 1;
              sub_18DD80(*(v7[6] + ((v135 << 9) | (8 * v137))), *(v7[7] + ((v135 << 9) | (8 * v137))), v136, &v153);
              if (v132)
              {
                break;
              }

LABEL_109:
              v136 = v141;
              do
              {
                v135 = v134 + 1;
                if (__OFADD__(v134, 1))
                {
                  goto LABEL_123;
                }

                if (v135 >= v133)
                {

                  return v153;
                }

                v132 = v32[v135];
                ++v134;
              }

              while (!v132);
              v134 = v135;
            }
          }
        }

        v65 = *(v142 + 8 * v69);
        ++v67;
      }

      while (!v65);
    }

    v143 = v69;
    v70 = __clz(__rbit64(v65)) | (v69 << 6);
    v71 = *(*(a1 + 48) + 8 * v70);
    v72 = *(a1 + 56) + 88 * v70;
    v73 = *v72;
    v154 = *(v72 + 16);
    v75 = *(v72 + 48);
    v74 = *(v72 + 64);
    v76 = *(v72 + 80);
    v155 = *(v72 + 32);
    v156 = v75;
    v153 = v73;
    v158 = v76;
    v157 = v74;
    v77 = *(&v154 + 1);
    v78 = _swiftEmptyArrayStorage;
    v144 = v155;
    if ((v155 & 1) == 0)
    {
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v78 = swift_allocObject();
      *(v78 + 1) = xmmword_1BCA80;
      v78[4] = v77;
    }

    v151 = v78;
    if (v158)
    {
      v79 = v158;
    }

    else
    {
      v79 = _swiftEmptyArrayStorage;
    }

    sub_5EDD8(&v153, v152);

    v145 = v79;
    sub_5F33C(v79);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v152[0] = v68;
    v82 = sub_43124(v71);
    v83 = v68[2];
    v84 = (v81 & 1) == 0;
    v85 = v83 + v84;
    if (__OFADD__(v83, v84))
    {
      goto LABEL_125;
    }

    v86 = v81;
    if (v68[3] >= v85)
    {
      if (v80)
      {
        v68 = v152[0];
        if (v81)
        {
          goto LABEL_68;
        }
      }

      else
      {
        sub_187930();
        v68 = v152[0];
        if (v86)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_66;
    }

    sub_1825E8(v85, v80);
    v87 = sub_43124(v71);
    if ((v86 & 1) != (v88 & 1))
    {
      goto LABEL_130;
    }

    v82 = v87;
    v68 = v152[0];
    if ((v86 & 1) == 0)
    {
LABEL_66:
      v68[(v82 >> 6) + 8] |= 1 << v82;
      *(v68[6] + 8 * v82) = v71;
      *(v68[7] + 8 * v82) = _swiftEmptySetSingleton;
      v89 = v68[2];
      v24 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v24)
      {
        goto LABEL_127;
      }

      v68[2] = v90;
    }

LABEL_68:
    v91 = v151[2];
    if (v91)
    {
      v140 = v77;
      v149 = v65;
      v92 = 0;
      v93 = v68[7];
      do
      {
        v96 = v151[v92++ + 4];
        v97 = *(v93 + 8 * v82);
        v98 = *(v97 + 40);
        v99 = sub_1B57E4();
        v100 = -1 << *(v97 + 32);
        v101 = v99 & ~v100;
        if ((*(v97 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
        {
          v102 = ~v100;
          while (*(*(v97 + 48) + 8 * v101) != v96)
          {
            v101 = (v101 + 1) & v102;
            if (((*(v97 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
LABEL_70:
          v94 = *(v93 + 8 * v82);
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v152[0] = *(v93 + 8 * v82);
          sub_115EFC(v96, v101, v95);
          *(v93 + 8 * v82) = v152[0];
        }
      }

      while (v92 != v91);

      v7 = v146;
      v65 = v149;
      v77 = v140;
    }

    else
    {
    }

    v103 = _swiftEmptyArrayStorage;
    if ((v144 & 1) == 0)
    {
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v103 = swift_allocObject();
      *(v103 + 1) = xmmword_1BCA80;
      v103[4] = v77;
    }

    v150 = (v65 - 1) & v65;
    v152[0] = v103;

    sub_5F33C(v145);
    v104 = v152[0];
    v105 = *(v152[0] + 16);
    if (!v105)
    {
LABEL_48:

      sub_85554(&v153);
      v67 = v143;
      v32 = v147;
      v66 = v139;
      v65 = v150;
      continue;
    }

    break;
  }

  v106 = 0;
  while (2)
  {
    if (v106 < *(v104 + 16))
    {
      v108 = *(v104 + 8 * v106 + 32);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v152[0] = v68;
      v110 = sub_43124(v108);
      v112 = v68[2];
      v113 = (v111 & 1) == 0;
      v24 = __OFADD__(v112, v113);
      v114 = v112 + v113;
      if (v24)
      {
        goto LABEL_118;
      }

      v115 = v111;
      if (v68[3] >= v114)
      {
        if (v109)
        {
          goto LABEL_90;
        }

        v128 = v110;
        sub_187930();
        v110 = v128;
        v68 = v152[0];
        if ((v115 & 1) == 0)
        {
LABEL_91:
          v117 = v110;
          sub_15C8E0(v110, v108, _swiftEmptySetSingleton, v68);
          v110 = v117;
        }
      }

      else
      {
        sub_1825E8(v114, v109);
        v68 = v152[0];
        v110 = sub_43124(v108);
        if ((v115 & 1) != (v116 & 1))
        {
          goto LABEL_130;
        }

LABEL_90:
        if ((v115 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v118 = v68[7] + 8 * v110;
      sub_111CE0(v152, v71);
      v119 = swift_isUniquelyReferenced_nonNull_native();
      v152[0] = v68;
      v120 = sub_43124(v71);
      v122 = v68[2];
      v123 = (v121 & 1) == 0;
      v24 = __OFADD__(v122, v123);
      v124 = v122 + v123;
      if (v24)
      {
        goto LABEL_119;
      }

      v125 = v121;
      if (v68[3] >= v124)
      {
        if (v119)
        {
          goto LABEL_97;
        }

        v129 = v120;
        sub_187930();
        v120 = v129;
        v68 = v152[0];
        if ((v125 & 1) == 0)
        {
LABEL_98:
          v127 = v120;
          sub_15C8E0(v120, v71, _swiftEmptySetSingleton, v68);
          v120 = v127;
        }
      }

      else
      {
        sub_1825E8(v124, v119);
        v120 = sub_43124(v71);
        if ((v125 & 1) != (v126 & 1))
        {
          goto LABEL_130;
        }

LABEL_97:
        v68 = v152[0];
        if ((v125 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      ++v106;
      v107 = v68[7] + 8 * v120;
      sub_111CE0(v152, v108);
      if (v105 == v106)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

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
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_1928F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v17 = *(*(a3 + 48) + 8 * v16);
      v18 = *(a4 + 40);
      result = sub_1B57E4();
      v19 = -1 << *(a4 + 32);
      v20 = result & ~v19;
      if ((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (*(*(a4 + 48) + 8 * v20) != v17)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_21:

          return sub_3D71C(v24, a2, v5, a3);
        }
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_21;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}