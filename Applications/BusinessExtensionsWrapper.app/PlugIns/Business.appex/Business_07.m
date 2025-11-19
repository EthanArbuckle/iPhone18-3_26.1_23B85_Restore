Swift::Int sub_10009FF90(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10009F76C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000A0574();
      goto LABEL_16;
    }

    sub_1000A0A58(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000AC87C();
  sub_1000AC11C();
  result = sub_1000AC8CC();
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

      result = sub_1000AC7AC();
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
  result = sub_1000AC7DC();
  __break(1u);
  return result;
}

uint64_t sub_1000A0110(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10009F9CC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1000A06D0();
      goto LABEL_16;
    }

    sub_1000A0C90(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1000AC06C();
  sub_1000AC87C();
  sub_1000AC11C();
  v11 = sub_1000AC8CC();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for PKContactField(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_1000AC06C();
      v17 = v16;
      if (v15 == sub_1000AC06C() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_1000AC7AC();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1000AC7DC();
  __break(1u);
  return result;
}

uint64_t sub_1000A02F8(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10009FC48(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1000A0820();
      goto LABEL_12;
    }

    sub_1000A0EE4(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_10009EED8(&qword_1000F0828);
  v16 = sub_1000ABFFC();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_10009EED8(&qword_1000EFE98);
      v24 = sub_1000AC01C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000AC7DC();
  __break(1u);
  return result;
}

void *sub_1000A0574()
{
  v1 = v0;
  sub_10000413C(&qword_1000F3C98, &qword_1000B53B0);
  v2 = *v0;
  v3 = sub_1000AC55C();
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

id sub_1000A06D0()
{
  v1 = v0;
  sub_10000413C(&qword_1000F3CA0, &qword_1000B53B8);
  v2 = *v0;
  v3 = sub_1000AC55C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

void *sub_1000A0820()
{
  v1 = v0;
  v2 = sub_1000AB97C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000413C(&qword_1000F3C78, &unk_1000B5380);
  v8 = *v0;
  v9 = sub_1000AC55C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_1000A0A58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000413C(&qword_1000F3C98, &qword_1000B53B0);
  result = sub_1000AC56C();
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
      sub_1000AC87C();

      sub_1000AC11C();
      result = sub_1000AC8CC();
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

uint64_t sub_1000A0C90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000413C(&qword_1000F3CA0, &qword_1000B53B8);
  result = sub_1000AC56C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1000AC06C();
      sub_1000AC87C();
      v20 = v18;
      sub_1000AC11C();
      v21 = sub_1000AC8CC();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_1000A0EE4(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1000AB97C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_10000413C(&qword_1000F3C78, &unk_1000B5380);
  v11 = sub_1000AC56C();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_10009EED8(&qword_1000F0828);
      result = sub_1000ABFFC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}

void *sub_1000A11EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F3C88, &qword_1000B53A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000413C(&qword_1000F3C90, &qword_1000B53A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000A1320(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000413C(&qword_1000F3C80, &unk_1000B5390);
  v10 = *(sub_10000413C(&qword_1000F1140, &unk_1000B5290) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000413C(&qword_1000F1140, &unk_1000B5290) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1000A1510(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000413C(&qword_1000F0818, &unk_1000B5370);
  v10 = *(sub_1000AB97C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000AB97C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000A16E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F0840, &qword_1000B1B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_1000A17F4(void **a1)
{
  v2 = *(sub_1000AB97C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000A4744(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000A189C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000A189C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000AC77C(v2);
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
        sub_1000AB97C();
        v6 = sub_1000AC1CC();
        v6[2] = v5;
      }

      v7 = *(sub_1000AB97C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000A1C78(v8, v9, a1, v4);
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
    return sub_1000A19C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000A19C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000AB97C();
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8, v10);
  v45 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v49 = &v35 - v15;
  result = __chkstk_darwin(v14, v16);
  v48 = &v35 - v19;
  v37 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v46 = *(v18 + 16);
    v47 = v18 + 16;
    v21 = *(v18 + 72);
    v22 = (v18 + 8);
    v43 = (v18 + 32);
    v44 = v20;
    v23 = v20 + v21 * (a3 - 1);
    v42 = -v21;
    v24 = a1 - a3;
    v36 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v40 = v23;
    v41 = a3;
    v38 = v25;
    v39 = v24;
    v26 = v23;
    while (1)
    {
      v27 = v48;
      v28 = v46;
      v46(v48, v25, v8);
      v29 = v49;
      v28(v49, v26, v8);
      sub_10009EED8(&qword_1000F3C70);
      v30 = sub_1000AC00C();
      v31 = *v22;
      (*v22)(v29, v8);
      result = v31(v27, v8);
      if ((v30 & 1) == 0)
      {
LABEL_4:
        a3 = v41 + 1;
        v23 = v40 + v36;
        v24 = v39 - 1;
        v25 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v26, v33, v8);
      v26 += v42;
      v25 += v42;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A1C78(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v127 = a1;
  v8 = sub_1000AB97C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = __chkstk_darwin(v8, v11);
  v132 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v139 = &v124 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v145 = &v124 - v19;
  result = __chkstk_darwin(v18, v20);
  v144 = &v124 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_94:
    v26 = *v127;
    if (!*v127)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1000A2CCC(v25);
      v25 = result;
    }

    v147 = v25;
    v120 = *(v25 + 2);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *&v25[16 * v120];
        v122 = *&v25[16 * v120 + 24];
        sub_1000A2678(*a3 + v9[9] * v121, *a3 + v9[9] * *&v25[16 * v120 + 16], *a3 + v9[9] * v122, v26);
        if (v5)
        {
        }

        if (v122 < v121)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1000A2CCC(v25);
        }

        if (v120 - 2 >= *(v25 + 2))
        {
          goto LABEL_120;
        }

        v123 = &v25[16 * v120];
        *v123 = v121;
        *(v123 + 1) = v122;
        v147 = v25;
        result = sub_1000A2C40(v120 - 1);
        v25 = v147;
        v120 = *(v147 + 2);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v124 = a4;
  v24 = 0;
  v142 = (v9 + 1);
  v143 = v9 + 2;
  v141 = (v9 + 4);
  v25 = _swiftEmptyArrayStorage;
  v129 = v9;
  v146 = v8;
  v125 = a3;
  while (1)
  {
    v26 = v24;
    v130 = v25;
    if (v24 + 1 >= v23)
    {
      v39 = v24 + 1;
    }

    else
    {
      v137 = v23;
      v126 = v5;
      v27 = *a3;
      v28 = v9[9];
      v29 = v24;
      v128 = v24;
      v30 = &v27[v28 * (v24 + 1)];
      v31 = v8;
      v32 = v9[2];
      v33 = v144;
      v32(v144, v30, v31);
      v34 = &v27[v28 * v29];
      v35 = v145;
      v136 = v32;
      v32(v145, v34, v31);
      v135 = sub_10009EED8(&qword_1000F3C70);
      LODWORD(v138) = sub_1000AC00C();
      v36 = v9[1];
      v36(v35, v31);
      v134 = v36;
      result = (v36)(v33, v31);
      v37 = v128 + 2;
      v140 = v28;
      v38 = &v27[v28 * (v128 + 2)];
      while (1)
      {
        v39 = v137;
        if (v137 == v37)
        {
          break;
        }

        v40 = v144;
        v41 = v9;
        v42 = v146;
        v43 = v136;
        (v136)(v144, v38, v146);
        v44 = v145;
        v43(v145, v30, v42);
        v45 = sub_1000AC00C() & 1;
        v46 = v134;
        (v134)(v44, v42);
        v47 = v42;
        v9 = v41;
        result = v46(v40, v47);
        ++v37;
        v38 += v140;
        v30 += v140;
        if ((v138 & 1) != v45)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v5 = v126;
      v25 = v130;
      v8 = v146;
      a3 = v125;
      v26 = v128;
      if (v138)
      {
        if (v39 < v128)
        {
          goto LABEL_123;
        }

        if (v128 < v39)
        {
          v48 = v39;
          v49 = v140 * (v39 - 1);
          v50 = v39 * v140;
          v137 = v39;
          v51 = v128;
          v52 = v128 * v140;
          do
          {
            if (v51 != --v48)
            {
              v54 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v138 = *v141;
              v138(v132, &v54[v52], v146);
              if (v52 < v49 || &v54[v52] >= &v54[v50])
              {
                v53 = v146;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v53 = v146;
                if (v52 != v49)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v138)(&v54[v49], v132, v53);
              v9 = v129;
              v25 = v130;
            }

            ++v51;
            v49 -= v140;
            v50 -= v140;
            v52 += v140;
          }

          while (v51 < v48);
          v5 = v126;
          v8 = v146;
          v26 = v128;
          v39 = v137;
        }
      }
    }

    v55 = a3[1];
    if (v39 < v55)
    {
      if (__OFSUB__(v39, v26))
      {
        goto LABEL_122;
      }

      if (v39 - v26 < v124)
      {
        if (__OFADD__(v26, v124))
        {
          goto LABEL_124;
        }

        if (v26 + v124 >= v55)
        {
          v56 = a3[1];
        }

        else
        {
          v56 = v26 + v124;
        }

        if (v56 < v26)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v39 != v56)
        {
          break;
        }
      }
    }

    v57 = v39;
    if (v39 < v26)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000386A8(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    v59 = *(v25 + 2);
    v58 = *(v25 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_1000386A8((v58 > 1), v59 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v60;
    v61 = &v25[16 * v59];
    *(v61 + 4) = v26;
    *(v61 + 5) = v57;
    v26 = *v127;
    if (!*v127)
    {
      goto LABEL_131;
    }

    v133 = v57;
    if (v59)
    {
      while (1)
      {
        v62 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v25 + 4);
          v64 = *(v25 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_52:
          if (v66)
          {
            goto LABEL_110;
          }

          v79 = &v25[16 * v60];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_113;
          }

          v85 = &v25[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_117;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v60 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v89 = &v25[16 * v60];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_66:
        if (v84)
        {
          goto LABEL_112;
        }

        v92 = &v25[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_115;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_73:
        v100 = v62 - 1;
        if (v62 - 1 >= v60)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v101 = *&v25[16 * v100 + 32];
        v102 = *&v25[16 * v62 + 40];
        sub_1000A2678(*a3 + v9[9] * v101, *a3 + v9[9] * *&v25[16 * v62 + 32], *a3 + v9[9] * v102, v26);
        if (v5)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1000A2CCC(v25);
        }

        if (v100 >= *(v25 + 2))
        {
          goto LABEL_107;
        }

        v103 = &v25[16 * v100];
        *(v103 + 4) = v101;
        *(v103 + 5) = v102;
        v147 = v25;
        result = sub_1000A2C40(v62);
        v25 = v147;
        v60 = *(v147 + 2);
        v8 = v146;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v25[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_108;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_109;
      }

      v74 = &v25[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_111;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_114;
      }

      if (v78 >= v70)
      {
        v96 = &v25[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_118;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = a3[1];
    v24 = v133;
    if (v133 >= v23)
    {
      goto LABEL_94;
    }
  }

  v126 = v5;
  v104 = *a3;
  v105 = v9[9];
  v140 = v9[2];
  v106 = v104 + v105 * (v39 - 1);
  v107 = -v105;
  v128 = v26;
  v108 = v26 - v39;
  v138 = v104;
  v131 = v105;
  v109 = v104 + v39 * v105;
  v133 = v56;
LABEL_85:
  v136 = v106;
  v137 = v39;
  v134 = v109;
  v135 = v108;
  v110 = v106;
  while (1)
  {
    v111 = v144;
    v112 = v140;
    (v140)(v144, v109, v8);
    v113 = v145;
    v112(v145, v110, v146);
    sub_10009EED8(&qword_1000F3C70);
    v114 = sub_1000AC00C();
    v115 = *v142;
    v116 = v113;
    v8 = v146;
    (*v142)(v116, v146);
    result = v115(v111, v8);
    if ((v114 & 1) == 0)
    {
LABEL_84:
      v39 = v137 + 1;
      v106 = &v136[v131];
      v108 = v135 - 1;
      v109 = &v134[v131];
      v57 = v133;
      if (v137 + 1 != v133)
      {
        goto LABEL_85;
      }

      v5 = v126;
      a3 = v125;
      v9 = v129;
      v25 = v130;
      v26 = v128;
      if (v133 < v128)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v138)
    {
      break;
    }

    v117 = *v141;
    v118 = v139;
    (*v141)(v139, v109, v8);
    swift_arrayInitWithTakeFrontToBack();
    v117(v110, v118, v8);
    v110 += v107;
    v109 += v107;
    if (__CFADD__(v108++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1000A2678(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = sub_1000AB97C();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v58, v10);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11, v13);
  v55 = &v46 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_63;
  }

  v57 = a3;
  v19 = (a2 - a1) / v17;
  v61 = a1;
  v60 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v21;
    if (v21 >= 1)
    {
      v31 = -v17;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = a4 + v21;
      v33 = v57;
      v48 = a1;
      v49 = a4;
      v52 = v31;
      do
      {
        v46 = v30;
        v34 = a2 + v31;
        v35 = v30;
        v53 = a2;
        v54 = a2 + v31;
        while (1)
        {
          if (a2 <= a1)
          {
            v61 = a2;
            v30 = v46;
            goto LABEL_59;
          }

          v37 = v33;
          v47 = v35;
          v57 = v33 + v31;
          v38 = v32 + v31;
          v39 = *v51;
          v40 = v55;
          v41 = v32 + v31;
          v42 = v32;
          v43 = v58;
          (*v51)(v55, v41, v58);
          v44 = v56;
          (v39)(v56, v34, v43);
          sub_10009EED8(&qword_1000F3C70);
          LOBYTE(v39) = sub_1000AC00C();
          v45 = *v50;
          (*v50)(v44, v43);
          v45(v40, v43);
          if (v39)
          {
            break;
          }

          v35 = v38;
          v33 = v57;
          if (v37 < v42 || v57 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v54;
            a1 = v48;
          }

          else
          {
            v34 = v54;
            a1 = v48;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v38;
          v36 = v38 > v49;
          v31 = v52;
          a2 = v53;
          if (!v36)
          {
            v30 = v35;
            goto LABEL_58;
          }
        }

        v33 = v57;
        if (v37 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v48;
          v32 = v42;
        }

        else
        {
          a2 = v54;
          a1 = v48;
          v32 = v42;
          if (v37 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v47;
        v31 = v52;
      }

      while (v32 > v49);
    }

LABEL_58:
    v61 = a2;
LABEL_59:
    v59 = v30;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v20;
    v59 = a4 + v20;
    if (v20 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = v8 + 16;
      v50 = v17;
      v51 = (v8 + 8);
      do
      {
        v23 = v55;
        v24 = v58;
        v25 = v52;
        v52(v55, a2, v58);
        v26 = v56;
        v25(v56, a4, v24);
        sub_10009EED8(&qword_1000F3C70);
        LOBYTE(v25) = sub_1000AC00C();
        v27 = *v51;
        (*v51)(v26, v24);
        v27(v23, v24);
        if (v25)
        {
          v28 = v50;
          if (a1 < a2 || a1 >= v50 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v28;
        }

        else
        {
          v28 = v50;
          v29 = v50 + a4;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = v29;
          a4 += v28;
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

  sub_1000A2CE0(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_1000A2C40(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000A2CCC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000A2CE0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000AB97C();
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

uint64_t sub_1000A2DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_10009EED8(&qword_1000F0828);
  v36 = a1;
  v14 = sub_1000ABFFC();
  v15 = v12 + 56;
  v34 = v12 + 56;
  v35 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v31 = v3;
    v32 = v7;
    v33 = a2;
    v18 = ~v16;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    while (1)
    {
      v19(v11, *(v35 + 48) + v22 * v17, v6);
      sub_10009EED8(&qword_1000EFE98);
      v23 = sub_1000AC01C();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v34 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v24 = 1;
        v7 = v32;
        a2 = v33;
        return (*(v7 + 56))(a2, v24, 1, v6);
      }
    }

    v25 = v31;
    v26 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v25;
    v37 = *v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000A0820();
      v28 = v37;
    }

    v7 = v32;
    a2 = v33;
    (*(v32 + 32))(v33, *(v28 + 48) + v22 * v17, v6);
    sub_1000A3044(v17);
    v24 = 0;
    *v25 = v37;
  }

  else
  {
    v24 = 1;
  }

  return (*(v7 + 56))(a2, v24, 1, v6);
}

uint64_t sub_1000A3044(int64_t a1)
{
  v3 = sub_1000AB97C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;
    v15 = *v1;

    v16 = sub_1000AC4BC();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v39 = (v16 + 1) & v14;
      v18 = *(v4 + 16);
      v17 = v4 + 16;
      v19 = v14;
      v20 = *(v17 + 56);
      v40 = v17;
      v37 = (v17 - 8);
      v38 = v18;
      do
      {
        v21 = v11;
        v22 = v20;
        v23 = v20 * v13;
        v38(v9, *(v10 + 48) + v20 * v13, v3);
        v24 = v10;
        v25 = v19;
        v26 = v24;
        v27 = *(v24 + 40);
        sub_10009EED8(&qword_1000F0828);
        v28 = sub_1000ABFFC();
        (*v37)(v9, v3);
        v29 = v28 & v25;
        v19 = v25;
        if (a1 >= v39)
        {
          if (v29 >= v39 && a1 >= v29)
          {
LABEL_16:
            v10 = v26;
            v32 = *(v26 + 48);
            v20 = v22;
            v33 = v22 * a1;
            if (v22 * a1 < v23 || v32 + v22 * a1 >= (v32 + v23 + v22))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v13;
            }

            else
            {
              a1 = v13;
              if (v33 != v23)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v13;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v29 >= v39 || a1 >= v29)
        {
          goto LABEL_16;
        }

        v10 = v26;
        v20 = v22;
LABEL_5:
        v13 = (v13 + 1) & v19;
        v11 = v21;
      }

      while (((*(v21 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v10 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v36;
    ++*(v10 + 36);
  }

  return result;
}

uint64_t sub_1000A333C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a3 + 32);
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v39 = v13;
    v45 = v12;
    v46 = v10;
    v50 = v4;
    v41 = &v38;
    __chkstk_darwin(v10, v14);
    v40 = &v38 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v15);
    v16 = 0;
    v48 = a3;
    v18 = *(a3 + 56);
    a3 += 56;
    v17 = v18;
    v19 = 1 << *(a3 - 24);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v17;
    v12 = ((v19 + 63) >> 6);
    v42 = 0;
    v43 = v7 + 2;
    v44 = (v7 + 1);
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v49 = (v21 - 1) & v21;
LABEL_12:
      v13 = v22 | (v16 << 6);
      v25 = *(v48 + 48) + v7[9] * v13;
      v4 = v7;
      v26 = v7[2];
      v27 = v45;
      v28 = v46;
      v26(v45, v25, v46);
      v29 = v50;
      v30 = v47(v27);
      v50 = v29;
      if (v29)
      {
        (*v44)(v27, v28);

        return swift_willThrow();
      }

      v31 = v30;
      v10 = (*v44)(v27, v28);
      v7 = v4;
      v21 = v49;
      if (v31)
      {
        *&v40[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return sub_1000A3934(v40, v39, v42, v48);
        }
      }
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v12)
      {
        return sub_1000A3934(v40, v39, v42, v48);
      }

      v24 = *(a3 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v10;
    v35 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v14 = v35;
    v10 = v34;
  }

  v36 = swift_slowAlloc();
  v37 = sub_10009F128(v36, v13, a3, v47);

  if (!v4)
  {
    return v37;
  }

  return result;
}

uint64_t sub_1000A36D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v40 = sub_1000AB97C();
  v6 = *(*(v40 - 8) + 64);
  result = __chkstk_darwin(v40, v7);
  v38 = a3;
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v35 = v9 + 16;
  v36 = v9;
  v33 = 0;
  v34 = (v9 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v20 = v19 | (v11 << 6);
    v21 = v40;
    v22 = v39;
LABEL_11:
    (*(v36 + 16))(v22, *(v38 + 48) + *(v36 + 72) * v20, v21);
    v25 = v37(v22);
    v26 = v22;
    if (v4)
    {
      return (*v34)(v22, v21);
    }

    v27 = v25;
    result = (*v34)(v26, v21);
    if (v27)
    {
      *(v32 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        v29 = v38;

        return sub_1000A3934(v32, v31, v33, v29);
      }
    }
  }

  v23 = v11;
  v21 = v40;
  v22 = v39;
  while (1)
  {
    v11 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v24 = *(v13 + 8 * v11);
    ++v23;
    if (v24)
    {
      v17 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A3934(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1000AB97C();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000413C(&qword_1000F3C78, &unk_1000B5380);
  result = sub_1000AC57C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_10009EED8(&qword_1000F0828);
    result = sub_1000ABFFC();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
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

void *sub_1000A3C48(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

void *sub_1000A3DA0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000A3EF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = sub_1000AB97C();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  v10 = __chkstk_darwin(v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 64;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000A4198(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v25 = result;
    v26 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1000068B4(*(a4 + 56) + 32 * v16, &v28);
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v31 = v28;
      v32 = v29;
      v30 = v27;
      *v9 = v27;
      v9[1] = v22;
      v9[2] = v21;
      if (v12 == v8)
      {

        v5 = v26;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 3;

      result = v12;
      v23 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v24 = v10 + 1;
    }

    else
    {
      v24 = v11;
    }

    v10 = v24 - 1;
    v8 = result;
    v5 = v26;
LABEL_23:
    result = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000A4338(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = sub_1000AB97C();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  v10 = __chkstk_darwin(v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 56;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000A45DC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000A4758(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000A47C0(void *a1, void *a2, uint64_t a3, char *a4)
{
  v23[3] = type metadata accessor for URLHelper();
  v23[4] = &off_1000DCB20;
  v8 = sub_100030970(v23);
  sub_100078F7C(a3, v8);
  *&a4[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation] = a1;
  *&a4[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] = a2;
  sub_10000E6D4(v23, &a4[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper]);
  v22.receiver = a4;
  v22.super_class = type metadata accessor for IMBDetailedMessageViewController();
  v9 = a1;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
  v12 = qword_1000EEE80;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AF0F0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(ObjCClassFromMetadata);
  v17 = sub_1000AC06C();
  v19 = v18;

  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10000587C();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  *(v14 + 96) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
  *(v14 + 104) = sub_1000420C4();
  *(v14 + 72) = v10;
  v20 = v10;
  sub_1000ABA5C();

  sub_10000E738(v23);
  return v13;
}

id sub_1000A49E0(void *a1, void *a2, uint64_t a3, char *a4)
{
  v22[3] = type metadata accessor for URLHelper();
  v22[4] = &off_1000DCB20;
  v8 = sub_100030970(v22);
  sub_100078F7C(a3, v8);
  v9 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView;
  *&a4[v9] = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel;
  *&a4[v10] = [objc_allocWithZone(UILabel) init];
  *&a4[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader] = 0;
  *&a4[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel] = 0;
  v11 = &a4[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_10000E6D4(v22, v20);
  v12 = v21;
  v13 = sub_1000315C0(v20, v21);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13, v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_1000A47C0(a1, a2, v16, a4);
  sub_10000E738(v22);
  sub_10000E738(v20);
  return v18;
}

id sub_1000A4BA8(void *a1, void *a2, char a3)
{
  v7 = type metadata accessor for URLHelper();
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v20 - v14;
  *&v3[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths] = &_swiftEmptySetSingleton;
  if (![a2 rootObject])
  {
    goto LABEL_8;
  }

  type metadata accessor for IMBListRequest();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v17 = 0;
    *&v3[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest] = 0;
    goto LABEL_10;
  }

  *&v3[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest] = v16;
  if (a3)
  {
    if (*(v16 + 16))
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_10:
  v3[OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectionType] = v17;
  sub_10004EA70(v15);
  sub_10001E764(v15, v12);
  v18 = sub_1000A49E0(a1, a2, v12, v3);
  sub_10001E7C8(v15);
  return v18;
}

uint64_t sub_1000A4D2C()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_100072654(v0 + OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBTableViewCellData()
{
  result = qword_1000F3CD0;
  if (!qword_1000F3CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A4DF4()
{
  sub_1000723C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_1000A5008()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBDetailedMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A50E4(uint64_t result)
{
  v4 = *(result + 16);
  v5 = *v1;
  v6 = *(*v1 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = v5[3] >> 1, v11 < v7))
  {
    if (v6 <= v7)
    {
      v12 = v6 + v4;
    }

    else
    {
      v12 = v6;
    }

    v5 = sub_100038A14(isUniquelyReferenced_nonNull_native, v12, 1, v5);
    v11 = v5[3] >> 1;
  }

  v13 = v5[2];
  v14 = v11 - v13;
  result = sub_1000A4198(v50, &v5[6 * v13 + 4], v11 - v13, v8);
  if (result < v4)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v15 = v5[2];
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_20;
    }

    v5[2] = v17;
  }

  if (result != v14)
  {
    result = sub_100012760();
LABEL_14:
    *v1 = v5;
    return result;
  }

LABEL_17:
  v3 = v5[2];
  v14 = v50[1];
  v42 = v50[0];
  v2 = v50[2];
  v17 = v51;
  v18 = v52;
  if (v52)
  {
    v19 = v51;
LABEL_27:
    v23 = (v18 - 1) & v18;
    v24 = __clz(__rbit64(v18)) | (v19 << 6);
    v25 = (*(v42 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_1000068B4(*(v42 + 56) + 32 * v24, &v44);
    *&v47 = v27;
    *(&v47 + 1) = v26;
    sub_100006910(&v44, &v48);

    v22 = v19;
    while (1)
    {
      sub_1000A7CB8(&v47, &v44);
      if (!*(&v44 + 1))
      {
        break;
      }

      v28 = (v2 + 64) >> 6;
      while (1)
      {
        sub_10000E784(&v44, &qword_1000F3EA0, &qword_1000B54C8);
        v29 = v5[3];
        v30 = v29 >> 1;
        if ((v29 >> 1) < v3 + 1)
        {
          v5 = sub_100038A14((v29 > 1), v3 + 1, 1, v5);
          v30 = v5[3] >> 1;
        }

        sub_1000A7CB8(&v47, v43);
        if (*(&v43[0] + 1))
        {
          break;
        }

        v2 = v22;
LABEL_52:
        sub_10000E784(v43, &qword_1000F3EA0, &qword_1000B54C8);
        v31 = v3;
        v22 = v2;
LABEL_31:
        v5[2] = v31;
        sub_1000A7CB8(&v47, &v44);
        if (!*(&v44 + 1))
        {
          goto LABEL_53;
        }
      }

      if (v3 <= v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v3;
      }

      while (1)
      {
        v44 = v43[0];
        v45 = v43[1];
        v46 = v43[2];
        if (v3 == v31)
        {
          sub_10000E784(&v44, &qword_1000F07E0, &qword_1000B54D0);
          v3 = v31;
          goto LABEL_31;
        }

        sub_10000E784(&v47, &qword_1000F3EA0, &qword_1000B54C8);
        v32 = &v5[6 * v3 + 4];
        v34 = v45;
        v33 = v46;
        *v32 = v44;
        v32[1] = v34;
        v32[2] = v33;
        if (!v23)
        {
          break;
        }

        v35 = v22;
LABEL_50:
        v37 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v38 = v37 | (v35 << 6);
        v39 = (*(v42 + 48) + 16 * v38);
        v41 = *v39;
        v40 = v39[1];
        sub_1000068B4(*(v42 + 56) + 32 * v38, v43);
        *&v47 = v41;
        *(&v47 + 1) = v40;
        sub_100006910(v43, &v48);

        v2 = v35;
LABEL_39:
        ++v3;
        sub_1000A7CB8(&v47, v43);
        v22 = v2;
        if (!*(&v43[0] + 1))
        {
          goto LABEL_52;
        }
      }

      if (v28 <= (v22 + 1))
      {
        v36 = v22 + 1;
      }

      else
      {
        v36 = v28;
      }

      v2 = v36 - 1;
      while (1)
      {
        v35 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v35 >= v28)
        {
          v23 = 0;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          goto LABEL_39;
        }

        v23 = *(v14 + 8 * v35);
        ++v22;
        if (v23)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v23 = 0;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
    }

LABEL_53:
    sub_10000E784(&v47, &qword_1000F3EA0, &qword_1000B54C8);
    sub_100012760();
    result = sub_10000E784(&v44, &qword_1000F3EA0, &qword_1000B54C8);
    goto LABEL_14;
  }

LABEL_20:
  v20 = (v2 + 64) >> 6;
  if (v20 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = (v2 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_55;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A5500(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1000AC65C();
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

  v17 = sub_1000AC65C();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1000A6E38(result);
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

char *sub_1000A55F8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macRightButton] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macDismissButton] = 0;
  *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_footerToolbarModel] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for MacFooterToolbarViewController();
  v3 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  v4 = *&v3[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_footerToolbarModel];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  *(v4 + 80) = sub_1000A7D60;
  *(v4 + 88) = v5;

  sub_100026FE0(v6);

  return v3;
}

void sub_1000A5728(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1000A65BC();

    [v4 setHidden:(a1 & 1) == 0];
  }
}

void sub_1000A57DC()
{
  v1 = v0;
  v97.receiver = v0;
  v97.super_class = type metadata accessor for MacFooterToolbarViewController();
  objc_msgSendSuper2(&v97, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v3 = v2;
  if (qword_1000EEDC0 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor:qword_1000FBEF0];

  v4 = [v1 view];
  if (!v4)
  {
    goto LABEL_38;
  }

  v5 = v4;
  v6 = sub_1000A65BC();
  [v5 addSubview:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = v7;
  v9 = sub_1000A6634();
  [v8 addSubview:v9];

  v10 = *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_footerToolbarModel];
  v11 = *(v10 + 24);
  v12 = *(v10 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  if (v12)
  {
    v13 = sub_1000A670C();
    v14 = *(v10 + 16);
    v15 = *(v10 + 24);

    v16 = sub_1000AC02C();

    [v13 setTitle:v16 forState:0];

    [*&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView] addArrangedSubview:*&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton]];
  }

  v17 = [objc_allocWithZone(UIView) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView;
  v89 = v17;
  [*&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView] addArrangedSubview:v17];
  v19 = *(v10 + 72);
  v20 = *(v10 + 64) & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  if (v20 && sub_10002CE60() == 2)
  {
    v21 = sub_1000A67D8();
    v22 = *(v10 + 64);
    v23 = *(v10 + 72);

    v24 = sub_1000AC02C();

    [v21 setTitle:v24 forState:0];

    [*&v1[v18] addArrangedSubview:*&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macDismissButton]];
  }

  v25 = *(v10 + 48);
  v26 = *(v10 + 40) & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v25) & 0xF;
  }

  if (v26)
  {
    v27 = sub_1000A67C0();
    v28 = *(v10 + 40);
    v29 = *(v10 + 48);

    v30 = sub_1000AC02C();

    [v27 setTitle:v30 forState:0];

    [*&v1[v18] addArrangedSubview:*&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macRightButton]];
  }

  v31 = [objc_opt_self() separatorColor];
  v32 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView;
  v33 = *&v1[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView];
  [v33 setBackgroundColor:v31];

  [*&v1[v32] setHidden:(*(v10 + 96) & 1) == 0];
  v34 = [v1 view];
  if (!v34)
  {
    goto LABEL_40;
  }

  v35 = v34;
  v36 = sub_100005A24(0, &qword_1000F0F30, UIView_ptr);
  v96[3] = v36;
  v96[4] = &off_1000DD8B0;
  v96[0] = v35;
  v37 = [v1 view];
  if (!v37)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v94 = v36;
  v95 = &off_1000DD8B0;
  v93[0] = v37;
  v38 = [v1 view];
  if (!v38)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v91 = v36;
  v92 = &off_1000DD8B0;
  v90[0] = v38;
  [*&v1[v32] setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = [*&v1[v32] heightAnchor];
  v40 = [v1 traitCollection];
  [v40 displayScale];
  v42 = v41;

  if (v42 <= 0.0)
  {
    v43 = [objc_opt_self() mainScreen];
    [v43 scale];
    v42 = v44;

    if (v42 <= 0.0)
    {
      v42 = 1.0;
    }
  }

  v45 = [v39 constraintEqualToConstant:1.0 / v42];

  [v45 setActive:1];
  v46 = [*&v1[v32] topAnchor];
  sub_1000058D0(v96, v36);
  v47 = sub_10007BF08();
  v48 = [v46 constraintEqualToAnchor:v47 constant:0.0];

  [v48 setActive:1];
  v49 = [*&v1[v32] leadingAnchor];
  v50 = v94;
  v51 = v95;
  sub_1000058D0(v93, v94);
  v52 = (v51[1])(v50, v51);
  v53 = [v49 constraintEqualToAnchor:v52 constant:16.0];

  [v53 setActive:1];
  v54 = [*&v1[v32] trailingAnchor];
  v55 = v91;
  v56 = v92;
  sub_1000058D0(v90, v91);
  v57 = (v56[2])(v55, v56);
  v58 = [v54 constraintEqualToAnchor:v57 constant:-16.0];

  [v58 setActive:1];
  sub_10000E738(v90);
  sub_10000E738(v93);
  sub_10000E738(v96);
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1000B04D0;
  v60 = [*&v1[v18] leadingAnchor];
  v61 = [v1 view];
  if (!v61)
  {
    goto LABEL_43;
  }

  v62 = v61;
  v63 = [v61 leadingAnchor];

  v64 = [v60 constraintEqualToAnchor:v63 constant:16.0];
  *(v59 + 32) = v64;
  v65 = [*&v1[v18] topAnchor];
  v66 = [*&v1[v32] bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:16.0];

  *(v59 + 40) = v67;
  v68 = [*&v1[v18] trailingAnchor];
  v69 = [v1 view];
  if (!v69)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v70 = v69;
  v71 = [v69 trailingAnchor];

  v72 = [v68 constraintEqualToAnchor:v71 constant:-16.0];
  *(v59 + 48) = v72;
  v73 = [*&v1[v18] bottomAnchor];
  v74 = [v1 view];
  if (!v74)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v75 = v74;
  v76 = objc_opt_self();
  v77 = [v75 bottomAnchor];

  v78 = [v73 constraintEqualToAnchor:v77 constant:-16.0];
  *(v59 + 56) = v78;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v76 activateConstraints:isa];

  v80 = *(v10 + 72);
  v81 = *(v10 + 64) & 0xFFFFFFFFFFFFLL;
  if ((v80 & 0x2000000000000000) != 0)
  {
    v81 = HIBYTE(v80) & 0xF;
  }

  if (v81 && sub_10002CE60() == 2)
  {
    v82 = *(v10 + 48);
    v83 = *(v10 + 40) & 0xFFFFFFFFFFFFLL;
    if ((v82 & 0x2000000000000000) != 0)
    {
      v83 = HIBYTE(v82) & 0xF;
    }

    if (v83)
    {
      v84 = sub_1000A67D8();
      v85 = [v84 widthAnchor];

      v86 = sub_1000A67C0();
      v87 = [v86 widthAnchor];

      v88 = [v85 constraintEqualToAnchor:v87];
      [v88 setActive:1];
    }
  }
}

void *sub_1000A6360()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for MacFooterToolbarViewController();
  v1 = objc_msgSendSuper2(&v18, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100005A24(0, &qword_1000F3E88, UIKeyCommand_ptr);
    v3 = sub_1000AC19C();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v19 = v3;
  v4 = *&v0[OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_footerToolbarModel];
  v5 = v4[9];
  v6 = v4[8] & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6)
  {
    if (sub_10002CE60() == 2)
    {
      v7 = sub_1000A67D8();
      v8 = [v7 isEnabled];

      if (v8)
      {
        sub_10000413C(&unk_1000F06B0, qword_1000B0520);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000B04C0;
        *(inited + 32) = [objc_opt_self() keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"dismissButtonTapped"];
        sub_1000A5500(inited, sub_1000A7858);
      }
    }
  }

  v10 = v4[6];
  v11 = v4[5] & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  if (v11)
  {
    v12 = sub_1000A67C0();
    v13 = [v12 isEnabled];

    if (v13)
    {
      sub_10000413C(&unk_1000F06B0, qword_1000B0520);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_1000B04C0;
      v15 = sub_1000AC02C();
      v16 = [objc_opt_self() keyCommandWithInput:v15 modifierFlags:0 action:"rightButtonTapped"];

      *(v14 + 32) = v16;
      sub_1000A5500(v14, sub_1000A7858);
    }
  }

  return v19;
}

id sub_1000A65BC()
{
  v1 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000A6634()
{
  v1 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setAxis:0];
    [v4 setDistribution:0];
    [v4 setAlignment:5];
    [v4 setSpacing:12.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000A670C()
{
  v1 = OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton;
  v2 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton);
  }

  else
  {
    type metadata accessor for MacLeftButton();
    v4 = [swift_getObjCClassFromMetadata() buttonWithType:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addTarget:v0 action:"leftButtonTapped" forControlEvents:64];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000A67F0(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_opt_self() buttonWithType:1];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addTarget:v3 action:*a2 forControlEvents:64];
    [v9 setRole:a3];
    v10 = *(v3 + v4);
    *(v3 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

uint64_t sub_1000A6C08(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1000A6C54(char a1)
{
  v2 = sub_1000A670C();
  [v2 setEnabled:a1 & 1];

  v3 = sub_1000A67C0();
  [v3 setEnabled:a1 & 1];
}

id sub_1000A6DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000A6E38(uint64_t a1)
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
    sub_1000AC65C();
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
  result = sub_1000AC5BC();
  *v1 = result;
  return result;
}

uint64_t sub_1000A6ED8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
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
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3C20, &qword_1000F3C18, &unk_1000B52C0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3C18, &unk_1000B52C0);
            v9 = sub_1000A79F8(v13, i, a3);
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
        sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
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

uint64_t sub_1000A7078(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
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
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3EE0, &qword_1000F3ED8, &qword_1000B54F0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3ED8, &qword_1000B54F0);
            v9 = sub_1000A7A78(v13, i, a3);
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
        type metadata accessor for IMBProposedDate();
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

uint64_t sub_1000A7208(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
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
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3ED0, &qword_1000F3EC8, &qword_1000B54E8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3EC8, &qword_1000B54E8);
            v9 = sub_1000A7A78(v13, i, a3);
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
        type metadata accessor for IMBProposedTimeslot();
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

uint64_t sub_1000A7398(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
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
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3EC0, &qword_1000F3EB8, &qword_1000B54E0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3EB8, &qword_1000B54E0);
            v9 = sub_1000A7AF8(v13, i, a3);
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
        type metadata accessor for IMBListItem();
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

uint64_t sub_1000A7528(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
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
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3EB0, &qword_1000F3EA8, &qword_1000B54D8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3EA8, &qword_1000B54D8);
            v9 = sub_1000A7A78(v13, i, a3);
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
        type metadata accessor for IMBListSection();
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

uint64_t sub_1000A76B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
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
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3EF0, &qword_1000F3EE8, &qword_1000B54F8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3EE8, &qword_1000B54F8);
            v9 = sub_1000A79F8(v13, i, a3);
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
        sub_100005A24(0, &qword_1000F1BF0, EKEvent_ptr);
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

uint64_t sub_1000A7858(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000AC65C();
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
      result = sub_1000AC65C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000A7D68(&qword_1000F3E98, &qword_1000F3E90, &unk_1000B54B8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000413C(&qword_1000F3E90, &unk_1000B54B8);
            v9 = sub_1000A7B80(v13, i, a3);
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
        sub_100005A24(0, &qword_1000F3E88, UIKeyCommand_ptr);
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

uint64_t (*sub_1000A79F8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000AC5AC();
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
    return sub_1000A7DC0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000A7A78(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_1000AC5AC();
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
    *v3 = v5;
    return sub_1000A7DBC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000A7AF8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_1000AC5AC();
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
    *v3 = v5;
    return sub_1000A7B78;
  }

  __break(1u);
  return result;
}

void (*sub_1000A7B80(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000AC5AC();
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
    return sub_1000A7C00;
  }

  __break(1u);
  return result;
}

void sub_1000A7C08()
{
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macFooterToolbarStackView) = 0;
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macLeftButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macRightButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController____lazy_storage___macDismissButton) = 0;
  sub_1000AC63C();
  __break(1u);
}

uint64_t sub_1000A7CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F3EA0, &qword_1000B54C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7D28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A7D68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000041E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A7DC4()
{
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000B08F0;
  v2 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
  v3 = [v2 leadingAnchor];
  v4 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];

  *(v1 + 32) = v6;
  v7 = [v2 topAnchor];
  v8 = [v4 topAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8 constant:10.0];

  *(v1 + 40) = v9;
  v10 = [v2 bottomAnchor];
  v11 = [v4 bottomAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor:v11 constant:-10.0];

  *(v1 + 48) = v12;
  v13 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView);
  v14 = [v13 leadingAnchor];
  v15 = [v2 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:10.0];

  *(v1 + 56) = v16;
  v17 = [v13 trailingAnchor];
  v18 = [v4 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v1 + 64) = v19;
  v20 = [v13 centerYAnchor];
  v21 = [v4 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v1 + 72) = v22;
  v23 = [v2 centerYAnchor];
  v24 = [v4 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v1 + 80) = v25;
  v26 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall);
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall) = v1;

  v27 = [v2 leadingAnchor];
  v28 = [v13 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:10.0];

  v30 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint;
  v31 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint);
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint) = v29;

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000B08F0;
  v33 = [v13 centerYAnchor];
  v34 = [v4 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v32 + 32) = v35;
  v36 = [v13 leadingAnchor];
  v37 = [v4 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  v39 = *(v0 + v30);
  *(v32 + 40) = v38;
  *(v32 + 48) = v39;
  v40 = v39;
  v41 = [v2 topAnchor];
  v42 = [v4 topAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42 constant:10.0];

  *(v32 + 56) = v43;
  v44 = [v2 bottomAnchor];
  v45 = [v4 bottomAnchor];
  v46 = [v44 constraintLessThanOrEqualToAnchor:v45 constant:-10.0];

  *(v32 + 64) = v46;
  v47 = [v2 trailingAnchor];
  v48 = [v4 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v32 + 72) = v49;
  v50 = [v2 centerYAnchor];
  v51 = [v4 centerYAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v32 + 80) = v52;
  v53 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall);
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall) = v32;

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1000B08E0;
  v55 = [v2 leadingAnchor];
  v56 = [v4 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v54 + 32) = v57;
  v58 = [v2 topAnchor];
  v59 = [v4 topAnchor];
  v60 = [v58 constraintGreaterThanOrEqualToAnchor:v59 constant:10.0];

  *(v54 + 40) = v60;
  v61 = [v2 bottomAnchor];
  v62 = [v4 bottomAnchor];
  v63 = [v61 constraintLessThanOrEqualToAnchor:v62 constant:-10.0];

  *(v54 + 48) = v63;
  v64 = [v2 trailingAnchor];
  v65 = [v4 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v54 + 56) = v66;
  v67 = [v2 centerYAnchor];
  v68 = [v4 centerYAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v54 + 64) = v69;
  v70 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints);
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints) = v54;
}

void sub_1000A8634()
{
  [v0 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_style];
  v2 = sub_1000AC06C();
  v4 = v3;
  if (v2 == sub_1000AC06C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1000AC7AC();
    v8 = v1;

    if (v7)
    {
    }

    else
    {
      v9 = sub_1000AC06C();
      v11 = v10;
      if (v9 != sub_1000AC06C() || v11 != v12)
      {
        sub_1000AC7AC();
      }
    }
  }
}

void sub_1000A8790()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor];
  [v0 setBackgroundColor:v1];
  [v0 setLayoutMargins:{0.0, 15.0, 0.0, 15.0}];
  if (!UIApp)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v4 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel];
  if (IsAccessibilityContentSizeCategory)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  [*&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel] setNumberOfLines:v5];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = [v6 fontWithDescriptor:v9 size:0.0];

  [v4 setFont:v10];
  [v4 setLineBreakMode:4];
  v11 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v13 = [v12 fontDescriptor];
  v14 = [v13 fontDescriptorWithSymbolicTraits:0x8000];

  if (!v14)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v15 = [v6 fontWithDescriptor:v14 size:0.0];

  [v11 setFont:v15];
  [v11 setLineBreakMode:4];
  v16 = [objc_opt_self() secondaryLabelColor];
  [v11 setTextColor:v16];

  [v11 setNumberOfLines:0];
  v17 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageView];
  [v17 setContentMode:2];
  v18 = [v17 layer];
  [v18 setMasksToBounds:1];

  v19 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer];
  [v19 addSubview:v4];
  [v19 addSubview:v11];
  v20 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground];
  [v20 setBackgroundColor:v1];
  v21 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_style];
  v22 = sub_1000AC06C();
  v24 = v23;
  if (v22 == sub_1000AC06C() && v24 == v25)
  {
  }

  else
  {
    v26 = sub_1000AC7AC();

    if ((v26 & 1) == 0)
    {
      v27 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationView];
      [v27 addSubview:v19];
      [v27 addSubview:v17];
      v28 = [v17 layer];
      [v28 setCornerRadius:10.0];

      goto LABEL_13;
    }
  }

  v27 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationView];
  [v27 addSubview:v19];
  [v0 addSubview:v17];
LABEL_13:
  [v0 addSubview:v20];

  [v0 addSubview:v27];
}

void sub_1000A8C28()
{
  sub_1000A7DC4();
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v147 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageView];
  [v147 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v145 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationView];
  [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
  v146 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground];
  [v146 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v0 widthAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];

  v6 = OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint;
  v7 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint] = v5;

  v8 = [v0 heightAnchor];
  v9 = [v8 constraintEqualToConstant:0.0];

  v10 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint] = v9;
  v11 = v9;

  LODWORD(v12) = 1148846080;
  [v11 setPriority:v12];

  v13 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000B04C0;
  v15 = *&v0[v6];
  *(v14 + 32) = v15;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  v16 = v15;
  isa = sub_1000AC18C().super.isa;

  v148 = v13;
  [v13 activateConstraints:isa];

  LODWORD(v18) = 1144750080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v18];
  v19 = [v2 topAnchor];
  v20 = [v1 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  [v21 setActive:1];
  v22 = [v2 leftAnchor];
  v23 = [v1 leftAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = [v2 rightAnchor];
  v26 = [v1 rightAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  [v27 setActive:1];
  LODWORD(v28) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v28];
  v29 = [v3 firstBaselineAnchor];
  v30 = [v2 lastBaselineAnchor];
  v31 = [v29 constraintEqualToSystemSpacingBelowAnchor:v30 multiplier:1.0];

  [v31 setActive:1];
  v32 = [v3 leftAnchor];
  v33 = [v1 leftAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  [v34 setActive:1];
  v35 = [v3 rightAnchor];
  v36 = [v1 rightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  [v37 setActive:1];
  v38 = [v3 bottomAnchor];
  v39 = [v1 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setActive:1];
  LODWORD(v41) = 1144750080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v41];
  v42 = [v3 heightAnchor];
  v43 = [v3 font];
  if (!v43)
  {
    __break(1u);
    return;
  }

  v44 = v43;
  [v43 lineHeight];
  v46 = v45;

  v47 = [v42 constraintGreaterThanOrEqualToConstant:v46];
  v48 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint] = v47;

  v49 = [v145 rightAnchor];
  v50 = [v0 layoutMarginsGuide];
  v51 = [v50 rightAnchor];

  v52 = [v49 constraintEqualToAnchor:v51];
  LODWORD(v53) = 1148829696;
  [v52 setPriority:v53];
  v54 = [v145 leftAnchor];
  v55 = [v0 layoutMarginsGuide];
  v56 = [v55 leftAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  [v57 setActive:1];

  v58 = [v145 bottomAnchor];
  v59 = [v0 bottomAnchor];
  if (qword_1000EEDB8 != -1)
  {
    swift_once();
  }

  v60 = -*&qword_1000FBEE8;
  v61 = [v58 constraintEqualToAnchor:v59 constant:{-*&qword_1000FBEE8, 1, 3}];

  [v61 setActive:1];
  v62 = swift_allocObject();
  *(v62 + 16) = v143;
  *(v62 + 32) = v52;
  v144 = v52;
  v63 = sub_1000AC18C().super.isa;

  [v13 activateConstraints:v63];

  v64 = [v146 heightAnchor];
  v65 = [v145 heightAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  [v66 setActive:1];
  v67 = [v146 leftAnchor];
  v68 = [v0 leftAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  [v69 setActive:1];
  v70 = [v146 rightAnchor];
  v71 = [v0 rightAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  [v72 setActive:1];
  v73 = [v146 bottomAnchor];
  v74 = [v0 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:v60];

  [v75 setActive:1];
  v76 = OBJC_IVAR____TtC8Business13IMBBubbleView_style;
  v77 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_style];
  v78 = sub_1000AC06C();
  v80 = v79;
  if (v78 == sub_1000AC06C() && v80 == v81)
  {
    v82 = v147;
    v83 = v145;
    goto LABEL_7;
  }

  v84 = sub_1000AC7AC();

  v82 = v147;
  v83 = v145;
  if (v84)
  {
    goto LABEL_9;
  }

  v99 = *&v0[v76];
  v100 = sub_1000AC06C();
  v102 = v101;
  if (v100 == sub_1000AC06C() && v102 == v103)
  {
LABEL_7:

LABEL_9:
    v85 = [v83 topAnchor];
    v86 = [v0 topAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];

    [v87 setActive:1];
    v88 = [v82 heightAnchor];
    v89 = [v82 widthAnchor];
    v90 = [v88 constraintEqualToAnchor:v89 multiplier:1.0];

    goto LABEL_10;
  }

  v104 = sub_1000AC7AC();

  if (v104)
  {
    goto LABEL_9;
  }

  v105 = [v147 topAnchor];
  v106 = [v0 topAnchor];
  v107 = [v105 constraintEqualToAnchor:v106];

  [v107 setActive:1];
  v108 = [v147 leftAnchor];
  v109 = [v0 leftAnchor];
  v110 = [v108 constraintEqualToAnchor:v109];

  [v110 setActive:1];
  v111 = [v147 rightAnchor];
  v112 = [v0 rightAnchor];
  v113 = [v111 constraintEqualToAnchor:v112];

  [v113 setActive:1];
  v114 = [v147 bottomAnchor];
  v115 = [v145 topAnchor];
  v116 = [v114 constraintEqualToAnchor:v115];

  [v116 setActive:1];
  v117 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_image];
  v118 = [v147 heightAnchor];
  v119 = v118;
  v120 = 150.0;
  if (!v117)
  {
    v120 = 0.0;
  }

  v121 = [v118 constraintEqualToConstant:v120];

  v89 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint] = v121;
  v90 = v121;
LABEL_10:

  [v90 setActive:1];
  v91 = *&v0[v76];
  v92 = sub_1000AC06C();
  v94 = v93;
  if (v92 == sub_1000AC06C() && v94 == v95)
  {

LABEL_14:
    v97 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints];

    v98.super.isa = sub_1000AC18C().super.isa;

    [v148 activateConstraints:v98.super.isa];
    goto LABEL_25;
  }

  v96 = sub_1000AC7AC();

  if (v96)
  {
    goto LABEL_14;
  }

  if (v0[OBJC_IVAR____TtC8Business13IMBBubbleView_type])
  {
    v122 = &OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall;
  }

  else
  {
    v122 = &OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall;
  }

  v123 = *&v0[*v122];

  v124 = sub_1000AC18C().super.isa;

  [v148 activateConstraints:v124];

  v98.super.isa = [v82 layer];
  [(objc_class *)v98.super.isa setCornerRadius:10.0];
LABEL_25:

  v125 = *&v0[v76];
  v126 = sub_1000AC06C();
  v128 = v127;
  if (v126 == sub_1000AC06C() && v128 == v129)
  {

LABEL_30:
    p_attr = &stru_1000E5FF8.attr;
    v133 = [v82 widthAnchor];
    v134 = [v133 constraintEqualToConstant:60.0];
    goto LABEL_31;
  }

  v130 = sub_1000AC7AC();
  v131 = v125;

  if (v130)
  {

    goto LABEL_30;
  }

  v138 = sub_1000AC06C();
  v140 = v139;
  p_attr = (&stru_1000E5FF8 + 8);
  if (v138 == sub_1000AC06C() && v140 == v141)
  {

    goto LABEL_32;
  }

  v142 = sub_1000AC7AC();

  if (v142)
  {
    goto LABEL_32;
  }

  v133 = [v82 widthAnchor];
  v134 = [v133 constraintEqualToConstant:40.0];
LABEL_31:
  v135 = v134;

  v136 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint] = v135;

LABEL_32:
  v137 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint];
  [v137 p_attr[316]];
}

id sub_1000A9D9C()
{
  v1 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_touch];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor];
  [v0 setBackgroundColor:v2];
  v3 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground];

  return [v3 setBackgroundColor:v2];
}

uint64_t sub_1000A9E1C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1000AC4CC();
    v5 = v4;
    v6 = sub_1000AC51C();
    v8 = v7;
    v9 = sub_1000AC4DC();
    sub_1000AB50C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000AB50C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1000AC4AC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000AAB90(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1000AB50C(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1000A9F38()
{
  v1 = v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &off_1000DE0A0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000A9FF0()
{
  if (UIApp)
  {
    v1 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    v3 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
    v4 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);
    if (IsAccessibilityContentSizeCategory)
    {
      if (v4)
      {
        v5 = *v3;
        v6 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);

        v7 = sub_1000AC02C();

        v8 = sub_1000AC02C();
        v9 = sub_1000AC02C();
        v10 = [v7 stringByReplacingOccurrencesOfString:v8 withString:v9];

        if (!v10)
        {
          sub_1000AC06C();
          v10 = sub_1000AC02C();
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel);
    }

    else
    {
      v11 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel);
      if (v4)
      {
        v12 = *v3;
        v13 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);

        v10 = sub_1000AC02C();
      }

      else
      {
        v10 = 0;
      }
    }

    [v11 setText:v10];

    v14 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);
    if (!v14 || (!*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title) ? (v15 = v14 == 0xE000000000000000) : (v15 = 0), v15 || (sub_1000AC7AC() & 1) != 0))
    {
      v16 = [v11 heightAnchor];
      v17 = [v16 constraintEqualToConstant:0.0];

      [v17 setActive:1];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000AA2B0()
{
  v1 = OBJC_IVAR____TtC8Business13IMBBubbleView_image;
  [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView) setImage:*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image)];
  if (*(v0 + v1))
  {
    v2 = OBJC_IVAR____TtC8Business13IMBBubbleView_style;
    v3 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style);
    v4 = sub_1000AC06C();
    v6 = v5;
    if (v4 == sub_1000AC06C() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_1000AC7AC();

      if ((v9 & 1) == 0)
      {
        v10 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint);
        if (v10)
        {
          v11 = *(v0 + v2);
          v12 = sub_1000AC06C();
          v14 = v13;
          if (v12 == sub_1000AC06C() && v14 == v15)
          {
            v29 = v10;

            v18 = 40.0;
          }

          else
          {
            v17 = sub_1000AC7AC();
            v29 = v10;

            v18 = 60.0;
            if (v17)
            {
              v18 = 40.0;
            }
          }

          [v29 setConstant:v18];
        }

        return;
      }
    }

    v27 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint);
    if (!v27)
    {
      return;
    }

    v28 = 150.0;
  }

  else
  {
    v19 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint);
    if (v19)
    {
      [v19 setConstant:1.0];
    }

    [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint) setConstant:0.0];
    v20 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style);
    v21 = sub_1000AC06C();
    v23 = v22;
    if (v21 == sub_1000AC06C() && v23 == v24)
    {
    }

    else
    {
      v26 = sub_1000AC7AC();

      if ((v26 & 1) == 0)
      {
        return;
      }
    }

    v27 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint);
    v28 = 0.0;
  }

  [v27 setConstant:v28];
}

