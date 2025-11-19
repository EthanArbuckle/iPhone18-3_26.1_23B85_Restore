uint64_t sub_76100(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_127F60, &unk_F3970);
  result = sub_F10FC();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_54F88((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_54ED8(v24, &v37);
        sub_3FE38(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_F0F1C(*(v8 + 40));
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
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_54F88(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

char *sub_763B8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_F12FC();

      sub_F089C();
      v13 = sub_F132C();

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
        result = (v18 + 160 * v3);
        v19 = (v18 + 160 * v6);
        if (v3 != v6 || result >= v19 + 160)
        {
          result = memmove(result, v19, 0xA0uLL);
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

uint64_t sub_7656C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      sub_54ED8(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_F0F1C(*(a2 + 40));
      result = sub_54F34(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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

unint64_t sub_76710(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_76758(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_54F88(a4, (a5[7] + 32 * a1));
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

unint64_t sub_767C4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 160 * result);
  v7 = a4[5];
  v6[4] = a4[4];
  v6[5] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a4[9];
  v6[8] = a4[8];
  v6[9] = v9;
  v10 = a4[7];
  v6[6] = a4[6];
  v6[7] = v10;
  v11 = a4[1];
  *v6 = *a4;
  v6[1] = v11;
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_76838(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_54F88(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_768B4()
{
  v1 = v0;
  sub_388C8(&qword_128598, &unk_F3750);
  v2 = *v0;
  v3 = sub_F10EC();
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

id sub_76A24()
{
  v1 = v0;
  sub_388C8(&qword_128580, &unk_F3730);
  v2 = *v0;
  v3 = sub_F10EC();
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

void *sub_76B90()
{
  v1 = v0;
  sub_388C8(&qword_128588, &unk_F3740);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v32 = v1;
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
        v22 = 160 * v17;
        sub_7766C(*(v2 + 56) + 160 * v17, v33);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = v33[1];
        *v24 = v33[0];
        v26 = v33[6];
        v27 = v33[7];
        v28 = v33[9];
        v24[8] = v33[8];
        v24[9] = v28;
        v24[6] = v26;
        v24[7] = v27;
        v29 = v33[2];
        v30 = v33[3];
        v31 = v33[5];
        v24[4] = v33[4];
        v24[5] = v31;
        v24[2] = v29;
        v24[3] = v30;
        v24[1] = v25;
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

        v1 = v32;
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

void *sub_76D70()
{
  v1 = v0;
  sub_388C8(&qword_128590, &qword_F3930);
  v2 = *v0;
  v3 = sub_F10EC();
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
        sub_3FE38(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_54F88(v25, (*(v4 + 56) + v22));
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

void *sub_76F14()
{
  v1 = v0;
  sub_388C8(&qword_127F60, &unk_F3970);
  v2 = *v0;
  v3 = sub_F10EC();
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
        sub_54ED8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_3FE38(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_54F88(v22, (*(v4 + 56) + v17));
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

void sub_770B8(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_773B4(v7, v4, v2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_77218(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_77218(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v3 = a3;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 16 * v13 + 8);
    v15 = *(*(v3 + 56) + 8 * v13);

    v16 = v15;
    v17 = [v16 operationStatus];
    if (v17)
    {
      v25 = v8;
      v18 = v3;
      v19 = v17;
      v20 = [v17 switchState];

      v3 = v18;
      v8 = v25;
      if (!v20)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_17:
          sub_7742C(a1, v22, v24, v3);
          return;
        }
      }
    }

    else
    {
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_773B4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_77218(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_7742C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_388C8(&qword_128580, &unk_F3730);
  result = sub_F110C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_F12FC();

    v34 = v21;
    sub_F089C();
    result = sub_F132C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_776C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_776D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_1285C0, &qword_F3780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_77754(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_7779C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void RCSServiceSession.process(participantChange:)(uint64_t a1)
{
  v2 = v1;
  v42 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v4 = *(*(v42 - 8) + 64);
  v5 = __chkstk_darwin(v42);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = sub_F06CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.rcs.unsafeMutableAddressor();
  v16 = *(v11 + 16);
  v41 = v10;
  v16(v14, v15, v10);
  sub_77C34(a1, v9);
  sub_77C34(a1, v7);
  v17 = sub_F06AC();
  v18 = sub_F0CCC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a1;
    v20 = v19;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v20 = 136446466;
    sub_F035C();
    sub_5F9D4();
    v21 = sub_F11EC();
    v23 = v22;
    sub_372B0(v9, &qword_127EE0, qword_F2CB0);
    v24 = sub_3E850(v21, v23, &v43);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = v42;
    v26 = RCSParticipantChange.debugDescription.getter(v42);
    v28 = v27;
    sub_372B0(v7, &qword_127EE0, qword_F2CB0);
    v29 = sub_3E850(v26, v28, &v43);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_0, v17, v18, "Internalizing participant change %{public}s: %s", v20, 0x16u);
    swift_arrayDestroy();

    a1 = v40;

    (*(v11 + 8))(v14, v41);
  }

  else
  {

    sub_372B0(v7, &qword_127EE0, qword_F2CB0);
    sub_372B0(v9, &qword_127EE0, qword_F2CB0);
    (*(v11 + 8))(v14, v41);
    v25 = v42;
  }

  v30 = [v2 account];
  v31 = RCSParticipantChange.imdChangeContexts(with:)(v30, v25);

  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = (v31 + 40);
    do
    {
      v34 = *(v33 - 1);
      if (*v33 == 1)
      {
        [v2 didUpdateChatStatusWithContext:v34];
      }

      else
      {
        v35 = v34;
        v36 = [v2 didChangeMemberStatus:v35];
      }

      v33 += 16;
      --v32;
    }

    while (v32);
  }

  v37 = [objc_opt_self() sharedInstance];
  [v37 storeChat:*(a1 + *(v25 + 36))];
}

uint64_t sub_77C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EE0, qword_F2CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_77CA4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v79 - v11;
  v13 = sub_F06CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v79 - v19;
  v21 = Logger.rcs.unsafeMutableAddressor();
  v22 = *(v14 + 16);
  v85 = a2;
  v86 = v13;
  v87 = v3;
  if (a2)
  {
    v22(v20, v21, v13);
    sub_77C34(a1, v12);
    v23 = sub_F06AC();
    v24 = sub_F0CCC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v88[0] = v26;
      *v25 = 136446210;
      sub_F035C();
      v84 = a1;
      sub_5F9D4();
      v27 = sub_F11EC();
      v29 = v28;
      sub_372B0(v12, &qword_127EE0, qword_F2CB0);
      v30 = sub_3E850(v27, v29, v88);
      a1 = v84;

      *(v25 + 4) = v30;
      _os_log_impl(&dword_0, v23, v24, "Relaying finished participant change ID %{public}s", v25, 0xCu);
      sub_1EDC(v26);
      v3 = v87;
    }

    else
    {

      sub_372B0(v12, &qword_127EE0, qword_F2CB0);
    }

    (*(v14 + 8))(v20, v86);
  }

  else
  {
    v22(v18, v21, v13);
    sub_77C34(a1, v10);
    v31 = sub_F06AC();
    v32 = sub_F0CCC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v88[0] = v34;
      *v33 = 136446210;
      sub_F035C();
      v84 = a1;
      sub_5F9D4();
      v35 = sub_F11EC();
      v37 = v36;
      sub_372B0(v10, &qword_127EE0, qword_F2CB0);
      v38 = sub_3E850(v35, v37, v88);
      a1 = v84;

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, v31, v32, "Asking phone to execute participant change ID %{public}s", v33, 0xCu);
      sub_1EDC(v34);
      v3 = v87;
    }

    else
    {

      sub_372B0(v10, &qword_127EE0, qword_F2CB0);
    }

    (*(v14 + 8))(v18, v86);
  }

  v39 = *(a1 + v6[9]);
  v40 = [v3 groupIDForChat:v39];
  v41 = [v39 originalGroupID];
  if (!v41)
  {

    __break(1u);
    goto LABEL_30;
  }

  v42 = v41;
  v43 = sub_F07EC();

  v44 = [objc_opt_self() sharedFeatureFlags];
  v45 = [v44 isMissingMessagesEnabled];

  v86 = v40;
  if (!v45)
  {
    v84 = v43;
    goto LABEL_17;
  }

  v46 = [v39 latestIdentifierForDomain:IMChatLookupDomainRCSConversationID];
  if (!v46)
  {
    v48 = [objc_opt_self() sharedInstance];
    if (v48)
    {
      v49 = v48;
      v84 = v43;
      v50 = sub_F0FBC();
      LOBYTE(v88[0]) = 1;
      v88[1] = v50;
      v88[2] = v51;
      memset(&v88[3], 0, 24);
      v89 = 0;
      sub_94528(v88);

      goto LABEL_17;
    }

LABEL_30:

    __break(1u);
    return;
  }

  v47 = v46;

  v84 = sub_F07EC();

LABEL_17:
  v52 = v6[11];
  v83 = *(a1 + v6[10]);
  v53 = *(a1 + v52);
  v54 = (a1 + v6[12]);
  v55 = a1;
  v56 = *v54;
  v57 = v54[1];
  v58 = [v3 service];
  v59 = [v58 internalName];

  if (!v59)
  {
    sub_F07EC();
    v59 = sub_F07BC();
  }

  v81 = sub_F035C();
  v82 = &v79;
  v80 = *(v81 - 8);
  v60 = *(v80 + 64);
  __chkstk_darwin(v81);
  v62 = &v79 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F034C();
  v63 = (v55 + v6[13]);
  v64 = *v63;
  v65 = v63[1];
  v66 = *(v55 + v6[14]);
  v67 = sub_F075C();
  if (v57)
  {
    v68 = sub_F07BC();
  }

  else
  {
    v68 = 0;
  }

  v69 = sub_F07BC();

  v70 = sub_F033C();
  v79 = v64;
  if (v65)
  {
    v71 = sub_F07BC();
  }

  else
  {
    v71 = 0;
  }

  v72 = objc_allocWithZone(IMDRelayGroupParticipantsUpdateMessage);
  BYTE1(v78) = v66;
  LOBYTE(v78) = 0;
  v73 = v86;
  v74 = [v72 initWithChangeType:v83 changedParticipants:v67 sender:v68 service:v59 groupID:v86 originalGroupID:v69 guid:v70 destinationCallerID:v71 failed:v78 fromMe:?];

  (*(v80 + 8))(v62, v81);
  v75 = [v87 relayController];
  v76 = v74;
  if (v65)
  {
    v77 = sub_F07BC();
  }

  else
  {
    v77 = 0;
  }

  [v75 reflectGroupMutation:v74 callerID:v77 didOccurLocally:v85 & 1];
}

void RCSServiceSession.leaveChat(_:style:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_F07BC();
  v15 = [v3 chatForChatIdentifier:v14 style:a3 updatingAccount:1];

  if (v15)
  {
    v37 = v15;
    v16 = [v37 chatIdentifier];
    v17 = [v37 style];
    v18 = [v3 _callerIDForChatWithChatIdentifier:v16 chatStyle:v17 foundChat:v37];

    if (v18)
    {
      v19 = [v37 lastAddressedLocalHandle];
      v20 = [v37 lastAddressedSIMID];
      v21 = [v3 _sendingDecisionForMessageItem:0 callerID:v18 lastAddressedLocalHandle:v19 lastAddressedSIMID:v20];

      if ((v21 & 2) != 0)
      {

LABEL_13:
        sub_78940(v37, 0);
        v35 = v37;

        return;
      }
    }

    else
    {
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

    if (SimDetailsFromTelephony)
    {
      sub_F0AFC();
      v27 = sub_F0B1C();
      (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
      sub_F0AEC();
      v28 = v37;
      v29 = v3;
      v30 = sub_F0ADC();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = &protocol witness table for MainActor;
      v31[4] = v29;
      v31[5] = v28;
      sub_3CC0C(0, 0, v13, &unk_F3878, v31);

      v32 = [v28 chatIdentifier];
      if (v32)
      {
        v33 = v32;
        v34 = [v29 account];
        [v29 didLeaveChat:v33 style:a3 account:v34];
      }

      else
      {
        __break(1u);
      }

      return;
    }

    goto LABEL_13;
  }

  v22 = Logger.rcs.unsafeMutableAddressor();
  (*(v6 + 16))(v9, v22, v5);
  v23 = sub_F06AC();
  v24 = sub_F0CEC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Received request to update display name but could not find a chat", v25, 2u);
  }

  (*(v6 + 8))(v9, v5);
}

void sub_78940(void *a1, char a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v11 = *(*(v10 - 8) + 64);
  *&v12 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v14 = &v35[-v13];
  v15 = [a1 lastAddressedLocalHandle];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v28 = [v2 account];
    v29 = [v28 loginID];

    if (!v29)
    {
      return;
    }

    v16 = [v29 _stripFZIDPrefix];

    if (!v16)
    {
      return;
    }
  }

  v17 = sub_F07EC();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v37, v20, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (v21)
  {

    v22 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v22, v5);
    swift_errorRetain();
    v23 = sub_F06AC();
    v24 = sub_F0CEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      *(v25 + 12) = 1024;
      *(v25 + 14) = a2 & 1;
      _os_log_impl(&dword_0, v23, v24, "Error processing self leaving a group chat: %@, occurredLocally: %{BOOL}d", v25, 0x12u);
      sub_372B0(v26, &qword_127AF0, &qword_F28E0);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    countAndFlagsBits = v37.id._countAndFlagsBits;
    object = v37.id._object;

    sub_3CAB8(&v37);
    v36 = a1;
    sub_388C8(&qword_128288, &qword_F3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2C60;
    *(inited + 32) = countAndFlagsBits;
    *(inited + 40) = object;
    v33 = sub_7CC9C();

    v34 = a1;
    RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)(&v36, 1, inited, countAndFlagsBits, object, v17, v19, 1, v14, v33);
    sub_77CA4(v14, a2 & 1);
    sub_372B0(v14, &qword_127EE0, qword_F2CB0);
  }
}

uint64_t sub_78D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_F06CC();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  sub_F0AEC();
  v5[10] = sub_F0ADC();
  v10 = sub_F0A6C();
  v5[11] = v10;
  v5[12] = v9;

  return _swift_task_switch(sub_78E18, v10, v9);
}

void sub_78E18()
{
  v1 = *(*(v0[4] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[13] = v1;
  if (v1)
  {
    v0[2] = v0[5];
    v0[3] = 0;

    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_78EF8;

    RCSGroupController.leaveGroup(chat:subscriptionContext:)((v0 + 2), (v0 + 3));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_78EF8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_7924C;
  }

  else
  {
    v7 = sub_79030;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_79030()
{
  v29 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v4 + 16))(v2, v6, v3);
  v7 = v5;
  v8 = sub_F06AC();
  v9 = sub_F0CCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    v13 = [v10 guid];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v27 = *(v0 + 72);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_3E850(v16, v18, &v28);

    *(v11 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "Finished leaving group %s", v11, 0xCu);
    sub_1EDC(v12);

    (*(v14 + 8))(v27, v15);
  }

  else
  {
    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);

    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v0 + 32);
  sub_78940(*(v0 + 40), 1);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);

  v26 = *(v0 + 8);

  v26();
}

void sub_7924C()
{
  v38 = v0;
  v1 = v0[15];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  v8 = v6;
  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v12 = 136315394;
    v14 = [v11 guid];
    v15 = v0[15];
    if (!v14)
    {
      v32 = v0[5];
      v33 = v0[15];

      __break(1u);
      return;
    }

    v16 = v14;
    v17 = v0[7];
    v18 = v0[5];
    v34 = v0[6];
    v35 = v0[8];

    v19 = sub_F07EC();
    v21 = v20;

    v22 = sub_3E850(v19, v21, &v37);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v23;
    *v13 = v23;
    _os_log_impl(&dword_0, v9, v10, "Failed to leave group %s: %@", v12, 0x16u);
    sub_372B0(v13, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v36);

    (*(v17 + 8))(v35, v34);
  }

  else
  {
    v24 = v0[15];
    v26 = v0[7];
    v25 = v0[8];
    v28 = v0[5];
    v27 = v0[6];

    (*(v26 + 8))(v25, v27);
  }

  v30 = v0[8];
  v29 = v0[9];

  v31 = v0[1];

  v31();
}

uint64_t sub_79560(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v2[39] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v8 = sub_F06CC();
  v2[43] = v8;
  v9 = *(v8 - 8);
  v2[44] = v9;
  v10 = *(v9 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v11 = RCSActor.shared.unsafeMutableAddressor();
  v12 = *v11;
  v2[48] = *v11;

  return _swift_task_switch(sub_7970C, v12, 0);
}

uint64_t sub_7970C()
{
  v101 = v0;
  v1 = *(v0 + 272);
  v2 = *(v1 + *(*(v0 + 312) + 44));
  *(v0 + 392) = v2;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_9D6B8(*(v2 + 16), 0);
    v5 = sub_374E0(&v99, v4 + 4, v3, v2);

    v6 = sub_66138();
    if (v5 != v3)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v1 = *(v0 + 272);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v97 = v4;
  *(v0 + 400) = v4;
  v9 = *(v0 + 376);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v12 = *(v0 + 336);
  v13 = Logger.rcs.unsafeMutableAddressor();
  *(v0 + 408) = v13;
  v14 = *(v10 + 16);
  *(v0 + 416) = v14;
  *(v0 + 424) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v9, v13, v11);
  sub_77C34(v1, v12);
  v15 = sub_F06AC();
  v16 = sub_F0CCC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 376);
  v20 = *(v0 + 344);
  v19 = *(v0 + 352);
  v21 = *(v0 + 336);
  if (v17)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v99 = v23;
    *v22 = 136446210;
    sub_F035C();
    sub_5F9D4();
    v24 = sub_F11EC();
    v96 = v18;
    v26 = v25;
    sub_372B0(v21, &qword_127EE0, qword_F2CB0);
    v27 = sub_3E850(v24, v26, &v99);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v15, v16, "Initiating participant change ID %{public}s", v22, 0xCu);
    sub_1EDC(v23);

    v28 = *(v19 + 8);
    v28(v96, v20);
  }

  else
  {

    sub_372B0(v21, &qword_127EE0, qword_F2CB0);
    v28 = *(v19 + 8);
    v28(v18, v20);
  }

  *(v0 + 432) = v28;
  if (qword_127A80 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 296);
  v29 = *(v0 + 304);
  v31 = *(v0 + 288);
  v32 = sub_3C96C(v31, qword_127D78);
  (*(v30 + 16))(v29, v32, v31);
  sub_F044C();
  v6 = (*(v30 + 8))(v29, v31);
  if (*(v0 + 73))
  {
    sub_388C8(&qword_1285D8, &qword_F3898);
    sub_7CC54(&qword_1285F0, &qword_1285D8, &qword_F3898);
    v33 = swift_allocError();
    *v34 = xmmword_F3860;
    *(v34 + 16) = 3;
    swift_willThrow();
    *(v0 + 504) = v33;
    v35 = *(v0 + 424);
    v36 = *(v0 + 320);
    v37 = *(v0 + 272);
    (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
    sub_77C34(v37, v36);
    swift_errorRetain();
    v38 = sub_F06AC();
    v39 = sub_F0CEC();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 432);
    v43 = *(v0 + 352);
    v42 = *(v0 + 360);
    v44 = *(v0 + 344);
    v45 = *(v0 + 320);
    if (v40)
    {
      v98 = *(v0 + 344);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v99 = v48;
      *v46 = 136446466;
      sub_F035C();
      v95 = v41;
      sub_5F9D4();
      v49 = sub_F11EC();
      v94 = v42;
      v51 = v50;
      sub_372B0(v45, &qword_127EE0, qword_F2CB0);
      v52 = sub_3E850(v49, v51, &v99);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2112;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v53;
      *v47 = v53;
      _os_log_impl(&dword_0, v38, v39, "Failed participant change ID %{public}s: %@", v46, 0x16u);
      sub_372B0(v47, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v48);

      v95(v94, v98);
    }

    else
    {

      sub_372B0(v45, &qword_127EE0, qword_F2CB0);
      v41(v42, v44);
    }

    *(v0 + 232) = v33;
    swift_errorRetain();
    sub_388C8(&qword_127B88, &qword_F3680);
    sub_388C8(&qword_1285D8, &qword_F3898);
    if (swift_dynamicCast())
    {
      v62 = *(v0 + 176);
      v63 = *(v0 + 184);
      *(v0 + 512) = v62;
      *(v0 + 520) = v63;
      v64 = *(v0 + 192);
      if (v64 == 1)
      {
        v65 = *(v0 + 400);

        sub_F0AEC();
        *(v0 + 528) = sub_F0ADC();
        v66 = sub_F0A6C();
        v68 = v67;
        v69 = sub_7A88C;
        goto LABEL_39;
      }

      sub_7CC28(v62, v63, v64);
    }

    v73 = *(v0 + 232);

    *(v0 + 240) = v33;
    swift_errorRetain();
    if (!swift_dynamicCast())
    {
LABEL_38:
      v92 = *(v0 + 240);

      sub_F0AEC();
      *(v0 + 536) = sub_F0ADC();
      v66 = sub_F0A6C();
      v68 = v93;
      v69 = sub_7AA00;
LABEL_39:
      v6 = v69;
      v7 = v66;
      v8 = v68;

      return _swift_task_switch(v6, v7, v8);
    }

    if (*(v0 + 72))
    {
      sub_7CBD4(v0 + 16);
      goto LABEL_38;
    }

    v75 = *(v0 + 16);
    v74 = *(v0 + 24);
    sub_3928((v0 + 32), v0 + 136);
    v6 = [objc_opt_self() sharedInstance];
    if (v6)
    {
      v76 = v6;
      v77 = *(v0 + 392);
      v78 = *(v0 + 312);
      v79 = *(v0 + 272);
      v99 = 0;
      v100 = 0xE000000000000000;
      sub_F0F9C(117);
      v80 = v100;
      *(v0 + 200) = v99;
      *(v0 + 208) = v80;
      v103._countAndFlagsBits = 0xD000000000000028;
      v103._object = 0x80000000000FF000;
      sub_F08CC(v103);
      sub_F0BFC();
      v104._countAndFlagsBits = 0x73646E6F63657320;
      v104._object = 0xEA0000000000202CLL;
      sub_F08CC(v104);
      sub_F0BFC();
      v105._object = 0x80000000000FF030;
      v105._countAndFlagsBits = 0xD00000000000001ELL;
      sub_F08CC(v105);
      v81 = *(v0 + 168);
      sub_373E8((v0 + 136), *(v0 + 160));
      v82 = *(v81 + 8);
      sub_F120C();
      v106._countAndFlagsBits = 0x2065676E6168430ALL;
      v106._object = 0xED00002065707974;
      sub_F08CC(v106);
      if (*(v79 + *(v78 + 40)))
      {
        v83._countAndFlagsBits = 0x65766F6D6552;
      }

      else
      {
        v83._countAndFlagsBits = 6579265;
      }

      if (*(v79 + *(v78 + 40)))
      {
        v84 = 0xE600000000000000;
      }

      else
      {
        v84 = 0xE300000000000000;
      }

      v83._object = v84;
      sub_F08CC(v83);

      v107._countAndFlagsBits = 0x696369747261500ALL;
      v107._object = 0xEE002073746E6170;
      sub_F08CC(v107);
      *(v0 + 248) = v77;

      sub_388C8(&qword_1285E0, &qword_F38A0);
      sub_7CC54(&qword_1285E8, &qword_1285E0, &qword_F38A0);
      sub_3CBB8();
      v85 = sub_F097C();
      v87 = v86;

      v108._countAndFlagsBits = v85;
      v108._object = v87;
      sub_F08CC(v108);

      v88 = *(v0 + 200);
      v89 = *(v0 + 208);
      v90 = sub_F0FBC();
      *(v0 + 80) = 1;
      *(v0 + 88) = v90;
      *(v0 + 96) = v91;
      *(v0 + 104) = v88;
      *(v0 + 112) = v89;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      sub_94528((v0 + 80));

      sub_1EDC((v0 + 136));
      goto LABEL_38;
    }

LABEL_45:
    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  v54 = *(v0 + 312);
  v55 = *(v0 + 272);
  v56 = *(v55 + *(v54 + 40));
  v57 = *(*(*(v0 + 280) + OBJC_IVAR___RCSServiceSession_state) + 40);
  *(v0 + 440) = v57;
  if (v56)
  {
    if (v57)
    {
      v58 = *(v55 + *(v54 + 36));
      *(v0 + 472) = v58;
      *(v0 + 216) = v58;
      *(v0 + 224) = 0;

      v59 = v58;
      v60 = swift_task_alloc();
      *(v0 + 480) = v60;
      *v60 = v0;
      v60[1] = sub_7A5F8;

      return RCSGroupController.removeParticipants(_:from:subscriptionContext:)(v97, v0 + 216, v0 + 224);
    }

    goto LABEL_43;
  }

  if (!v57)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v70 = *(v55 + *(v54 + 36));
  *(v0 + 448) = v70;
  *(v0 + 256) = v70;
  *(v0 + 264) = 0;

  v71 = v70;
  v72 = swift_task_alloc();
  *(v0 + 456) = v72;
  *v72 = v0;
  v72[1] = sub_7A264;

  return RCSGroupController.addParticipants(_:to:subscriptionContext:)(v97, v0 + 256, v0 + 264);
}

uint64_t sub_7A264()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v12 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v5 = v2[55];
    v4 = v2[56];
    v6 = v2[48];

    v7 = sub_7AB58;
  }

  else
  {
    v9 = v2[55];
    v8 = v2[56];
    v10 = v2[50];
    v6 = v2[48];

    v7 = sub_7A3B4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_7A3B4()
{
  v24 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 328);
  v3 = *(v0 + 272);
  (*(v0 + 416))(*(v0 + 368), *(v0 + 408), *(v0 + 344));
  sub_77C34(v3, v2);
  v4 = sub_F06AC();
  v5 = sub_F0CCC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 432);
  v8 = *(v0 + 368);
  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v11 = *(v0 + 328);
  if (v6)
  {
    v22 = *(v0 + 432);
    v12 = swift_slowAlloc();
    v21 = v8;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    sub_F035C();
    sub_5F9D4();
    v14 = sub_F11EC();
    v16 = v15;
    sub_372B0(v11, &qword_127EE0, qword_F2CB0);
    v17 = sub_3E850(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v4, v5, "Finished participant change ID %{public}s", v12, 0xCu);
    sub_1EDC(v13);

    v22(v21, v10);
  }

  else
  {

    sub_372B0(v11, &qword_127EE0, qword_F2CB0);
    v7(v8, v10);
  }

  sub_F0AEC();
  *(v0 + 496) = sub_F0ADC();
  v19 = sub_F0A6C();

  return _swift_task_switch(sub_7A750, v19, v18);
}

uint64_t sub_7A5F8()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v11 = *v1;
  *(*v1 + 488) = v0;

  v4 = v2[59];
  if (v0)
  {
    v5 = v2[55];
    v6 = v2[48];

    v7 = sub_7B1E0;
  }

  else
  {
    v8 = v2[55];
    v9 = v2[50];
    v6 = v2[48];

    v7 = sub_7CCE8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_7A750()
{
  v1 = v0[62];
  v2 = v0[48];
  v4 = v0[34];
  v3 = v0[35];

  sub_77CA4(v4, 1);

  return _swift_task_switch(sub_7A7D4, v2, 0);
}

uint64_t sub_7A7D4()
{
  v1 = v0[48];

  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v8 = v0[38];

  v9 = v0[1];

  return v9();
}

uint64_t sub_7A88C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[48];
  v6 = v0[34];
  v5 = v0[35];

  sub_7B868(v3, v5, v6);
  sub_7CC28(v3, v2, 1);

  return _swift_task_switch(sub_7A934, v4, 0);
}

uint64_t sub_7A934()
{
  v1 = v0[63];
  v2 = v0[48];

  v3 = v0[29];

  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[40];
  v10 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_7AA00()
{
  v1 = v0[67];
  v2 = v0[50];
  v3 = v0[48];
  v5 = v0[34];
  v4 = v0[35];

  sub_7B868(v2, v4, v5);

  return _swift_task_switch(sub_7AA94, v3, 0);
}

uint64_t sub_7AA94()
{
  v1 = v0[63];
  v2 = v0[48];

  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];
  v9 = v0[38];

  v10 = v0[1];

  return v10();
}

uint64_t sub_7AB58()
{
  v59 = v0;
  v1 = *(v0 + 464);
  *(v0 + 504) = v1;
  v2 = *(v0 + 424);
  v3 = *(v0 + 320);
  v4 = *(v0 + 272);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
  sub_77C34(v4, v3);
  swift_errorRetain();
  v5 = sub_F06AC();
  v6 = sub_F0CEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 432);
  v10 = *(v0 + 352);
  v9 = *(v0 + 360);
  v11 = *(v0 + 344);
  v12 = *(v0 + 320);
  if (v7)
  {
    v56 = *(v0 + 344);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57 = v15;
    *v13 = 136446466;
    sub_F035C();
    v55 = v8;
    sub_5F9D4();
    v16 = sub_F11EC();
    v54 = v9;
    v18 = v17;
    sub_372B0(v12, &qword_127EE0, qword_F2CB0);
    v19 = sub_3E850(v16, v18, &v57);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_0, v5, v6, "Failed participant change ID %{public}s: %@", v13, 0x16u);
    sub_372B0(v14, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v15);

    v55(v54, v56);
  }

  else
  {

    sub_372B0(v12, &qword_127EE0, qword_F2CB0);
    v8(v9, v11);
  }

  *(v0 + 232) = v1;
  swift_errorRetain();
  sub_388C8(&qword_127B88, &qword_F3680);
  sub_388C8(&qword_1285D8, &qword_F3898);
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 176);
    v22 = *(v0 + 184);
    *(v0 + 512) = v21;
    *(v0 + 520) = v22;
    v23 = *(v0 + 192);
    if (v23 == 1)
    {
      v24 = *(v0 + 400);

      sub_F0AEC();
      *(v0 + 528) = sub_F0ADC();
      v25 = sub_F0A6C();
      v27 = v26;
      v28 = sub_7A88C;
      goto LABEL_20;
    }

    sub_7CC28(v21, v22, v23);
  }

  v29 = *(v0 + 232);

  *(v0 + 240) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (*(v0 + 72))
    {
      sub_7CBD4(v0 + 16);
    }

    else
    {
      v31 = *(v0 + 16);
      v30 = *(v0 + 24);
      sub_3928((v0 + 32), v0 + 136);
      v32 = [objc_opt_self() sharedInstance];
      if (!v32)
      {
        __break(1u);
        return _swift_task_switch(v32, v33, v34);
      }

      v35 = v32;
      v36 = *(v0 + 392);
      v37 = *(v0 + 312);
      v38 = *(v0 + 272);
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_F0F9C(117);
      v39 = v58;
      *(v0 + 200) = v57;
      *(v0 + 208) = v39;
      v61._countAndFlagsBits = 0xD000000000000028;
      v61._object = 0x80000000000FF000;
      sub_F08CC(v61);
      sub_F0BFC();
      v62._countAndFlagsBits = 0x73646E6F63657320;
      v62._object = 0xEA0000000000202CLL;
      sub_F08CC(v62);
      sub_F0BFC();
      v63._object = 0x80000000000FF030;
      v63._countAndFlagsBits = 0xD00000000000001ELL;
      sub_F08CC(v63);
      v40 = *(v0 + 168);
      sub_373E8((v0 + 136), *(v0 + 160));
      v41 = *(v40 + 8);
      sub_F120C();
      v64._countAndFlagsBits = 0x2065676E6168430ALL;
      v64._object = 0xED00002065707974;
      sub_F08CC(v64);
      if (*(v38 + *(v37 + 40)))
      {
        v42._countAndFlagsBits = 0x65766F6D6552;
      }

      else
      {
        v42._countAndFlagsBits = 6579265;
      }

      if (*(v38 + *(v37 + 40)))
      {
        v43 = 0xE600000000000000;
      }

      else
      {
        v43 = 0xE300000000000000;
      }

      v42._object = v43;
      sub_F08CC(v42);

      v65._countAndFlagsBits = 0x696369747261500ALL;
      v65._object = 0xEE002073746E6170;
      sub_F08CC(v65);
      *(v0 + 248) = v36;

      sub_388C8(&qword_1285E0, &qword_F38A0);
      sub_7CC54(&qword_1285E8, &qword_1285E0, &qword_F38A0);
      sub_3CBB8();
      v44 = sub_F097C();
      v46 = v45;

      v66._countAndFlagsBits = v44;
      v66._object = v46;
      sub_F08CC(v66);

      v47 = *(v0 + 200);
      v48 = *(v0 + 208);
      v49 = sub_F0FBC();
      *(v0 + 80) = 1;
      *(v0 + 88) = v49;
      *(v0 + 96) = v50;
      *(v0 + 104) = v47;
      *(v0 + 112) = v48;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      sub_94528((v0 + 80));

      sub_1EDC((v0 + 136));
    }
  }

  v51 = *(v0 + 240);

  sub_F0AEC();
  *(v0 + 536) = sub_F0ADC();
  v25 = sub_F0A6C();
  v27 = v52;
  v28 = sub_7AA00;
LABEL_20:
  v32 = v28;
  v33 = v25;
  v34 = v27;

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_7B1E0()
{
  v59 = v0;
  v1 = *(v0 + 488);
  *(v0 + 504) = v1;
  v2 = *(v0 + 424);
  v3 = *(v0 + 320);
  v4 = *(v0 + 272);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
  sub_77C34(v4, v3);
  swift_errorRetain();
  v5 = sub_F06AC();
  v6 = sub_F0CEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 432);
  v10 = *(v0 + 352);
  v9 = *(v0 + 360);
  v11 = *(v0 + 344);
  v12 = *(v0 + 320);
  if (v7)
  {
    v56 = *(v0 + 344);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57 = v15;
    *v13 = 136446466;
    sub_F035C();
    v55 = v8;
    sub_5F9D4();
    v16 = sub_F11EC();
    v54 = v9;
    v18 = v17;
    sub_372B0(v12, &qword_127EE0, qword_F2CB0);
    v19 = sub_3E850(v16, v18, &v57);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_0, v5, v6, "Failed participant change ID %{public}s: %@", v13, 0x16u);
    sub_372B0(v14, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v15);

    v55(v54, v56);
  }

  else
  {

    sub_372B0(v12, &qword_127EE0, qword_F2CB0);
    v8(v9, v11);
  }

  *(v0 + 232) = v1;
  swift_errorRetain();
  sub_388C8(&qword_127B88, &qword_F3680);
  sub_388C8(&qword_1285D8, &qword_F3898);
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 176);
    v22 = *(v0 + 184);
    *(v0 + 512) = v21;
    *(v0 + 520) = v22;
    v23 = *(v0 + 192);
    if (v23 == 1)
    {
      v24 = *(v0 + 400);

      sub_F0AEC();
      *(v0 + 528) = sub_F0ADC();
      v25 = sub_F0A6C();
      v27 = v26;
      v28 = sub_7A88C;
      goto LABEL_20;
    }

    sub_7CC28(v21, v22, v23);
  }

  v29 = *(v0 + 232);

  *(v0 + 240) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (*(v0 + 72))
    {
      sub_7CBD4(v0 + 16);
    }

    else
    {
      v31 = *(v0 + 16);
      v30 = *(v0 + 24);
      sub_3928((v0 + 32), v0 + 136);
      v32 = [objc_opt_self() sharedInstance];
      if (!v32)
      {
        __break(1u);
        return _swift_task_switch(v32, v33, v34);
      }

      v35 = v32;
      v36 = *(v0 + 392);
      v37 = *(v0 + 312);
      v38 = *(v0 + 272);
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_F0F9C(117);
      v39 = v58;
      *(v0 + 200) = v57;
      *(v0 + 208) = v39;
      v61._countAndFlagsBits = 0xD000000000000028;
      v61._object = 0x80000000000FF000;
      sub_F08CC(v61);
      sub_F0BFC();
      v62._countAndFlagsBits = 0x73646E6F63657320;
      v62._object = 0xEA0000000000202CLL;
      sub_F08CC(v62);
      sub_F0BFC();
      v63._object = 0x80000000000FF030;
      v63._countAndFlagsBits = 0xD00000000000001ELL;
      sub_F08CC(v63);
      v40 = *(v0 + 168);
      sub_373E8((v0 + 136), *(v0 + 160));
      v41 = *(v40 + 8);
      sub_F120C();
      v64._countAndFlagsBits = 0x2065676E6168430ALL;
      v64._object = 0xED00002065707974;
      sub_F08CC(v64);
      if (*(v38 + *(v37 + 40)))
      {
        v42._countAndFlagsBits = 0x65766F6D6552;
      }

      else
      {
        v42._countAndFlagsBits = 6579265;
      }

      if (*(v38 + *(v37 + 40)))
      {
        v43 = 0xE600000000000000;
      }

      else
      {
        v43 = 0xE300000000000000;
      }

      v42._object = v43;
      sub_F08CC(v42);

      v65._countAndFlagsBits = 0x696369747261500ALL;
      v65._object = 0xEE002073746E6170;
      sub_F08CC(v65);
      *(v0 + 248) = v36;

      sub_388C8(&qword_1285E0, &qword_F38A0);
      sub_7CC54(&qword_1285E8, &qword_1285E0, &qword_F38A0);
      sub_3CBB8();
      v44 = sub_F097C();
      v46 = v45;

      v66._countAndFlagsBits = v44;
      v66._object = v46;
      sub_F08CC(v66);

      v47 = *(v0 + 200);
      v48 = *(v0 + 208);
      v49 = sub_F0FBC();
      *(v0 + 80) = 1;
      *(v0 + 88) = v49;
      *(v0 + 96) = v50;
      *(v0 + 104) = v47;
      *(v0 + 112) = v48;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      sub_94528((v0 + 80));

      sub_1EDC((v0 + 136));
    }
  }

  v51 = *(v0 + 240);

  sub_F0AEC();
  *(v0 + 536) = sub_F0ADC();
  v25 = sub_F0A6C();
  v27 = v52;
  v28 = sub_7AA00;