void sub_1000AA5C4()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for IMBBubbleView();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint];
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  v3 = v1;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000AC06C();
    v8 = v7;

    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == 0xE000000000000000;
    }

    if (v9)
    {

      goto LABEL_10;
    }

    v10 = sub_1000AC7AC();

    if (v10)
    {
      goto LABEL_10;
    }
  }

  v11 = [v2 text];
  if (!v11)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v12 = 1;
LABEL_11:
  [v3 setActive:v12];
}

uint64_t sub_1000AA754(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_100005A24(0, &qword_1000F2A68, UITouch_ptr);
  sub_100080BF0();
  v8 = sub_1000AC26C();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

id sub_1000AA8BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000AAB08(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1000AAB90(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000AC50C();
      sub_100005A24(0, &qword_1000F2A68, UITouch_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100005A24(0, &qword_1000F2A68, UITouch_ptr);
    if (sub_1000AC4EC() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1000AC4FC();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_1000AC3CC(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_1000AC3DC();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_1000AADB4()
{
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_touchDelay) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = BCBubbleViewStyleIcon;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style) = BCBubbleViewStyleIcon;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_type) = 0;
  v2 = OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel;
  v3 = objc_allocWithZone(UILabel);
  v4 = v1;
  *(v0 + v2) = [v3 init];
  v5 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC8Business13IMBBubbleView_informationView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  v9 = OBJC_IVAR____TtC8Business13IMBBubbleView_imageView;
  *(v0 + v9) = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor;
  if (qword_1000EEDA8 != -1)
  {
    swift_once();
  }

  v11 = qword_1000FBED8;
  *(v0 + v10) = qword_1000FBED8;
  v12 = OBJC_IVAR____TtC8Business13IMBBubbleView_highlightColor;
  v13 = qword_1000EEDB0;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_1000FBEE0;
  *(v0 + v12) = qword_1000FBEE0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelWidthConstraint) = 0;
  v16 = v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_touch;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_touchTimestamp;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget) = 0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints) = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewSpacingConstraint;
  v19 = objc_allocWithZone(NSLayoutConstraint);
  v20 = v15;
  *(v0 + v18) = [v19 init];
  v21 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerWidthConstraint;
  *(v0 + v21) = [objc_allocWithZone(NSLayoutConstraint) init];
  v22 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint;
  *(v0 + v22) = [objc_allocWithZone(NSLayoutConstraint) init];
  v23 = OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabelWidthConstraint;
  *(v0 + v23) = [objc_allocWithZone(NSLayoutConstraint) init];
  v24 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelWidthConstraint;
  *(v0 + v24) = [objc_allocWithZone(NSLayoutConstraint) init];
  v25 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint;
  *(v0 + v25) = [objc_allocWithZone(NSLayoutConstraint) init];
  v26 = OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint;
  *(v0 + v26) = [objc_allocWithZone(NSLayoutConstraint) init];
  v27 = OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint;
  *(v0 + v27) = [objc_allocWithZone(NSLayoutConstraint) init];
  v28 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle);
  *v29 = 0;
  v29[1] = 0;
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = 0;
  sub_1000AC63C();
  __break(1u);
}