LABEL_20:
  v32 = v28;
  v33 = v25;
  v34 = v27;

  return _swift_task_switch(v32, v33, v34);
}

void sub_7B868(uint64_t a1, void *a2, uint64_t a3)
{
  v66 = a2;
  v5 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v61[-v7];
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = Logger.rcs.unsafeMutableAddressor();
  (*(v10 + 16))(v13, v14, v9);
  sub_77C34(a3, v8);
  swift_bridgeObjectRetain_n();
  v15 = sub_F06AC();
  v16 = sub_F0CEC();
  v17 = os_log_type_enabled(v15, v16);
  v64 = a3;
  v65 = v5;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v69 = v9;
    v70 = v19;
    v20 = v19;
    *v18 = 136446466;
    v21 = v8[*(v5 + 40)] == 0;
    if (v8[*(v5 + 40)])
    {
      v22 = 0x65766F6D6572;
    }

    else
    {
      v22 = 6579297;
    }

    if (v21)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0xE600000000000000;
    }

    sub_372B0(v8, &qword_127EE0, qword_F2CB0);
    v24 = sub_3E850(v22, v23, &v70);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2048;
    v25 = *(a1 + 16);

    *(v18 + 14) = v25;

    _os_log_impl(&dword_0, v15, v16, "Failed to %{public}s %ld participants! Reverting failed changes", v18, 0x16u);
    sub_1EDC(v20);

    a3 = v64;

    (*(v10 + 8))(v13, v69);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_372B0(v8, &qword_127EE0, qword_F2CB0);
    (*(v10 + 8))(v13, v9);
  }

  v26 = *(a1 + 16);
  v27 = v65;
  v28 = v66;
  if (v26)
  {
    v29 = *(a3 + *(v65 + 36));
    if (*(a3 + *(v65 + 40)))
    {
      v30 = 2;
    }

    else
    {
      v30 = 3;
    }

    v62 = v30;
    v31 = (a1 + 40);
    v63 = v29;
    while (1)
    {
      v33 = *(v31 - 1);
      v32 = *v31;

      v34 = sub_F07BC();
      v35 = [v29 chatIdentifier];
      if (!v35)
      {
        __break(1u);
        return;
      }

      v36 = v35;
      v67 = [v29 style];
      v69 = [v28 account];
      v37 = (a3 + *(v27 + 52));
      if (v37[1])
      {
        v38 = *v37;
        v39 = sub_F07BC();
      }

      else
      {
        v39 = 0;
      }

      v40 = *(a3 + *(v27 + 44));
      v41 = *(v40 + 16);
      v68 = v26;
      if (!v41)
      {
        break;
      }

      v42 = sub_51FEC(v33, v32);
      if (v43)
      {
        v44 = (*(v40 + 56) + 16 * v42);
        v45 = *v44;
        v46 = v44[1];

        v47 = sub_F07BC();

        if (!*(v40 + 16))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v47 = 0;
        if (!*(v40 + 16))
        {
          goto LABEL_28;
        }
      }

      sub_51FEC(v33, v32);
      v49 = v48;

LABEL_29:
      LOBYTE(v60) = v49 & 1;
      v50 = v69;
      LOBYTE(v59) = v67;
      v51 = v66;

      if (*(v40 + 16))
      {
        v52 = sub_51FEC(v33, v32);
        v54 = v53;

        v28 = v51;
        if (v54)
        {
          v55 = (*(v40 + 56) + 16 * v52);
          v56 = *v55;
          v57 = v55[1];

          v58 = sub_F07BC();

          [v51 markItemFailedWithGUID:v58 errorCode:4];
        }
      }

      else
      {

        v28 = v51;
      }

      v31 += 2;
      v26 = v68 - 1;
      a3 = v64;
      v27 = v65;
      v29 = v63;
      if (v68 == 1)
      {
        return;
      }
    }

    v47 = 0;
LABEL_28:
    v49 = 0;
    goto LABEL_29;
  }
}

void sub_7BDB0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v8 = v7;
  v69 = a3;
  v70 = a1;
  v13 = sub_F06CC();
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v74 = &v68 - v19;
  v20 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v71 = *(v20 - 1);
  v21 = *(v71 + 64);
  __chkstk_darwin(v20);
  v72 = v22;
  v73 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  v75 = v8;
  if (a6)
  {
    v26 = sub_F07BC();
    v27 = [v8 chatForChatIdentifier:v26 style:a7 updatingAccount:1];

    if (v27)
    {
      goto LABEL_5;
    }
  }

  if (a4)
  {
    v28 = [objc_opt_self() sharedInstance];
    v29 = sub_F07BC();
    v27 = [v28 existingChatWithGUID:v29];

    if (v27)
    {
LABEL_5:
      if (!a2)
      {
        __break(1u);
        return;
      }

      sub_388C8(&qword_128528, &unk_F36C0);
      v30 = sub_F09EC();
      v31 = v75;
      v32 = [v75 dictionaryForHandlesToGUIDsFromHandleInfo:v30];

      v69 = sub_F076C();
      v33 = [v27 lastAddressedLocalHandle];
      if (v33)
      {
        v34 = v33;
        v35 = sub_F07EC();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v43 = v27;
      v44 = [v43 chatIdentifier];
      v45 = [v31 _callerIDForChatWithChatIdentifier:v44 chatStyle:objc_msgSend(v43 foundChat:{"style"), v43}];

      if (v45)
      {
        v46 = [v43 lastAddressedLocalHandle];
        v47 = [v43 lastAddressedSIMID];
        v48 = [v31 _sendingDecisionForMessageItem:0 callerID:v45 lastAddressedLocalHandle:v46 lastAddressedSIMID:v47];

        if ((v48 & 2) != 0)
        {

          goto LABEL_20;
        }
      }

      else
      {
      }

      SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

      if (SimDetailsFromTelephony)
      {
        v50 = v75;
        v51 = [v75 subscriptionContextForChat:v43];
        if (v51)
        {
          v52 = v51;

          v53 = [v52 phoneNumber];
          if (v53)
          {
            v54 = v53;
            v35 = sub_F07EC();
            v37 = v55;
          }

          else
          {

            v35 = 0;
            v37 = 0;
          }
        }

        v56 = 1;
        goto LABEL_23;
      }

LABEL_20:
      v56 = 0;
      v50 = v75;
LABEL_23:
      v57 = v70 != 2;
      *&v25[v20[9]] = v43;
      sub_F034C();
      v25[v20[10]] = v57;
      *&v25[v20[11]] = v69;
      v58 = &v25[v20[12]];
      *v58 = 0;
      *(v58 + 1) = 0;
      v59 = &v25[v20[13]];
      *v59 = v35;
      v59[1] = v37;
      v25[v20[14]] = 1;
      RCSServiceSession.process(participantChange:)(v25);
      v60 = v74;
      sub_F0AFC();
      v61 = sub_F0B1C();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      v62 = v73;
      sub_77C34(v25, v73);
      sub_F0AEC();
      v63 = v50;
      v64 = sub_F0ADC();
      v65 = (*(v71 + 80) + 40) & ~*(v71 + 80);
      v66 = v65 + v72;
      v67 = swift_allocObject();
      v67[2] = v64;
      v67[3] = &protocol witness table for MainActor;
      v67[4] = v63;
      sub_62E88(v62, v67 + v65);
      *(v67 + v66) = v56;
      sub_3CC0C(0, 0, v60, &unk_F3888, v67);

      sub_372B0(v25, &qword_127EE0, qword_F2CB0);
      return;
    }
  }

  v38 = Logger.rcs.unsafeMutableAddressor();
  v39 = v68;
  (*(v68 + 16))(v16, v38, v13);
  v40 = sub_F06AC();
  v41 = sub_F0CEC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "Received request to update participants but could not find a chat", v42, 2u);
  }

  (*(v39 + 8))(v16, v13);
}

uint64_t sub_7C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = sub_F0AEC();
  *(v6 + 40) = sub_F0ADC();
  *(v6 + 48) = sub_F0ADC();
  v8 = sub_F0A6C();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return _swift_task_switch(sub_7C520, v8, v7);
}

uint64_t sub_7C520()
{
  if (*(v0 + 80) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_7C628;
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);

    return sub_79560(v2);
  }

  else
  {
    v5 = *(v0 + 48);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);

    sub_77CA4(v6, 0);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = sub_F0A6C();

    return _swift_task_switch(sub_4A2A0, v11, v10);
  }
}

uint64_t sub_7C628()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_7C748, v4, v3);
}

uint64_t sub_7C748()
{
  v1 = v0[6];

  v2 = v0[4];
  v3 = v0[5];
  v5 = sub_F0A6C();

  return _swift_task_switch(sub_4A2A0, v5, v4);
}

uint64_t sub_7C9E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_38B0C;

  return sub_78D18(a1, v4, v5, v7, v6);
}