id sub_1000AB154(uint64_t a1)
{
  v2 = sub_1000A9E1C(a1);
  if (v2)
  {
    v3 = [v1 window];
    [v2 locationInView:v3];
    v11 = v4;
    v12 = v5;

    *&v6 = v11;
    *(&v6 + 1) = v12;
  }

  else
  {
    v6 = 0uLL;
  }

  v7 = &v1[OBJC_IVAR____TtC8Business13IMBBubbleView_touch];
  *v7 = v6;
  v7[16] = v2 == 0;
  v8 = *&v1[OBJC_IVAR____TtC8Business13IMBBubbleView_highlightColor];
  [v1 setBackgroundColor:v8];
  v9 = *&v1[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground];

  return [v9 setBackgroundColor:v8];
}

void sub_1000AB238(uint64_t a1)
{
  v2 = sub_1000A9E1C(a1);
  if (v2)
  {
    v25 = v2;
    Strong = [v2 tapCount];
    if (!Strong)
    {
      goto LABEL_16;
    }

    v4 = (v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_touchTimestamp);
    if ((*(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_touchTimestamp + 8) & 1) == 0)
    {
      v5 = *v4 + 2.0;
      Strong = [v25 timestamp];
      if (v6 < v5)
      {
        goto LABEL_16;
      }
    }

    Strong = [v25 timestamp];
    *v4 = v7;
    *(v4 + 8) = 0;
    v8 = (v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_touch);
    if (*(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_touch + 16) == 1)
    {
      goto LABEL_16;
    }

    v10 = *v8;
    v9 = v8[1];
    v11 = [v1 window];
    [v25 locationInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = sqrt((v10 - v13) * (v10 - v13) + (v9 - v15) * (v9 - v15));
    Strong = [v25 locationInView:v1];
    if (*(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget) == 1)
    {
      v19 = v17;
      v20 = v18;
      [*(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground) frame];
      v27.x = v19;
      v27.y = v20;
      Strong = CGRectContainsPoint(v28, v27);
      if (v16 < 15.0)
      {
        if ((Strong & 1) == 0)
        {
          v21 = v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v22 = *(v21 + 1);
            ObjectType = swift_getObjectType();
            (*(v22 + 16))(v1, &off_1000DE0A0, ObjectType, v22);
            Strong = swift_unknownObjectRelease();
          }

          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if (v16 < 15.0)
    {
LABEL_15:
      Strong = (*((swift_isaMask & *v1) + 0x3B8))();
    }

LABEL_16:
    (*((swift_isaMask & *v1) + 0x3A8))(Strong);

    return;
  }

  v24 = *((swift_isaMask & *v1) + 0x3A8);

  v24();
}

uint64_t sub_1000AB50C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}