uint64_t sub_7CAA8(uint64_t a1)
{
  v4 = *(sub_388C8(&qword_127EE0, qword_F2CB0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_37C54;

  return sub_7C474(a1, v5, v6, v7, v8, v9);
}

void sub_7CC28(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_7CC54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3CB70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_7CC9C()
{
  result = qword_127EF0;
  if (!qword_127EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_127EF0);
  }

  return result;
}

uint64_t RCSServiceSession.resolveGroupIdentity(for:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  sub_F0AEC();
  v4[8] = sub_F0ADC();
  v6 = sub_F0A6C();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_7CD88, v6, v5);
}

void sub_7CD88()
{
  v1 = *(*(v0[7] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[6];
    v0[2] = v0[5];
    v0[3] = v2;

    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_7CE70;
    v4 = v0[4];

    RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)(v4, (v0 + 2), (v0 + 3));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7CE70()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_7D00C;
  }

  else
  {
    v7 = sub_7CFA8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_7CFA8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_7D00C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t RCSServiceSession.subscriptionInfo(for:)(void *a1)
{
  v2 = [a1 phoneNumber];
  if (v2)
  {
    v3 = v2;
    v4 = sub_F07EC();
    v6 = v5;

    v7 = sub_53E04(_swiftEmptyArrayStorage);
    v8._countAndFlagsBits = 7103860;
    v8._object = 0xE300000000000000;
    v9._countAndFlagsBits = v4;
    v9._object = v6;
    RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v15, v8, v9, v7, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    __chkstk_darwin(v10);
    RCSHandle.canonicalizedHandle(for:)(sub_54C44, &v16);
    sub_3CAB8(&v15);
    v11 = v17;

    sub_3CAB8(&v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 labelID];
  if (v12)
  {
    v13 = v12;
    sub_F07EC();
  }

  return v11;
}

id RCSServiceSession.identifier(for:)(void *a1)
{
  result = [a1 chatIdentifier];
  if (result)
  {
    v2 = result;
    v3 = sub_F07EC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void RCSServiceSession.maxTransferSize(for:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() fetchSizeLimitsForTransfer:a1];
  sub_37310(0, &qword_128050, NSNumber_ptr);
  v14 = sub_F09FC();

  if (v14 >> 62)
  {
    v15 = sub_F10DC();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_24:

    v17 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage[2];
    if (v23)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_3:
  v55 = _swiftEmptyArrayStorage;
  sub_6EC28(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v49 = a1;
  v50 = a2;
  v51 = a3;
  v52 = v4;
  v53 = v12;
  v54 = v9;
  v16 = 0;
  v17 = v55;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = sub_F0FCC();
    }

    else
    {
      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = [v18 longLongValue];

    v55 = v17;
    v22 = v17[2];
    v21 = v17[3];
    if (v22 >= v21 >> 1)
    {
      sub_6EC28((v21 > 1), v22 + 1, 1);
      v17 = v55;
    }

    ++v16;
    v17[2] = v22 + 1;
    v17[v22 + 4] = v20;
  }

  while (v15 != v16);

  v12 = v53;
  v9 = v54;
  a3 = v51;
  a1 = v49;
  a2 = v50;
  v23 = v17[2];
  if (v23)
  {
LABEL_12:
    v24 = v17[4];
    v25 = v23 - 1;
    if (v23 != 1)
    {
      if (v23 < 5)
      {
        v26 = 1;
        goto LABEL_18;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v27 = vdupq_n_s64(v24);
      v28 = (v17 + 7);
      v29 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v27;
      do
      {
        v27 = vbslq_s8(vcgtq_s64(v27, v28[-1]), v27, v28[-1]);
        v30 = vbslq_s8(vcgtq_s64(v30, *v28), v30, *v28);
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      v31 = vbslq_s8(vcgtq_s64(v27, v30), v27, v30);
      v32 = vextq_s8(v31, v31, 8uLL).u64[0];
      v24 = vbsl_s8(vcgtd_s64(v31.i64[0], v32), *v31.i8, v32);
      if (v25 != (v25 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_18:
        v33 = v23 - v26;
        v34 = &v17[v26 + 4];
        do
        {
          v36 = *v34++;
          v35 = v36;
          if (v24 <= v36)
          {
            v24 = v35;
          }

          --v33;
        }

        while (v33);
      }
    }

    sub_3FEE8(a2, a3);
    return;
  }

LABEL_25:

  v37 = Logger.rcs.unsafeMutableAddressor();
  (*(v9 + 16))(v12, v37, v8);
  v38 = a1;
  v39 = sub_F06AC();
  v40 = sub_F0CEC();
  if (!os_log_type_enabled(v39, v40))
  {

    goto LABEL_29;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v55 = v42;
  *v41 = 136315394;
  v43 = [v38 mimeType];

  if (v43)
  {
    v44 = sub_F07EC();
    v46 = v45;

    v47 = sub_3E850(v44, v46, &v55);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2048;
    *(v41 + 14) = 104857600;
    _os_log_impl(&dword_0, v39, v40, "Could not fetch expected size limits for %s, defaulting to %lld", v41, 0x16u);
    sub_1EDC(v42);

LABEL_29:
    (*(v9 + 8))(v12, v8);
    return;
  }

LABEL_31:
  __break(1u);
}

id RCSServiceSession.transfer(forGUID:)()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = sub_F07BC();
    v3 = [v1 transferForGUID:v2];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RCSServiceSession.transcodeTransfer(transfer:for:isAudioMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 608) = a4;
  *(v5 + 488) = a3;
  *(v5 + 496) = v4;
  *(v5 + 472) = a1;
  *(v5 + 480) = a2;
  v6 = sub_F06CC();
  *(v5 + 504) = v6;
  v7 = *(v6 - 8);
  *(v5 + 512) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 528) = sub_F0AEC();
  *(v5 + 536) = sub_F0ADC();
  v10 = sub_F0A6C();
  *(v5 + 544) = v10;
  *(v5 + 552) = v9;

  return _swift_task_switch(sub_7D874, v10, v9);
}

uint64_t sub_7D874()
{
  v53 = v0;
  ThumbnailForySbSo14IMFileTransferCF_0 = _sSo17RCSServiceSessionC3RCSE24shouldCreateThumbnailForySbSo14IMFileTransferCF_0(*(v0 + 472));
  sub_388C8(&qword_1284E0, &qword_F3660);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = &OBJC_CATEGORY_INSTANCE_METHODS_CoreTelephonyClient___SwiftHelpers;
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = swift_allocObject();
  if (ThumbnailForySbSo14IMFileTransferCF_0)
  {
    *(v7 + 16) = xmmword_F2C70;
    RCSServiceSession.maxTransferSize(for:for:)(v6, v5, v3);
    *(v7 + 32) = v8;
    *(v7 + 40) = 10240;
  }

  else
  {
    *(v7 + 16) = xmmword_F2C60;
    RCSServiceSession.maxTransferSize(for:for:)(v6, v5, v3);
    *(v7 + 32) = v9;
  }

  *(v0 + 560) = v7;
  v10 = *(v0 + 520);
  v12 = *(v0 + 504);
  v11 = *(v0 + 512);
  v13 = Logger.rcs.unsafeMutableAddressor();
  (*(v11 + 16))(v10, v13, v12);

  v14 = sub_F06AC();
  v15 = sub_F0CCC();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 520);
  v19 = *(v0 + 504);
  v18 = *(v0 + 512);
  if (v16)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v52 = v21;
    *v20 = 136315138;
    v22 = sub_F0A0C();
    v24 = sub_3E850(v22, v23, &v52);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v14, v15, "Transcoding to %s", v20, 0xCu);
    sub_1EDC(v21);
    v4 = &OBJC_CATEGORY_INSTANCE_METHODS_CoreTelephonyClient___SwiftHelpers;

    (*(v18 + 8))(v17, v19);
  }

  else
  {

    (*(v18 + 8))(v17, v19);
  }

  v25 = *(v0 + 472);
  sub_388C8(&qword_1285A8, &unk_F3760);
  inited = swift_initStackObject();
  *(inited + 16) = *&v4[398].entrysize;
  *(inited + 32) = sub_F07EC();
  *(inited + 40) = v27;
  *(inited + 48) = 1;
  *(inited + 56) = sub_F07EC();
  *(inited + 64) = v28;
  *(inited + 72) = 0;
  v29 = sub_81174(inited);
  *(v0 + 568) = v29;
  swift_setDeallocating();
  sub_388C8(&qword_1285B0, &qword_F38C0);
  swift_arrayDestroy();
  v30 = [v25 transcoderUserInfo];
  if (v30)
  {
    v31 = v30;
    v32 = sub_F076C();
  }

  else
  {
    v32 = sub_80F34(_swiftEmptyArrayStorage);
  }

  v33 = *(v0 + 608);
  v34 = *(v0 + 472);
  *(v0 + 408) = sub_F07EC();
  *(v0 + 416) = v35;
  sub_F0F3C();
  *(v0 + 240) = &type metadata for Bool;
  *(v0 + 216) = v33;
  sub_54F88((v0 + 216), (v0 + 248));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v32;
  sub_525C0((v0 + 248), v0 + 96, isUniquelyReferenced_nonNull_native);
  sub_54F34(v0 + 96);
  v37 = v52;
  *(v0 + 456) = v52;
  if ([v34 isAdaptiveImageGlyph])
  {
    *(v0 + 424) = sub_F07EC();
    *(v0 + 432) = v38;
    sub_F0F3C();
    *(v0 + 304) = &type metadata for Bool;
    *(v0 + 280) = 1;
    sub_54F88((v0 + 280), (v0 + 312));
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v37;
    sub_525C0((v0 + 312), v0 + 136, v39);
    sub_54F34(v0 + 136);
    v40 = v52;
    *(v0 + 440) = sub_F07EC();
    *(v0 + 448) = v41;
    sub_F0F3C();
    *(v0 + 368) = &type metadata for Bool;
    *(v0 + 344) = 1;
    sub_54F88((v0 + 344), (v0 + 376));
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v40;
    sub_525C0((v0 + 376), v0 + 176, v42);
    sub_54F34(v0 + 176);
    *(v0 + 456) = v52;
  }

  v43 = *(v0 + 528);
  v44 = *(v0 + 496);
  v45 = *(v0 + 472);
  v46 = sub_F0ADC();
  *(v0 + 576) = v46;
  v47 = swift_task_alloc();
  *(v0 + 584) = v47;
  *(v47 + 16) = v45;
  *(v47 + 24) = _swiftEmptyArrayStorage;
  *(v47 + 32) = v7;
  *(v47 + 40) = v29;
  *(v47 + 48) = v0 + 456;
  *(v47 + 56) = 0;
  *(v47 + 64) = v44;
  v48 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v49 = swift_task_alloc();
  *(v0 + 592) = v49;
  v50 = sub_388C8(&qword_1285F8, &qword_F38C8);
  *v49 = v0;
  v49[1] = sub_7DE20;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 464, v46, &protocol witness table for MainActor, 0xD00000000000002FLL, 0x80000000000FF0B0, sub_81894, v47, v50);
}

uint64_t sub_7DE20()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v12 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = v2[69];
    v5 = v2[68];
    v6 = sub_7DFEC;
  }

  else
  {
    v7 = v2[73];
    v8 = v2[72];
    v9 = v2[71];
    v10 = v2[70];

    v4 = v2[69];
    v5 = v2[68];
    v6 = sub_7DF70;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_7DF70()
{
  v1 = v0[67];
  v2 = v0[65];

  v3 = v0[57];
  v4 = v0[58];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_7DFEC()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[67];
  v6 = v0[65];

  v7 = v0[57];

  v8 = v0[1];
  v9 = v0[75];

  return v8();
}

void sub_7E0A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, void *a8)
{
  v54 = a8;
  v53 = a7;
  v51 = a6;
  v52 = a1;
  v12 = [objc_opt_self() sharedInstance];
  if (v12)
  {
    v13 = v12;
    v14 = [a2 localURL];
    v15 = sub_F01EC();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v13;
    if (v14)
    {
      sub_F01AC();

      v49 = sub_F019C();
      (*(v16 + 8))(v19, v15);
    }

    else
    {
      v49 = 0;
    }

    v48 = [a2 type];
    v47 = [a2 isSticker];
    sub_695BC(a3);
    v46 = sub_F09EC();

    sub_696BC(a4);
    v45 = sub_F09EC();

    sub_51B0C(a5);
    v44 = sub_F075C();

    v20 = *v51;

    v51 = sub_F075C();

    v43 = 2 * (*(a4 + 16) > 1uLL);
    v21 = sub_388C8(&qword_128680, &qword_F3968);
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    v24 = __chkstk_darwin(v21);
    v26 = &v43 - v25;
    (*(v22 + 16))(&v43 - v25, v52, v21, v24);
    v27 = (*(v22 + 80) + 33) & ~*(v22 + 80);
    v28 = (v23 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = a4;
    *(v29 + 24) = a2;
    v30 = v53 & 1;
    *(v29 + 32) = v53 & 1;
    (*(v22 + 32))(v29 + v27, v26, v21);
    v31 = v54;
    *(v29 + v28) = v54;
    aBlock[4] = sub_81D70;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7FA08;
    aBlock[3] = &unk_11EB00;
    v32 = _Block_copy(aBlock);

    v33 = a2;
    v34 = v31;

    LOBYTE(v42) = v30;
    v35 = v51;
    v36 = v44;
    v38 = v49;
    v37 = v50;
    v39 = v48;
    v41 = v45;
    v40 = v46;
    [v50 transcodeFileTransferContents:v49 utiType:v48 isSticker:v47 allowUnfilteredUTIs:v46 target:2 sizes:v45 commonCapabilities:v44 maxDimension:-1 transcoderUserInfo:v51 representations:v43 isLQMEnabled:v42 completionBlock:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void sub_7E514(uint64_t (*a1)(char *, uint64_t, uint64_t), char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v128 = a3;
  v129 = a7;
  v125 = a6;
  v127 = a2;
  v130 = a1;
  v134 = a11;
  v135 = a4;
  v14 = sub_F06CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v126 = v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v117 - v19;
  __chkstk_darwin(v21);
  v23 = v117 - v22;
  v24 = *(a8 + 16);
  v25 = _swiftEmptyArrayStorage;
  LODWORD(v132) = a5;
  if (v24)
  {
    v131 = v117 - v22;
    v133 = v20;
    v26 = v15;
    v136[0] = _swiftEmptyArrayStorage;
    sub_F102C();
    v27 = (a8 + 32);
    do
    {
      v28 = *v27++;
      [objc_allocWithZone(NSNumber) initWithLongLong:v28];
      sub_F0FFC();
      v29 = *(v136[0] + 16);
      sub_F104C();
      sub_F105C();
      sub_F100C();
      --v24;
    }

    while (v24);
    v25 = v136[0];
    v15 = v26;
    LOBYTE(a5) = v132;
    v20 = v133;
    v23 = v131;
  }

  v133 = v25;
  v30 = v135;
  if ((a5 & 1) == 0 && v135)
  {
    v31 = objc_opt_self();
    swift_errorRetain();
    v32 = [v31 sharedInstance];
    if (v32)
    {
      v33 = v32;
      v34 = [a9 localURL];
      v35 = sub_F01EC();
      v36 = *(v35 - 8);
      v37 = *(v36 + 64);
      __chkstk_darwin(v35);
      v39 = v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v34)
      {
        sub_F01AC();

        v40 = sub_F019C();
        (*(v36 + 8))(v39, v35);
        sub_37310(0, &qword_128050, NSNumber_ptr);
        v41 = sub_F09EC();

        [v33 trackRCSTranscodeFailureWithReason:2 sourceFile:v40 sizeLimits:v41 isSticker:objc_msgSend(a9 lowQualityModeEnabled:{"isSticker"), a10 & 1}];

        v136[0] = v30;
LABEL_27:
        sub_388C8(&qword_128680, &qword_F3968);
        sub_F0A7C();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  LODWORD(v135) = a10;
  if (v128)
  {
    v42 = Logger.rcs.unsafeMutableAddressor();
    (*(v15 + 16))(v23, v42, v14);

    v43 = sub_F06AC();
    v44 = sub_F0CCC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v136[0] = v46;
      *v45 = 136315138;
      v47 = sub_F0A0C();
      v49 = sub_3E850(v47, v48, v136);
      v131 = v23;
      v50 = v49;

      *(v45 + 4) = v50;
      _os_log_impl(&dword_0, v43, v44, "Transcoder got outputContext %s", v45, 0xCu);
      sub_1EDC(v46);

      (*(v15 + 8))(v131, v14);
    }

    else
    {

      (*(v15 + 8))(v23, v14);
    }
  }

  v124 = a9;
  if (v129)
  {
    v51 = Logger.rcs.unsafeMutableAddressor();
    (*(v15 + 16))(v20, v51, v14);

    v52 = sub_F06AC();
    v53 = sub_F0CCC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v136[0] = v55;
      *v54 = 136315138;
      v56 = sub_F077C();
      v58 = v20;
      v59 = sub_3E850(v56, v57, v136);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_0, v52, v53, "Transcoder got additionalOutputContext %s", v54, 0xCu);
      sub_1EDC(v55);

      (*(v15 + 8))(v58, v14);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }
  }

  v129 = v14;
  v60 = sub_F01EC();
  v131 = v117;
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  v63 = sub_388C8(&qword_128320, &qword_F34B0);
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63 - 8);
  v66 = v117 - v65;
  sub_37380(v130, v117 - v65, &qword_128320, &qword_F34B0);
  v67 = *(v61 + 48);
  if (v67(v66, 1, v60) == 1)
  {
    sub_372B0(v66, &qword_128320, &qword_F34B0);
    goto LABEL_24;
  }

  (*(v61 + 32))(v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v66, v60);
  if (!v127)
  {
    (*(v61 + 8))(v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v60);
LABEL_24:
    v88 = [objc_opt_self() sharedInstance];
    v89 = v135;
    v90 = v124;
    if (v88)
    {
      v91 = v88;
      v92 = [v124 localURL];
      __chkstk_darwin(v92);
      v93 = v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v94)
      {
        sub_F01AC();

        v95 = sub_F019C();
        (*(v61 + 8))(v93, v60);
        sub_37310(0, &qword_128050, NSNumber_ptr);
        v96 = sub_F09EC();

        [v91 trackRCSTranscodeFailureWithReason:2 sourceFile:v95 sizeLimits:v96 isSticker:objc_msgSend(v90 lowQualityModeEnabled:{"isSticker"), v89 & 1}];

        sub_81E70();
        v136[0] = swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_42;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v120 = v64;
  v130 = v67;
  v123 = a12;
  v68 = Logger.rcs.unsafeMutableAddressor();
  v122 = v15;
  v69 = v126;
  v70 = (*(v15 + 16))(v126, v68, v129);
  v128 = v117;
  v71 = __chkstk_darwin(v70);
  (*(v61 + 16))(v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v71);

  v72 = sub_F06AC();
  v73 = sub_F0CCC();

  v118 = v73;
  v121 = v72;
  v74 = os_log_type_enabled(v72, v73);
  v119 = v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v74)
  {
    v75 = swift_slowAlloc();
    v117[1] = v61 + 48;
    v76 = v75;
    v136[0] = swift_slowAlloc();
    *v76 = 67109890;
    *(v76 + 4) = v132 & 1;
    *(v76 + 8) = 2080;
    sub_81D24();
    v77 = sub_F11EC();
    v79 = v78;
    v132 = *(v61 + 8);
    v132(v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v60);
    v80 = sub_3E850(v77, v79, v136);

    *(v76 + 10) = v80;
    *(v76 + 18) = 1024;
    *(v76 + 20) = v125 & 1;
    *(v76 + 24) = 2080;
    v81 = v122;
    v82 = v124;
    v83 = sub_F0A0C();
    v85 = sub_3E850(v83, v84, v136);

    *(v76 + 26) = v85;
    v86 = v121;
    _os_log_impl(&dword_0, v121, v118, "Transcoder success %{BOOL}d for %s, attempted transcode %{BOOL}d generated %s ", v76, 0x22u);
    swift_arrayDestroy();

    v87 = (v81[1])(v126, v129);
  }

  else
  {

    v132 = *(v61 + 8);
    v132(v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v60);
    v87 = (v122[1])(v69, v129);
    v82 = v124;
  }

  v97 = v120;
  v126 = v117;
  __chkstk_darwin(v87);
  v122 = v117;
  __chkstk_darwin(v117 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = (v117 - v99);
  v129 = v98;
  v127 = sub_7F438(v98, v117 - v99, v127);
  v100 = [objc_opt_self() sharedInstance];
  if (!v100)
  {
    goto LABEL_43;
  }

  v101 = v100;
  v102 = [v82 localURL];
  __chkstk_darwin(v102);
  if (!v103)
  {
LABEL_44:
    __break(1u);
    return;
  }

  sub_F01AC();

  v123 = sub_F019C();
  v104 = v117 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v132;
  v106 = (v132)(v104, v60);
  __chkstk_darwin(v106);
  v107 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_37380(v129, v117 - v107, &qword_128320, &qword_F34B0);
  v108 = v130(v117 - v107, 1, v60);
  if (v108 == 1)
  {
    v109 = 0;
  }

  else
  {
    v109 = sub_F019C();
    v108 = v105(v117 - v107, v60);
  }

  __chkstk_darwin(v108);
  sub_37380(v128, v117 - v107, &qword_128320, &qword_F34B0);
  if (v130(v117 - v107, 1, v60) == 1)
  {
    v110 = 0;
    v111 = v135;
    v112 = v132;
  }

  else
  {
    v110 = sub_F019C();
    v112 = v132;
    v132(v117 - v107, v60);
    v111 = v135;
  }

  sub_37310(0, &qword_128050, NSNumber_ptr);
  v113 = sub_F09EC();

  v114 = [v124 isSticker];
  BYTE1(v116) = v111 & 1;
  LOBYTE(v116) = v125 & 1;
  v115 = v123;
  [v101 trackRCSTranscodeWithReason:2 sourceFile:v123 highQualityFile:v109 lowQualityFile:v110 sizeLimits:v113 isSticker:v114 transcoded:v116 lowQualityModeEnabled:?];

  v136[0] = v127;
  sub_388C8(&qword_128680, &qword_F3968);
  sub_F0A8C();
  sub_372B0(v128, &qword_128320, &qword_F34B0);
  sub_372B0(v129, &qword_128320, &qword_F34B0);
  v112(v119, v60);
}

char *sub_7F438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v5 = sub_388C8(&qword_128320, &qword_F34B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v45 - v7;
  v9 = sub_F01EC();
  v10 = *(v9 - 8);
  v12 = v10 + 56;
  v11 = *(v10 + 56);
  v11(v8, 1, 1, v9);
  v46 = a2;
  v60 = v11;
  v11(a2, 1, 1, v9);
  v13 = *(a3 + 16);
  if (v13)
  {
    v58 = v9;
    v14 = a3 + 32;
    v15 = *(v10 + 64);
    v48 = v10 + 8;
    v49 = (v10 + 16);
    v52 = v10;
    v47 = v10 + 48;
    v61 = _swiftEmptyArrayStorage;
    v50 = v15;
    v51 = v10 + 56;
    v16 = v6;
    v53 = v8;
    v54 = v6;
    v59 = (v10 + 32);
    do
    {
      v18 = v12;
      v63 = v13;
      __chkstk_darwin(v14);
      v19 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
      v62 = v20;
      v21 = sub_3FE38(v20, v64);
      __chkstk_darwin(v21);
      v22 = v58;
      if (swift_dynamicCast())
      {
        v57 = &v45;
        v60(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v22);
        v23 = *v59;
        v24 = (*v59)(&v45 - v19, &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
        v55 = &v45;
        __chkstk_darwin(v24);
        v25 = &v45 - v19;
        v26 = [objc_opt_self() defaultManager];
        v56 = &v45 - v19;
        v27 = sub_F019C();
        v28 = [v26 im_generateCopyForURL:v27];

        sub_F01AC();
        v30 = __chkstk_darwin(v29);
        v31 = &v45 - v19;
        (*v49)(&v45 - v19, &v45 - v19, v22, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_6E814(0, *(v61 + 2) + 1, 1, v61);
        }

        v33 = *(v61 + 2);
        v32 = *(v61 + 3);
        if (v33 >= v32 >> 1)
        {
          v61 = sub_6E814(v32 > 1, v33 + 1, 1, v61);
        }

        v34 = v52;
        (*(v52 + 8))(v25, v22);
        v35 = v61;
        *(v61 + 2) = v33 + 1;
        v36 = v23(&v35[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33], v31, v22);
        __chkstk_darwin(v36);
        v38 = v37;
        v39 = &v45 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = v53;
        sub_37380(v53, v39, &qword_128320, &qword_F34B0);
        if ((*(v34 + 48))(v39, 1, v22) == 1)
        {
          sub_372B0(v40, &qword_128320, &qword_F34B0);
          sub_372B0(v39, &qword_128320, &qword_F34B0);
          v23(v40, v56, v22);
          v41 = v22;
          v12 = v51;
          v60(v40, 0, 1, v41);
          v8 = v40;
          v16 = v38;
        }

        else
        {
          v42 = v46;
          sub_372B0(v46, &qword_128320, &qword_F34B0);
          sub_372B0(v39, &qword_128320, &qword_F34B0);
          v23(v42, v56, v22);
          v16 = v54;
          v43 = v22;
          v12 = v51;
          v60(v42, 0, 1, v43);
          v8 = v40;
        }

        v15 = v50;
      }

      else
      {
        v17 = v22;
        v12 = v18;
        v60(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v17);
        sub_372B0(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_128320, &qword_F34B0);
      }

      v14 = v62 + 32;
      v13 = v63 - 1;
    }

    while (v63 != 1);
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  sub_81EC4(v8, v45);
  return v61;
}

uint64_t sub_7FA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = sub_388C8(&qword_128320, &qword_F34B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v25 - v19;
  if (a2)
  {
    sub_F01AC();
    v21 = sub_F01EC();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v22 = sub_F01EC();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  if (a3)
  {
    a3 = sub_F09FC();
  }

  if (a4)
  {
    a4 = sub_F09FC();
  }

  if (a8)
  {
    a8 = sub_F076C();
  }

  v23 = a5;
  v16(v20, a3, a4, a5, a6, a7, a8);

  return sub_372B0(v20, &qword_128320, &qword_F34B0);
}

uint64_t RCSServiceSession.uploadFile(onSimID:fileURL:thumbURL:isAudioMessage:encrypted:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_67FCC;

  return sub_818AC(a1, a2, a3, a4, a5, a6);
}

void sub_7FCE8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, int a7, int a8)
{
  v89 = a7;
  v90 = a8;
  v81 = a5;
  v91 = a4;
  v88 = a2;
  v85 = a1;
  v10 = sub_388C8(&qword_128670, &unk_F3958);
  v86 = *(v10 - 8);
  v87 = v10;
  v83 = *(v86 + 64);
  __chkstk_darwin(v10);
  v84 = v69 - v11;
  v12 = sub_F06CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Logger.rcs.unsafeMutableAddressor();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_F01EC();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v23;
  v24 = *(v23 + 16);
  v82 = a3;
  v24(v22, a3, v18, v20);
  v25 = sub_388C8(&qword_128320, &qword_F34B0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v76 = v27;
  v28 = v69 - v27;
  sub_37380(v91, v69 - v27, &qword_128320, &qword_F34B0);

  v29 = a6;
  v30 = sub_F06AC();
  LODWORD(a6) = sub_F0CCC();

  v77 = a6;
  v31 = os_log_type_enabled(v30, a6);
  v80 = v26;
  if (v31)
  {
    v71 = v30;
    v73 = v16;
    v72 = v13;
    v74 = v12;
    v75 = v29;
    v32 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v32 = 136315650;
    sub_81D24();
    v33 = sub_F11EC();
    v35 = v34;
    v36 = v79;
    v37 = *(v79 + 8);
    v37(v22, v18);
    v38 = sub_3E850(v33, v35, aBlock);

    v69[1] = v69;
    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    __chkstk_darwin(v39);
    v40 = v69 - v76;
    sub_37380(v28, v69 - v76, &qword_128320, &qword_F34B0);
    v41 = (*(v36 + 48))(v40, 1, v18);
    v42 = v18;
    v78 = v37;
    if (v41 == 1)
    {
      sub_372B0(v40, &qword_128320, &qword_F34B0);
      v43 = 0xE300000000000000;
      v44 = 7104878;
    }

    else
    {
      v44 = sub_F017C();
      v43 = v49;
      v37(v40, v18);
    }

    v50 = v74;
    v51 = v72;
    sub_372B0(v28, &qword_128320, &qword_F34B0);
    v52 = sub_3E850(v44, v43, aBlock);

    *(v32 + 14) = v52;
    *(v32 + 22) = 2080;
    *(v32 + 24) = sub_3E850(v81, v75, aBlock);
    v53 = v71;
    _os_log_impl(&dword_0, v71, v77, "Uploading RCS file %s thumb %s on sim %s", v32, 0x20u);
    swift_arrayDestroy();

    (*(v51 + 8))(v73, v50);
    v47 = v90;
    v48 = v91;
  }

  else
  {

    sub_372B0(v28, &qword_128320, &qword_F34B0);
    v45 = v79;
    v78 = *(v79 + 8);
    v78(v22, v18);
    (*(v13 + 8))(v16, v12);
    v46 = v45;
    v47 = v90;
    v42 = v18;
    v48 = v91;
    v36 = v46;
  }

  v91 = [objc_opt_self() sharedInstance];
  v54 = sub_F07BC();
  v55 = sub_F019C();
  __chkstk_darwin(v55);
  v57 = v69 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37380(v48, v57, &qword_128320, &qword_F34B0);
  if ((*(v36 + 48))(v57, 1, v42) == 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_F019C();
    v78(v57, v42);
  }

  v59 = v86;
  v60 = v84;
  v61 = v87;
  (*(v86 + 16))(v84, v85, v87);
  v62 = (*(v59 + 80) + 24) & ~*(v59 + 80);
  v63 = swift_allocObject();
  v64 = v88;
  *(v63 + 16) = v88;
  (*(v59 + 32))(v63 + v62, v60, v61);
  aBlock[4] = sub_81C8C;
  aBlock[5] = v63;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_80708;
  aBlock[3] = &unk_11EAB0;
  v65 = _Block_copy(aBlock);
  v66 = v64;

  v67 = v47 & 1;
  v68 = v91;
  [v91 uploadRCSFileOnSimID:v54 fileURL:v55 thumbURL:v58 isAudioMessage:v89 & 1 encrypted:v67 userInfo:0 completion:v65];
  _Block_release(v65);
}

uint64_t sub_804E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.rcs.unsafeMutableAddressor();
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_F06AC();
  v12 = sub_F0CCC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_F077C();
    v18 = sub_3E850(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v11, v12, "Uploaded RCS file %s", v14, 0xCu);
    sub_1EDC(v15);
  }

  (*(v6 + 8))(v9, v5);
  v21 = a1;

  sub_388C8(&qword_128670, &unk_F3958);
  return sub_F0A8C();
}

uint64_t sub_80708(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_F076C();

  v2(v3);
}

uint64_t RCSServiceSession.extractURL(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 balloonBundleID];
  if (!v4)
  {
    sub_F07EC();
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_F07EC();
  v8 = v7;

  v9 = sub_F07EC();
  if (!v8)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v6 == v9 && v8 == v10)
  {
  }

  else
  {
    v12 = sub_F122C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v16 = [objc_allocWithZone(IMDSharedUtilitiesPluginPayload) init];
  v17 = [a1 payloadData];
  if (v17)
  {
    v18 = v17;
    v19 = sub_F025C();
    v21 = v20;

    v22 = sub_F024C();
    sub_5F048(v19, v21);
  }

  else
  {
    v22 = 0;
  }

  [v16 setData:v22];

  sub_37310(0, &qword_128600, IMSharedMessageRichLinkSummary_ptr);
  v23 = [swift_getObjCClassFromMetadata() linkMetadataForPluginPayload:v16];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 URL];
    v26 = sub_F01EC();
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    __chkstk_darwin(v26);
    v30 = &v31 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v25)
    {
      sub_F01AC();

      (*(v27 + 32))(a2, v30, v26);
      return (*(v27 + 56))(a2, 0, 1, v26);
    }
  }

  else
  {
  }

LABEL_11:
  v13 = sub_F01EC();
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, 1, 1, v13);
}

uint64_t sub_80AB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_37C54;

  return RCSServiceSession.resolveGroupIdentity(for:subscriptionContext:)(a1, v5, v6);
}

uint64_t sub_80B64(void **a1)
{
  v1 = *a1;
  v2 = CTXPCServiceSubscriptionContext.canonicalPhoneNumber.getter();
  v3 = [v1 labelID];
  if (v3)
  {
    v4 = v3;
    sub_F07EC();
  }

  return v2;
}

uint64_t sub_80C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_80CD0;

  return RCSServiceSession.transcodeTransfer(transfer:for:isAudioMessage:)(a1, a2, a3, a4);
}

uint64_t sub_80CD0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_80DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_72498;

  return sub_818AC(a1, a2, a3, a4, a5, a6);
}

id sub_80ED4(id *a1)
{
  result = [*a1 chatIdentifier];
  if (result)
  {
    v2 = result;
    v3 = sub_F07EC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_80F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_127F60, &unk_F3970);
    v3 = sub_F110C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37380(v4, v13, &qword_128510, &unk_F36A0);
      result = sub_51FA8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_54F88(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_81070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_128598, &unk_F3750);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_81174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_128690, &unk_F3980);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_81270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_128590, &qword_F3930);
    v3 = sub_F110C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37380(v4, &v13, &qword_1285C0, &qword_F3780);
      v5 = v13;
      v6 = v14;
      result = sub_51FEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_54F88(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_813C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_388C8(a2, a3);
    v5 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_51FEC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_814C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_128588, &unk_F3740);
    v3 = sub_F110C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37380(v4, &v21, &qword_128660, &qword_F3938);
      v5 = v21;
      v6 = v22;
      result = sub_51FEC(v21, v22);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 160 * result);
      v11 = v24;
      *v10 = v23;
      v10[1] = v11;
      v12 = v25;
      v13 = v26;
      v14 = v28;
      v10[4] = v27;
      v10[5] = v14;
      v10[2] = v12;
      v10[3] = v13;
      v15 = v29;
      v16 = v30;
      v17 = v32;
      v10[8] = v31;
      v10[9] = v17;
      v10[6] = v15;
      v10[7] = v16;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      v4 += 176;
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

uint64_t _sSo17RCSServiceSessionC3RCSE24shouldCreateThumbnailForySbSo14IMFileTransferCF_0(void *a1)
{
  v2 = sub_388C8(&qword_128300, &unk_F68D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_F068C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v22 - v13;
  v15 = [a1 filename];
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  v17 = [v15 pathExtension];

  sub_F07EC();
  sub_F063C();
  sub_F061C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_372B0(v5, &qword_128300, &unk_F68D0);
LABEL_4:
    v18 = 0;
    return v18 & 1;
  }

  (*(v7 + 32))(v14, v5, v6);
  sub_F064C();
  v20 = sub_F067C();
  v21 = *(v7 + 8);
  v21(v10, v6);
  if (v20)
  {
    v21(v14, v6);
    v18 = 1;
  }

  else
  {
    sub_F065C();
    v18 = sub_F067C();
    v21(v10, v6);
    v21(v14, v6);
  }

  return v18 & 1;
}

uint64_t sub_818AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 48) = a4;
  *(v7 + 56) = v6;
  *(v7 + 121) = a6;
  *(v7 + 120) = a5;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 24) = a1;
  *(v7 + 64) = sub_F0AEC();
  *(v7 + 72) = sub_F0ADC();
  v9 = sub_F0A6C();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return _swift_task_switch(sub_81958, v9, v8);
}

uint64_t sub_81958()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 121);
  v4 = *(v0 + 120);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v13 = *(v0 + 40);
  v7 = sub_F0ADC();
  *(v0 + 96) = v7;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v13;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;
  *(v8 + 57) = v3;
  v9 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  v11 = sub_388C8(&qword_128568, &qword_F3950);
  *v10 = v0;
  v10[1] = sub_81AB0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v7, &protocol witness table for MainActor, 0xD000000000000047, 0x80000000000FF0E0, sub_81C74, v8, v11);
}

uint64_t sub_81AB0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v8 = *v0;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_81C10, v6, v5);
}

uint64_t sub_81C10()
{
  v1 = v0[9];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_81C8C(uint64_t a1)
{
  v3 = *(sub_388C8(&qword_128670, &unk_F3958) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_804E0(a1, v4, v5);
}

uint64_t sub_81D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_81D24()
{
  result = qword_128678;
  if (!qword_128678)
  {
    sub_F01EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128678);
  }

  return result;
}

void sub_81D70(uint64_t (*a1)(char *, uint64_t, uint64_t), char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v15 = *(sub_388C8(&qword_128680, &qword_F3968) - 8);
  v16 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  sub_7E514(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16), *(v7 + 24), *(v7 + 32), v7 + v16, *(v7 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_81E70()
{
  result = qword_128688;
  if (!qword_128688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128688);
  }

  return result;
}

uint64_t sub_81EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_128320, &qword_F34B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_81F48()
{
  result = qword_128698;
  if (!qword_128698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128698);
  }

  return result;
}

uint64_t RCSServiceSession.replicationPhoneNumbers()()
{
  v9.super_class = RCSServiceSession;
  v0 = objc_msgSendSuper2(&v9, "replicationPhoneNumbers");
  v1 = sub_F0C1C();

  v10 = v1;
  sub_72BFC();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_82EDC(&v8, v5, v6);

      v4 += 2;
      --v3;
    }

    while (v3);

    return v10;
  }

  else
  {

    return v1;
  }
}

uint64_t sub_820F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 ctSubscriptionInfo];

  if (!v6)
  {
    return 0;
  }

  if (a4)
  {
    a4 = sub_F07BC();
  }

  v7 = sub_F07BC();
  v8 = [v6 __im_subscriptionContextOrDefaultForForSimID:a4 phoneNumber:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_8326C(v8);

  return v9 & 1;
}

Swift::Bool __swiftcall RCSServiceSession.replicationRequirementsSatisfied(forPhoneNumber:simID:)(Swift::String forPhoneNumber, Swift::String_optional simID)
{
  object = simID.value._object;
  countAndFlagsBits = simID.value._countAndFlagsBits;
  v5 = forPhoneNumber._object;
  v6 = forPhoneNumber._countAndFlagsBits;
  v7 = sub_F06CC();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 sharedManager];
  v47 = v6;
  v13 = sub_F07BC();
  v49 = v7;
  if (object)
  {
    v14 = sub_F07BC();
  }

  else
  {
    v14 = 0;
  }

  v46 = [v12 groupTextReplicationSupportedForPhoneNumber:v13 simID:v14];

  v15 = v47;
  if (sub_863B8(v47, v5, countAndFlagsBits, object))
  {
    v45 = sub_820F0(v15, v5, countAndFlagsBits, object);
  }

  else
  {
    v16 = [v2 relayController];
    v45 = [v16 hasRelayDevice];
  }

  v17 = [v11 sharedManager];
  v18 = sub_F07BC();
  v44 = countAndFlagsBits;
  if (object)
  {
    v19 = sub_F07BC();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v17 groupMessagingEnabledForPhoneNumber:v18 simID:v19];

  v21 = [v2 relayController];
  v22 = [v21 hasRelayDevice];

  v42 = v20;
  if (v22)
  {
    v23 = [v2 relayController];
    v41 = [v23 _canRelayMMS];

    v24 = v48;
    if (v45 & v20 & v46)
    {
      LODWORD(v25) = 1;
      v26 = v49;
      goto LABEL_17;
    }

    v26 = v49;
  }

  else
  {
    v41 = 0;
    v24 = v48;
    v26 = v49;
    if (v45 & v20 & v46)
    {
      LODWORD(v25) = 1;
      goto LABEL_17;
    }
  }

  LODWORD(v25) = 0;
LABEL_17:
  v27 = Logger.rcs.unsafeMutableAddressor();
  (*(v24 + 16))(v10, v27, v26);
  swift_bridgeObjectRetain_n();
  v28 = v2;
  swift_bridgeObjectRetain_n();
  v29 = v28;
  v30 = sub_F06AC();
  v31 = sub_F0CCC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v43 = v25;
    v25 = v32;
    v39 = swift_slowAlloc();
    v40 = v10;
    v50 = v39;
    *v25 = 136316930;
    v33 = v47;
    *(v25 + 4) = sub_3E850(v47, v5, &v50);
    *(v25 + 12) = 2080;
    v34 = v44;
    if (object)
    {
      v35 = v44;
    }

    else
    {
      v35 = 0x3E6C696E3CLL;
    }

    if (object)
    {
      v36 = object;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    v37 = sub_3E850(v35, v36, &v50);

    *(v25 + 14) = v37;
    *(v25 + 22) = 1024;
    *(v25 + 24) = v43;
    *(v25 + 28) = 1024;
    *(v25 + 30) = v45 & 1;
    *(v25 + 34) = 1024;
    *(v25 + 36) = v42;
    *(v25 + 40) = 1024;
    *(v25 + 42) = v46;
    *(v25 + 46) = 1024;
    LOBYTE(v37) = sub_820F0(v33, v5, v34, object);

    *(v25 + 48) = v37 & 1;

    *(v25 + 52) = 1024;
    *(v25 + 54) = v41;
    _os_log_impl(&dword_0, v30, v31, "Phone number %s and simID %s satisfy replication requirements %{BOOL}d (RCS: %{BOOL}d groups: %{BOOL}d isEnabledByCarrier: %{BOOL}d local RCS: %{BOOL}d relay: %{BOOL}d)", v25, 0x3Au);
    swift_arrayDestroy();

    LOBYTE(v25) = v43;

    (*(v48 + 8))(v40, v49);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    (*(v24 + 8))(v10, v26);
  }

  return v25;
}

void RCSServiceSession.replicationRequiredForFeaturesUsed(by:)(void *a1)
{
  v2 = v1;
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  if (qword_127A38 != -1)
  {
    swift_once();
  }

  v17 = sub_3C96C(v12, qword_127CA0);
  (*(v13 + 16))(v16, v17, v12);
  sub_F044C();
  (*(v13 + 8))(v16, v12);
  if (v47 == 1)
  {
    v18 = Logger.rcs.unsafeMutableAddressor();
    (*(v5 + 16))(v11, v18, v4);
    v19 = a1;
    v20 = sub_F06AC();
    v21 = sub_F0CDC();
    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_16;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136315138;
    v24 = [v19 guid];

    if (v24)
    {
      v25 = sub_F07EC();
      v27 = v26;

      v28 = sub_3E850(v25, v27, &v47);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_0, v20, v21, "Replicating message %s due to override", v22, 0xCu);
      sub_1EDC(v23);

LABEL_16:
      (*(v5 + 8))(v11, v4);
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v48.receiver = v2;
  v48.super_class = RCSServiceSession;
  if ((objc_msgSendSuper2(&v48, "replicationRequiredForFeaturesUsedByMessageItem:", a1) & 1) == 0)
  {
    v29 = [a1 threadIdentifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_F07EC();
      v33 = v32;

      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        v35 = Logger.rcs.unsafeMutableAddressor();
        (*(v5 + 16))(v8, v35, v4);
        v36 = a1;
        v37 = sub_F06AC();
        v38 = sub_F0CDC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v47 = v40;
          *v39 = 136315138;
          v41 = [v36 guid];

          if (!v41)
          {
            goto LABEL_22;
          }

          v42 = sub_F07EC();
          v44 = v43;

          v45 = sub_3E850(v42, v44, &v47);

          *(v39 + 4) = v45;
          _os_log_impl(&dword_0, v37, v38, "Replicating message %s due to thread", v39, 0xCu);
          sub_1EDC(v40);
        }

        else
        {
        }

        (*(v5 + 8))(v8, v4);
      }
    }
  }
}

Swift::Bool __swiftcall RCSServiceSession.replicationRequired(forMessageBodyAttributeName:)(Swift::String forMessageBodyAttributeName)
{
  object = forMessageBodyAttributeName._object;
  if (sub_F07EC() == forMessageBodyAttributeName._countAndFlagsBits && v3 == object)
  {

    return 0;
  }

  else
  {
    v5 = sub_F122C();

    result = 0;
    if ((v5 & 1) == 0)
    {
      v7 = sub_F07BC();
      v9.receiver = v1;
      v9.super_class = RCSServiceSession;
      v8 = objc_msgSendSuper2(&v9, "replicationRequiredForMessageBodyAttributeName:", v7);

      return v8;
    }
  }

  return result;
}

uint64_t sub_82EDC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_F12FC();
  sub_F089C();
  v9 = sub_F132C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_F122C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_8302C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_8302C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_9D9EC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_9DF94();
      goto LABEL_16;
    }

    sub_9E240(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_F12FC();
  sub_F089C();
  result = sub_F132C();
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

      result = sub_F122C();
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
  result = sub_F125C();
  __break(1u);
  return result;
}

uint64_t RCSServiceSession.readIdentity(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(&v10 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v11 = &protocol witness table for IMDChat;
  *&v9 = a1;
  v4 = a1;
  if (IMDChatRCSGroupIdentity.isValid.getter())
  {
    result = swift_allocObject();
    v6 = v10;
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 48) = v11;
    v7 = &protocol witness table for IMDChatRCSGroupIdentity;
    v8 = &type metadata for IMDChatRCSGroupIdentity;
  }

  else
  {
    sub_39BC4(&v9);
    v8 = 0;
    v7 = 0;
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v8;
  a2[4] = v7;
  *a2 = result;
  return result;
}

id sub_8326C(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(*(v2 - 8) + 64);
  result = [a1 labelID];
  if (result)
  {

    v5 = sub_724A4(a1);
    v6 = [v5 operationStatus];

    if (v6)
    {
      v7 = [v6 registrationState];

      return (v7 == &dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RCSServiceSession.displayName(for:)(void *a1)
{
  v1 = [a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();

  return v3;
}

uint64_t RCSServiceSession.countryCode(for:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 copyIsoCountryCodeForSubscriptionContext:a1];

  v4 = sub_F07EC();
  return v4;
}

id RCSServiceSession.rcsEnabledSubscriptionContext(for:)(uint64_t a1)
{
  result = [v1 subscriptionContextForChat:a1];
  if (result)
  {
    v3 = result;
    v4 = sub_8326C(result);
    result = v3;
    if ((v4 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

id RCSServiceSession.defaultCountryCode(for:)(uint64_t a1)
{
  v2 = [v1 subscriptionContextForChat:a1];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 copyIsoCountryCodeForSubscriptionContext:v3];

    v6 = sub_F07EC();
LABEL_6:

    return v6;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v10[0] = 2;
    v11 = sub_F0FBC();
    v12 = v9;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    v16 = 0;
    sub_94528(v10);

    result = IMCountryCodeForIncomingTextMessage();
    if (result)
    {
      v5 = result;
      v6 = sub_F07EC();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id RCSServiceSession.createGroup(info:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___RCSServiceSession_state);
  v10 = *(v9 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v11 = v10;

  v12 = CTLazuliOperationID.init(id:)(a3, a4);
  v18 = 0;
  LODWORD(a2) = [v11 create:a2 groupChat:a1 withOperationID:v12 withError:&v18];

  v13 = v18;
  if (a2)
  {

    return v13;
  }

  else
  {
    v15 = v18;
    v16 = sub_F015C();

    result = swift_willThrow();
    if (*(v9 + 40))
    {
      v17 = *(v9 + 40);

      RCSGroupController.groupOperationFailed(with:operationID:)(v16, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void RCSServiceSession.leaveGroup(identity:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
  sub_1F28(a1, v28);
  v10 = v29;
  v11 = v30;
  v12 = sub_5F3F4(v28, v29);
  v13 = *(*(v10 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_A84F0(v16, v9, v10, v11);
  sub_1EDC(v28);
  v19 = *(v4 + OBJC_IVAR___RCSServiceSession_state);
  v20 = *(v19 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v21 = v20;

  v22 = CTLazuliOperationID.init(id:)(a3, a4);
  v28[0] = 0;
  LODWORD(a2) = [v21 exit:a2 groupChat:v18 withOperationID:v22 withError:v28];

  if (a2)
  {
    v23 = v28[0];
  }

  else
  {
    v24 = v28[0];
    v25 = sub_F015C();

    swift_willThrow();
    if (*(v19 + 40))
    {
      v26 = *(v19 + 40);

      RCSGroupController.groupOperationFailed(with:operationID:)(v25, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }
}

void RCSServiceSession.addParticipants(_:to:operation:)(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{

  sub_83D08(a1, a2, a3, a4, a5, RCSPersistentMenu.menu.getter, &selRef_addParticipants_toGroupChat_withParticipantsToAdd_withOperationID_withSecurity_withError_);
}

void RCSServiceSession.removeParticipants(_:from:operation:)(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{

  sub_83D08(a1, a2, a3, a4, a5, j___s7CoreRCS17RCSPersistentMenuC4menuSo012IMPersistentD0CSgvg, &selRef_removeParticipants_fromGroupChat_withParticipantsToRemove_withOperationID_withSecurity_withError_);
}

void sub_83D08(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void), SEL *a7)
{
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v82 = sub_F06CC();
  v11 = *(v82 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v82);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(CTLazuliGroupChatParticipantList) init];
  v16 = v15;
  v17 = *(a1 + 16);
  v84 = a7;
  v81 = v11;
  if (v17)
  {
    v78 = a2;
    v79 = v14;
    v80 = v15;
    v88 = _swiftEmptyArrayStorage;
    v18 = sub_6EB68(0, v17, 0);
    v19 = v88;
    v20 = (a1 + 32);
    do
    {
      v21 = v20[1];
      v93[0] = *v20;
      v93[1] = v21;
      *v94 = v20[2];
      *&v94[9] = *(v20 + 41);
      __chkstk_darwin(v18);
      v22 = v86;
      *(&v78 - 4) = v85;
      *(&v78 - 3) = v22;
      *(&v78 - 2) = v87;
      sub_38910(v93, v89);
      RCSHandle.canonicalizedHandle(for:)(a6, v92);
      v23 = RCSHandle.rawValue.getter();
      v25 = v24;
      sub_3CAB8(v92);
      v18 = sub_3CAB8(v93);
      v88 = v19;
      v27 = v19[2];
      v26 = v19[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v18 = sub_6EB68((v26 > 1), v27 + 1, 1);
        v19 = v88;
      }

      v19[2] = v28;
      v29 = &v19[2 * v27];
      v29[4] = v23;
      v29[5] = v25;
      v20 += 4;
      --v17;
    }

    while (v17);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage[2];
    if (!v28)
    {

      goto LABEL_12;
    }

    v78 = a2;
    v79 = v14;
    v80 = v15;
    v19 = _swiftEmptyArrayStorage;
  }

  v89[0] = _swiftEmptyArrayStorage;
  sub_F102C();
  v30 = v19 + 5;
  do
  {
    v31 = *(v30 - 1);
    v32 = *v30;
    v33 = objc_allocWithZone(CTLazuliGroupChatParticipant);

    v34 = [v33 init];
    v35 = sub_F07BC();
    [v34 setMember:v35];

    sub_F0FFC();
    v36 = *(v89[0] + 2);
    sub_F104C();
    sub_F105C();
    sub_F100C();
    v30 += 2;
    --v28;
  }

  while (v28);

  v16 = v80;
  v14 = v79;
  a2 = v78;
LABEL_12:
  sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
  v37 = sub_F09EC();

  [v16 setMemberList:v37];

  v38 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
  sub_1F28(a2, v89);
  v39 = v90;
  v40 = v91;
  v41 = sub_5F3F4(v89, v90);
  v42 = *(*(v39 - 8) + 64);
  v43 = __chkstk_darwin(v41);
  v45 = &v78 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45, v43);
  v47 = sub_A84F0(v45, v38, v39, v40);
  sub_1EDC(v89);
  v48 = a2[3];
  v49 = a2[4];
  sub_373E8(a2, v48);
  v50 = (*(v49 + 24))(v48, v49);
  v51 = 0;
  if (v50)
  {
    v51 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  v52 = Logger.rcs.unsafeMutableAddressor();
  v53 = v81;
  v54 = v82;
  (*(v81 + 16))(v14, v52, v82);
  v55 = v51;
  v56 = sub_F06AC();
  v57 = sub_F0CCC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v80 = v47;
    v60 = v14;
    v61 = v53;
    v62 = v16;
    v63 = v59;
    *v58 = 138412290;
    *(v58 + 4) = v55;
    *v59 = v51;
    v64 = v55;
    _os_log_impl(&dword_0, v56, v57, "Sending with encryption: %@", v58, 0xCu);
    sub_389D8(v63);
    v16 = v62;
    v53 = v61;
    v14 = v60;
    v47 = v80;
  }

  (*(v53 + 8))(v14, v54);
  v65 = *(v83 + OBJC_IVAR___RCSServiceSession_state);
  v66 = *(v65 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v67 = v66;
  v68 = v87;

  v69 = CTLazuliOperationID.init(id:)(v86, v68);
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  v70 = static NSUserDefaults.forceEncryption.getter();
  v71 = 0;
  v72 = v84;
  if ((v70 & 1) == 0)
  {
    v71 = v55;
  }

  v89[0] = 0;
  v73 = [v67 *v72];

  if (v73)
  {
    v74 = v89[0];
  }

  else
  {
    v75 = v89[0];
    v76 = sub_F015C();

    swift_willThrow();
    if (*(v65 + 40))
    {
      v77 = *(v65 + 40);

      RCSGroupController.groupOperationFailed(with:operationID:)(v76, v86, v87);
    }

    else
    {
      __break(1u);
    }
  }
}

void RCSServiceSession.renameGroup(identity:name:operation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v55 = a5;
  v56 = a6;
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  sub_373E8(a1, v14);
  v16 = (*(v15 + 24))(v14, v15);
  v17 = 0;
  if (v16)
  {
    v17 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  v18 = Logger.rcs.unsafeMutableAddressor();
  (*(v10 + 16))(v13, v18, v9);
  v19 = v17;
  v20 = sub_F06AC();
  v21 = sub_F0CCC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = v7;
    v23 = v22;
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v17;
    v25 = v19;
    _os_log_impl(&dword_0, v20, v21, "Sending with encryption: %@", v23, 0xCu);
    sub_389D8(v24);

    v7 = v51;
  }

  (*(v10 + 8))(v13, v9);
  v26 = *(v7 + OBJC_IVAR___RCSServiceSession_state);
  v27 = *(v26 + 16);
  v28 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
  sub_1F28(a1, v57);
  v29 = v58;
  v30 = v59;
  v31 = sub_5F3F4(v57, v58);
  v32 = *(*(v29 - 8) + 64);
  v33 = __chkstk_darwin(v31);
  v35 = &v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35, v33);
  v37 = v27;
  v38 = sub_A84F0(v35, v28, v29, v30);
  sub_1EDC(v57);
  sub_37310(0, &qword_1286A8, CTLazuliGroupChatSubject_ptr);
  v39 = v53;

  v40 = CTLazuliGroupChatSubject.init(displayString:)(v52, v39);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v41 = v56;

  v42 = v55;
  v43 = CTLazuliOperationID.init(id:)(v55, v41);
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  v44 = 0;
  if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
  {
    v44 = v19;
  }

  v57[0] = 0;
  v45 = [v37 changeSubject:v54 forGroupChat:v38 withNewSubject:v40 withOperationID:v43 withSecurity:v44 withError:v57];

  if (v45)
  {
    v46 = v57[0];
  }

  else
  {
    v47 = v57[0];
    v48 = sub_F015C();

    swift_willThrow();
    if (*(v26 + 40))
    {
      v49 = *(v26 + 40);

      RCSGroupController.groupOperationFailed(with:operationID:)(v48, v42, v41);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_8496C(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 copyIsoCountryCodeForSubscriptionContext:v1];

  v4 = sub_F07EC();
  return v4;
}

void sub_849EC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [v2 subscriptionContextForChat:*a1];
  v5 = v4;
  if (v4 && (sub_8326C(v4) & 1) == 0)
  {

    v5 = 0;
  }

  *a2 = v5;
}

void RCSServiceSession.updateIdentity(for:info:)(id a1@<X1>, void *a2@<X0>, uint64_t *a3@<X8>)
{
  v5 = [a1 remoteUri];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 focus];
    v8 = sub_F07EC();
    v10 = v9;

    v11 = [v6 conversationID];
    v12 = sub_F07EC();
    v14 = v13;

    v19[3] = sub_37310(0, &qword_127EF0, IMDChat_ptr);
    v19[4] = &protocol witness table for IMDChat;
    v19[0] = a2;
    a3[3] = &type metadata for IMDChatRCSGroupIdentity;
    a3[4] = &protocol witness table for IMDChatRCSGroupIdentity;
    v15 = swift_allocObject();
    *a3 = v15;
    sub_1F28(v19, v15 + 16);
    v16 = a2;
    v17._countAndFlagsBits = v12;
    v17._object = v14;
    v18._countAndFlagsBits = v8;
    v18._object = v10;
    IMDChatRCSGroupIdentity.migrateToLatest(conversationID:groupURI:)(v17, v18);

    sub_1EDC(v19);
  }

  else
  {
    sub_53D04();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_84C10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *(&v10 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v11 = &protocol witness table for IMDChat;
  *&v9 = v3;
  v4 = v3;
  if (IMDChatRCSGroupIdentity.isValid.getter())
  {
    result = swift_allocObject();
    v6 = v10;
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 48) = v11;
    v7 = &protocol witness table for IMDChatRCSGroupIdentity;
    v8 = &type metadata for IMDChatRCSGroupIdentity;
  }

  else
  {
    sub_39BC4(&v9);
    v8 = 0;
    v7 = 0;
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v8;
  a2[4] = v7;
  *a2 = result;
  return result;
}

uint64_t sub_84CD0(id *a1)
{
  v1 = [*a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();

  return v3;
}

char *_sSo17RCSServiceSessionC3RCSE15rawParticipants2inSaySSGSo7IMDChatC_tF_0(void *a1)
{
  result = [a1 participants];
  if (result)
  {
    v2 = result;
    sub_37310(0, &qword_127F70, IMDHandle_ptr);
    v3 = sub_F09FC();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_F10DC();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = _swiftEmptyArrayStorage;
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = sub_F0FCC();
              v5 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v7 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_22;
              }

              v8 = *(v3 + 8 * v7 + 32);
              v5 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }
            }

            v9 = v8;
            v10 = [v9 ID];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v11 = v10;
          v12 = sub_F07EC();
          v17 = v13;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_6E2D8(0, *(v6 + 2) + 1, 1, v6);
          }

          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v6 = sub_6E2D8((v14 > 1), v15 + 1, 1, v6);
          }

          *(v6 + 2) = v15 + 1;
          v16 = &v6[16 * v15];
          *(v16 + 4) = v12;
          *(v16 + 5) = v17;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_25:

    return v6;
  }

  __break(1u);
  return result;
}

id _sSo17RCSServiceSessionC3RCSE21discoverGroupChatInfo3forSo08CTLazulieF11InformationCSgSo7IMDChatC_tF_0(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedController];
  v8 = [v7 serviceWithName:IMServiceNameRCS];

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  result = [a1 participantHandles];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v58 = a1;
  v12 = [v9 existingChatsForIDs:result onService:v8 style:43];

  v55 = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v13 = sub_F09FC();

  if (v13 >> 62)
  {
LABEL_42:
    v14 = sub_F10DC();
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  if (!v14)
  {
LABEL_43:

LABEL_44:

    return 0;
  }

LABEL_5:
  v50 = v6;
  v51 = v3;
  v52 = v2;
  v53 = v8;
  v6 = 0;
  v56 = v14;
  v57 = v13 & 0xC000000000000001;
  v54 = v13 & 0xFFFFFFFFFFFFFF8;
  v8 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  while (1)
  {
    if (v57)
    {
      v15 = sub_F0FCC();
    }

    else
    {
      if (v6 >= *(v54 + 16))
      {
        goto LABEL_41;
      }

      v15 = *(v13 + 8 * v6 + 32);
    }

    v16 = v15;
    v2 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v17 = [v15 v8[167]];
    if (v17)
    {
      v18 = v17;
      v19 = sub_F07EC();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = v8;
    v23 = [v58 v8[167]];
    if (!v23)
    {
      if (!v21)
      {
        goto LABEL_26;
      }

      goto LABEL_7;
    }

    v3 = v23;
    v24 = sub_F07EC();
    v26 = v25;

    if (v21)
    {
      break;
    }

    if (!v26)
    {
      goto LABEL_26;
    }

LABEL_8:
    ++v6;
    v8 = v22;
    if (v2 == v56)
    {

      goto LABEL_44;
    }
  }

  if (!v26)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v19 == v24 && v21 == v26)
  {
  }

  else
  {
    v27 = sub_F122C();

    if ((v27 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

LABEL_26:
  v61[3] = v55;
  v61[4] = &protocol witness table for IMDChat;
  v61[0] = v16;
  v28 = v16;
  if ((IMDChatRCSGroupIdentity.isValid.getter() & 1) == 0)
  {
    sub_39BC4(v61);

    goto LABEL_8;
  }

  v29 = Logger.groups.unsafeMutableAddressor();
  v30 = v50;
  v31 = v51;
  v32 = v52;
  (v51[2])(v50, v29, v52);
  sub_85608(v61, v60);
  v33 = v28;
  v34 = sub_F06AC();
  v35 = sub_F0CCC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v30;
    v39 = swift_slowAlloc();
    v59 = v39;
    *v36 = 136315394;
    v40 = IMDChatRCSGroupIdentity.conversationID.getter();
    if (v41)
    {
      v42 = v40;
    }

    else
    {
      v42 = 1701736302;
    }

    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0xE400000000000000;
    }

    sub_39BC4(v60);
    v44 = sub_3E850(v42, v43, &v59);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v33;
    *v37 = v33;
    v45 = v33;
    _os_log_impl(&dword_0, v34, v35, "Found an existing group info with conversationID: %s from chat %@", v36, 0x16u);
    sub_389D8(v37);

    sub_1EDC(v39);

    (v31[1])(v38, v52);
  }

  else
  {

    sub_39BC4(v60);
    (v31[1])(v30, v32);
  }

  v46 = v53;
  sub_85608(v61, v60);
  v47 = sub_9232C(v60);
  v48 = [objc_allocWithZone(CTLazuliGroupChatInformation) init];
  [v48 setRemoteUri:v47];

  sub_39BC4(v61);
  return v48;
}

unint64_t sub_855B4()
{
  result = qword_128760;
  if (!qword_128760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128760);
  }

  return result;
}

uint64_t sub_85668(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_F06CC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(type metadata accessor for RCSMessage(0) - 8);
  v2[7] = v6;
  v2[8] = *(v6 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_F0AEC();
  v2[11] = sub_F0ADC();
  v8 = sub_F0A6C();
  v2[12] = v8;
  v2[13] = v7;

  return _swift_task_switch(sub_857C8, v8, v7);
}

id sub_857C8()
{
  v92 = v0;
  v1 = v0[10];
  v2 = v0[2];
  v3 = *(v2 + 16);
  v0[14] = v3;
  sub_93ED8(v2 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage, v1, type metadata accessor for RCSMessage);
  v4 = v3;
  v5 = [v4 guid];
  if (!v5)
  {
    v28 = v0[10];
    v29 = v0[11];

    v30 = 1;
LABEL_7:
    sub_5F980();
    swift_allocError();
    *v32 = v30;
    *(v32 + 4) = 1;
    swift_willThrow();

    sub_93F40(v28, type metadata accessor for RCSMessage);
    v34 = v0[9];
    v33 = v0[10];
    v35 = v0[6];

    v36 = v0[1];

    return v36();
  }

  v6 = v0[2];
  v7 = v5;
  v8 = sub_F07EC();
  v10 = v9;

  v11 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat;
  v12 = [*(v6 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
  if (!v12)
  {
    v28 = v0[10];
    v31 = v0[11];

    v30 = 2;
    goto LABEL_7;
  }

  v87 = v8;
  v13 = v12;
  v89 = sub_F07EC();
  v15 = v14;

  v90 = v15;
  v0[15] = v15;
  v82 = [*(v6 + v11) style];
  v16 = sub_F030C();
  v0[16] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v0[17] = v17;
  v19 = *(v17 + 64) + 15;
  v20 = swift_task_alloc();
  v0[18] = v20;
  v21 = [v4 clientSendTime];

  v22 = *(*(sub_388C8(&qword_127B20, &unk_F74E0) - 8) + 64) + 15;
  v23 = swift_task_alloc();
  v24 = v23;
  v84 = v20;
  v86 = v10;
  v83 = v18;
  if (v21)
  {
    v25 = swift_task_alloc();
    sub_F02CC();

    v26 = *(v18 + 32);
    v26(v24, v25, v16);
    (*(v18 + 56))(v24, 0, 1, v16);

    v26(v20, v24, v16);
    v27 = v90;
  }

  else
  {
    v38 = v18;
    v39 = *(v18 + 56);
    v39(v23, 1, 1, v16);
    v40 = [v4 time];
    v41 = swift_task_alloc();
    v42 = v41;
    if (v40)
    {
      v43 = swift_task_alloc();
      sub_F02CC();

      v44 = *(v38 + 32);
      v44(v42, v43, v16);
      v39(v42, 0, 1, v16);

      v44(v84, v42, v16);
      v27 = v90;
      v45 = v83;
    }

    else
    {
      v46 = v38;
      v39(v41, 1, 1, v16);
      result = [objc_opt_self() __im_dateWithCurrentServerTime];
      v27 = v90;
      if (!result)
      {
        __break(1u);
        return result;
      }

      v47 = result;
      sub_F02CC();

      v45 = v46;
      if ((*(v46 + 48))(v42, 1, v16) != 1)
      {
        sub_372B0(v42, &qword_127B20, &unk_F74E0);
      }
    }

    v10 = v86;
    if ((*(v45 + 48))(v24, 1, v16) != 1)
    {
      sub_372B0(v24, &qword_127B20, &unk_F74E0);
    }
  }

  v49 = v0[5];
  v48 = v0[6];
  v50 = v0[4];

  v51 = Logger.rcs.unsafeMutableAddressor();
  (*(v49 + 16))(v48, v51, v50);

  v52 = sub_F06AC();
  v53 = sub_F0CCC();

  v54 = os_log_type_enabled(v52, v53);
  v56 = v0[5];
  v55 = v0[6];
  v57 = v0[4];
  if (v54)
  {
    v80 = v0[4];
    v58 = v16;
    v59 = v27;
    v60 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v60 = 136315394;
    *(v60 + 4) = sub_3E850(v87, v10, v91);
    *(v60 + 12) = 2080;
    v61 = v59;
    v16 = v58;
    *(v60 + 14) = sub_3E850(v89, v61, v91);
    _os_log_impl(&dword_0, v52, v53, "Queuing send of message %s in chat %s", v60, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v55, v80);
  }

  else
  {

    (*(v56 + 8))(v55, v57);
  }

  v81 = v4;
  if (qword_127AD0 != -1)
  {
    swift_once();
  }

  v63 = v0[7];
  v62 = v0[8];
  v64 = v0[3];
  v77 = v64;
  v78 = v0[9];
  v79 = v0[2];
  sub_93ED8(v0[10], v78, type metadata accessor for RCSMessage);
  v65 = swift_task_alloc();
  (*(v83 + 16))(v65, v84, v16);
  v66 = (*(v63 + 80) + 40) & ~*(v63 + 80);
  v85 = v16;
  v67 = (v62 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = (*(v83 + 80) + v69 + 17) & ~*(v83 + 80);
  v71 = swift_allocObject();
  v0[19] = v71;
  *(v71 + 2) = v64;
  *(v71 + 3) = v87;
  *(v71 + 4) = v86;
  sub_3CA08(v78, &v71[v66]);
  *&v71[v67] = v79;
  *&v71[v68] = v81;
  v72 = &v71[v69];
  *v72 = v89;
  *(v72 + 1) = v90;
  v72[16] = v82;
  (*(v83 + 32))(&v71[v70], v65, v85);

  v73 = *(&async function pointer to dispatch thunk of AsyncMultiQueue.performAndWait<A>(key:_:) + 1);
  v88 = (&async function pointer to dispatch thunk of AsyncMultiQueue.performAndWait<A>(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.performAndWait<A>(key:_:));
  v74 = v81;

  v75 = v77;

  v76 = swift_task_alloc();
  v0[20] = v76;
  *v76 = v0;
  v76[1] = sub_86088;

  return v88();
}

uint64_t sub_86088()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  v2[21] = v0;

  v5 = v2[19];
  v6 = v2[15];
  if (v0)
  {

    v7 = v2[12];
    v8 = v2[13];
    v9 = sub_862DC;
  }

  else
  {

    v7 = v2[12];
    v8 = v2[13];
    v9 = sub_861F4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_861F4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];

  (*(v2 + 8))(v1, v3);
  sub_93F40(v6, type metadata accessor for RCSMessage);

  v9 = v0[1];

  return v9();
}

uint64_t sub_862DC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];

  (*(v2 + 8))(v1, v3);
  sub_93F40(v6, type metadata accessor for RCSMessage);

  v7 = v0[21];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_863B8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_F07BC();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_F07BC();
LABEL_6:
  v9 = [v4 _resolvedCallerIDForLastAddressedLocalHandle:v7 lastAddressedSIMID:v8 saveResolvedCallerIDToChat:0];

  if (!v9)
  {
    return IMSharedHelperRetrieveSimDetailsFromTelephony();
  }

  if (v6)
  {
    v6 = sub_F07BC();
  }

  if (v5)
  {
    v5 = sub_F07BC();
  }

  v10 = [v4 _sendingDecisionForMessageItem:0 callerID:v9 lastAddressedLocalHandle:v6 lastAddressedSIMID:v5];

  if ((v10 & 2) != 0)
  {
    return 0;
  }

  else
  {
    return IMSharedHelperRetrieveSimDetailsFromTelephony();
  }
}

uint64_t sub_864D0()
{
  v0 = sub_388C8(&qword_128A58, &qword_F3D30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  sub_F039C();
  sub_F0AFC();
  v9 = sub_F0B1C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  (*(v1 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  result = sub_F038C();
  qword_12FC20 = result;
  return result;
}

uint64_t sub_8665C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  v8 = *(v0 + 88);
  v7 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 120);

  v12 = *(v0 + 136);

  return v0;
}

uint64_t sub_866FC()
{
  sub_8665C();

  return swift_deallocClassInstance();
}

uint64_t sub_8672C()
{
  v1 = im_primary_queue();
  v2 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v1];

  *(v0 + 16) = v2;
  *(v0 + 24) = sub_813A0(_swiftEmptyArrayStorage);
  *(v0 + 32) = sub_813B4(_swiftEmptyArrayStorage);
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = sub_814C4(_swiftEmptyArrayStorage);
  *(v0 + 80) = 0;
  v3 = sub_9E6CC(_swiftEmptyArrayStorage);
  *(v0 + 88) = 0;
  *(v0 + 96) = v3;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  return v0;
}

id RCSServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 service:a2 replicatingForSession:a3];

  return v6;
}

void RCSServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v111 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v110 = *(v111 - 8);
  v7 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v100 - v8;
  v114 = sub_F06CC();
  v113 = *(v114 - 8);
  v9 = *(v113 + 64);
  __chkstk_darwin(v114);
  v112 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v108 = &v100 - v12;
  v107 = sub_F06EC();
  v106 = *(v107 - 8);
  v13 = *(v106 + 64);
  __chkstk_darwin(v107);
  v104 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_F071C();
  v103 = *(v105 - 8);
  v15 = *(v103 + 64);
  __chkstk_darwin(v105);
  v102 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_388C8(&qword_127E78, &qword_F2C10);
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v21 = &v100 - v20;
  _s5StateCMa();
  swift_allocObject();
  *&v3[OBJC_IVAR___RCSServiceSession_state] = sub_8672C();
  v122.receiver = v3;
  v122.super_class = RCSServiceSession;
  v115 = a1;
  v116 = a2;
  v117 = a3;
  v22 = objc_msgSendSuper2(&v122, "initWithAccount:service:replicatingForSession:", a1, a2, a3);
  v23 = OBJC_IVAR___RCSServiceSession_state;
  v24 = *&v22[OBJC_IVAR___RCSServiceSession_state];
  sub_388C8(&unk_128770, &unk_F3BC0);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v26 = *(v24 + 104);
  *(v24 + 104) = v25;
  v27 = v22;

  v28 = *&v22[v23];
  type metadata accessor for RCSTypingTracker();
  v29 = v27;

  v30 = RCSTypingTracker.__allocating_init(delegate:)(v29, &protocol witness table for RCSServiceSession);
  v31 = *(v28 + 112);
  *(v28 + 112) = v30;

  v32 = *&v22[v23];
  v33 = type metadata accessor for RCSServiceReachabilityDelegate();
  v34 = objc_allocWithZone(v33);
  swift_unknownObjectUnownedInit();
  v121.receiver = v34;
  v121.super_class = v33;

  v35 = objc_msgSendSuper2(&v121, "initWithServiceSession:", v29);

  v36 = *(v32 + 128);
  *(v32 + 128) = v35;

  v118 = v23;
  v37 = *&v22[v23];
  v38 = *(v37 + 128);
  if (!v38)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v39 = qword_1279F0;
  v40 = *&v22[v23];

  v101 = v38;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_3C96C(v17, qword_127BC8);
  v42 = v18[2];
  v42(v21, v41, v17);
  sub_F044C();
  v43 = v18[1];
  v43(v21, v17);
  v44 = aBlock[0];
  if (qword_1279F8 != -1)
  {
    swift_once();
  }

  v45 = sub_3C96C(v17, qword_127BE0);
  v42(v21, v45, v17);
  sub_F044C();
  v43(v21, v17);
  v127[0] = v44;
  v127[1] = aBlock[0];
  v127[2] = 0;
  v127[3] = 0;
  v128 = 1;
  sub_388C8(&unk_128778, &unk_F3BC8);
  swift_allocObject();
  v46 = RCSReachabilityController.init(delegate:operationConfiguration:)(v101, v127);
  v47 = *(v37 + 120);
  *(v37 + 120) = v46;

  v48 = v118;
  v49 = *&v22[v118];
  v50 = sub_388C8(&unk_128780, &unk_F3BD0);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = v29;

  v54 = RCSMessageProcessingQueue.init(delegate:)();
  v55 = *(v49 + 136);
  *(v49 + 136) = v54;

  v56 = *&v22[v48];
  v123 = xmmword_F3BB0;
  v124 = 0;
  v125 = 0;
  v126 = 1;
  sub_388C8(&unk_128788, &unk_F3BD8);
  swift_allocObject();
  v57 = v53;

  v58 = RCSGroupController.init(delegate:operationConfiguration:)(v57, &v123);
  v59 = *(v56 + 40);
  *(v56 + 40) = v58;

  v60 = *&v22[v48];
  sub_388C8(&unk_128790, &unk_F3BE0);
  swift_allocObject();
  v61 = v57;

  v62 = RCSMessageCreator.init(delegate:)();
  v63 = *(v60 + 48);
  *(v60 + 48) = v62;

  v64 = *&v22[v48];
  sub_388C8(&unk_128798, &unk_F3BE8);
  swift_allocObject();
  v65 = v61;

  v66 = RCSSpamReportingController.init(delegate:operationConfiguration:)(v65, &v123);
  v67 = *(v64 + 56);
  *(v64 + 56) = v66;

  v68 = *(*&v22[v48] + 16);
  [v68 setDelegate:v65];

  v69 = im_primary_queue();
  if (!v69)
  {
    goto LABEL_17;
  }

  v70 = v69;
  v71 = swift_allocObject();
  *(v71 + 16) = v65;
  aBlock[4] = sub_87520;
  aBlock[5] = v71;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9400C;
  aBlock[3] = &unk_11EC98;
  v72 = _Block_copy(aBlock);
  v73 = v65;
  v74 = v102;
  sub_F06FC();
  v119 = _swiftEmptyArrayStorage;
  sub_93B10(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags);
  sub_388C8(&qword_127F90, &qword_F2EC0);
  sub_5506C();
  v75 = v104;
  v76 = v107;
  sub_F0E8C();
  sub_F0D5C();
  _Block_release(v72);

  (*(v106 + 8))(v75, v76);
  (*(v103 + 8))(v74, v105);

  v77 = *&v22[v48];
  v78 = objc_allocWithZone(type metadata accessor for RCSOutgoingMessageController());
  v79 = v73;

  v80 = RCSOutgoingMessageController.init(session:operationConfiguration:)(v79, &v123);
  v81 = *(v77 + 64);
  *(v77 + 64) = v80;

  v82 = [objc_opt_self() sharedInstance];
  [v82 addListener:v79];

  v83 = Logger.rcs.unsafeMutableAddressor();
  v84 = v113;
  v85 = *(v113 + 16);
  v86 = v108;
  v87 = v114;
  v85(v108, v83, v114);
  v88 = sub_F06AC();
  v89 = sub_F0CCC();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_0, v88, v89, "RCSServiceSession is ready to go!", v90, 2u);
  }

  v91 = *(v84 + 8);
  v91(v86, v87);
  if (qword_1279E8 != -1)
  {
    swift_once();
  }

  v92 = v111;
  v93 = sub_3C96C(v111, qword_127BB0);
  v94 = v110;
  v95 = v109;
  (*(v110 + 16))(v109, v93, v92);
  sub_F044C();
  (*(v94 + 8))(v95, v92);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v85(v112, v83, v87);
    v96 = sub_F06AC();
    v97 = sub_F0CCC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "RCSServiceSession will prompt for radars when capturing an ABC", v98, 2u);
    }

    v91(v112, v87);
  }

  v99 = [objc_opt_self() defaultCenter];
  [v99 addObserver:v79 selector:"_handleFileTransferAccepted:" name:IMDFileTransferAcceptedNotification object:0];
}

uint64_t sub_87520()
{
  v1 = *(v0 + 16);
  sub_74B48();
  sub_73DCC();
  return sub_8754C();
}

uint64_t sub_8754C()
{
  v1 = sub_F06CC();
  isa = v1[-1].isa;
  v3 = isa[8].isa;
  __chkstk_darwin(v1);
  v74 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = (&v67 - v6);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  __chkstk_darwin(v10);
  v72 = &v67 - v11;
  v12 = sub_73B04();
  v14 = v12;
  if (v12 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v93 = v1;
    v16 = 0;
    v68 = 0;
    v17 = *(&v0->isa + OBJC_IVAR___RCSServiceSession_state);
    v76 = v14 & 0xC000000000000001;
    v70 = v14 & 0xFFFFFFFFFFFFFF8;
    v69 = v14 + 32;
    v71 = "receipt for message";
    v18 = isa + 2;
    v92 = isa + 1;
    *&v13 = 138412546;
    v82 = v13;
    *&v13 = 134218242;
    v67 = v13;
    v77 = v14;
    v75 = i;
    v83 = isa + 2;
    v80 = v17;
    v81 = v9;
    while (1)
    {
      if (v76)
      {
        v19 = v16;
        v20 = sub_F0FCC();
      }

      else
      {
        if (v16 >= *(v70 + 16))
        {
          goto LABEL_52;
        }

        v19 = v16;
        v20 = *(v69 + 8 * v16);
      }

      v0 = v20;
      v21 = __OFADD__(v19, 1);
      isa = (&v19->isa + 1);
      if (v21)
      {
        break;
      }

      v78 = isa;
      v22 = *(v17 + 16);
      v96 = 0;
      v23 = [v22 retrieveAllIncomingMessageIDs:v0 withError:&v96];
      if (v23)
      {
        v24 = v23;
        v25 = v96;
        v26 = [v24 list];

        sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
        v27 = sub_F09FC();

        LOBYTE(v24) = sub_53040(0xD00000000000001FLL, (v71 | 0x8000000000000000));
        v28 = Logger.rcs.unsafeMutableAddressor();
        v29 = v18->isa;
        if (v24)
        {
          v90 = v18->isa;
          v29(v72, v28, v93);

          v30 = v0;
          isa = sub_F06AC();
          v1 = sub_F0CCC();
          v91 = v30;

          if (os_log_type_enabled(isa, v1))
          {
            v31 = v28;
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            *v32 = v67;
            if (v27 >> 62)
            {
              v34 = sub_F10DC();
            }

            else
            {
              v34 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
            }

            *(v32 + 4) = v34;

            *(v32 + 12) = 2112;
            v35 = v91;
            *(v32 + 14) = v91;
            *v33 = v35;
            v36 = v35;
            _os_log_impl(&dword_0, isa, v1, "There are %ld messages waiting to be processed from Telephony for subscription %@", v32, 0x16u);
            sub_372B0(v33, &qword_127AF0, &qword_F28E0);

            v28 = v31;
          }

          else
          {
          }

          v14 = v77;
          v89 = v92->isa;
          v89(v72, v93);
          v46 = v17;
          if (v27 >> 62)
          {
            v0 = sub_F10DC();
            if (v0)
            {
LABEL_27:
              v14 = 0;
              v88 = v27 & 0xC000000000000001;
              v79 = v27 & 0xFFFFFFFFFFFFFF8;
              v86 = v27;
              v87 = v28;
              v85 = v0;
              while (1)
              {
                if (v88)
                {
                  isa = sub_F0FCC();
                  v47 = v46;
                }

                else
                {
                  if (v14 >= *(v79 + 16))
                  {
                    goto LABEL_50;
                  }

                  v47 = v46;
                  isa = *(v27 + 8 * v14 + 32);
                }

                v48 = v93;
                if (__OFADD__(v14, 1))
                {
                  break;
                }

                v94 = (v14 + 1);
                v90(v9, v28, v93);
                v49 = v91;
                v50 = isa;
                v51 = sub_F06AC();
                v52 = sub_F0CCC();

                if (os_log_type_enabled(v51, v52))
                {
                  v53 = swift_slowAlloc();
                  v54 = v49;
                  v55 = swift_slowAlloc();
                  v56 = swift_slowAlloc();
                  v96 = v56;
                  *v53 = v82;
                  *(v53 + 4) = v50;
                  *v55 = v50;
                  *(v53 + 12) = 2080;
                  v57 = v50;
                  v84 = v54;
                  v58 = [v54 labelID];
                  if (v58)
                  {
                    v59 = v58;
                    v60 = sub_F07EC();
                    v62 = v61;
                  }

                  else
                  {
                    v62 = 0xE500000000000000;
                    v60 = 0x3E6C696E3CLL;
                  }

                  v63 = sub_3E850(v60, v62, &v96);

                  *(v53 + 14) = v63;
                  _os_log_impl(&dword_0, v51, v52, "Queueing message ID %@ received on subscription %s", v53, 0x16u);
                  sub_372B0(v55, &qword_127AF0, &qword_F28E0);

                  sub_1EDC(v56);

                  v9 = v81;
                  v89(v81, v93);
                  v47 = v80;
                  v18 = v83;
                  v49 = v84;
                }

                else
                {

                  v89(v9, v48);
                }

                v64 = *(v47 + 136);
                v28 = v87;
                if (!v64)
                {
                  __break(1u);
                }

                v46 = v47;
                v96 = v50;
                v95 = v49;
                isa = (*v64)[17].isa;
                v65 = v49;
                v1 = *v64 + 17;

                (isa)(&v96, &v95);

                ++v14;
                v0 = v85;
                v27 = v86;
                if (v94 == v85)
                {

                  v14 = v77;
                  v17 = v46;
                  goto LABEL_6;
                }
              }

              __break(1u);
LABEL_50:
              __break(1u);
              break;
            }
          }

          else
          {
            v0 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
            if (v0)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v1 = v73;
          v29(v73, v28, v93);

          isa = v0;
          v0 = sub_F06AC();
          v43 = sub_F0CEC();

          if (os_log_type_enabled(v0, v43))
          {
            v1 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            LODWORD(v1->isa) = v67;
            if (v27 >> 62)
            {
              v45 = sub_F10DC();
            }

            else
            {
              v45 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
            }

            *(&v1->isa + 4) = v45;

            WORD2(v1[1].isa) = 2112;
            *(&v1[1].isa + 6) = isa;
            *v44 = isa;
            isa = isa;
            _os_log_impl(&dword_0, v0, v43, "There are %ld messages waiting to be processed from Telephony for subscription %@, but Messages is not the default text app", v1, 0x16u);
            sub_372B0(v44, &qword_127AF0, &qword_F28E0);

            v14 = v77;
            v18 = v83;
          }

          else
          {

            swift_bridgeObjectRelease_n();
            v14 = v77;
          }

          (v92->isa)(v73, v93);
        }
      }

      else
      {
        v37 = v96;
        sub_F015C();

        swift_willThrow();
        v38 = Logger.rcs.unsafeMutableAddressor();
        (v18->isa)(v74, v38, v93);
        v1 = v0;
        swift_errorRetain();
        isa = sub_F06AC();
        v0 = sub_F0CEC();

        if (os_log_type_enabled(isa, v0))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = v82;
          *(v39 + 4) = v1;
          *v40 = v1;
          *(v39 + 12) = 2112;
          v41 = v1;
          swift_errorRetain();
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v39 + 14) = v42;
          v40[1] = v42;
          _os_log_impl(&dword_0, isa, v0, "Failed to retrieve incoming message IDs for subscription %@, %@", v39, 0x16u);
          sub_388C8(&qword_127AF0, &qword_F28E0);
          swift_arrayDestroy();
          v18 = v83;

          v14 = v77;
        }

        else
        {
        }

        (v92->isa)(v74, v93);
        v68 = 0;
      }

LABEL_6:
      v16 = v78;
      if (v78 == v75)
      {
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }
}

uint64_t sub_880B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_880F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int __swiftcall RCSServiceSession.maxRecipients(forPhoneNumber:simID:)(Swift::String forPhoneNumber, Swift::String simID)
{
  v2 = [objc_opt_self() sharedManager];
  v3 = sub_F07BC();
  v4 = sub_F07BC();
  v5 = [v2 groupMessagingMaxGroupSizeForPhoneNumber:v3 simID:v4];

  return v5;
}

void RCSServiceSession.makeSender(for:for:chatStyle:recipients:)(void *a1, void *a2, unsigned __int8 a3)
{
  v7 = sub_F06CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55CFC(a2, a1);
  v13 = v12;
  if ((v14 & 1) == 0)
  {
    v31 = objc_allocWithZone(RCSMessageSender);
    sub_388C8(&qword_128568, &qword_F3950);
    v32 = sub_F09EC();
    v33 = [v31 initWithSession:v3 message:a1 chat:a2 style:a3 recipients:v32 context:v13];

    [v33 deriveConfiguration];
    sub_3FA88(v13, 0);
    return;
  }

  v15 = Logger.rcs.unsafeMutableAddressor();
  (*(v8 + 16))(v11, v15, v7);
  v16 = a1;
  v17 = a2;
  v18 = sub_F06AC();
  v19 = sub_F0CEC();
  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_8;
  }

  v36 = v13;
  v20 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v37 = v35;
  *v20 = 136315650;
  v21 = [v16 guid];

  if (!v21)
  {

    __break(1u);
    goto LABEL_11;
  }

  v22 = sub_F07EC();
  v24 = v23;

  v25 = sub_3E850(v22, v24, &v37);

  *(v20 + 4) = v25;
  *(v20 + 12) = 2080;
  v26 = [v17 chatIdentifier];

  if (!v26)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v27 = sub_F07EC();
  v29 = v28;

  v30 = sub_3E850(v27, v29, &v37);

  *(v20 + 14) = v30;
  *(v20 + 22) = 1026;
  *(v20 + 24) = v36;
  _os_log_impl(&dword_0, v18, v19, "Couldn't resolve context for sending %s to chat %s: %{public}u", v20, 0x1Cu);
  swift_arrayDestroy();

LABEL_8:
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_886C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v18;
  *(v8 + 176) = v20;
  *(v8 + 464) = v19;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  *(v8 + 112) = a2;
  v9 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v10 = *(*(type metadata accessor for RCSMessageSendItem.SendState(0) - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v11 = type metadata accessor for RCSMessage(0);
  *(v8 + 208) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v13 = sub_F06CC();
  *(v8 + 232) = v13;
  v14 = *(v13 - 8);
  *(v8 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_88874, 0, 0);
}

uint64_t sub_88874()
{
  v34 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 128);
  v5 = Logger.rcs.unsafeMutableAddressor();
  *(v0 + 280) = v5;
  v6 = *(v3 + 16);
  *(v0 + 288) = v6;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_F06AC();
  v8 = sub_F0CCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 272);
  v11 = *(v0 + 232);
  v12 = *(v0 + 240);
  if (v9)
  {
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_3E850(v14, v13, &v33);
    _os_log_impl(&dword_0, v7, v8, "Sending message %s", v15, 0xCu);
    sub_1EDC(v16);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  *(v0 + 304) = v17;
  LOBYTE(v17) = *(v0 + 464);
  v19 = *(v0 + 160);
  v18 = *(v0 + 168);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 112);
  v23 = swift_allocObject();
  *(v0 + 312) = v23;
  *(v23 + 16) = 0;
  v24 = *(v20 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_context);
  *(v0 + 320) = v24;
  v25 = swift_allocObject();
  *(v0 + 328) = v25;
  *(v25 + 16) = v22;
  *(v25 + 24) = v21;
  *(v25 + 32) = v19;
  *(v25 + 40) = v18;
  *(v25 + 48) = v17;
  v26 = v24;
  v27 = v22;
  v28 = v21;

  v29 = swift_task_alloc();
  *(v0 + 336) = v29;
  *v29 = v0;
  v29[1] = sub_88B18;
  v30 = *(v0 + 136);
  v31 = *(v0 + 112);

  return sub_59D04(v30, v26, &unk_F3D10, v25, &unk_F3D20, v23);
}

uint64_t sub_88B18()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v4 = *(*v0 + 312);
  v6 = *v0;

  return _swift_task_switch(sub_88C6C, 0, 0);
}

uint64_t sub_88C6C()
{
  v1 = [objc_opt_self() __im_dateWithCurrentServerTime];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 312);
    v6 = *(v0 + 176);
    v7 = sub_F028C();
    [v4 timeIntervalSinceDate:v7];
    *(v0 + 344) = v8;

    swift_beginAccess();
    *(v0 + 456) = *(v5 + 16);
    *(v0 + 352) = sub_F0AEC();
    *(v0 + 360) = sub_F0ADC();
    v9 = sub_F0A6C();
    v11 = v10;
    v1 = sub_88D84;
    v2 = v9;
    v3 = v11;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_88D84()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 456);
  v3 = *(v0 + 344);
  v4 = *(v0 + 224);
  v5 = *(v0 + 144);

  v6 = *(v5 + 16);
  sub_93ED8(v5 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage, v4, type metadata accessor for RCSMessage);
  v7 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat;
  *(v0 + 368) = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat;
  v8 = *(v5 + v7);
  v9 = v6;
  v10 = v8;
  sub_92540(v9, v4, v10, v2, v3);

  sub_93F40(v4, type metadata accessor for RCSMessage);

  return _swift_task_switch(sub_88E9C, 0, 0);
}

uint64_t sub_88E9C()
{
  v115 = v0;
  if (*(*(v0 + 312) + 16))
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 216);
    v3 = *(v0 + 136);
    (*(v0 + 288))(*(v0 + 256), *(v0 + 280), *(v0 + 232));
    sub_93ED8(v3, v2, type metadata accessor for RCSMessage);

    v4 = sub_F06AC();
    v5 = sub_F0CEC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    v9 = *(v0 + 256);
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    v12 = *(v0 + 216);
    if (v6)
    {
      v110 = *(v0 + 304);
      v13 = swift_slowAlloc();
      v107 = v9;
      v14 = swift_slowAlloc();
      v114[0] = v14;
      *v13 = 67109378;
      *(v13 + 4) = *(v8 + 16);

      *(v13 + 8) = 2080;
      v15 = *(v12 + 128);
      v16 = *(v12 + 136);

      sub_93F40(v12, type metadata accessor for RCSMessage);
      v17 = sub_3E850(v15, v16, v114);

      *(v13 + 10) = v17;
      _os_log_impl(&dword_0, v4, v5, "Failed to send with error %u for rcsMessage %s", v13, 0x12u);
      sub_1EDC(v14);

      v110(v107, v10);
    }

    else
    {

      sub_93F40(v12, type metadata accessor for RCSMessage);
      v7(v9, v10);
    }

    v41 = *(v0 + 184);
    sub_5F2EC(*(v0 + 136) + *(*(v0 + 208) + 32), v41);
    v42 = type metadata accessor for RCSMessage.Content(0);
    v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
    v44 = *(v0 + 184);
    if (v43 == 1)
    {
      sub_372B0(*(v0 + 184), &unk_127FA0, &qword_F34C0);
    }

    else
    {
      v45 = *(v0 + 184);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_93F40(v44, type metadata accessor for RCSMessage.Content);
      if (!EnumCaseMultiPayload)
      {
        v96 = *(v0 + 352);
        *(v0 + 376) = sub_F0ADC();
        v75 = sub_F0A6C();
        v77 = v97;
        v78 = sub_89880;
        goto LABEL_22;
      }
    }

    v47 = *(v0 + 200);
    v48 = *(v0 + 144);
    v49 = sub_388C8(&qword_127B28, &qword_F2B20);
    (*(*(v49 - 8) + 56))(v47, 4, 4, v49);
    v50 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_93E74(v47, v48 + v50);
    swift_endAccess();
    v51 = *(v0 + 296);
    v52 = *(v0 + 144);
    (*(v0 + 288))(*(v0 + 248), *(v0 + 280), *(v0 + 232));

    v53 = sub_F06AC();
    v54 = sub_F0D0C();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 304);
    v58 = *(v0 + 240);
    v57 = *(v0 + 248);
    v59 = *(v0 + 232);
    if (v55)
    {
      v112 = *(v0 + 304);
      v60 = *(v0 + 144);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v114[0] = v62;
      *v61 = 136315138;
      v63 = sub_5FBB8();
      v65 = sub_3E850(v63, v64, v114);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_0, v53, v54, "Handling error propagation for %s", v61, 0xCu);
      sub_1EDC(v62);

      v112(v57, v59);
    }

    else
    {

      v56(v57, v59);
    }

    v66 = *(v0 + 192);
    v67 = *(v0 + 144);
    v68 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_93ED8(v67 + v68, v66, type metadata accessor for RCSMessageSendItem.SendState);
    v69 = sub_388C8(&qword_127B28, &qword_F2B20);
    if ((*(*(v69 - 8) + 48))(v66, 4, v69))
    {
      v70 = *(v0 + 152);
      *(v0 + 460) = *(*(v0 + 312) + 16);
      v71 = [v70 guid];
      *(v0 + 384) = v71;
      if (v71)
      {
        v74 = *(v0 + 352);
        *(v0 + 392) = sub_F0ADC();
        v75 = sub_F0A6C();
        v77 = v76;
        v78 = sub_89D54;
        goto LABEL_22;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return _swift_task_switch(v71, v72, v73);
    }

    v79 = *(v0 + 192);
    v80 = sub_F030C();
    (*(*(v80 - 8) + 8))(v79, v80);
    v81 = *(*(v0 + 312) + 16);
    if (v81 == 20)
    {
      v82 = *(*(v0 + 144) + *(v0 + 368));
      *(v0 + 416) = v82;
      v83 = v82;
      v71 = [v83 chatIdentifier];
      *(v0 + 424) = v71;
      if (!v71)
      {
        goto LABEL_30;
      }

      v84 = *(v0 + 352);
      *(v0 + 465) = [v83 style];
      *(v0 + 432) = sub_F0ADC();
      v75 = sub_F0A6C();
      v77 = v85;
      v78 = sub_8A120;
LABEL_22:
      v71 = v78;
      v72 = v75;
      v73 = v77;

      return _swift_task_switch(v71, v72, v73);
    }

    v99 = *(v0 + 264);
    v98 = *(v0 + 272);
    v101 = *(v0 + 248);
    v100 = *(v0 + 256);
    v103 = *(v0 + 216);
    v102 = *(v0 + 224);
    v106 = *(v0 + 200);
    v109 = *(v0 + 192);
    v113 = *(v0 + 184);
    sub_5F980();
    swift_allocError();
    *v104 = v81;
    *(v104 + 4) = 0;
    swift_willThrow();

    v95 = *(v0 + 8);
  }

  else
  {
    v19 = *(v0 + 288);
    v18 = *(v0 + 296);
    v20 = *(v0 + 280);
    v21 = *(v0 + 264);
    v22 = *(v0 + 232);
    v23 = *(v0 + 200);
    v24 = *(v0 + 144);
    v25 = sub_388C8(&qword_127B28, &qword_F2B20);
    (*(*(v25 - 8) + 56))(v23, 3, 4, v25);
    v26 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_93E74(v23, v24 + v26);
    swift_endAccess();
    v19(v21, v20, v22);

    v27 = sub_F06AC();
    v28 = sub_F0CCC();

    v29 = os_log_type_enabled(v27, v28);
    v31 = *(v0 + 304);
    v30 = *(v0 + 312);
    v32 = *(v0 + 264);
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);
    if (v29)
    {
      v111 = *(v0 + 312);
      v35 = *(v0 + 144);
      v108 = *(v0 + 304);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v114[0] = v37;
      *v36 = 136315138;
      v38 = sub_5FBB8();
      v40 = sub_3E850(v38, v39, v114);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v27, v28, "Successfully sent RCS message %s", v36, 0xCu);
      sub_1EDC(v37);

      v108(v32, v34);
    }

    else
    {

      v31(v32, v34);
    }

    v87 = *(v0 + 264);
    v86 = *(v0 + 272);
    v89 = *(v0 + 248);
    v88 = *(v0 + 256);
    v91 = *(v0 + 216);
    v90 = *(v0 + 224);
    v93 = *(v0 + 192);
    v92 = *(v0 + 200);
    v94 = *(v0 + 184);

    v95 = *(v0 + 8);
  }

  return v95();
}

uint64_t sub_89880()
{
  v1 = v0[47];
  v2 = v0[18];
  v3 = v0[14];

  sub_990B0(v2);

  return _swift_task_switch(sub_898F8, 0, 0);
}

uint64_t sub_898F8()
{
  v50 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 144);
  (*(v0 + 288))(*(v0 + 248), *(v0 + 280), *(v0 + 232));

  v3 = sub_F06AC();
  v4 = sub_F0D0C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 304);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 232);
  if (v5)
  {
    v47 = *(v0 + 304);
    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v49 = v12;
    *v11 = 136315138;
    v13 = sub_5FBB8();
    v15 = sub_3E850(v13, v14, &v49);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v3, v4, "Handling error propagation for %s", v11, 0xCu);
    sub_1EDC(v12);

    v47(v7, v9);
  }

  else
  {

    v6(v7, v9);
  }

  v16 = *(v0 + 192);
  v17 = *(v0 + 144);
  v18 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
  swift_beginAccess();
  sub_93ED8(v17 + v18, v16, type metadata accessor for RCSMessageSendItem.SendState);
  v19 = sub_388C8(&qword_127B28, &qword_F2B20);
  if ((*(*(v19 - 8) + 48))(v16, 4, v19))
  {
    v20 = *(v0 + 152);
    *(v0 + 460) = *(*(v0 + 312) + 16);
    v21 = [v20 guid];
    *(v0 + 384) = v21;
    if (v21)
    {
      v24 = *(v0 + 352);
      *(v0 + 392) = sub_F0ADC();
      v25 = sub_F0A6C();
      v27 = v26;
      v28 = sub_89D54;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_17;
  }

  v29 = *(v0 + 192);
  v30 = sub_F030C();
  (*(*(v30 - 8) + 8))(v29, v30);
  v31 = *(*(v0 + 312) + 16);
  if (v31 == 20)
  {
    v32 = *(*(v0 + 144) + *(v0 + 368));
    *(v0 + 416) = v32;
    v33 = v32;
    v21 = [v33 chatIdentifier];
    *(v0 + 424) = v21;
    if (v21)
    {
      v34 = *(v0 + 352);
      *(v0 + 465) = [v33 style];
      *(v0 + 432) = sub_F0ADC();
      v25 = sub_F0A6C();
      v27 = v35;
      v28 = sub_8A120;
LABEL_10:
      v21 = v28;
      v22 = v25;
      v23 = v27;

      return _swift_task_switch(v21, v22, v23);
    }

LABEL_17:
    __break(1u);
    return _swift_task_switch(v21, v22, v23);
  }

  v37 = *(v0 + 264);
  v36 = *(v0 + 272);
  v39 = *(v0 + 248);
  v38 = *(v0 + 256);
  v41 = *(v0 + 216);
  v40 = *(v0 + 224);
  v45 = *(v0 + 200);
  v46 = *(v0 + 192);
  v48 = *(v0 + 184);
  sub_5F980();
  swift_allocError();
  *v42 = v31;
  *(v42 + 4) = 0;
  swift_willThrow();

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_89D54()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 460);
  v4 = *(v0 + 112);

  [v4 didReceiveError:v3 forMessageID:v2 forceError:1];

  return _swift_task_switch(sub_89DEC, 0, 0);
}

uint64_t sub_89DEC()
{
  v1 = [*(v0 + 152) guid];
  *(v0 + 400) = v1;
  if (v1)
  {
    v4 = *(v0 + 352);
    *(v0 + 408) = sub_F0ADC();
    v5 = sub_F0A6C();
    v7 = v6;
    v1 = sub_89E9C;
    v2 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_89E9C()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[14];

  [v3 processMessageSendFailure:v2];

  return _swift_task_switch(sub_89F20, 0, 0);
}

uint64_t sub_89F20()
{
  sub_93F40(*(v0 + 192), type metadata accessor for RCSMessageSendItem.SendState);
  v1 = *(*(v0 + 312) + 16);
  if (v1 == 20)
  {
    v2 = *(*(v0 + 144) + *(v0 + 368));
    *(v0 + 416) = v2;
    v3 = v2;
    v4 = [v3 chatIdentifier];
    *(v0 + 424) = v4;
    if (v4)
    {
      v7 = *(v0 + 352);
      *(v0 + 465) = [v3 style];
      *(v0 + 432) = sub_F0ADC();
      v8 = sub_F0A6C();
      v10 = v9;
      v4 = sub_8A120;
      v5 = v8;
      v6 = v10;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    v16 = *(v0 + 216);
    v15 = *(v0 + 224);
    v20 = *(v0 + 200);
    v21 = *(v0 + 192);
    v22 = *(v0 + 184);
    sub_5F980();
    swift_allocError();
    *v17 = v1;
    *(v17 + 4) = 0;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_8A120()
{
  v1 = v0[54];
  v2 = v0[14];

  v0[55] = [v2 account];

  return _swift_task_switch(sub_8A1A8, 0, 0);
}

uint64_t sub_8A1A8()
{
  v1 = *(v0 + 352);
  *(v0 + 448) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_8A234, v3, v2);
}

uint64_t sub_8A234()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 465);
  v4 = *(v0 + 424);
  v5 = *(v0 + 112);

  [v5 didLeaveChat:v4 style:v3 account:v2];

  return _swift_task_switch(sub_8A2D4, 0, 0);
}

uint64_t sub_8A2D4()
{
  v1 = *(v0 + 312);

  v2 = *(v1 + 16);
  v3 = *(v0 + 312);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 192);
  v15 = *(v0 + 184);
  sub_5F980();
  swift_allocError();
  *v10 = v2;
  *(v10 + 4) = 0;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_8A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_F0AEC();
  *(v5 + 48) = sub_F0ADC();
  v7 = sub_F0A6C();

  return _swift_task_switch(sub_8A49C, v7, v6);
}

uint64_t sub_8A49C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);

  v7 = sub_F07BC();
  [v6 didStartSendingMessage:v5 forChat:v7 style:v3];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_8A548(int a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 56) = a1;
  sub_F0AEC();
  *(v2 + 48) = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_8A5E4, v4, v3);
}

uint64_t sub_8A5E4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);

  swift_beginAccess();
  *(v2 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

id RCSServiceSession.revokeSentMessage(_:in:)(void *a1, void *a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 guid];
  if (result)
  {
    v12 = result;
    v13 = sub_F07EC();
    v15 = v14;

    v16 = [a2 chatIdentifier];
    if (v16)
    {
      v37 = v13;
      v34 = v2;
      v17 = v16;
      v36 = sub_F07EC();
      v19 = v18;

      v20 = Logger.rcs.unsafeMutableAddressor();
      (*(v6 + 16))(v10, v20, v5);

      v21 = sub_F06AC();
      v22 = v15;
      v23 = sub_F0CCC();

      v24 = os_log_type_enabled(v21, v23);
      v35 = a2;
      v33 = v22;
      if (v24)
      {
        v25 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v25 = 136315394;
        *(v25 + 4) = sub_3E850(v37, v22, &v38);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_3E850(v36, v19, &v38);
        _os_log_impl(&dword_0, v21, v23, "Queuing revoke of message %s in chat %s", v25, 0x16u);
        swift_arrayDestroy();
      }

      (*(v6 + 8))(v10, v5);
      if (qword_127AD0 != -1)
      {
        swift_once();
      }

      v26 = swift_allocObject();
      v27 = v34;
      v28 = v35;
      v26[2] = v34;
      v26[3] = v28;
      v29 = v37;
      v26[4] = a1;
      v26[5] = v29;
      v26[6] = v33;
      v30 = v27;
      v31 = v28;
      v32 = a1;
      sub_F037C();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_8A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_F06CC();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_8AACC, 0, 0);
}

uint64_t sub_8AACC()
{
  sub_F0AEC();
  *(v0 + 112) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_8AB94, v2, v1);
}

uint64_t sub_8AB94()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  sub_55CFC(v2, v3);
  *(v0 + 120) = v5;
  *(v0 + 148) = v6;

  return _swift_task_switch(sub_8AC4C, 0, 0);
}

uint64_t sub_8AC4C()
{
  v33 = v0;
  if (*(v0 + 148))
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    v5 = Logger.rcs.unsafeMutableAddressor();
    (*(v3 + 16))(v1, v5, v2);

    v6 = sub_F06AC();
    v7 = sub_F0CEC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 120);
      v31 = *(v0 + 104);
      v9 = *(v0 + 64);
      v10 = *(v0 + 72);
      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      v13 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_3E850(v12, v11, &v32);
      *(v13 + 12) = 2080;
      *(v0 + 144) = v8;
      type metadata accessor for FZErrorType(0);
      v14 = sub_F083C();
      v16 = sub_3E850(v14, v15, &v32);

      *(v13 + 14) = v16;
      _os_log_impl(&dword_0, v6, v7, "Cannot find context to revoke message %s error %s", v13, 0x16u);
      swift_arrayDestroy();

      (*(v10 + 8))(v31, v9);
    }

    else
    {
      v23 = *(v0 + 104);
      v24 = *(v0 + 64);
      v25 = *(v0 + 72);

      (*(v25 + 8))(v23, v24);
    }

    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v17 = *(v0 + 120);
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    v18[1] = sub_8AF58;
    v19 = *(v0 + 32);
    v20 = *(v0 + 40);
    v21 = *(v0 + 24);

    return sub_38E2C(v20, v19, v17);
  }
}

uint64_t sub_8AF58(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = a1;

  sub_3FA88(v3, 0);

  return _swift_task_switch(sub_8B0A8, 0, 0);
}

uint64_t sub_8B0A8()
{
  v91 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  if (v1)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 48);
    sub_37310(0, &qword_128A50, CTLazuliMessageRevokeData_ptr);

    v84 = v1;
    v7 = CTLazuliMessageRevokeData.init(messageGUID:destination:)(v6, v4, v84);
    v8 = [objc_allocWithZone(NSUUID) init];
    v9 = [v8 UUIDString];

    v10 = sub_F07EC();
    v85 = v11;
    v87 = v10;

    v12 = Logger.rcs.unsafeMutableAddressor();
    v80 = *(v2 + 16);
    v82 = v12;
    v80(v5);

    v13 = sub_F06AC();
    v14 = sub_F0CCC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 96);
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    if (v15)
    {
      v78 = *(v0 + 96);
      v19 = v7;
      v21 = *(v0 + 48);
      v20 = *(v0 + 56);
      v22 = swift_slowAlloc();
      v77 = v17;
      v23 = swift_slowAlloc();
      v90 = v23;
      *v22 = 136315138;
      v24 = v21;
      v7 = v19;
      *(v22 + 4) = sub_3E850(v24, v20, &v90);
      _os_log_impl(&dword_0, v13, v14, "Revoking message %s", v22, 0xCu);
      sub_1EDC(v23);

      v25 = *(v18 + 8);
      v25(v78, v77);
    }

    else
    {

      v25 = *(v18 + 8);
      v25(v16, v17);
    }

    v41 = *(v0 + 120);
    v42 = *(*(*(v0 + 24) + OBJC_IVAR___RCSServiceSession_state) + 16);
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v43 = v42;
    v44 = CTLazuliMessageID.init(uuid:)(v87, v85);
    *(v0 + 16) = 0;
    LODWORD(v41) = [v43 revokeMessage:v41 withRevokeData:v7 withMessageID:v44 withError:v0 + 16];

    v45 = *(v0 + 16);
    if (v41)
    {
      v46 = *(v0 + 120);
      v47 = v45;

      sub_3FA88(v46, 0);
    }

    else
    {
      v88 = v7;
      v48 = *(v0 + 80);
      v50 = *(v0 + 56);
      v49 = *(v0 + 64);
      v51 = v45;
      sub_F015C();

      swift_willThrow();
      (v80)(v48, v82, v49);

      swift_errorRetain();
      v52 = sub_F06AC();
      v53 = sub_F0CEC();

      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 120);
      v56 = *(v0 + 80);
      v57 = *(v0 + 64);
      if (v54)
      {
        v86 = *(v0 + 80);
        v83 = *(v0 + 72);
        v59 = *(v0 + 48);
        v58 = *(v0 + 56);
        v81 = v25;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v79 = v57;
        v62 = swift_slowAlloc();
        v90 = v62;
        *v60 = 136315394;
        *(v60 + 4) = sub_3E850(v59, v58, &v90);
        *(v60 + 12) = 2112;
        swift_errorRetain();
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 14) = v63;
        *v61 = v63;
        _os_log_impl(&dword_0, v52, v53, "Failed to revoke message %s, %@", v60, 0x16u);
        sub_372B0(v61, &qword_127AF0, &qword_F28E0);

        sub_1EDC(v62);

        sub_3FA88(v55, 0);

        v81(v86, v79);
      }

      else
      {

        sub_3FA88(v55, 0);

        v25(v56, v57);
      }
    }
  }

  else
  {
    v26 = *(v0 + 88);
    v27 = *(v0 + 32);
    v28 = Logger.rcs.unsafeMutableAddressor();
    (*(v2 + 16))(v26, v28, v3);

    v29 = v27;
    v30 = sub_F06AC();
    v31 = sub_F0CEC();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = *(v0 + 48);
      v32 = *(v0 + 56);
      v34 = *(v0 + 32);
      v35 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_3E850(v33, v32, &v90);
      *(v35 + 12) = 2080;
      v36 = [v34 guid];
      if (v36)
      {
        v37 = v36;
        v38 = sub_F07EC();
        v40 = v39;
      }

      else
      {
        v40 = 0xEC00000064697567;
        v38 = 0x2D6E776F6E6B6E75;
      }

      v67 = *(v0 + 120);
      v89 = *(v0 + 88);
      v69 = *(v0 + 64);
      v68 = *(v0 + 72);
      v70 = sub_3E850(v38, v40, &v90);

      *(v35 + 14) = v70;
      _os_log_impl(&dword_0, v30, v31, "Couldn't not determine destination to revoke message %s from chat %s", v35, 0x16u);
      swift_arrayDestroy();

      sub_3FA88(v67, 0);

      (*(v68 + 8))(v89, v69);
    }

    else
    {
      v64 = *(v0 + 88);
      v65 = *(v0 + 64);
      v66 = *(v0 + 72);
      sub_3FA88(*(v0 + 120), 0);

      (*(v66 + 8))(v64, v65);
    }
  }

  v72 = *(v0 + 96);
  v71 = *(v0 + 104);
  v74 = *(v0 + 80);
  v73 = *(v0 + 88);

  v75 = *(v0 + 8);

  return v75();
}

void RCSServiceSession.didDeleteChatGUID(_:chatIdentifier:style:groupID:originalGroupID:properties:lastAddressedLocalHandle:lastAddressedSIMID:)(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v137 = a2;
  LODWORD(v132) = a5;
  v20 = a5;
  v21 = sub_F06CC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v115 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v118 = &v114 - v26;
  __chkstk_darwin(v27);
  v29 = &v114 - v28;
  __chkstk_darwin(v30);
  v32 = &v114 - v31;
  v125 = v33;
  v126 = v29;
  if (v20 != 43)
  {
    v42 = [objc_opt_self() sharedInstance];
    v43 = [v42 ctSubscriptionInfo];

    if (!v43)
    {
      return;
    }

    if (a14)
    {
      v44 = sub_F07BC();
      if (a12)
      {
LABEL_7:
        v45 = sub_F07BC();
LABEL_24:
        v61 = [v43 __im_subscriptionContextForForSimID:v44 phoneNumber:v45];

        if (!v61)
        {
          return;
        }

        v129 = a1;
        v62 = sub_F07BC();
        IsPhoneNumber = IMStringIsPhoneNumber();

        v64 = sub_53E04(_swiftEmptyArrayStorage);
        if (IsPhoneNumber)
        {
          v65._countAndFlagsBits = 7103860;
          v65._object = 0xE300000000000000;
          v66._countAndFlagsBits = a3;
          v66._object = a4;
          RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v140, v65, v66, v64, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
          __chkstk_darwin(v67);
          *(&v114 - 2) = v61;
          RCSHandle.canonicalizedHandle(for:)(RCSPersistentMenu.menu.getter, &v141);
          sub_3CAB8(&v140);
        }

        else
        {
          v68._countAndFlagsBits = 7367027;
          v68._object = 0xE300000000000000;
          v69._countAndFlagsBits = a3;
          v69._object = a4;
          RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v141, v68, v69, v64, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        }

        v38 = RCSHandle.rawValue.getter();
        v39 = v70;

        sub_3CAB8(&v141);
        v41 = v135;
        v40 = v125;
        goto LABEL_29;
      }
    }

    else
    {
      v44 = 0;
      if (a12)
      {
        goto LABEL_7;
      }
    }

    v45 = 0;
    goto LABEL_24;
  }

  v136 = a6;
  v129 = a1;
  v34 = type metadata accessor for IMDChatRCSGroupSnapshot();
  v35 = swift_allocObject();
  v35[3] = 0;
  v35[4] = 0;
  v35[2] = 0;
  swift_beginAccess();
  v35[2] = a8;
  v35[3] = a9;
  swift_beginAccess();
  v35[4] = a10;
  v141.id._object = v34;
  v141.attributes._rawValue = &protocol witness table for IMDChatRCSGroupSnapshot;
  v141.scheme._countAndFlagsBits = v35;

  v36 = IMDChatRCSGroupIdentity.uri.getter();
  if (!v37)
  {
    v46 = Logger.rcs.unsafeMutableAddressor();
    v47 = v22;
    v48 = *(v22 + 16);
    v49 = v125;
    v48(v32, v46, v125);

    v50 = v137;

    v51 = sub_F06AC();
    v52 = sub_F0CCC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v135 = v47;
      v54 = v53;
      v134 = swift_slowAlloc();
      v142[0] = v134;
      *v54 = 136315650;
      *(v54 + 4) = sub_3E850(v129, v50, v142);
      *(v54 + 12) = 2080;
      if (a7)
      {
        v55 = v136;
      }

      else
      {
        v55 = 0x3E6C696E3CLL;
      }

      if (a7)
      {
        v56 = a7;
      }

      else
      {
        v56 = 0xE500000000000000;
      }

      v57 = sub_3E850(v55, v56, v142);

      *(v54 + 14) = v57;
      *(v54 + 22) = 2080;
      if (a9)
      {
        v58 = a8;
      }

      else
      {
        v58 = 0x3E6C696E3CLL;
      }

      if (a9)
      {
        v59 = a9;
      }

      else
      {
        v59 = 0xE500000000000000;
      }

      v60 = sub_3E850(v58, v59, v142);

      *(v54 + 24) = v60;
      _os_log_impl(&dword_0, v51, v52, "No group URI present when attempting to delete chat GUID %s for groupID %s originalGroupID %s", v54, 0x20u);
      swift_arrayDestroy();

      (*(v135 + 8))(v32, v125);
    }

    else
    {

      (*(v47 + 8))(v32, v49);
    }

    sub_39BC4(&v141);
    return;
  }

  v38 = v36;
  v39 = v37;
  sub_39BC4(&v141);

  v40 = v125;
  v41 = v135;
LABEL_29:
  v71 = sub_73B04();
  v73 = v71;
  if (v71 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v75 = 0;
    v124 = OBJC_IVAR___RCSServiceSession_state;
    v136 = v73 & 0xC000000000000001;
    v120 = v73 & 0xFFFFFFFFFFFFFF8;
    v134 = (v22 + 16);
    v133 = (v22 + 8);
    v117 = "ate chat deletion to telephony";
    *&v72 = 136315394;
    v119 = v72;
    v116 = v132;
    *&v72 = 136315650;
    v114 = v72;
    v128 = v38;
    v123 = v73;
    v122 = i;
    v127 = v39;
    while (1)
    {
      if (v136)
      {
        v76 = sub_F0FCC();
      }

      else
      {
        if (v75 >= *(v120 + 16))
        {
          goto LABEL_59;
        }

        v76 = *(v73 + 8 * v75 + 32);
      }

      v77 = v76;
      v22 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (sub_8326C(v76))
      {
        v78 = Logger.rcs.unsafeMutableAddressor();
        v79 = *v134;
        v80 = v126;
        v130 = v78;
        v131 = v79;
        (v79)(v126);

        v81 = sub_F06AC();
        v82 = v40;
        v83 = sub_F0CCC();

        if (os_log_type_enabled(v81, v83))
        {
          v84 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          *v84 = v119;
          *(v84 + 4) = sub_3E850(v129, v137, &v138);
          *(v84 + 12) = 2080;
          v121 = v75 + 1;
          v85 = v77;
          v86 = v80;
          v38 = v128;
          *(v84 + 14) = sub_3E850(v128, v39, &v138);
          _os_log_impl(&dword_0, v81, v83, "Notifying CT about deleted chat GUID %s / URI %s", v84, 0x16u);
          swift_arrayDestroy();

          v41 = v135;

          v87 = v86;
          v77 = v85;
          v22 = v121;
          v88 = v82;
          v132 = *v133;
          v132(v87, v82);
        }

        else
        {

          v88 = v82;
          v132 = *v133;
          v132(v80, v82);
          v38 = v128;
        }

        v89 = *(*(v41 + v124) + 16);
        v90 = sub_F07BC();
        v138 = 0;
        v91 = [v89 deleteChat:v77 chat:v90 withError:&v138];

        if (v91)
        {
          v92 = v138;

          v41 = v135;
          v40 = v88;
LABEL_55:
          v73 = v123;
          i = v122;
          goto LABEL_33;
        }

        v93 = v138;
        v94 = sub_F015C();

        swift_willThrow();
        v95 = [objc_opt_self() sharedInstance];
        if (!v95)
        {
          __break(1u);
        }

        v96 = v95;
        v138 = 0;
        v139 = 0xE000000000000000;
        sub_F0F9C(66);
        v144._object = (v117 | 0x8000000000000000);
        v144._countAndFlagsBits = 0xD00000000000002ALL;
        sub_F08CC(v144);
        v145._countAndFlagsBits = v129;
        v145._object = v137;
        sub_F08CC(v145);
        v146._countAndFlagsBits = 0x20495255202F20;
        v146._object = 0xE700000000000000;
        sub_F08CC(v146);
        v147._countAndFlagsBits = v38;
        v147._object = v39;
        sub_F08CC(v147);
        v148._countAndFlagsBits = 0x656C6574206F7420;
        v148._object = 0xED0000796E6F6870;
        sub_F08CC(v148);
        v97 = v138;
        v98 = v139;
        v99 = sub_F0FBC();
        LOBYTE(v142[0]) = 4;
        v142[1] = v99;
        v142[2] = v100;
        v142[3] = v97;
        v142[4] = v98;
        v142[5] = v94;
        v143 = 0;
        swift_errorRetain();
        sub_94528(v142);

        if (v116 == 43)
        {
          v101 = v118;
          v102 = v125;
          v131(v118, v130, v125);

          swift_errorRetain();
          v103 = sub_F06AC();
          v38 = sub_F0CEC();

          if (os_log_type_enabled(v103, v38))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            *v104 = v114;
            *(v104 + 4) = sub_3E850(v129, v137, &v138);
            *(v104 + 12) = 2080;
            *(v104 + 14) = sub_3E850(v128, v127, &v138);
            *(v104 + 22) = 2112;
            swift_errorRetain();
            v106 = _swift_stdlib_bridgeErrorToNSError();
            *(v104 + 24) = v106;
            *v105 = v106;
            _os_log_impl(&dword_0, v103, v38, "Failed to notify CT of deletion for chat %s / %s - future messages in the group may be routed to 1:1s: %@", v104, 0x20u);
            sub_372B0(v105, &qword_127AF0, &qword_F28E0);

            swift_arrayDestroy();
            v107 = v125;

            v40 = v107;

            v108 = v118;
            v109 = v107;
            goto LABEL_51;
          }

          v132(v101, v102);
          v41 = v135;
          v40 = v102;
        }

        else
        {
          v38 = v115;
          v110 = v125;
          v131(v115, v130, v125);

          v111 = sub_F06AC();
          v112 = sub_F0CEC();

          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            *v113 = v119;
            *(v113 + 4) = sub_3E850(v129, v137, &v138);
            *(v113 + 12) = 2080;
            *(v113 + 14) = sub_3E850(v128, v127, &v138);
            _os_log_impl(&dword_0, v111, v112, "Failed to notify CT of deletion for chat %s / %s", v113, 0x16u);
            swift_arrayDestroy();

            v108 = v38;
            v40 = v125;
            v109 = v125;
LABEL_51:
            v132(v108, v109);
            v41 = v135;
          }

          else
          {

            v132(v38, v110);
            v41 = v135;
            v40 = v110;
          }
        }

        v39 = v127;
        goto LABEL_55;
      }

LABEL_33:
      ++v75;
      if (v22 == i)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:
}