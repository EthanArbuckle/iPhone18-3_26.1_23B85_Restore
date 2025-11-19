uint64_t sub_1AAD7F4A4()
{
  v1 = *v0;
  sub_1AAD81D08(0, &qword_1ED9B0C68, sub_1AAD81A84);
  result = sub_1AAF90084();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v1 + 48) + ((v13 | (v4 << 6)) << 6));
      v25 = *v16;
      v26 = v16[1];
      v27 = v16[2];
      v28 = v16[3];
      sub_1AAF90694();
      result = sub_1AAF906F4();
      v17 = -1 << *(v3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v3 + 48) + (v11 << 6));
      *v12 = v25;
      v12[1] = v26;
      v12[2] = v27;
      v12[3] = v28;
      ++*(v3 + 16);
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v9)
      {
        break;
      }

      v15 = v5[v4];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v1 + 32);
    if (v24 >= 64)
    {
      bzero((v1 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v24;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AAD7F718(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1AAD81614();
    v2 = sub_1AAF90094();
    v14 = v2;
    sub_1AAF8FFA4();
    if (sub_1AAF8FFD4())
    {
      sub_1AAF8D094();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1AAD7E95C();
        }

        v2 = v14;
        sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8]);
        result = sub_1AAF8F474();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1AAF8FFD4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1AAD7F93C(uint64_t a1, uint64_t a2)
{
  sub_1AAF8D094();
  sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8]);
  sub_1AAF8F474();
  result = sub_1AAF8FF94();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1AAD7FA24(uint64_t a1, uint64_t a2)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](*(a1 + 16));
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 112);
      v13[6] = *(v5 + 96);
      v13[7] = v6;
      v13[8] = *(v5 + 128);
      v14 = *(v5 + 144);
      v7 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v7;
      v8 = *(v5 + 80);
      v13[4] = *(v5 + 64);
      v13[5] = v8;
      v9 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v9;
      sub_1AAD81BF4(v13, &v11);
      sub_1AAF70EE0(v12);
      sub_1AAD81C50(v13);
      v5 += 152;
      --v4;
    }

    while (v4);
  }

  sub_1AAF906F4();
  result = sub_1AAF8FF94();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1AAD7FB38(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7DF18();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1AAD7BA6C();
      goto LABEL_12;
    }

    sub_1AAD7C8CC();
  }

  v8 = *v3;
  sub_1AAF90694();
  sub_1AAD7A88C(v17, v5);
  result = sub_1AAF906F4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {

      v12 = sub_1AAD79EF4(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

uint64_t sub_1AAD7FCA8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1AAD7E220();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1AAD7BBD4();
      goto LABEL_16;
    }

    sub_1AAD7CBB4();
  }

  v10 = *v4;
  sub_1AAF90694();
  sub_1AAF8F6C4();
  result = sub_1AAF906F4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1AAF904F4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

unint64_t sub_1AAD7FE28(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1AAD7E4A0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1AAD7BD50();
      result = v7;
      goto LABEL_12;
    }

    sub_1AAD7CE0C();
  }

  v8 = *v3;
  v9 = sub_1AAF90684();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

uint64_t sub_1AAD7FF54(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7E6F4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AAD7BEB0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1AAD7D02C();
  }

  v8 = *v3;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v4);
  result = sub_1AAF906F4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

uint64_t sub_1AAD800A0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7E95C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1AAD7C018();
      goto LABEL_12;
    }

    sub_1AAD7D26C();
  }

  v8 = *v3;
  sub_1AAF8D094();
  sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8]);
  result = sub_1AAF8F474();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1AAD81D68(&qword_1EB4240C0, MEMORY[0x1E697A3A8]);
    do
    {
      result = sub_1AAF8F5F4();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

uint64_t sub_1AAD80288(uint64_t result, unint64_t a2, char a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7EBE4(v8 + 1, a4, a5, a6);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_1AAD7C178(a4, a5, a6);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1AAD7D4D8(v8 + 1, a4, a5, a6);
  }

  v11 = *v6;
  result = sub_1AAF90684();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

uint64_t sub_1AAD803D0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7EE10();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AAD7C2CC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1AAD7D6D0();
  }

  v8 = *v3;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v4);
  result = sub_1AAF906F4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

uint64_t sub_1AAD8051C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AAD7F078();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1AAD7C424();
        goto LABEL_25;
      }

      sub_1AAD7D908();
    }

    v8 = *v3;
    sub_1AAF90694();
    v9 = *(v5 + 16);
    MEMORY[0x1AC5992C0](v9);
    v10 = *(v5 + 16);
    if (v10)
    {
      v11 = v5 + 32;
      do
      {
        v12 = *(v11 + 112);
        v44[6] = *(v11 + 96);
        v44[7] = v12;
        v44[8] = *(v11 + 128);
        v45 = *(v11 + 144);
        v13 = *(v11 + 48);
        v44[2] = *(v11 + 32);
        v44[3] = v13;
        v14 = *(v11 + 80);
        v44[4] = *(v11 + 64);
        v44[5] = v14;
        v15 = *(v11 + 16);
        v44[0] = *v11;
        v44[1] = v15;
        sub_1AAD81BF4(v44, v42);
        sub_1AAF70EE0(v40);
        sub_1AAD81C50(v44);
        v11 += 152;
        --v10;
      }

      while (v10);
    }

    result = sub_1AAF906F4();
    v16 = v8 + 56;
    v17 = -1 << *(v8 + 32);
    a2 = result & ~v17;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      while (1)
      {
        v19 = *(*(v8 + 48) + 8 * a2);
        if (*(v19 + 16) == v9)
        {
          break;
        }

LABEL_14:
        a2 = (a2 + 1) & v18;
        if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (v9 && v19 != v5)
      {

        v20 = 0;
        v21 = 32;
        while (v20 < *(v19 + 16))
        {
          v22 = *(v19 + v21 + 16);
          v40[0] = *(v19 + v21);
          v40[1] = v22;
          v23 = *(v19 + v21 + 32);
          v24 = *(v19 + v21 + 48);
          v25 = *(v19 + v21 + 80);
          v40[4] = *(v19 + v21 + 64);
          v40[5] = v25;
          v40[2] = v23;
          v40[3] = v24;
          v26 = *(v19 + v21 + 96);
          v27 = *(v19 + v21 + 112);
          v28 = *(v19 + v21 + 128);
          v41 = *(v19 + v21 + 144);
          v40[7] = v27;
          v40[8] = v28;
          v40[6] = v26;
          if (v20 >= *(v5 + 16))
          {
            goto LABEL_28;
          }

          v29 = *(v5 + v21 + 112);
          v42[6] = *(v5 + v21 + 96);
          v42[7] = v29;
          v42[8] = *(v5 + v21 + 128);
          v43 = *(v5 + v21 + 144);
          v30 = *(v5 + v21 + 48);
          v42[2] = *(v5 + v21 + 32);
          v42[3] = v30;
          v31 = *(v5 + v21 + 80);
          v42[4] = *(v5 + v21 + 64);
          v42[5] = v31;
          v32 = *(v5 + v21 + 16);
          v42[0] = *(v5 + v21);
          v42[1] = v32;
          sub_1AAD81BF4(v40, v39);
          sub_1AAD81BF4(v42, v39);
          v33 = sub_1AAF72168(v40, v42);
          sub_1AAD81C50(v42);
          result = sub_1AAD81C50(v40);
          if ((v33 & 1) == 0)
          {

            v16 = v8 + 56;
            goto LABEL_14;
          }

          ++v20;
          v21 += 152;
          if (v9 == v20)
          {

            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_24:
      sub_1AAD81AD8();
      result = sub_1AAF905A4();
      __break(1u);
    }
  }

LABEL_25:
  v34 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v34 + 48) + 8 * a2) = v5;
  v35 = *(v34 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v34 + 16) = v37;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1AAD807F4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AAD7F1D0();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1AAD7C568();
      goto LABEL_12;
    }

    sub_1AAD7DA28();
  }

  v9 = *v3;
  sub_1AAF90694();
  sub_1AAF70EE0(v31);
  result = sub_1AAF906F4();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(v9 + 48) + 152 * a2;
      v13 = *(v12 + 16);
      v31[0] = *v12;
      v31[1] = v13;
      v14 = *(v12 + 80);
      v16 = *(v12 + 32);
      v15 = *(v12 + 48);
      v31[4] = *(v12 + 64);
      v31[5] = v14;
      v31[2] = v16;
      v31[3] = v15;
      v17 = *(v12 + 96);
      v18 = *(v12 + 112);
      v19 = *(v12 + 128);
      v32 = *(v12 + 144);
      v31[7] = v18;
      v31[8] = v19;
      v31[6] = v17;
      sub_1AAD81BF4(v31, v30);
      v20 = sub_1AAF72168(v31, v6);
      result = sub_1AAD81C50(v31);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v22 = *(v21 + 48) + 152 * a2;
  v23 = *(v6 + 80);
  *(v22 + 64) = *(v6 + 64);
  *(v22 + 80) = v23;
  v24 = *(v6 + 48);
  *(v22 + 32) = *(v6 + 32);
  *(v22 + 48) = v24;
  *(v22 + 144) = *(v6 + 144);
  v25 = *(v6 + 128);
  *(v22 + 112) = *(v6 + 112);
  *(v22 + 128) = v25;
  *(v22 + 96) = *(v6 + 96);
  v26 = *(v6 + 16);
  *v22 = *v6;
  *(v22 + 16) = v26;
  v27 = *(v21 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v21 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AAF905A4();
  __break(1u);
  return result;
}

uint64_t sub_1AAD809E0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AAD7F4A4();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1AAD7C730();
        goto LABEL_19;
      }

      sub_1AAD7DCD4();
    }

    v8 = *v3;
    sub_1AAF90694();
    result = sub_1AAF906F4();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v26 = ~v9;
      v25 = *(v5 + 49) | ((*(v5 + 53) | (*(v5 + 55) << 16)) << 32);
      do
      {
        v10 = (*(v8 + 48) + (a2 << 6));
        v12 = v10[2];
        v11 = v10[3];
        v13 = v10[1];
        v27[0] = *v10;
        v27[1] = v13;
        v28 = v12;
        v29 = v11;
        if ((((v11 >> 8) | (((DWORD1(v11) >> 8) | (SBYTE7(v11) << 16)) << 32)) & 0x8000000000000000) != 0)
        {
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_11;
          }

          v15 = v28;
          v16 = v29;
          sub_1AACD7304(*&v27[0], *(&v27[0] + 1), v13 & 1);

          sub_1AACD7304(v15, *(&v15 + 1), v16 & 1);

          if ((sub_1AAF8EA14() & 1) == 0)
          {
            result = sub_1AAD81A30(v27);
            goto LABEL_11;
          }
        }

        else
        {
          if ((*(v5 + 48) & 0x8000000000000000) != 0)
          {
            goto LABEL_11;
          }

          sub_1AACD7304(*&v27[0], *(&v27[0] + 1), v13 & 1);
        }

        v14 = sub_1AAF8EA14();
        result = sub_1AAD81A30(v27);
        if (v14)
        {
          goto LABEL_22;
        }

LABEL_11:
        a2 = (a2 + 1) & v26;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_19:
  v17 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = (*(v17 + 48) + (a2 << 6));
  v19 = *(v5 + 16);
  *v18 = *v5;
  v18[1] = v19;
  v20 = *(v5 + 48);
  v18[2] = *(v5 + 32);
  v18[3] = v20;
  v21 = *(v17 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_22:
    result = sub_1AAF905A4();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v23;
  }

  return result;
}

uint64_t sub_1AAD80CD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AAD80D58();
  result = MEMORY[0x1AC598680](v2, &type metadata for ChartContentID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      sub_1AAD7A964(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1AAD80D58()
{
  result = qword_1ED9B0260;
  if (!qword_1ED9B0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0260);
  }

  return result;
}

uint64_t sub_1AAD80EB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAD80F10()
{
  if (!qword_1EB4240A8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB4240A8);
    }
  }
}

uint64_t sub_1AAD80F6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC598680](v2, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1AAD7ABF4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1AAD80FE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC598680](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E6530];
    v6 = MEMORY[0x1E69E6540];
    do
    {
      v7 = *v4++;
      sub_1AAD7B0A0(&v8, v7, &qword_1EB4240D0, v5, v6);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1AAD81080(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AAD81AD8();
  v4 = v3;
  v5 = sub_1AAD81B28();
  result = MEMORY[0x1AC598680](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;

      sub_1AAD7B298(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1AAD81110(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AAD81BA0();
  result = MEMORY[0x1AC598680](v2, &type metadata for AccessibilityDataField, v3);
  v14 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 112);
      v15[6] = *(v5 + 96);
      v15[7] = v6;
      v15[8] = *(v5 + 128);
      v16 = *(v5 + 144);
      v7 = *(v5 + 48);
      v15[2] = *(v5 + 32);
      v15[3] = v7;
      v8 = *(v5 + 80);
      v15[4] = *(v5 + 64);
      v15[5] = v8;
      v9 = *(v5 + 16);
      v15[0] = *v5;
      v15[1] = v9;
      sub_1AAD81BF4(v15, v12);
      sub_1AAD7B544(v10, v15);
      v12[6] = v10[6];
      v12[7] = v10[7];
      v12[8] = v10[8];
      v13 = v11;
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      sub_1AAD81C50(v12);
      v5 += 152;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

uint64_t sub_1AAD81218(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC598680](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1AAD7AAA4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AAD812B0(uint64_t a1, void (*a2)(double *__return_ptr))
{
  a2(&v34);
  if ((v36 & 1) == 0)
  {
    v4 = v34;
    v3 = v35;
    if (*(a1 + 16))
    {
      v5 = v34;
    }

    else
    {
      v6 = *a1;
      v5 = *(a1 + 8);
      if (*a1 >= v34)
      {
        v6 = v34;
      }

      if (v5 < v34)
      {
        v5 = v34;
      }

      v4 = v6;
    }

    if (v4 >= v35)
    {
      v4 = v35;
    }

    if (v5 >= v35)
    {
      v3 = v5;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = 0;
  }

  if ((v39 & 1) == 0)
  {
    v8 = v37;
    v7 = v38;
    if (*(a1 + 40))
    {
      v9 = v37;
    }

    else
    {
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      if (v10 >= v37)
      {
        v10 = v37;
      }

      if (v9 < v37)
      {
        v9 = v37;
      }

      v8 = v10;
    }

    if (v8 >= v38)
    {
      v8 = v38;
    }

    if (v9 >= v38)
    {
      v7 = v9;
    }

    *(a1 + 24) = v8;
    *(a1 + 32) = v7;
    *(a1 + 40) = 0;
  }

  sub_1AADC88CC(v11);

  sub_1AAD794EC(v12);
  if ((v42 & 1) == 0)
  {
    v14 = v40;
    v13 = v41;
    if (*(a1 + 88))
    {
      v15 = v40;
    }

    else
    {
      v16 = *(a1 + 72);
      v15 = *(a1 + 80);
      if (v16 >= v40)
      {
        v16 = v40;
      }

      if (v15 < v40)
      {
        v15 = v40;
      }

      v14 = v16;
    }

    if (v14 >= v41)
    {
      v14 = v41;
    }

    if (v15 >= v41)
    {
      v13 = v15;
    }

    *(a1 + 72) = v14;
    *(a1 + 80) = v13;
    *(a1 + 88) = 0;
  }

  if ((v45 & 1) == 0)
  {
    v18 = v43;
    v17 = v44;
    if (*(a1 + 112))
    {
      v19 = v43;
    }

    else
    {
      v20 = *(a1 + 96);
      v19 = *(a1 + 104);
      if (v20 >= v43)
      {
        v20 = v43;
      }

      if (v19 < v43)
      {
        v19 = v43;
      }

      v18 = v20;
    }

    if (v18 >= v44)
    {
      v18 = v44;
    }

    if (v19 >= v44)
    {
      v17 = v19;
    }

    *(a1 + 96) = v18;
    *(a1 + 104) = v17;
    *(a1 + 112) = 0;
  }

  sub_1AADC88CC(v21);

  sub_1AAD794EC(v22);
  if ((v48 & 1) == 0)
  {
    v24 = v46;
    v23 = v47;
    if (*(a1 + 160))
    {
      v25 = v46;
    }

    else
    {
      v26 = *(a1 + 144);
      v25 = *(a1 + 152);
      if (v26 >= v46)
      {
        v26 = v46;
      }

      if (v25 < v46)
      {
        v25 = v46;
      }

      v24 = v26;
    }

    if (v24 >= v47)
    {
      v24 = v47;
    }

    if (v25 >= v47)
    {
      v23 = v25;
    }

    *(a1 + 144) = v24;
    *(a1 + 152) = v23;
    *(a1 + 160) = 0;
  }

  if ((v51 & 1) == 0)
  {
    v28 = v49;
    v27 = v50;
    if (*(a1 + 184))
    {
      v29 = v49;
    }

    else
    {
      v30 = *(a1 + 168);
      v29 = *(a1 + 176);
      if (v30 >= v49)
      {
        v30 = v49;
      }

      if (v29 < v49)
      {
        v29 = v49;
      }

      v28 = v30;
    }

    if (v28 >= v50)
    {
      v28 = v50;
    }

    if (v29 >= v50)
    {
      v27 = v29;
    }

    *(a1 + 168) = v28;
    *(a1 + 176) = v27;
    *(a1 + 184) = 0;
  }

  sub_1AADC88CC(v31);

  sub_1AAD794EC(v32);
  return sub_1AAD590B4(&v34);
}

uint64_t sub_1AAD81520(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AACD6030(0, a3, a4, a5, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAD815A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AACD6030(0, a2, a3, a4, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AAD81614()
{
  if (!qword_1EB4240C8)
  {
    sub_1AAF8D094();
    sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8]);
    v0 = sub_1AAF900B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4240C8);
    }
  }
}

unint64_t sub_1AAD816A8()
{
  result = qword_1EB4240E8;
  if (!qword_1EB4240E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4240E8);
  }

  return result;
}

uint64_t sub_1AAD816FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AxisMarksConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AAD81810()
{
  result = qword_1ED9B2768;
  if (!qword_1ED9B2768)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9B2768);
  }

  return result;
}

unint64_t sub_1AAD81A84()
{
  result = qword_1ED9B0F30;
  if (!qword_1ED9B0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F30);
  }

  return result;
}

void sub_1AAD81AD8()
{
  if (!qword_1ED9B0CA0)
  {
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0CA0);
    }
  }
}

unint64_t sub_1AAD81B28()
{
  result = qword_1ED9B0C98;
  if (!qword_1ED9B0C98)
  {
    sub_1AAD81AD8();
    sub_1AAD81BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0C98);
  }

  return result;
}

unint64_t sub_1AAD81BA0()
{
  result = qword_1ED9B0F18;
  if (!qword_1ED9B0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F18);
  }

  return result;
}

void sub_1AAD81CA4()
{
  if (!qword_1EB4240F0)
  {
    sub_1AAD81AD8();
    sub_1AAD81B28();
    v0 = sub_1AAF900B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4240F0);
    }
  }
}

void sub_1AAD81D08(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AAF900B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AAD81D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AAD81DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v199 = a5;
  v206 = a4;
  v207 = a3;
  v200 = a2;
  v196 = sub_1AAF8D554();
  v203 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v195 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1AAF8D5F4();
  v202 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1AAF8CFB4();
  v201 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v197 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD9B4A8(0, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList.Item);
  v218 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v198 = (&v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v204 = &v192 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v192 - v14;
  sub_1AAD9A864(0, &qword_1EB424128, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
  v217 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v216 = (&v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v215 = (&v192 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v214 = (&v192 - v20);
  MEMORY[0x1EEE9AC00](v21);
  *&v213 = &v192 - v22;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v208 = a1;
  if (v23)
  {
    v240[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD41128(0, v23, 0);
    v212 = *(a1 + 16);
    if (v23 > v212)
    {
      goto LABEL_133;
    }

    v25 = 0;
    v24 = v240[0];
    *&v210 = a1 + ((*(v218 + 80) + 32) & ~*(v218 + 80));
    *&v211 = v23;
    do
    {
      if (v212 == v25)
      {
        goto LABEL_128;
      }

      v26 = v217;
      v27 = *(v217 + 48);
      v28 = v210 + *(v218 + 72) * v25;
      v29 = v213;
      v219 = v24;
      sub_1AAD9A440(v28, v213 + v27, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v30 = v214;
      *v214 = v25;
      sub_1AAD9A8E8(v29 + v27, v30 + *(v26 + 48), &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v31 = v215;
      sub_1AAD9AB7C(v30, v215, &qword_1EB424128, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v32 = *(v26 + 48);
      v33 = *(v31 + v32);

      sub_1AAD9A4C4(v31 + v32, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v34 = v216;
      sub_1AAD9ABF0(v30, v216, &qword_1EB424128, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v35 = *v34;
      v24 = v219;
      sub_1AAD9A4C4(v34 + *(v26 + 48), &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v240[0] = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1AAD41128((v36 > 1), v37 + 1, 1);
        v24 = v240[0];
      }

      v25 = (v25 + 1);
      v24[2] = v37 + 1;
      v38 = &v24[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v211 != v25);
  }

  if (v24[2])
  {
    sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58);
    v39 = sub_1AAF903A4();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v240[0] = v39;

  v41 = 0;
  sub_1AAD99F34(v40, 1, v240);

  v42 = v240[0];
  v43 = v240[0] + 64;
  v44 = 1 << *(v240[0] + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v240[0] + 64);
  v47 = (v44 + 63) >> 6;
  v216 = (v203 + 16);
  v215 = (v202 + 8);
  v214 = (v201 + 8);

  v213 = xmmword_1AAF92AB0;
  v48 = v209;
  v219 = v42;
  while (v46)
  {
LABEL_22:
    v50 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v51 = (v41 << 9) | (8 * v50);
    v52 = v42[7];
    v53 = *(v42[6] + v51);
    v54 = *(v52 + v51);
    v55 = v48[2];
    v56 = *(v55 + 16);

    if (v56 && (, sub_1AADB0938(v53), v58 = v57, , (v58 & 1) != 0) && *(v55 + 16) && (v59 = sub_1AADB0938(v53), (v60 & 1) != 0))
    {
      v61 = *(*(v55 + 56) + 8 * v59);
      if (v199)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_134;
        }

        v62 = v209;
        v63 = *(v208 + 16);
      }

      else
      {
        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        v62 = v209;
        v80 = *v209;
        v81 = *(*v209 + 16);
        if (v61 >= v81)
        {
          goto LABEL_145;
        }

        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_146;
        }

        v63 = *(v208 + 16);
        if (v54 >= v63)
        {
          goto LABEL_147;
        }

        v82 = (*(v218 + 80) + 32) & ~*(v218 + 80);
        v83 = *(v218 + 72);
        v84 = *(v80 + v82 + v83 * v61 + 12);
        v85 = *(v208 + v82 + v83 * v54 + 12);
        if (v84 != -1 && v85 != -1 && v84 == v85)
        {
          v107 = *(v218 + 80);
          goto LABEL_83;
        }
      }

      if (v54 >= v63)
      {
        goto LABEL_135;
      }

      v202 = *(*(v55 + 56) + 8 * v59);
      v212 = *(v218 + 80);
      v88 = v62;
      v217 = *(v218 + 72);
      sub_1AAD9A440(v208 + ((v212 + 32) & ~v212) + v217 * v54, v204, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v88[3];
      v227 = v90;
      v92 = sub_1AADB0938(v53);
      v93 = *(v90 + 16);
      v94 = (v91 & 1) == 0;
      v95 = v93 + v94;
      if (__OFADD__(v93, v94))
      {
        goto LABEL_136;
      }

      v96 = v91;
      if (*(v90 + 24) >= v95)
      {
        v99 = v207;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_58;
        }

        v168 = v92;
        sub_1AAD948F8(&qword_1EB424150);
        v92 = v168;
      }

      else
      {
        sub_1AAD89DD4(v95, isUniquelyReferenced_nonNull_native, &qword_1EB424150);
        v97 = sub_1AADB0938(v53);
        if ((v96 & 1) != (v98 & 1))
        {
          goto LABEL_148;
        }

        v92 = v97;
      }

      v99 = v207;
LABEL_58:
      if ((v96 & 1) == 0)
      {
        goto LABEL_137;
      }

      v100 = *(v227 + 56);
      *&v211 = v92;
      v101 = *(v100 + 8 * v92);
      sub_1AAD9A534(v204 + 448, v226, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      v102 = *(v99 + 184);
      if (v102)
      {
        if (*(v99 + 152))
        {
          if (*(v99 + 176))
          {
            v103 = 0;
            v104 = *(v102 + 16);
            if (v104)
            {
              v105 = *(v99 + 184);
            }

            else
            {
              v105 = 0;
            }

            if (v104)
            {
              v106 = 2;
            }

            else
            {
              v106 = -1;
            }
          }

          else
          {
            v105 = *(v99 + 160);
            v103 = *(v99 + 168);
            v106 = 1;
          }
        }

        else
        {
          v106 = 0;
          v105 = *(v99 + 136);
          v103 = *(v99 + 144);
        }
      }

      else
      {
        v105 = 0;
        v103 = 0;
        v106 = -1;
      }

      sub_1AAD880F8(v226, v105, v103, v106, v224);
      sub_1AAD9A5B4(v225);
      memcpy(v240, v225, 0x1E0uLL);
      sub_1AADB35BC(v224, v240, *(v204 + 528), *(v204 + 536), *(v204 + 544), *(v204 + 552), v99, v206, v223);
      swift_unknownObjectRetain();
      *&v210 = sub_1AAF8CF34();
      v108 = sub_1AAF8CDC4();
      v203 = sub_1AAF8CF54();
      if (!(*(*(v108 - 8) + 48))(v109, 1, v108))
      {
        sub_1AAD9A6F4();
        *(swift_allocObject() + 16) = v213;
        sub_1AACED220(v223, &v220);
        sub_1AACBB650(0, &qword_1EB424650);
        swift_dynamicCast();
        sub_1AAF8CDB4();
      }

      (v203)(&v221, 0);
      (v210)(&v222, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      *&v210 = v101;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v110 = v196;
      v111 = sub_1AAD0F5D8(v196, qword_1EB432060);
      (*v216)(v195, v111, v110);
      v112 = v193;
      sub_1AAF8D5E4();
      v113 = v194;
      v114 = v197;
      sub_1AAF8CF94();
      (*v215)(v112, v113);
      (*v214)(v114, v192);
      sub_1AAD9A5F8(v223);
      sub_1AAD9A64C(v224);
      sub_1AAD9A3D0(v226, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      sub_1AAD9A4C4(v204, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v115 = v227;
      if (v210)
      {
        *(*(v227 + 56) + 8 * v211) = v210;
      }

      else
      {
        v116 = v211;
        sub_1AAD9A6A0(*(v227 + 48) + 8 * v211);
        sub_1AAD92370(v116, v115);
      }

      v62 = v209;
      v209[3] = v115;
      if (v199)
      {
        v117 = *(v208 + 16);
        v83 = v217;
        v107 = v212;
        goto LABEL_92;
      }

      v61 = v202;
      v83 = v217;
      v107 = v212;
      if ((v202 & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      v80 = *v62;
      v81 = *(*v62 + 16);
LABEL_83:
      if (v61 >= v81)
      {
        goto LABEL_142;
      }

      v117 = *(v208 + 16);
      if (v54 >= v117)
      {
        goto LABEL_143;
      }

      v118 = (v107 + 32) & ~v107;
      v119 = *(v80 + v118 + v83 * v61 + 8);
      v120 = *(v208 + v118 + v83 * v54 + 8);
      if (v119 != -1 && v120 != -1 && v119 == v120)
      {

        v48 = v209;
        v42 = v219;
      }

      else
      {
LABEL_92:
        if (v54 >= v117)
        {
          goto LABEL_138;
        }

        v123 = v62;
        sub_1AAD9A440(v208 + ((v107 + 32) & ~v107) + v83 * v54, v198, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v125 = v123[3];
        v226[0] = v125;
        v127 = sub_1AADB0938(v53);
        v128 = *(v125 + 16);
        v129 = (v126 & 1) == 0;
        v130 = v128 + v129;
        if (__OFADD__(v128, v129))
        {
          goto LABEL_139;
        }

        v131 = v126;
        if (*(v125 + 24) < v130)
        {
          sub_1AAD89DD4(v130, v124, &qword_1EB424150);
          v132 = sub_1AADB0938(v53);
          if ((v131 & 1) != (v133 & 1))
          {
            goto LABEL_148;
          }

          v127 = v132;
          goto LABEL_97;
        }

        v134 = v207;
        if ((v124 & 1) == 0)
        {
          sub_1AAD948F8(&qword_1EB424150);
LABEL_97:
          v134 = v207;
        }

        if ((v131 & 1) == 0)
        {
          goto LABEL_140;
        }

        v212 = v226[0];
        v135 = *(v226[0] + 56);
        v217 = v127;
        v136 = *(v135 + 8 * v127);
        v137 = *(v134 + 32);
        v234 = *(v134 + 16);
        v235 = v137;
        v236 = *(v134 + 48);
        v138 = v198;
        v139 = v198[8];
        v239[6] = v198[7];
        v239[7] = v139;
        v239[8] = v198[9];
        v140 = v198[4];
        v239[2] = v198[3];
        v239[3] = v140;
        v141 = v198[5];
        v239[5] = v198[6];
        v239[4] = v141;
        v142 = v198[1];
        v239[1] = v198[2];
        v239[0] = v142;
        v143 = v134;
        v144 = sub_1AADC6AE0(v239);
        v145 = *(v143 + 56);
        LODWORD(v146) = v144;
        v211 = v146;
        v147 = *(v143 + 72);
        v231 = v145;
        v232 = v147;
        v233 = *(v143 + 88);
        v148 = v138[17];
        v238[6] = v138[16];
        v238[7] = v148;
        v238[8] = v138[18];
        v149 = v138[13];
        v238[2] = v138[12];
        v238[3] = v149;
        v150 = v138[14];
        v238[5] = v138[15];
        v238[4] = v150;
        v151 = v138[10];
        v238[1] = v138[11];
        v238[0] = v151;
        LODWORD(v152) = sub_1AADC6AE0(v238);
        v210 = v152;
        v153 = *(v143 + 112);
        v228 = *(v143 + 96);
        v229 = v153;
        v230 = *(v143 + 128);
        v154 = v138[26];
        v237[6] = v138[25];
        v237[7] = v154;
        v237[8] = v138[27];
        v155 = v138[22];
        v237[2] = v138[21];
        v237[3] = v155;
        v156 = v138[23];
        v237[5] = v138[24];
        v237[4] = v156;
        v157 = v138[19];
        v237[1] = v138[20];
        v237[0] = v157;
        v158 = sub_1AADC6AE0(v237);
        *&v159 = __PAIR64__(v210, v211);
        *(&v159 + 1) = v158;
        v211 = v159;
        swift_unknownObjectRetain();
        sub_1AAF8D094();
        v160 = sub_1AAF8CC64();
        *(v161 + 32) = v211;
        v160(v225, 0);
        swift_unknownObjectRelease();
        v162 = v138;
        if ((v138[39] & 1) == 0)
        {
          *&v211 = *(v138 + 76);
          v163 = *(v138 + 77);

          v164 = sub_1AAF8CC64();
          *(v165 + 16) = v211;
          *(v165 + 24) = v163;
          v164(v225, 0);

          v162 = v198;
        }

        sub_1AAD9A4C4(v162, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
        v166 = v212;
        *(*(v212 + 56) + 8 * v217) = v136;

        v48 = v209;
        v209[3] = v166;
        v42 = v219;
      }
    }

    else
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      if (v54 >= *(v208 + 16))
      {
        goto LABEL_130;
      }

      v217 = v46;
      v64 = v205;
      sub_1AAD9A440(v208 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v54, v205, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v65 = sub_1AADBEC88(v64, v207, v206);
      sub_1AAD9A4C4(v64, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
      v66 = v209;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v66[3];
      *&v225[0] = v68;
      v69 = sub_1AADB0938(v53);
      v71 = *(v68 + 16);
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        goto LABEL_131;
      }

      v75 = v70;
      if (*(v68 + 24) >= v74)
      {
        if (v67)
        {
          v77 = *&v225[0];
          if (v70)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v167 = v69;
          sub_1AAD948F8(&qword_1EB424150);
          v69 = v167;
          v77 = *&v225[0];
          if (v75)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1AAD89DD4(v74, v67, &qword_1EB424150);
        v69 = sub_1AADB0938(v53);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_148;
        }

        v77 = *&v225[0];
        if (v75)
        {
LABEL_15:
          *(v77[7] + 8 * v69) = v65;

          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v77[(v69 >> 6) + 8] |= 1 << v69;
      *(v77[6] + 8 * v69) = v53;
      *(v77[7] + 8 * v69) = v65;
      v78 = v77[2];
      v73 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v73)
      {
        goto LABEL_132;
      }

      v77[2] = v79;
LABEL_16:
      v48 = v209;
      v209[3] = v77;
      v42 = v219;
      v46 = v217;
    }
  }

  while (1)
  {
    v49 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_127;
    }

    if (v49 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v49);
    ++v41;
    if (v46)
    {
      v41 = v49;
      goto LABEL_22;
    }
  }

  v169 = v48;

  v170 = v169[2];
  v171 = 1 << *(v170 + 32);
  v172 = -1;
  if (v171 < 64)
  {
    v172 = ~(-1 << v171);
  }

  v173 = v172 & *(v170 + 64);
  v174 = (v171 + 63) >> 6;

  v175 = 0;
  while (v173)
  {
LABEL_117:
    v177 = __clz(__rbit64(v173));
    v173 &= v173 - 1;
    v178 = *(*(v170 + 48) + ((v175 << 9) | (8 * v177)));
    if (v42[2])
    {

      sub_1AADB0938(v179);
      v181 = v180;

      if (v181)
      {

        continue;
      }
    }

    else
    {
    }

    v182 = v209;
    v183 = sub_1AADB0938(v178);
    v185 = v184;

    if (v185)
    {
      v186 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v182[3];
      v226[0] = v187;
      if (!v186)
      {
        sub_1AAD948F8(&qword_1EB424150);
        v187 = v226[0];
      }

      v188 = *(*(v187 + 56) + 8 * v183);
      sub_1AAD92370(v183, v187);
      v182[3] = v187;
      *&v225[0] = v188;
      off_1EE75C038();
      swift_unknownObjectRelease();
      v42 = v219;
    }

    else
    {
      v42 = v219;
    }
  }

  while (1)
  {
    v176 = v175 + 1;
    if (__OFADD__(v175, 1))
    {
      break;
    }

    if (v176 >= v174)
    {

      v189 = v209;

      v191 = v200;
      *v189 = v208;
      v189[1] = v191;
      v189[2] = v42;
      return result;
    }

    v173 = *(v170 + 64 + 8 * v176);
    ++v175;
    if (v173)
    {
      v175 = v176;
      goto LABEL_117;
    }
  }

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
LABEL_148:
  sub_1AAF905B4();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AAD831D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v199 = a5;
  v206 = a4;
  v207 = a3;
  v200 = a2;
  v196 = sub_1AAF8D554();
  v203 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v195 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1AAF8D5F4();
  v202 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1AAF8CFB4();
  v201 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v197 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD9B4A8(0, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048, type metadata accessor for Resolved3DContentList.Item);
  v218 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v198 = (&v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v204 = &v192 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v192 - v14;
  sub_1AAD9A864(0, &qword_1EB424160, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
  v217 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v216 = (&v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v215 = (&v192 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v214 = (&v192 - v20);
  MEMORY[0x1EEE9AC00](v21);
  *&v213 = &v192 - v22;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v208 = a1;
  if (v23)
  {
    v240[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD41128(0, v23, 0);
    v212 = *(a1 + 16);
    if (v23 > v212)
    {
      goto LABEL_133;
    }

    v25 = 0;
    v24 = v240[0];
    *&v210 = a1 + ((*(v218 + 80) + 32) & ~*(v218 + 80));
    *&v211 = v23;
    do
    {
      if (v212 == v25)
      {
        goto LABEL_128;
      }

      v26 = v217;
      v27 = *(v217 + 48);
      v28 = v210 + *(v218 + 72) * v25;
      v29 = v213;
      v219 = v24;
      sub_1AAD9A440(v28, v213 + v27, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v30 = v214;
      *v214 = v25;
      sub_1AAD9A8E8(v29 + v27, v30 + *(v26 + 48), &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v31 = v215;
      sub_1AAD9AB7C(v30, v215, &qword_1EB424160, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v32 = *(v26 + 48);
      v33 = *(v31 + v32);

      sub_1AAD9A4C4(v31 + v32, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v34 = v216;
      sub_1AAD9ABF0(v30, v216, &qword_1EB424160, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v35 = *v34;
      v24 = v219;
      sub_1AAD9A4C4(v34 + *(v26 + 48), &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v240[0] = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1AAD41128((v36 > 1), v37 + 1, 1);
        v24 = v240[0];
      }

      v25 = (v25 + 1);
      v24[2] = v37 + 1;
      v38 = &v24[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v211 != v25);
  }

  if (v24[2])
  {
    sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58);
    v39 = sub_1AAF903A4();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v240[0] = v39;

  v41 = 0;
  sub_1AAD99F34(v40, 1, v240);

  v42 = v240[0];
  v43 = v240[0] + 64;
  v44 = 1 << *(v240[0] + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v240[0] + 64);
  v47 = (v44 + 63) >> 6;
  v216 = (v203 + 16);
  v215 = (v202 + 8);
  v214 = (v201 + 8);

  v213 = xmmword_1AAF92AB0;
  v48 = v209;
  v219 = v42;
  while (v46)
  {
LABEL_22:
    v50 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v51 = (v41 << 9) | (8 * v50);
    v52 = v42[7];
    v53 = *(v42[6] + v51);
    v54 = *(v52 + v51);
    v55 = v48[2];
    v56 = *(v55 + 16);

    if (v56 && (, sub_1AADB0938(v53), v58 = v57, , (v58 & 1) != 0) && *(v55 + 16) && (v59 = sub_1AADB0938(v53), (v60 & 1) != 0))
    {
      v61 = *(*(v55 + 56) + 8 * v59);
      if (v199)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_134;
        }

        v62 = v209;
        v63 = *(v208 + 16);
      }

      else
      {
        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        v62 = v209;
        v80 = *v209;
        v81 = *(*v209 + 16);
        if (v61 >= v81)
        {
          goto LABEL_145;
        }

        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_146;
        }

        v63 = *(v208 + 16);
        if (v54 >= v63)
        {
          goto LABEL_147;
        }

        v82 = (*(v218 + 80) + 32) & ~*(v218 + 80);
        v83 = *(v218 + 72);
        v84 = *(v80 + v82 + v83 * v61 + 12);
        v85 = *(v208 + v82 + v83 * v54 + 12);
        if (v84 != -1 && v85 != -1 && v84 == v85)
        {
          v107 = *(v218 + 80);
          goto LABEL_83;
        }
      }

      if (v54 >= v63)
      {
        goto LABEL_135;
      }

      v202 = *(*(v55 + 56) + 8 * v59);
      v212 = *(v218 + 80);
      v88 = v62;
      v217 = *(v218 + 72);
      sub_1AAD9A440(v208 + ((v212 + 32) & ~v212) + v217 * v54, v204, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v88[3];
      v227 = v90;
      v92 = sub_1AADB0938(v53);
      v93 = *(v90 + 16);
      v94 = (v91 & 1) == 0;
      v95 = v93 + v94;
      if (__OFADD__(v93, v94))
      {
        goto LABEL_136;
      }

      v96 = v91;
      if (*(v90 + 24) >= v95)
      {
        v99 = v207;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_58;
        }

        v168 = v92;
        sub_1AAD948F8(&qword_1EB424168);
        v92 = v168;
      }

      else
      {
        sub_1AAD89DD4(v95, isUniquelyReferenced_nonNull_native, &qword_1EB424168);
        v97 = sub_1AADB0938(v53);
        if ((v96 & 1) != (v98 & 1))
        {
          goto LABEL_148;
        }

        v92 = v97;
      }

      v99 = v207;
LABEL_58:
      if ((v96 & 1) == 0)
      {
        goto LABEL_137;
      }

      v100 = *(v227 + 56);
      *&v211 = v92;
      v101 = *(v100 + 8 * v92);
      sub_1AAD9A534(v204 + 448, v226, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      v102 = *(v99 + 184);
      if (v102)
      {
        if (*(v99 + 152))
        {
          if (*(v99 + 176))
          {
            v103 = 0;
            v104 = *(v102 + 16);
            if (v104)
            {
              v105 = *(v99 + 184);
            }

            else
            {
              v105 = 0;
            }

            if (v104)
            {
              v106 = 2;
            }

            else
            {
              v106 = -1;
            }
          }

          else
          {
            v105 = *(v99 + 160);
            v103 = *(v99 + 168);
            v106 = 1;
          }
        }

        else
        {
          v106 = 0;
          v105 = *(v99 + 136);
          v103 = *(v99 + 144);
        }
      }

      else
      {
        v105 = 0;
        v103 = 0;
        v106 = -1;
      }

      sub_1AAD880F8(v226, v105, v103, v106, v224);
      sub_1AAD9A5B4(v225);
      memcpy(v240, v225, 0x1E0uLL);
      sub_1AADB35BC(v224, v240, *(v204 + 528), *(v204 + 536), *(v204 + 544), *(v204 + 552), v99, v206, v223);
      swift_unknownObjectRetain();
      *&v210 = sub_1AAF8CF34();
      v108 = sub_1AAF8CDC4();
      v203 = sub_1AAF8CF54();
      if (!(*(*(v108 - 8) + 48))(v109, 1, v108))
      {
        sub_1AAD9A6F4();
        *(swift_allocObject() + 16) = v213;
        sub_1AACED220(v223, &v220);
        sub_1AACBB650(0, &qword_1EB424650);
        swift_dynamicCast();
        sub_1AAF8CDB4();
      }

      (v203)(&v221, 0);
      (v210)(&v222, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      *&v210 = v101;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v110 = v196;
      v111 = sub_1AAD0F5D8(v196, qword_1EB432060);
      (*v216)(v195, v111, v110);
      v112 = v193;
      sub_1AAF8D5E4();
      v113 = v194;
      v114 = v197;
      sub_1AAF8CF94();
      (*v215)(v112, v113);
      (*v214)(v114, v192);
      sub_1AAD9A5F8(v223);
      sub_1AAD9A64C(v224);
      sub_1AAD9A3D0(v226, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      sub_1AAD9A4C4(v204, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v115 = v227;
      if (v210)
      {
        *(*(v227 + 56) + 8 * v211) = v210;
      }

      else
      {
        v116 = v211;
        sub_1AAD9A6A0(*(v227 + 48) + 8 * v211);
        sub_1AAD92370(v116, v115);
      }

      v62 = v209;
      v209[3] = v115;
      if (v199)
      {
        v117 = *(v208 + 16);
        v83 = v217;
        v107 = v212;
        goto LABEL_92;
      }

      v61 = v202;
      v83 = v217;
      v107 = v212;
      if ((v202 & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      v80 = *v62;
      v81 = *(*v62 + 16);
LABEL_83:
      if (v61 >= v81)
      {
        goto LABEL_142;
      }

      v117 = *(v208 + 16);
      if (v54 >= v117)
      {
        goto LABEL_143;
      }

      v118 = (v107 + 32) & ~v107;
      v119 = *(v80 + v118 + v83 * v61 + 8);
      v120 = *(v208 + v118 + v83 * v54 + 8);
      if (v119 != -1 && v120 != -1 && v119 == v120)
      {

        v48 = v209;
        v42 = v219;
      }

      else
      {
LABEL_92:
        if (v54 >= v117)
        {
          goto LABEL_138;
        }

        v123 = v62;
        sub_1AAD9A440(v208 + ((v107 + 32) & ~v107) + v83 * v54, v198, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v125 = v123[3];
        v226[0] = v125;
        v127 = sub_1AADB0938(v53);
        v128 = *(v125 + 16);
        v129 = (v126 & 1) == 0;
        v130 = v128 + v129;
        if (__OFADD__(v128, v129))
        {
          goto LABEL_139;
        }

        v131 = v126;
        if (*(v125 + 24) < v130)
        {
          sub_1AAD89DD4(v130, v124, &qword_1EB424168);
          v132 = sub_1AADB0938(v53);
          if ((v131 & 1) != (v133 & 1))
          {
            goto LABEL_148;
          }

          v127 = v132;
          goto LABEL_97;
        }

        v134 = v207;
        if ((v124 & 1) == 0)
        {
          sub_1AAD948F8(&qword_1EB424168);
LABEL_97:
          v134 = v207;
        }

        if ((v131 & 1) == 0)
        {
          goto LABEL_140;
        }

        v212 = v226[0];
        v135 = *(v226[0] + 56);
        v217 = v127;
        v136 = *(v135 + 8 * v127);
        v137 = *(v134 + 32);
        v234 = *(v134 + 16);
        v235 = v137;
        v236 = *(v134 + 48);
        v138 = v198;
        v139 = v198[8];
        v239[6] = v198[7];
        v239[7] = v139;
        v239[8] = v198[9];
        v140 = v198[4];
        v239[2] = v198[3];
        v239[3] = v140;
        v141 = v198[5];
        v239[5] = v198[6];
        v239[4] = v141;
        v142 = v198[1];
        v239[1] = v198[2];
        v239[0] = v142;
        v143 = v134;
        v144 = sub_1AADC6AE0(v239);
        v145 = *(v143 + 56);
        LODWORD(v146) = v144;
        v211 = v146;
        v147 = *(v143 + 72);
        v231 = v145;
        v232 = v147;
        v233 = *(v143 + 88);
        v148 = v138[17];
        v238[6] = v138[16];
        v238[7] = v148;
        v238[8] = v138[18];
        v149 = v138[13];
        v238[2] = v138[12];
        v238[3] = v149;
        v150 = v138[14];
        v238[5] = v138[15];
        v238[4] = v150;
        v151 = v138[10];
        v238[1] = v138[11];
        v238[0] = v151;
        LODWORD(v152) = sub_1AADC6AE0(v238);
        v210 = v152;
        v153 = *(v143 + 112);
        v228 = *(v143 + 96);
        v229 = v153;
        v230 = *(v143 + 128);
        v154 = v138[26];
        v237[6] = v138[25];
        v237[7] = v154;
        v237[8] = v138[27];
        v155 = v138[22];
        v237[2] = v138[21];
        v237[3] = v155;
        v156 = v138[23];
        v237[5] = v138[24];
        v237[4] = v156;
        v157 = v138[19];
        v237[1] = v138[20];
        v237[0] = v157;
        v158 = sub_1AADC6AE0(v237);
        *&v159 = __PAIR64__(v210, v211);
        *(&v159 + 1) = v158;
        v211 = v159;
        swift_unknownObjectRetain();
        sub_1AAF8D094();
        v160 = sub_1AAF8CC64();
        *(v161 + 32) = v211;
        v160(v225, 0);
        swift_unknownObjectRelease();
        v162 = v138;
        if ((v138[37] & 1) == 0)
        {
          *&v211 = *(v138 + 72);
          v163 = *(v138 + 73);

          v164 = sub_1AAF8CC64();
          *(v165 + 16) = v211;
          *(v165 + 24) = v163;
          v164(v225, 0);

          v162 = v198;
        }

        sub_1AAD9A4C4(v162, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
        v166 = v212;
        *(*(v212 + 56) + 8 * v217) = v136;

        v48 = v209;
        v209[3] = v166;
        v42 = v219;
      }
    }

    else
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      if (v54 >= *(v208 + 16))
      {
        goto LABEL_130;
      }

      v217 = v46;
      v64 = v205;
      sub_1AAD9A440(v208 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v54, v205, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v65 = sub_1AADBF760(v64, v207, v206);
      sub_1AAD9A4C4(v64, &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
      v66 = v209;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v66[3];
      *&v225[0] = v68;
      v69 = sub_1AADB0938(v53);
      v71 = *(v68 + 16);
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        goto LABEL_131;
      }

      v75 = v70;
      if (*(v68 + 24) >= v74)
      {
        if (v67)
        {
          v77 = *&v225[0];
          if (v70)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v167 = v69;
          sub_1AAD948F8(&qword_1EB424168);
          v69 = v167;
          v77 = *&v225[0];
          if (v75)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1AAD89DD4(v74, v67, &qword_1EB424168);
        v69 = sub_1AADB0938(v53);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_148;
        }

        v77 = *&v225[0];
        if (v75)
        {
LABEL_15:
          *(v77[7] + 8 * v69) = v65;

          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v77[(v69 >> 6) + 8] |= 1 << v69;
      *(v77[6] + 8 * v69) = v53;
      *(v77[7] + 8 * v69) = v65;
      v78 = v77[2];
      v73 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v73)
      {
        goto LABEL_132;
      }

      v77[2] = v79;
LABEL_16:
      v48 = v209;
      v209[3] = v77;
      v42 = v219;
      v46 = v217;
    }
  }

  while (1)
  {
    v49 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_127;
    }

    if (v49 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v49);
    ++v41;
    if (v46)
    {
      v41 = v49;
      goto LABEL_22;
    }
  }

  v169 = v48;

  v170 = v169[2];
  v171 = 1 << *(v170 + 32);
  v172 = -1;
  if (v171 < 64)
  {
    v172 = ~(-1 << v171);
  }

  v173 = v172 & *(v170 + 64);
  v174 = (v171 + 63) >> 6;

  v175 = 0;
  while (v173)
  {
LABEL_117:
    v177 = __clz(__rbit64(v173));
    v173 &= v173 - 1;
    v178 = *(*(v170 + 48) + ((v175 << 9) | (8 * v177)));
    if (v42[2])
    {

      sub_1AADB0938(v179);
      v181 = v180;

      if (v181)
      {

        continue;
      }
    }

    else
    {
    }

    v182 = v209;
    v183 = sub_1AADB0938(v178);
    v185 = v184;

    if (v185)
    {
      v186 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v182[3];
      v226[0] = v187;
      if (!v186)
      {
        sub_1AAD948F8(&qword_1EB424168);
        v187 = v226[0];
      }

      v188 = *(*(v187 + 56) + 8 * v183);
      sub_1AAD92370(v183, v187);
      v182[3] = v187;
      *&v225[0] = v188;
      off_1EE75C078();
      swift_unknownObjectRelease();
      v42 = v219;
    }

    else
    {
      v42 = v219;
    }
  }

  while (1)
  {
    v176 = v175 + 1;
    if (__OFADD__(v175, 1))
    {
      break;
    }

    if (v176 >= v174)
    {

      v189 = v209;

      v191 = v200;
      *v189 = v208;
      v189[1] = v191;
      v189[2] = v42;
      return result;
    }

    v173 = *(v170 + 64 + 8 * v176);
    ++v175;
    if (v173)
    {
      v175 = v176;
      goto LABEL_117;
    }
  }

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
LABEL_148:
  sub_1AAF905B4();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AAD845F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v193 = a5;
  v201 = a4;
  v202 = a3;
  v195 = a2;
  v192 = sub_1AAF8D554();
  v198 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1AAF8D5F4();
  v197 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1AAF8CFB4();
  v196 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD9B4A8(0, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8, type metadata accessor for Resolved3DContentList.Item);
  *&v213 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v194 = (&v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v183 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v200 = &v183 - v14;
  sub_1AAD9A864(0, &qword_1EB424170, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
  *&v212 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v211 = (&v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v210 = (&v183 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v209 = (&v183 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v208 = (&v183 - v22);
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v203 = a1;
  if (v23)
  {
    v226[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD41128(0, v23, 0);
    *&v207 = *(a1 + 16);
    if (v23 > v207)
    {
      goto LABEL_142;
    }

    v25 = 0;
    v24 = v226[0];
    *&v205 = a1 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
    v206 = v23;
    do
    {
      if (v207 == v25)
      {
        goto LABEL_137;
      }

      v26 = v212;
      v27 = *(v212 + 48);
      v28 = v205 + *(v213 + 72) * v25;
      v29 = v208;
      v214 = v24;
      sub_1AAD9A440(v28, v208 + v27, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v30 = v209;
      *v209 = v25;
      sub_1AAD9A8E8(v29 + v27, v30 + *(v26 + 48), &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v31 = v210;
      sub_1AAD9AB7C(v30, v210, &qword_1EB424170, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v32 = *(v26 + 48);
      v33 = *(v31 + v32);

      sub_1AAD9A4C4(v31 + v32, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v34 = v211;
      sub_1AAD9ABF0(v30, v211, &qword_1EB424170, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v35 = *v34;
      v24 = v214;
      sub_1AAD9A4C4(v34 + *(v26 + 48), &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v226[0] = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1AAD41128((v36 > 1), v37 + 1, 1);
        v24 = v226[0];
      }

      v25 = (v25 + 1);
      v24[2] = v37 + 1;
      v38 = &v24[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v206 != v25);
    a1 = v203;
  }

  if (v24[2])
  {
    sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58);
    v39 = sub_1AAF903A4();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v226[0] = v39;

  sub_1AAD99F34(v40, 1, v226);

  v41 = v226[0];
  v42 = v226[0] + 64;
  v43 = 1 << *(v226[0] + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v226[0] + 64);
  v46 = (v43 + 63) >> 6;
  v209 = (v197 + 8);
  v210 = (v198 + 16);
  v208 = (v196 + 8);
  v206 = &v221[1];

  v47 = 0;
  v207 = xmmword_1AAF92AB0;
  v48 = v204;
  v214 = v41;
  v211 = v46;
  if (!v45)
  {
    while (1)
    {
LABEL_18:
      v52 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_136;
      }

      if (v52 >= v46)
      {
        break;
      }

      v45 = *(v42 + 8 * v52);
      ++v47;
      if (v45)
      {
        v47 = v52;
        goto LABEL_22;
      }
    }

    v162 = v48[2];
    v163 = 1 << *(v162 + 32);
    v164 = -1;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    v165 = v164 & *(v162 + 64);
    v166 = (v163 + 63) >> 6;

    v167 = 0;
    while (1)
    {
      if (!v165)
      {
        while (1)
        {
          v168 = v167 + 1;
          if (__OFADD__(v167, 1))
          {
            break;
          }

          if (v168 >= v166)
          {

            v180 = v204;

            v182 = v195;
            *v180 = v203;
            v180[1] = v182;
            v180[2] = v41;
            return result;
          }

          v165 = *(v162 + 64 + 8 * v168);
          ++v167;
          if (v165)
          {
            v167 = v168;
            goto LABEL_126;
          }
        }

LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_126:
      v169 = __clz(__rbit64(v165));
      v165 &= v165 - 1;
      v170 = *(*(v162 + 48) + ((v167 << 9) | (8 * v169)));
      if (!v41[2])
      {
        break;
      }

      sub_1AADB0938(v171);
      v173 = v172;

      if (v173)
      {
      }

      else
      {
LABEL_130:
        v174 = v204;
        v175 = sub_1AADB0938(v170);
        v177 = v176;

        if (v177)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v179 = v174[3];
          v216[0] = v179;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1AAD94754();
            v179 = v216[0];
          }

          v213 = *(*(v179 + 56) + 16 * v175);
          sub_1AAD92110(v175, v179);
          v174[3] = v179;
          v221[0] = v213;
          off_1EE75C0F8();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v41 = v214;
        }

        else
        {
          v41 = v214;
        }
      }
    }

    goto LABEL_130;
  }

  while (1)
  {
LABEL_22:
    while (1)
    {
      v53 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v54 = (v47 << 9) | (8 * v53);
      v55 = *(v41[6] + v54);
      v56 = *(v41[7] + v54);
      v57 = v48[2];
      v58 = *(v57 + 16);

      if (!v58)
      {
        break;
      }

      sub_1AADB0938(v55);
      v60 = v59;

      if ((v60 & 1) == 0)
      {
        break;
      }

      if (!*(v57 + 16))
      {
        break;
      }

      v61 = sub_1AADB0938(v55);
      if ((v62 & 1) == 0)
      {
        break;
      }

      v63 = *(*(v57 + 56) + 8 * v61);
      if (v193)
      {
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_143;
        }

        v64 = *(a1 + 16);
        v48 = v204;
      }

      else
      {
        v46 = v211;
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_153;
        }

        v48 = v204;
        v84 = *v204;
        v85 = *(*v204 + 16);
        if (v63 >= v85)
        {
          goto LABEL_154;
        }

        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_155;
        }

        v64 = *(a1 + 16);
        if (v56 >= v64)
        {
          goto LABEL_156;
        }

        v86 = (*(v213 + 80) + 32) & ~*(v213 + 80);
        v87 = *(v213 + 72);
        v88 = *(v84 + v86 + v87 * v63 + 12);
        v89 = *(a1 + v86 + v87 * v56 + 12);
        if (v88 != -1 && v89 != -1 && v88 == v89)
        {
          v110 = *(v213 + 80);
          goto LABEL_83;
        }
      }

      if (v56 >= v64)
      {
        goto LABEL_144;
      }

      v186 = v63;
      *&v205 = *(v213 + 80);
      v92 = *(v213 + 72);
      sub_1AAD9A440(a1 + ((v205 + 32) & ~v205) + v92 * v56, v199, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);

      v93 = swift_isUniquelyReferenced_nonNull_native();
      v222 = v48[3];
      v94 = v222;
      v96 = sub_1AADB0938(v55);
      v97 = *(v94 + 16);
      v98 = (v95 & 1) == 0;
      v99 = v97 + v98;
      if (__OFADD__(v97, v98))
      {
        goto LABEL_145;
      }

      v100 = v95;
      if (*(v94 + 24) >= v99)
      {
        if (v93)
        {
          v103 = v202;
          if ((v95 & 1) == 0)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v161 = v96;
          sub_1AAD94754();
          v96 = v161;
          v103 = v202;
          if ((v100 & 1) == 0)
          {
            goto LABEL_146;
          }
        }
      }

      else
      {
        sub_1AAD89A64(v99, v93);
        v101 = sub_1AADB0938(v55);
        if ((v100 & 1) != (v102 & 1))
        {
          goto LABEL_158;
        }

        v96 = v101;
        v103 = v202;
        if ((v100 & 1) == 0)
        {
          goto LABEL_146;
        }
      }

      v104 = *(v222 + 56);
      v196 = v96;
      v212 = *(v104 + 16 * v96);
      sub_1AAD9A534(v199 + 128, v216, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      v105 = *(v103 + 184);
      v197 = v92;
      if (v105)
      {
        if (*(v103 + 152))
        {
          if (*(v103 + 176))
          {
            v106 = 0;
            v107 = *(v105 + 16);
            if (v107)
            {
              v108 = v105;
            }

            else
            {
              v108 = 0;
            }

            if (v107)
            {
              v109 = 2;
            }

            else
            {
              v109 = -1;
            }
          }

          else
          {
            v108 = *(v103 + 160);
            v106 = *(v103 + 168);
            v109 = 1;
          }
        }

        else
        {
          v109 = 0;
          v108 = *(v103 + 136);
          v106 = *(v103 + 144);
        }
      }

      else
      {
        v108 = 0;
        v106 = 0;
        v109 = -1;
      }

      sub_1AAD880F8(v216, v108, v106, v109, v220);
      v111 = v199;
      v112 = *(v199 + 208);
      v113 = *(v199 + 216);
      sub_1AAD9A96C(v103, v221);

      sub_1AADADC74(v103, v112, v113, v223);
      memcpy(v221, v223, sizeof(v221));
      nullsub_1(v221, v114);
      memcpy(v226, v221, 0x1E0uLL);
      sub_1AADB35BC(v220, v226, *(v111 + 224), *(v111 + 232), *(v111 + 240), *(v111 + 248), v103, v201, v219);
      swift_unknownObjectRetain();
      v198 = sub_1AAF8CF34();
      v115 = sub_1AAF8CDC4();
      v116 = sub_1AAF8CF54();
      if (!(*(*(v115 - 8) + 48))(v117, 1, v115))
      {
        sub_1AAD9A6F4();
        *(swift_allocObject() + 16) = v207;
        sub_1AACED220(v219, &v215);
        sub_1AACBB650(0, &qword_1EB424650);
        swift_dynamicCast();
        sub_1AAF8CDB4();
      }

      v116(&v217, 0);
      (v198)(&v218, 0);
      v198 = v55;
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      v118 = v187;
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      a1 = v203;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v119 = v192;
      v120 = sub_1AAD0F5D8(v192, qword_1EB432060);
      (*v210)(v191, v120, v119);
      v121 = v189;
      sub_1AAF8D5E4();
      v122 = v190;
      sub_1AAF8CF94();
      sub_1AAD9A9C8(v223);
      (*v209)(v121, v122);
      (*v208)(v118, v188);
      sub_1AAD9A5F8(v219);
      sub_1AAD9A64C(v220);
      sub_1AAD9A3D0(v216, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      sub_1AAD9A4C4(v199, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
      v123 = v222;
      if (v212)
      {
        *(*(v222 + 56) + 16 * v196) = v212;
      }

      else
      {
        v124 = v196;
        sub_1AAD9A6A0(*(v222 + 48) + 8 * v196);
        sub_1AAD92110(v124, v123);
      }

      v55 = v198;
      v48 = v204;

      v48[3] = v123;
      if (v193)
      {
        v125 = *(a1 + 16);
        v110 = v205;
        v87 = v197;
LABEL_92:
        if (v56 >= v125)
        {
          goto LABEL_147;
        }

        sub_1AAD9A440(a1 + ((v110 + 32) & ~v110) + v87 * v56, v194, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
        v131 = swift_isUniquelyReferenced_nonNull_native();
        v220[0] = v48[3];
        v132 = v220[0];
        v134 = sub_1AADB0938(v55);
        v135 = *(v132 + 16);
        v136 = (v133 & 1) == 0;
        v137 = v135 + v136;
        if (__OFADD__(v135, v136))
        {
          goto LABEL_148;
        }

        v138 = v133;
        if (*(v132 + 24) >= v137)
        {
          if (v131)
          {
            v141 = v202;
            if ((v133 & 1) == 0)
            {
              goto LABEL_149;
            }
          }

          else
          {
            sub_1AAD94754();
            v141 = v202;
            if ((v138 & 1) == 0)
            {
              goto LABEL_149;
            }
          }
        }

        else
        {
          sub_1AAD89A64(v137, v131);
          v139 = sub_1AADB0938(v55);
          if ((v138 & 1) != (v140 & 1))
          {
            goto LABEL_158;
          }

          v134 = v139;
          v141 = v202;
          if ((v138 & 1) == 0)
          {
            goto LABEL_149;
          }
        }

        v79 = v220[0];
        v212 = *(*(v220[0] + 56) + 16 * v134);
        v142 = *(v141 + 416);
        if (*(v142 + 16))
        {
          v143 = v194[3];
          v198 = v194[2];
          v144 = *v194;

          v145 = sub_1AADB0938(v144);
          if ((v146 & 1) == 0)
          {
            goto LABEL_106;
          }

          v186 = v144;
          v205 = *(*(v142 + 56) + 16 * v145);
          v147 = *(v202 + 96);
          v224[4] = *(v202 + 80);
          v224[5] = v147;
          v224[6] = *(v202 + 112);
          v225 = *(v202 + 128);
          v148 = *(v202 + 32);
          v224[0] = *(v202 + 16);
          v224[1] = v148;
          v149 = *(v202 + 64);
          v224[2] = *(v202 + 48);
          v224[3] = v149;

          v150 = v205;
          swift_unknownObjectRetain();
          v151 = *(&v205 + 1);
          swift_unknownObjectRetain();
          v196 = v151;
          v197 = v150;
          sub_1AADC36F0(v150, v151, v198, v143, v224);

          sub_1AAD9AA1C();
          sub_1AAF8E144();
          if (qword_1ED9B36D8 != -1)
          {
            swift_once();
          }

          sub_1AACBFDA4(&xmmword_1ED9C34F0, v216);
          v152 = sub_1AACD20AC(v221, v216);
          sub_1AAD10630(v216);
          sub_1AAD10630(v221);
          v153 = v186;
          if (v152)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_106:
          }

          else
          {
            v198 = v143;
            v154 = qword_1EB422B70;

            if (v154 != -1)
            {
              swift_once();
            }

            v184 = qword_1EB424818;
            v155 = swift_allocObject();
            *(v155 + 16) = v153;
            *(v155 + 24) = v205;
            v156 = v155;
            v185 = v155;
            v157 = swift_allocObject();
            *(v157 + 16) = sub_1AAD9AA70;
            *(v157 + 24) = v156;
            *&v221[2] = sub_1AAD9AA7C;
            *(&v221[2] + 1) = v157;
            *&v221[0] = MEMORY[0x1E69E9820];
            *(&v221[0] + 1) = 1107296256;
            *&v221[1] = sub_1AAD8867C;
            *(&v221[1] + 1) = &unk_1F1FD18C8;
            v158 = _Block_copy(v221);
            *&v205 = *(&v221[2] + 1);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            dispatch_sync(v184, v158);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            _Block_release(v158);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              goto LABEL_157;
            }
          }
        }

        sub_1AAD9A4C4(v194, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
        *(v79[7] + 16 * v134) = v212;

        goto LABEL_17;
      }

      v46 = v211;
      v63 = v186;
      v110 = v205;
      v87 = v197;
      if (v186 < 0)
      {
        goto LABEL_150;
      }

      v84 = *v48;
      v85 = *(*v48 + 16);
LABEL_83:
      if (v63 >= v85)
      {
        goto LABEL_151;
      }

      v125 = *(a1 + 16);
      if (v56 >= v125)
      {
        goto LABEL_152;
      }

      v126 = (v110 + 32) & ~v110;
      v127 = *(v84 + v126 + v87 * v63 + 8);
      v128 = *(a1 + v126 + v87 * v56 + 8);
      if (v127 == -1 || v128 == -1 || v127 != v128)
      {
        goto LABEL_92;
      }

      v41 = v214;
      if (!v45)
      {
        goto LABEL_18;
      }
    }

    if ((v56 & 0x8000000000000000) != 0)
    {
      goto LABEL_138;
    }

    if (v56 >= *(a1 + 16))
    {
      break;
    }

    v65 = v200;
    sub_1AAD9A440(a1 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v56, v200, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
    v66 = sub_1AADC3F68(v65, v202, v201);
    *&v212 = v67;
    sub_1AAD9A4C4(v65, &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
    v68 = v204;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v68[3];
    *&v221[0] = v70;
    v71 = sub_1AADB0938(v55);
    v73 = *(v70 + 16);
    v74 = (v72 & 1) == 0;
    v75 = __OFADD__(v73, v74);
    v76 = v73 + v74;
    if (v75)
    {
      goto LABEL_140;
    }

    v77 = v72;
    if (*(v70 + 24) >= v76)
    {
      if ((v69 & 1) == 0)
      {
        v160 = v71;
        sub_1AAD94754();
        v71 = v160;
      }
    }

    else
    {
      sub_1AAD89A64(v76, v69);
      v71 = sub_1AADB0938(v55);
      if ((v77 & 1) != (v78 & 1))
      {
        goto LABEL_158;
      }
    }

    v79 = *&v221[0];
    if (v77)
    {
      v49 = (*(*&v221[0] + 56) + 16 * v71);
      v50 = v212;
      *v49 = v66;
      v49[1] = v50;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      *(*&v221[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
      *(v79[6] + 8 * v71) = v55;
      v80 = (v79[7] + 16 * v71);
      v81 = v212;
      *v80 = v66;
      v80[1] = v81;
      v82 = v79[2];
      v75 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v75)
      {
        goto LABEL_141;
      }

      v79[2] = v83;
    }

LABEL_17:
    a1 = v203;
    v51 = v204;
    v204[3] = v79;
    v48 = v51;
    v41 = v214;
    v46 = v211;
    if (!v45)
    {
      goto LABEL_18;
    }
  }

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
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
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
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  sub_1AAF905B4();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AAD85B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v193 = a5;
  v200 = a4;
  v201 = a3;
  v194 = a2;
  v190 = sub_1AAF8D554();
  v197 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1AAF8D5F4();
  v196 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1AAF8CFB4();
  v195 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v192 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD9B4A8(0, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088, type metadata accessor for Resolved3DContentList.Item);
  v212 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v191 = (&v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v198 = &v186 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v199 = (&v186 - v14);
  sub_1AAD9A864(0, &qword_1EB424190, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
  v211 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v210 = (&v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v209 = (&v186 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v208 = (&v186 - v20);
  MEMORY[0x1EEE9AC00](v21);
  *&v207 = &v186 - v22;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v202 = a1;
  if (v23)
  {
    v234[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD41128(0, v23, 0);
    v206 = *(a1 + 16);
    if (v23 > v206)
    {
      goto LABEL_132;
    }

    v25 = 0;
    v24 = v234[0];
    *&v204 = a1 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
    *&v205 = v23;
    do
    {
      if (v206 == v25)
      {
        goto LABEL_127;
      }

      v26 = v211;
      v27 = *(v211 + 48);
      v28 = v204 + *(v212 + 72) * v25;
      v29 = v207;
      v213 = v24;
      sub_1AAD9A440(v28, v207 + v27, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v30 = v208;
      *v208 = v25;
      sub_1AAD9A8E8(v29 + v27, v30 + *(v26 + 48), &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v31 = v209;
      sub_1AAD9AB7C(v30, v209, &qword_1EB424190, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v32 = *(v26 + 48);
      v33 = *(v31 + v32);

      sub_1AAD9A4C4(v31 + v32, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v34 = v210;
      sub_1AAD9ABF0(v30, v210, &qword_1EB424190, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v35 = *v34;
      v24 = v213;
      sub_1AAD9A4C4(v34 + *(v26 + 48), &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v234[0] = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1AAD41128((v36 > 1), v37 + 1, 1);
        v24 = v234[0];
      }

      v25 = (v25 + 1);
      v24[2] = v37 + 1;
      v38 = &v24[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v205 != v25);
  }

  if (v24[2])
  {
    sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58);
    v39 = sub_1AAF903A4();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v234[0] = v39;

  v41 = 0;
  sub_1AAD99F34(v40, 1, v234);

  v42 = v234[0];
  v43 = v234[0] + 64;
  v44 = 1 << *(v234[0] + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v234[0] + 64);
  v47 = (v44 + 63) >> 6;
  v210 = (v197 + 16);
  v209 = (v196 + 8);
  v208 = (v195 + 8);

  v207 = xmmword_1AAF92AB0;
  v48 = v203;
  v213 = v42;
  while (1)
  {
    while (1)
    {
      if (!v46)
      {
        do
        {
          v49 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            __break(1u);
            goto LABEL_126;
          }

          if (v49 >= v47)
          {
            goto LABEL_107;
          }

          v46 = *(v43 + 8 * v49);
          ++v41;
        }

        while (!v46);
        v41 = v49;
      }

      v50 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v51 = (v41 << 9) | (8 * v50);
      v52 = v42[7];
      v42 = *(v42[6] + v51);
      v53 = *(v52 + v51);
      v54 = v48[2];
      v55 = *(v54 + 16);

      if (!v55)
      {
        break;
      }

      sub_1AADB0938(v42);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
        break;
      }

      if (!*(v54 + 16))
      {
        break;
      }

      v58 = sub_1AADB0938(v42);
      if ((v59 & 1) == 0)
      {
        break;
      }

      v60 = *(*(v54 + 56) + 8 * v58);
      if (v193)
      {
        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_133;
        }

        v61 = v203;
        v62 = *(v202 + 16);
      }

      else
      {
        if ((v60 & 0x8000000000000000) != 0)
        {
          goto LABEL_142;
        }

        v61 = v203;
        v79 = *v203;
        v80 = *(*v203 + 16);
        if (v60 >= v80)
        {
          goto LABEL_143;
        }

        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        v62 = *(v202 + 16);
        if (v53 >= v62)
        {
          goto LABEL_145;
        }

        v81 = (*(v212 + 80) + 32) & ~*(v212 + 80);
        v82 = *(v212 + 72);
        v83 = *(v79 + v81 + v82 * v60 + 12);
        v84 = *(v202 + v81 + v82 * v53 + 12);
        if (v83 != -1 && v84 != -1 && v83 == v84)
        {
          v106 = *(v212 + 80);
          goto LABEL_83;
        }
      }

      if (v53 >= v62)
      {
        goto LABEL_134;
      }

      v196 = *(*(v54 + 56) + 8 * v58);
      v206 = *(v212 + 80);
      v87 = v61;
      v211 = *(v212 + 72);
      sub_1AAD9A440(v202 + ((v206 + 32) & ~v206) + v211 * v53, v198, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v87[3];
      v221 = v89;
      v91 = sub_1AADB0938(v42);
      v92 = *(v89 + 16);
      v93 = (v90 & 1) == 0;
      v94 = v92 + v93;
      if (__OFADD__(v92, v93))
      {
        goto LABEL_135;
      }

      v95 = v90;
      if (*(v89 + 24) >= v94)
      {
        v98 = v201;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_58;
        }

        v161 = v91;
        sub_1AAD948F8(&qword_1EB424198);
        v91 = v161;
      }

      else
      {
        sub_1AAD89DD4(v94, isUniquelyReferenced_nonNull_native, &qword_1EB424198);
        v96 = sub_1AADB0938(v42);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_146;
        }

        v91 = v96;
      }

      v98 = v201;
LABEL_58:
      if ((v95 & 1) == 0)
      {
        goto LABEL_136;
      }

      v99 = *(v221 + 56);
      *&v205 = v91;
      v100 = *(v99 + 8 * v91);
      sub_1AAD9A534(v198 + 448, v220, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      v101 = *(v98 + 184);
      if (v101)
      {
        if (*(v98 + 152))
        {
          if (*(v98 + 176))
          {
            v102 = 0;
            v103 = *(v101 + 16);
            if (v103)
            {
              v104 = *(v98 + 184);
            }

            else
            {
              v104 = 0;
            }

            if (v103)
            {
              v105 = 2;
            }

            else
            {
              v105 = -1;
            }
          }

          else
          {
            v104 = *(v98 + 160);
            v102 = *(v98 + 168);
            v105 = 1;
          }
        }

        else
        {
          v105 = 0;
          v104 = *(v98 + 136);
          v102 = *(v98 + 144);
        }
      }

      else
      {
        v104 = 0;
        v102 = 0;
        v105 = -1;
      }

      sub_1AAD880F8(v220, v104, v102, v105, v218);
      sub_1AAD9A5B4(v219);
      memcpy(v234, v219, 0x1E0uLL);
      sub_1AADB35BC(v218, v234, *(v198 + 528), *(v198 + 536), *(v198 + 544), *(v198 + 552), v98, v200, v217);
      swift_unknownObjectRetain();
      *&v204 = sub_1AAF8CF34();
      v107 = sub_1AAF8CDC4();
      v197 = sub_1AAF8CF54();
      if (!(*(*(v107 - 8) + 48))(v108, 1, v107))
      {
        sub_1AAD9A6F4();
        *(swift_allocObject() + 16) = v207;
        sub_1AACED220(v217, &v214);
        sub_1AACBB650(0, &qword_1EB424650);
        swift_dynamicCast();
        sub_1AAF8CDB4();
      }

      (v197)(&v215, 0);
      (v204)(&v216, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      *&v204 = v100;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v109 = v190;
      v110 = sub_1AAD0F5D8(v190, qword_1EB432060);
      (*v210)(v189, v110, v109);
      v111 = v187;
      sub_1AAF8D5E4();
      v112 = v188;
      v113 = v192;
      sub_1AAF8CF94();
      (*v209)(v111, v112);
      (*v208)(v113, v186);
      sub_1AAD9A5F8(v217);
      sub_1AAD9A64C(v218);
      sub_1AAD9A3D0(v220, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      sub_1AAD9A4C4(v198, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
      v114 = v221;
      if (v204)
      {
        *(*(v221 + 56) + 8 * v205) = v204;
      }

      else
      {
        v115 = v205;
        sub_1AAD9A6A0(*(v221 + 48) + 8 * v205);
        sub_1AAD92370(v115, v114);
      }

      v61 = v203;
      v203[3] = v114;
      if (v193)
      {
        v116 = *(v202 + 16);
        v82 = v211;
        v106 = v206;
        goto LABEL_92;
      }

      v60 = v196;
      v82 = v211;
      v106 = v206;
      if ((v196 & 0x8000000000000000) != 0)
      {
        goto LABEL_139;
      }

      v79 = *v61;
      v80 = *(*v61 + 16);
LABEL_83:
      if (v60 >= v80)
      {
        goto LABEL_140;
      }

      v116 = *(v202 + 16);
      if (v53 >= v116)
      {
        goto LABEL_141;
      }

      v117 = (v106 + 32) & ~v106;
      v118 = *(v79 + v117 + v82 * v60 + 8);
      v119 = *(v202 + v117 + v82 * v53 + 8);
      if (v118 != -1 && v119 != -1 && v118 == v119)
      {

        v48 = v203;
        v42 = v213;
      }

      else
      {
LABEL_92:
        if (v53 >= v116)
        {
          goto LABEL_137;
        }

        v122 = v61;
        sub_1AAD9A440(v202 + ((v106 + 32) & ~v106) + v82 * v53, v191, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
        v123 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v122[3];
        v220[0] = v124;
        v125 = sub_1AADB0938(v42);
        v127 = *(v124 + 16);
        v128 = (v126 & 1) == 0;
        v72 = __OFADD__(v127, v128);
        v129 = v127 + v128;
        if (v72)
        {
          goto LABEL_138;
        }

        v130 = v126;
        if (*(v124 + 24) >= v129)
        {
          v132 = v201;
          if (v123)
          {
            if ((v126 & 1) == 0)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v162 = v125;
            sub_1AAD948F8(&qword_1EB424198);
            v132 = v201;
            v125 = v162;
            if ((v130 & 1) == 0)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          sub_1AAD89DD4(v129, v123, &qword_1EB424198);
          v125 = sub_1AADB0938(v42);
          if ((v130 & 1) != (v131 & 1))
          {
            goto LABEL_146;
          }

          v132 = v201;
          if ((v130 & 1) == 0)
          {
LABEL_106:
            __break(1u);
LABEL_107:
            v163 = v48;

            v164 = v163[2];
            v165 = 1 << *(v164 + 32);
            v166 = -1;
            if (v165 < 64)
            {
              v166 = ~(-1 << v165);
            }

            v167 = v166 & *(v164 + 64);
            v168 = (v165 + 63) >> 6;

            v169 = 0;
            while (1)
            {
              if (!v167)
              {
                while (1)
                {
                  v170 = v169 + 1;
                  if (__OFADD__(v169, 1))
                  {
                    break;
                  }

                  if (v170 >= v168)
                  {

                    v183 = v203;

                    v185 = v194;
                    *v183 = v202;
                    v183[1] = v185;
                    v183[2] = v42;
                    return result;
                  }

                  v167 = *(v164 + 64 + 8 * v170);
                  ++v169;
                  if (v167)
                  {
                    v169 = v170;
                    goto LABEL_116;
                  }
                }

LABEL_126:
                __break(1u);
LABEL_127:
                __break(1u);
LABEL_128:
                __break(1u);
                goto LABEL_129;
              }

LABEL_116:
              v171 = __clz(__rbit64(v167));
              v167 &= v167 - 1;
              v172 = *(*(v164 + 48) + ((v169 << 9) | (8 * v171)));
              if (v42[2])
              {

                sub_1AADB0938(v173);
                v175 = v174;

                if (v175)
                {

                  continue;
                }
              }

              else
              {
              }

              v176 = v203;
              v177 = sub_1AADB0938(v172);
              v179 = v178;

              if (v179)
              {
                v180 = swift_isUniquelyReferenced_nonNull_native();
                v181 = v176[3];
                v220[0] = v181;
                if (!v180)
                {
                  sub_1AAD948F8(&qword_1EB424198);
                  v181 = v220[0];
                }

                v182 = *(*(v181 + 56) + 8 * v177);
                sub_1AAD92370(v177, v181);
                v176[3] = v181;
                *&v219[0] = v182;
                off_1EE75C0B8();
                swift_unknownObjectRelease();
                v42 = v213;
              }

              else
              {
                v42 = v213;
              }
            }
          }
        }

        v211 = v220[0];
        v133 = *(*(v220[0] + 56) + 8 * v125);
        v134 = *(v132 + 32);
        v228 = *(v132 + 16);
        v229 = v134;
        v230 = *(v132 + 48);
        v135 = v191;
        v136 = v191[8];
        v233[6] = v191[7];
        v233[7] = v136;
        v233[8] = v191[9];
        v137 = v191[4];
        v233[2] = v191[3];
        v233[3] = v137;
        v138 = v191[5];
        v233[5] = v191[6];
        v233[4] = v138;
        v139 = v191[1];
        v233[1] = v191[2];
        v233[0] = v139;
        v206 = v125;
        v140 = v132;
        v141 = sub_1AADC6AE0(v233);
        v142 = *(v140 + 56);
        LODWORD(v143) = v141;
        v205 = v143;
        v144 = *(v140 + 72);
        v225 = v142;
        v226 = v144;
        v227 = *(v140 + 88);
        v145 = v135[17];
        v232[6] = v135[16];
        v232[7] = v145;
        v232[8] = v135[18];
        v146 = v135[13];
        v232[2] = v135[12];
        v232[3] = v146;
        v147 = v135[14];
        v232[5] = v135[15];
        v232[4] = v147;
        v148 = v135[10];
        v232[1] = v135[11];
        v232[0] = v148;
        LODWORD(v149) = sub_1AADC6AE0(v232);
        v204 = v149;
        v150 = *(v140 + 112);
        v222 = *(v140 + 96);
        v223 = v150;
        v224 = *(v140 + 128);
        v151 = v135[26];
        v231[6] = v135[25];
        v231[7] = v151;
        v231[8] = v135[27];
        v152 = v135[22];
        v231[2] = v135[21];
        v231[3] = v152;
        v153 = v135[23];
        v231[5] = v135[24];
        v231[4] = v153;
        v154 = v135[19];
        v231[1] = v135[20];
        v231[0] = v154;
        v155 = sub_1AADC6AE0(v231);
        *&v156 = __PAIR64__(v204, v205);
        *(&v156 + 1) = v155;
        v205 = v156;
        swift_unknownObjectRetain();
        sub_1AAF8D094();
        v157 = sub_1AAF8CC64();
        *(v158 + 32) = v205;
        v157(v219, 0);
        swift_unknownObjectRelease();
        sub_1AAD9A4C4(v135, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
        v159 = v211;
        *(*(v211 + 56) + 8 * v206) = v133;

        v48 = v203;
        v203[3] = v159;
        v42 = v213;
      }
    }

    if ((v53 & 0x8000000000000000) != 0)
    {
      goto LABEL_128;
    }

    if (v53 >= *(v202 + 16))
    {
      break;
    }

    v211 = v46;
    v63 = v199;
    sub_1AAD9A440(v202 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v53, v199, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
    v64 = sub_1AADC0610(v63, v201, v200);
    sub_1AAD9A4C4(v63, &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
    v65 = v203;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v65[3];
    *&v219[0] = v67;
    v68 = sub_1AADB0938(v42);
    v70 = *(v67 + 16);
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      goto LABEL_130;
    }

    v74 = v69;
    if (*(v67 + 24) >= v73)
    {
      if (v66)
      {
        v76 = *&v219[0];
        if (v69)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v160 = v68;
        sub_1AAD948F8(&qword_1EB424198);
        v68 = v160;
        v76 = *&v219[0];
        if (v74)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1AAD89DD4(v73, v66, &qword_1EB424198);
      v68 = sub_1AADB0938(v42);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_146;
      }

      v76 = *&v219[0];
      if (v74)
      {
LABEL_15:
        *(v76[7] + 8 * v68) = v64;

        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v76[(v68 >> 6) + 8] |= 1 << v68;
    *(v76[6] + 8 * v68) = v42;
    *(v76[7] + 8 * v68) = v64;
    v77 = v76[2];
    v72 = __OFADD__(v77, 1);
    v78 = v77 + 1;
    if (v72)
    {
      goto LABEL_131;
    }

    v76[2] = v78;
LABEL_16:
    v48 = v203;
    v203[3] = v76;
    v42 = v213;
    v46 = v211;
  }

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
  sub_1AAF905B4();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AAD86EFC()
{
  v1 = v0;
  v137[57] = *MEMORY[0x1E69E9840];
  v2 = sub_1AAF8E134();
  v118 = *(v2 - 8);
  v119 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v111[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v111[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v111[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v111[-v12];
  OutputValue = AGGraphGetOutputValue();
  v115 = v10;
  v116 = v7;
  v117 = v13;
  if (!OutputValue)
  {
    sub_1AAF8D094();
    swift_allocObject();
    v15 = sub_1AAF8D084();
    sub_1AAF8D074();
    swift_allocObject();
    v16 = sub_1AAF8D084();
    sub_1AAF8CC24();

    sub_1AAF8CC24();

    v17 = MEMORY[0x1E69E7CC0];
    v18 = sub_1AAD78BF4(MEMORY[0x1E69E7CC0]);
    v120 = v19;
    *&v121 = v18;
    v20 = sub_1AAD78C2C(v17);
    v114 = v21;
    v22 = v4;
    v23 = sub_1AAD78C10(v17);
    v25 = v24;
    v26 = sub_1AAD78BD8(v17);
    *&v136[0] = v15;
    *(&v136[0] + 1) = v16;
    v136[1] = 0x3FF0000000000000uLL;
    *&v136[2] = 0;
    *(&v136[2] + 1) = 0x3FF0000000000000;
    *&v136[3] = 0x3F80000000000000;
    v136[4] = 0u;
    *(&v136[3] + 1) = 0x3FF0000000000000;
    *&v136[5] = 0x3FF0000000000000;
    *(&v136[5] + 1) = 0x3F80000000000000;
    *(&v136[6] + 8) = 0u;
    *&v136[6] = 0x3FF0000000000000;
    *(&v136[7] + 1) = 0x3FF0000000000000;
    *&v136[8] = 0x3F80000000000000;
    *(&v136[8] + 8) = 0u;
    *(&v136[9] + 8) = 0u;
    *(&v136[10] + 8) = 0u;
    *(&v136[11] + 8) = 0u;
    WORD4(v136[12]) = 0;
    memset(&v136[13], 0, 33);
    *(&v136[16] + 8) = 0u;
    *(&v136[15] + 8) = 0u;
    BYTE8(v136[17]) = 0;
    memset(&v136[18], 0, 33);
    *(&v136[20] + 1) = v121;
    *&v136[21] = v120;
    *(&v136[21] + 1) = MEMORY[0x1E69E7CC8];
    *&v136[22] = MEMORY[0x1E69E7CC8];
    *(&v136[22] + 1) = v20;
    *&v136[23] = v114;
    *(&v136[23] + 1) = MEMORY[0x1E69E7CC8];
    *&v136[24] = MEMORY[0x1E69E7CC8];
    *(&v136[24] + 1) = v23;
    v4 = v22;
    *&v136[25] = v25;
    *(&v136[25] + 1) = MEMORY[0x1E69E7CC8];
    *&v136[26] = MEMORY[0x1E69E7CC8];
    *(&v136[26] + 1) = v26;
    *&v136[27] = v27;
    *(&v136[27] + 1) = MEMORY[0x1E69E7CC8];
    *&v136[28] = MEMORY[0x1E69E7CC8];
    nullsub_1(v136, v27);
    memcpy(v137, (v1 + 72), 0x1C8uLL);
    sub_1AAD9A3D0(v137, &qword_1EB424108, &type metadata for Chart3DModel);
    memcpy((v1 + 72), v136, 0x1C8uLL);
  }

  Value = AGGraphGetValue();
  v29 = *(Value + 80);
  v123[4] = *(Value + 64);
  v123[5] = v29;
  v123[6] = *(Value + 96);
  v124 = *(Value + 112);
  v30 = *(Value + 16);
  v123[0] = *Value;
  v123[1] = v30;
  v31 = *(Value + 48);
  v123[2] = *(Value + 32);
  v123[3] = v31;
  *&v121 = v32;
  if (v32)
  {
    memcpy(v137, (v1 + 72), 0x1C8uLL);
    result = sub_1AAD00C24(v137);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_1AAD78620(v123);
  }

  v34 = *(v1 + 20);
  LODWORD(v120) = *MEMORY[0x1E698D3F8];
  if (v34 != v120)
  {
    v35 = AGGraphGetValue();
    v136[0] = *v35;
    v37 = *(v35 + 32);
    v36 = *(v35 + 48);
    v38 = *(v35 + 16);
    LOWORD(v136[4]) = *(v35 + 64);
    v136[2] = v37;
    v136[3] = v36;
    v136[1] = v38;
    if (v39)
    {
      memcpy(v137, (v1 + 72), 0x1C8uLL);
      result = sub_1AAD00C24(v137);
      if (result == 1)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v134[2] = v136[2];
      v134[3] = v136[3];
      LOWORD(v134[4]) = v136[4];
      v134[0] = v136[0];
      v134[1] = v136[1];
      v40 = *(v1 + 256);
      v135[2] = *(v1 + 240);
      v135[3] = v40;
      LOWORD(v135[4]) = *(v1 + 272);
      v41 = *(v1 + 224);
      v135[0] = *(v1 + 208);
      v135[1] = v41;
      sub_1AAD9A374(v136, v133);
      sub_1AAD9A3D0(v135, &qword_1EB424120, &type metadata for PlottedValueStylingContext);
      v42 = v134[3];
      *(v1 + 240) = v134[2];
      *(v1 + 256) = v42;
      *(v1 + 272) = v134[4];
      v43 = v134[1];
      *(v1 + 208) = v134[0];
      *(v1 + 224) = v43;
    }
  }

  v114 = v4;
  AGGraphGetValue();
  if (v44)
  {
    v45 = AGGraphGetValue();
    v46 = *v45;
    v47 = *(v45 + 8);
    v48 = *(v45 + 16);
    v113 = *(v45 + 24);
    v112 = *(v45 + 32);
    memcpy(v137, (v1 + 72), 0x1C8uLL);
    result = sub_1AAD00C24(v137);
    if (result != 1)
    {
      v49 = *(v1 + 280);

      sub_1AAD9A328(v49);
      *(v1 + 280) = v46;
      *(v1 + 288) = v47;
      v50 = v113;
      *(v1 + 296) = v48;
      *(v1 + 304) = v50;
      *(v1 + 312) = v112;
      goto LABEL_13;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_13:
  AGGraphGetValue();
  if ((v51 & 1) == 0)
  {
    goto LABEL_16;
  }

  v52 = AGGraphGetValue();
  v53 = *v52;
  v54 = *(v52 + 8);
  v55 = *(v52 + 16);
  v113 = *(v52 + 24);
  v112 = *(v52 + 32);
  memcpy(v137, (v1 + 72), 0x1C8uLL);
  result = sub_1AAD00C24(v137);
  if (result == 1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v56 = *(v1 + 320);

  sub_1AAD9A328(v56);
  *(v1 + 320) = v53;
  *(v1 + 328) = v54;
  v57 = v113;
  *(v1 + 336) = v55;
  *(v1 + 344) = v57;
  *(v1 + 352) = v112;
LABEL_16:
  AGGraphGetValue();
  if (v58)
  {
    v59 = AGGraphGetValue();
    v60 = *v59;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    v113 = *(v59 + 24);
    v112 = *(v59 + 32);
    memcpy(v137, (v1 + 72), 0x1C8uLL);
    result = sub_1AAD00C24(v137);
    if (result != 1)
    {
      v63 = *(v1 + 360);

      sub_1AAD9A328(v63);
      *(v1 + 360) = v60;
      *(v1 + 368) = v61;
      v64 = v113;
      *(v1 + 376) = v62;
      *(v1 + 384) = v64;
      *(v1 + 392) = v112;
      goto LABEL_19;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_19:
  v65 = v120;
  v67 = v118;
  v66 = v119;
  v68 = v121;
  if (*v1 != v120)
  {
    sub_1AAD9B4A8(0, &qword_1EB423530, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList);
    v69 = AGGraphGetValue();
    if ((v70 | v68))
    {
      v72 = *v69;
      v71 = v69[1];
      memcpy(v135, (v1 + 72), 0x1C8uLL);
      memcpy(v136, (v1 + 72), 0x1C8uLL);
      result = sub_1AAD00C24(v136);
      if (result == 1)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      memcpy(v137, v136, 0x1C8uLL);

      sub_1AAD9A534(v135, v134, &qword_1EB424108, &type metadata for Chart3DModel);
      v73 = AGGraphGetValue();
      v74 = v117;
      (*(v67 + 16))(v117, v73, v66);
      memcpy(v134, (v1 + 72), 0x1C8uLL);
      result = sub_1AAD00C24(v134);
      if (result == 1)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      sub_1AAD81DB8(v72, v71, v137, v74, v68 & 1);
      sub_1AAD9A3D0(v135, &qword_1EB424108, &type metadata for Chart3DModel);
      (*(v67 + 8))(v74, v66);
    }
  }

  if (*(v1 + 4) != v65)
  {
    sub_1AAD9B4A8(0, &qword_1EB423690, &type metadata for RectangleMark, &off_1EE75C048, type metadata accessor for Resolved3DContentList);
    v75 = AGGraphGetValue();
    if ((v76 | v68))
    {
      v77 = *v75;
      v78 = v75[1];
      memcpy(v134, (v1 + 72), 0x1C8uLL);
      memcpy(v135, (v1 + 72), 0x1C8uLL);
      result = sub_1AAD00C24(v135);
      if (result == 1)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      memcpy(v136, v135, 0x1C8uLL);

      sub_1AAD9A534(v134, v133, &qword_1EB424108, &type metadata for Chart3DModel);
      v79 = AGGraphGetValue();
      v80 = v115;
      (*(v67 + 16))(v115, v79, v66);
      memcpy(v133, (v1 + 72), sizeof(v133));
      result = sub_1AAD00C24(v133);
      if (result == 1)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      sub_1AAD831D4(v77, v78, v136, v80, v68 & 1);
      sub_1AAD9A3D0(v134, &qword_1EB424108, &type metadata for Chart3DModel);
      (*(v67 + 8))(v80, v66);
      v65 = v120;
    }
  }

  if (*(v1 + 8) != v65)
  {
    sub_1AAD9B4A8(0, &qword_1EB423660, &type metadata for SurfacePlot, &off_1EE75C0C8, type metadata accessor for Resolved3DContentList);
    v81 = AGGraphGetValue();
    if ((v82 | v68))
    {
      v83 = *v81;
      v84 = v81[1];
      memcpy(v133, (v1 + 72), sizeof(v133));
      memcpy(v134, (v1 + 72), 0x1C8uLL);
      result = sub_1AAD00C24(v134);
      if (result == 1)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      memcpy(v135, v134, 0x1C8uLL);

      sub_1AAD9A534(v133, v132, &qword_1EB424108, &type metadata for Chart3DModel);
      v66 = v119;
      v85 = AGGraphGetValue();
      v86 = v118;
      v87 = v116;
      (*(v118 + 16))(v116, v85, v66);
      memcpy(v132, (v1 + 72), sizeof(v132));
      result = sub_1AAD00C24(v132);
      if (result == 1)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v88 = v84;
      v68 = v121;
      sub_1AAD845F0(v83, v88, v135, v87, v121 & 1);
      sub_1AAD9A3D0(v133, &qword_1EB424108, &type metadata for Chart3DModel);
      (*(v86 + 8))(v87, v66);
      v67 = v86;
      v65 = v120;
    }
  }

  if (*(v1 + 12) != v65)
  {
    sub_1AAD9B4A8(0, &qword_1EB423680, &type metadata for RuleMark, &off_1EE75C088, type metadata accessor for Resolved3DContentList);
    v89 = AGGraphGetValue();
    if ((v90 | v68))
    {
      v91 = *v89;
      v92 = v89[1];
      memcpy(v132, (v1 + 72), sizeof(v132));
      memcpy(v133, (v1 + 72), sizeof(v133));
      result = sub_1AAD00C24(v133);
      if (result == 1)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      memcpy(v134, v133, 0x1C8uLL);

      sub_1AAD9A534(v132, v131, &qword_1EB424108, &type metadata for Chart3DModel);
      v93 = AGGraphGetValue();
      v94 = v114;
      (*(v67 + 16))(v114, v93, v66);
      memcpy(v131, (v1 + 72), sizeof(v131));
      result = sub_1AAD00C24(v131);
      if (result == 1)
      {
LABEL_62:
        __break(1u);
        return result;
      }

      sub_1AAD85B3C(v91, v92, v134, v94, v121 & 1);
      sub_1AAD9A3D0(v132, &qword_1EB424108, &type metadata for Chart3DModel);
      (*(v67 + 8))(v94, v66);
    }
  }

  if ((*(v1 + 529) & 1) == 0)
  {
    memcpy(v133, (v1 + 72), sizeof(v133));
    result = sub_1AAD00C24(v133);
    if (result != 1)
    {
      v95 = v133[1];
      memcpy(v132, (v1 + 72), sizeof(v132));
      result = sub_1AAD00C24(v132);
      if (result != 1)
      {
        v96 = v132[0];
        memcpy(v131, (v1 + 72), sizeof(v131));
        result = sub_1AAD00C24(v131);
        if (result != 1)
        {
          swift_unknownObjectRetain_n();
          swift_unknownObjectRetain_n();
          swift_unknownObjectRetain();
          sub_1AAF8D094();
          v97 = sub_1AAF8CC64();
          *(v98 + 32) = 0;
          *(v98 + 40) = 0;
          v97(&v125, 0);
          swift_unknownObjectRelease();
          sub_1AAD9A288(&unk_1F1FCEC60);
          v121 = v99;
          swift_unknownObjectRetain();
          v100 = sub_1AAF8CC64();
          *v101 = v121;
          v100(&v125, 0);
          swift_unknownObjectRelease();
          v102 = *(v1 + 40);
          v103 = *(v1 + 64);
          type metadata accessor for MetalView.CaptureManager();
          v104 = swift_allocObject();
          *(v104 + 16) = 0;
          *(v104 + 24) = 0;
          v122 = v104;
          swift_unknownObjectRetain();

          sub_1AAF8EE24();
          v105 = v125;
          v106 = v126;
          v125 = v102;
          v126 = v95;
          v127 = v96;
          v128 = v103;
          v129 = v105;
          v130 = v106;
          sub_1AAD9A2D4();
          v125 = sub_1AAF8EF44();
          AGGraphSetOutputValue();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *(v1 + 528) = 256;
          goto LABEL_44;
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_44:
  v107 = *(v1 + 64);
  swift_getKeyPath();
  v133[0] = v107;
  sub_1AAD9C1D8(&qword_1EB424118, type metadata accessor for RenderTrigger);
  sub_1AAF8D0C4();

  v133[0] = v107;
  swift_getKeyPath();
  sub_1AAF8D0E4();

  v108 = *(v107 + 16);
  v109 = __CFADD__(v108, 1);
  v110 = v108 + 1;
  if (v109)
  {
    __break(1u);
  }

  *(v107 + 16) = v110;
  v133[0] = v107;
  swift_getKeyPath();
  sub_1AAF8D0D4();
}

uint64_t sub_1AAD87E88()
{
  sub_1AAD77B28();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AAF8D014();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1AAF8D074();
  sub_1AAF8D094();
  sub_1AAF8CC34();
  (*(v6 + 16))(v8, v11, v5);
  sub_1AAD9C1D8(&qword_1EB423F70, MEMORY[0x1E697A360]);
  sub_1AAF8F744();
  sub_1AAD9C1D8(&qword_1EB423F78, sub_1AAD77B28);
  while (1)
  {
    sub_1AAF8FE94();
    if (!v14)
    {
      break;
    }

    sub_1AAD87E88(v14);
  }

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1AAD880F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1AAD9A534(a1, v40, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  v42 = a2;
  v43 = a3;
  v44 = a4;
  sub_1AAD9A760();
  if (v41 == 255)
  {
    if (a4 == 0xFF)
    {
LABEL_9:
      sub_1AAD9A3D0(v40, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
      while (1)
      {
        if (qword_1EB422C10 != -1)
        {
          swift_once();
        }

        v23 = qword_1EB432210;
        if (*(qword_1EB432210 + 16))
        {
          break;
        }

        __break(1u);
LABEL_47:
        swift_once();
LABEL_26:
        v23 = qword_1EB432210;
        if (*(qword_1EB432210 + 16))
        {
          break;
        }

        __break(1u);
LABEL_28:
        if (v41 != 255)
        {
          goto LABEL_53;
        }

        sub_1AAD9A828(a2, a3, 2);
      }

      *a5 = *(v23 + 32);
      *(a5 + 40) = 0;
    }

    sub_1AAD9A814(a2, a3, a4);
LABEL_24:
    if (a4 >= 2u)
    {
      goto LABEL_28;
    }

    sub_1AAD9A828(a2, a3, a4);
    sub_1AAD9A3D0(v40, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
    if (qword_1EB422C10 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_26;
  }

  sub_1AAD9A534(v40, &v36, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  if ((v39 & 1) == 0)
  {
    v13 = *v37;
    *a5 = v36;
    *(a5 + 16) = v13;
    *(a5 + 25) = *&v37[9];
    return sub_1AAD9A3D0(v40, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  }

  v9 = v36;
  v10 = *&v37[16];
  v11 = *&v37[24];
  v12 = v38;
  if (a4 != 2)
  {
    if (a4 == 255)
    {
      sub_1AAD04750(v36, *(&v36 + 1), v37[0]);

      sub_1AAD0E818(v10, v11, v12);
      goto LABEL_9;
    }

    v28 = *&v37[24];
    v22 = v37[0];
    sub_1AAD9A814(a2, a3, a4);
    sub_1AAD04750(v9, *(&v9 + 1), v22);

    sub_1AAD0E818(v10, v28, v12);
    goto LABEL_24;
  }

  if (v38 < 0)
  {
    v12 = v37[0];
    sub_1AAD9A814(a2, a3, 2);
    if (qword_1EB422C10 != -1)
    {
      swift_once();
    }

    if (*(qword_1EB432210 + 16))
    {
      v18 = *(qword_1EB432210 + 32);

      sub_1AAD04750(v9, *(&v9 + 1), v12);

LABEL_42:
      sub_1AAD9A828(a2, a3, 2);
      v25 = 0;
LABEL_43:
      *a5 = v18;
      v26 = v35;
      *(a5 + 8) = v34;
      *(a5 + 24) = v26;
      *(a5 + 40) = v25;
      return sub_1AAD9A3D0(v40, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
    }

    __break(1u);
    goto LABEL_49;
  }

  v27 = v37[0];
  if (v38 != 2)
  {
    sub_1AAD9A850(a2, a3, 2);
    sub_1AACD7C50(v10, v11, v12);
    if (qword_1EB422C10 == -1)
    {
LABEL_39:
      if (*(qword_1EB432210 + 16))
      {
        v18 = *(qword_1EB432210 + 32);

        sub_1AAD0E818(v10, v11, v12);
        sub_1AAD04750(v9, *(&v9 + 1), v27);

        v19 = v10;
        v20 = v11;
        v21 = v12;
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_49:
    swift_once();
    goto LABEL_39;
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a2 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == v10 && v11 == *v16;
      if (v17 || (sub_1AAF904F4() & 1) != 0)
      {
        break;
      }

      ++v15;
      v16 += 2;
      if (v14 == v15)
      {
        goto LABEL_20;
      }
    }

    v29 = v15;
    sub_1AAD9A850(a2, a3, 2);
    sub_1AACD7C50(v10, v11, 2);
    sub_1AAD9E228(&v29, &v30);
    sub_1AAD0E818(v10, v11, 2);
    sub_1AAD04750(v9, *(&v9 + 1), v27);

    sub_1AAD0E818(v10, v11, 2);
    sub_1AAD9A828(a2, a3, 2);
    v18 = v30;
    v34 = v31;
    v35 = v32;
    v25 = v33;
    goto LABEL_43;
  }

LABEL_20:
  sub_1AAD9A850(a2, a3, 2);
  sub_1AACD7C50(v10, v11, 2);
  if (qword_1EB422C10 != -1)
  {
LABEL_51:
    swift_once();
  }

  if (*(qword_1EB432210 + 16))
  {
    v18 = *(qword_1EB432210 + 32);

    sub_1AAD0E818(v10, v11, 2);
    sub_1AAD04750(v9, *(&v9 + 1), v27);

    v19 = v10;
    v20 = v11;
    v21 = 2;
LABEL_41:
    sub_1AAD0E818(v19, v20, v21);
    goto LABEL_42;
  }

  __break(1u);
LABEL_53:
  result = sub_1AAF904E4();
  __break(1u);
  return result;
}

uint64_t sub_1AAD886A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AAD9C1D8(&qword_1EB424118, type metadata accessor for RenderTrigger);
  sub_1AAF8D0C4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1AAD88774(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CalendarCache.Key(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1AAD9BAD4();
  v40 = a2;
  result = sub_1AAF90394();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v41 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v24 = *(v39 + 72);
      v25 = v23 + v24 * v22;
      if (v40)
      {
        sub_1AAD9BBD8(v25, v7, type metadata accessor for CalendarCache.Key);
      }

      else
      {
        sub_1AAD9BB70(v25, v7, type metadata accessor for CalendarCache.Key);
      }

      v26 = v7;
      v27 = *(*(v41 + 56) + 8 * v22);
      sub_1AAF90694();
      v28 = v26;
      sub_1AACED800(v42);
      result = sub_1AAF906F4();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1AAD9BBD8(v28, *(v10 + 48) + v24 * v18, type metadata accessor for CalendarCache.Key);
      *(*(v10 + 56) + 8 * v18) = v27;
      v7 = v28;
      ++*(v10 + 16);
      v8 = v41;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1AAD88ADC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1EB424218, sub_1AAD9B96C);
  v49 = a2;
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v47 = (v5 + 64);
    v48 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v45 = v3;
    v46 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
LABEL_15:
      v23 = v18 | (v8 << 6);
      v51 = v19;
      if (v49)
      {
        v24 = *(v5 + 56);
        v25 = (*(v5 + 48) + 72 * v23);
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[2];
        v30 = *(v25 + 1);
        v29 = *(v25 + 2);
        v54 = *(v25 + 3);
        v53 = v25[32];
        v31 = *(v25 + 5);
        v56 = *(v25 + 6);
        v55 = *(v25 + 7);
        v57 = v25[64];
        v52 = *(v24 + 16 * v23);
      }

      else
      {
        v32 = *(v5 + 48) + 72 * v23;
        v33 = *(v32 + 16);
        v34 = *(v32 + 32);
        v35 = *(v32 + 48);
        v57 = *(v32 + 64);
        v60 = v57;
        v59 = v35;
        v36 = *v32;
        v58[1] = v33;
        v58[2] = v34;
        v58[0] = v36;
        v52 = *(*(v5 + 56) + 16 * v23);
        v31 = *(&v34 + 1);
        v55 = *(&v59 + 1);
        v56 = v59;
        v30 = *(&v36 + 1);
        v54 = *(&v33 + 1);
        v29 = v33;
        v53 = v34;
        v28 = BYTE2(v36);
        v27 = BYTE1(v36);
        v26 = v36;
        sub_1AAD9B9C0(v58, v61);
      }

      sub_1AAF90694();
      v50 = v26;
      MEMORY[0x1AC5992C0](v26);
      sub_1AAF8E7A4();
      sub_1AAF906B4();
      MEMORY[0x1AC5992C0](v28);
      sub_1AAF0A240(v58, v30, v29, v54, v53);
      sub_1AAF04AC0(v58, v31, v56, v55, v57);
      result = sub_1AAF906F4();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v12 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v14 = v30;
        v15 = v29;
        v16 = v28;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v12 + 8 * v39);
          if (v43 != -1)
          {
            v13 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v38) & ~*(v12 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v14 = v30;
      v15 = v29;
      v16 = v28;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = *(v7 + 48) + 72 * v13;
      *v17 = v50;
      *(v17 + 1) = v27;
      *(v17 + 2) = v16;
      *(v17 + 8) = v14;
      *(v17 + 16) = v15;
      *(v17 + 24) = v54;
      *(v17 + 32) = v53;
      *(v17 + 40) = v31;
      *(v17 + 48) = v56;
      *(v17 + 56) = v55;
      *(v17 + 64) = v57;
      *(*(v7 + 56) + 16 * v13) = v52;
      ++*(v7 + 16);
      v5 = v48;
      v11 = v51;
    }

    v20 = v8;
    result = v47;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v46)
      {
        break;
      }

      v22 = v47[v8];
      ++v20;
      if (v22)
      {
        v18 = __clz(__rbit64(v22));
        v19 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v47, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v47 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD88F18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9AE40(0, qword_1EB423F80, MEMORY[0x1E697A3A8]);
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1AAF90684();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AAD891B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BD98();
  v36 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_1AAD9BDF8(v26, &v37);
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      result = sub_1AAF906F4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD89460(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1EB424138, sub_1AAD68514);
  v30 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8ECB4();
      result = sub_1AAF906F4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD89710(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1EB424130, sub_1AAD80D58);
  v33 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v34 = *(*(v5 + 56) + 8 * v22);
      if ((v33 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](*(v23 + 16));
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v23 + 32;
        do
        {
          sub_1AAD80DAC(v25, v41);
          sub_1AAD80DAC(v41, v38);
          if (v40)
          {
            v36[0] = v38[0];
            v36[1] = v38[1];
            v37 = v39;
            MEMORY[0x1AC5992C0](1);
            sub_1AAF90014();
            sub_1AAD80E08(v36);
          }

          else
          {
            v26 = *&v38[0];
            MEMORY[0x1AC5992C0](0);
            MEMORY[0x1AC5992C0](v26);
          }

          sub_1AAD80E5C(v41);
          v25 += 48;
          --v24;
        }

        while (v24);
      }

      result = sub_1AAF906F4();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v23;
      v12 = v35;
      *(*(v7 + 56) + 8 * v18) = v34;
      ++*(v7 + 16);
      v5 = v32;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v35 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD89A64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1EB424188, sub_1AAD80D58);
  v33 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v34 = (v12 - 1) & v12;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v35 = *(*(v5 + 56) + 16 * v22);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](*(v23 + 16));
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v23 + 32;
        do
        {
          sub_1AAD80DAC(v25, v41);
          sub_1AAD80DAC(v41, v38);
          if (v40)
          {
            v36[0] = v38[0];
            v36[1] = v38[1];
            v37 = v39;
            MEMORY[0x1AC5992C0](1);
            sub_1AAF90014();
            sub_1AAD80E08(v36);
          }

          else
          {
            v26 = *&v38[0];
            MEMORY[0x1AC5992C0](0);
            MEMORY[0x1AC5992C0](v26);
          }

          sub_1AAD80E5C(v41);
          v25 += 48;
          --v24;
        }

        while (v24);
      }

      result = sub_1AAF906F4();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v23;
      *(*(v7 + 56) + 16 * v18) = v35;
      ++*(v7 + 16);
      v5 = v32;
      v12 = v34;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v34 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD89DD4(uint64_t a1, char a2, unint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1AAD9BF84(0, a3, sub_1AAD80D58);
  v37 = a2;
  result = sub_1AAF90394();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v3;
    v36 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_16:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v6 + 48) + 8 * v24);
      v26 = *(*(v6 + 56) + 8 * v24);
      if ((v37 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](*(v25 + 16));
      v27 = *(v25 + 16);
      if (v27)
      {
        v28 = v25 + 32;
        do
        {
          sub_1AAD80DAC(v28, v44);
          sub_1AAD80DAC(v44, v41);
          if (v43)
          {
            v39[0] = v41[0];
            v39[1] = v41[1];
            v40 = v42;
            MEMORY[0x1AC5992C0](1);
            sub_1AAF90014();
            sub_1AAD80E08(v39);
          }

          else
          {
            v29 = *&v41[0];
            MEMORY[0x1AC5992C0](0);
            MEMORY[0x1AC5992C0](v29);
          }

          sub_1AAD80E5C(v44);
          v28 += 48;
          --v27;
        }

        while (v27);
      }

      result = sub_1AAF906F4();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v16) >> 6;
        v20 = v26;
        while (++v18 != v31 || (v30 & 1) == 0)
        {
          v32 = v18 == v31;
          if (v18 == v31)
          {
            v18 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v18);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
      v20 = v26;
LABEL_8:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + 8 * v19) = v25;
      *(*(v8 + 56) + 8 * v19) = v20;
      ++*(v8 + 16);
      v6 = v36;
      v13 = v38;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v38 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v37 & 1) == 0)
    {

      v4 = v35;
      goto LABEL_39;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_39:
  *v4 = v8;
  return result;
}

uint64_t sub_1AAD8A130(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9AE40(0, &qword_1EB424178, sub_1AAD9AABC);
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_1AAD9AB20(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_1AAF8FFE4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8A400(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BD38();
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1AAF90684();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8A664(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1AAF8CBA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1AAD9BC9C();
  v40 = a2;
  result = sub_1AAF90394();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1AAD9C1D8(&qword_1ED9B1650, MEMORY[0x1E6969AE8]);
      result = sub_1AAF8F474();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1AAD8AA18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9AC64();
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1AAF90684();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8AC68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B2938, sub_1AACB62F8);
  v34 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v35 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      result = sub_1AAF906F4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v35;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8AF44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B0C60, sub_1AACFDD38);
  v34 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      result = sub_1AAF906F4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8B208(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9B67C();
  v33 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      result = sub_1AAF906F4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8B4A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9B79C();
  v38 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_1AAD9B194(v27, &v39);
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      result = sub_1AAF906F4();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8B764(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9B7FC();
  v40 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v30 = v25[4];
      if ((v40 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      result = sub_1AAF906F4();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v26;
      v17[1] = v27;
      v17[2] = v28;
      v17[3] = v29;
      v17[4] = v30;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8BA38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9B73C();
  v34 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      result = sub_1AAF906F4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8BCD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AACF5940(0, &qword_1ED9AEEE0, type metadata accessor for SgArea.Points, sub_1AAD9BA1C);
  v43 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_70;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v43 & 1) == 0)
        {

          v3 = v41;
          goto LABEL_68;
        }

        v40 = 1 << *(v5 + 32);
        v3 = v41;
        if (v40 >= 64)
        {
          bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v40;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 48 * v21;
      v24 = *v23;
      v46 = *(v23 + 8);
      v25 = *(v23 + 16);
      v45 = *(v23 + 24);
      v44 = *(v23 + 32);
      v26 = *(v23 + 40);
      v27 = *(v22 + 8 * v21);
      if ((v43 & 1) == 0)
      {
        sub_1AAD9BA70(v24, v46, v25, v45, v44, *(v23 + 40));
      }

      sub_1AAF90694();
      if ((v25 & 0x8000000000000000) == 0)
      {
        MEMORY[0x1AC5992C0](0);
        if (!v25)
        {
          v28 = 0;
LABEL_24:
          MEMORY[0x1AC5992C0](v28);
          if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v29 = v24;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_27;
        }

        if (v25 == 1)
        {
          v28 = 1;
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      MEMORY[0x1AC5992C0](1);
      if (v25 > 0xFBu)
      {
        sub_1AAF906B4();
        goto LABEL_40;
      }

      sub_1AAF906B4();
      if ((v25 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        sub_1AACDC020(v47, v24, v46, v25 & 1);
        goto LABEL_40;
      }

      MEMORY[0x1AC5992C0](0);
      if (v25)
      {
        if (v25 != 1)
        {
          MEMORY[0x1AC5992C0](2);
          sub_1AAF8F6C4();
          goto LABEL_40;
        }

        v30 = 1;
      }

      else
      {
        v30 = 0;
      }

      MEMORY[0x1AC5992C0](v30);
      if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v31 = v24;
      }

      else
      {
        v31 = 0;
      }

      MEMORY[0x1AC5992F0](v31);
LABEL_40:
      if (v26 < 0xFC)
      {
        sub_1AAF906B4();
        if ((v26 & 0x80) == 0)
        {
          MEMORY[0x1AC5992C0](0);
          if (!v26)
          {
            v32 = 0;
            goto LABEL_57;
          }

          if (v26 == 1)
          {
            v32 = 1;
LABEL_57:
            MEMORY[0x1AC5992C0](v32);
            if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v29 = v45;
            }

            else
            {
              v29 = 0;
            }

LABEL_27:
            MEMORY[0x1AC5992F0](v29);
            goto LABEL_47;
          }

LABEL_28:
          MEMORY[0x1AC5992C0](2);
          sub_1AAF8F6C4();
          goto LABEL_47;
        }

        MEMORY[0x1AC5992C0](1);
        sub_1AACDC020(v47, v45, v44, v26 & 1);
      }

      else
      {
        sub_1AAF906B4();
      }

LABEL_47:
      result = sub_1AAF906F4();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v27;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_70:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 48 * v15;
      *v17 = v24;
      *(v17 + 8) = v46;
      *(v17 + 16) = v25;
      *(v17 + 24) = v45;
      *(v17 + 32) = v44;
      *(v17 + 40) = v26;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v42;
    }
  }

LABEL_68:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8C184(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AACF5940(0, &qword_1ED9B09E0, type metadata accessor for SgLine.Points, sub_1AAD9B85C);
  v50 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v48 = v2;
    v49 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v20 = v8;
        while (1)
        {
          v8 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_88;
          }

          if (v8 >= v13)
          {
            break;
          }

          v21 = v9[v8];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v12 = (v21 - 1) & v21;
            goto LABEL_15;
          }
        }

        if ((v50 & 1) == 0)
        {

          v3 = v48;
          goto LABEL_86;
        }

        v47 = 1 << *(v5 + 32);
        v3 = v48;
        if (v47 >= 64)
        {
          bzero(v9, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v47;
        }

        *(v5 + 16) = 0;
        goto LABEL_85;
      }

      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      if (v50)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 72 * v22;
        v52 = *(v24 + 48);
        v53 = *v24;
        v54 = *(v24 + 32);
        v55 = *(v24 + 16);
        v25 = *(v24 + 64);
        v51 = *(v23 + 8 * v22);
      }

      else
      {
        v26 = *(v5 + 48) + 72 * v22;
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v29 = *(v26 + 48);
        v60 = *(v26 + 64);
        v59 = v29;
        v56 = *v26;
        v57 = v28;
        v58 = v27;
        v30 = *(*(v5 + 56) + 8 * v22);
        sub_1AAD9B8B0(&v56, v61);
        v51 = v30;

        v52 = v59;
        v53 = v56;
        v54 = v58;
        v55 = v57;
        v25 = v60;
      }

      sub_1AAF90694();
      if ((*(&v54 + 1) & 0x8000000000000000) != 0)
      {
        break;
      }

      MEMORY[0x1AC5992C0](0);
      if (v55)
      {
        LOBYTE(v31) = v25;
        if (v55 != 1)
        {
          goto LABEL_28;
        }

        MEMORY[0x1AC5992C0](1);
        v32 = v53;
LABEL_65:
        if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v32;
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x1AC5992F0](v39);
        goto LABEL_69;
      }

      MEMORY[0x1AC5992C0](0);
      if ((v53 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v33 = v53;
      }

      else
      {
        v33 = 0;
      }

      MEMORY[0x1AC5992F0](v33);
      LOBYTE(v31) = v25;
LABEL_69:
      result = sub_1AAF906F4();
      v40 = -1 << *(v7 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v14 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v17 = v54;
        v16 = v55;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v14 + 8 * v42);
          if (v46 != -1)
          {
            v15 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_88:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v41) & ~*(v14 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v17 = v54;
      v16 = v55;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 72 * v15;
      *(v18 + 16) = v16;
      *(v18 + 32) = v17;
      *v18 = v53;
      *(v18 + 48) = v52;
      *(v18 + 64) = v31;
      *(*(v7 + 56) + 8 * v15) = v51;
      ++*(v7 + 16);
      v5 = v49;
    }

    MEMORY[0x1AC5992C0](1);
    if (v55 <= 0xFBu)
    {
      sub_1AAF906B4();
      if ((v55 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        sub_1AACDC020(&v56, v53, *(&v53 + 1), v55 & 1);
      }

      else
      {
        MEMORY[0x1AC5992C0](0);
        if (v55)
        {
          v31 = v25;
          if (v55 == 1)
          {
            MEMORY[0x1AC5992C0](1);
            if ((v53 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v34 = v53;
            }

            else
            {
              v34 = 0;
            }

            MEMORY[0x1AC5992F0](v34);
          }

          else
          {
            MEMORY[0x1AC5992C0](2);
            sub_1AAF8F6C4();
          }

LABEL_42:
          if (BYTE8(v54) < 0xFCu)
          {
            sub_1AAF906B4();
            if ((BYTE8(v54) & 0x80) == 0)
            {
              MEMORY[0x1AC5992C0](0);
              if (BYTE8(v54))
              {
                if (BYTE8(v54) != 1)
                {
                  MEMORY[0x1AC5992C0](2);
                  sub_1AAF8F6C4();
                  goto LABEL_56;
                }

                v36 = 1;
              }

              else
              {
                v36 = 0;
              }

              MEMORY[0x1AC5992C0](v36);
              if ((*(&v55 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v37 = *(&v55 + 1);
              }

              else
              {
                v37 = 0;
              }

              MEMORY[0x1AC5992F0](v37);
              goto LABEL_56;
            }

            MEMORY[0x1AC5992C0](1);
            sub_1AACDC020(&v56, *(&v55 + 1), v54, BYTE8(v54) & 1);
          }

          else
          {
            sub_1AAF906B4();
          }

LABEL_56:
          if (v31 >= 0xFC)
          {
            sub_1AAF906B4();
            goto LABEL_69;
          }

          sub_1AAF906B4();
          if ((v31 & 0x80) != 0)
          {
            MEMORY[0x1AC5992C0](1);
            sub_1AACDC020(&v56, v52, *(&v52 + 1), v31 & 1);
            goto LABEL_69;
          }

          MEMORY[0x1AC5992C0](0);
          if (v31)
          {
            if (v31 != 1)
            {
LABEL_28:
              MEMORY[0x1AC5992C0](2);
              sub_1AAF8F6C4();
              goto LABEL_69;
            }

            v38 = 1;
          }

          else
          {
            v38 = 0;
          }

          MEMORY[0x1AC5992C0](v38);
          v32 = v52;
          goto LABEL_65;
        }

        MEMORY[0x1AC5992C0](0);
        if ((v53 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v35 = v53;
        }

        else
        {
          v35 = 0;
        }

        MEMORY[0x1AC5992F0](v35);
      }
    }

    else
    {
      sub_1AAF906B4();
    }

    v31 = v25;
    goto LABEL_42;
  }

LABEL_85:

LABEL_86:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8C7CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9B310();
  v37 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      if ((v37 & 1) == 0)
      {
        sub_1AACD7304(v23, v24, v25);
      }

      result = sub_1AAF90684();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 24) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8CA7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9AD7A8, sub_1AAD9B370);
  v39 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v38 = result;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v21 + 8 * v20);
      if ((v39 & 1) == 0)
      {
        sub_1AACD7304(*v22, *(v22 + 8), *(v22 + 16));
      }

      v7 = v38;
      sub_1AAF90694();
      result = sub_1AAF906F4();
      v28 = -1 << *(v38 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v38 + 48) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 24) = v26;
      *(*(v38 + 56) + 8 * v15) = v27;
      ++*(v38 + 16);
      v5 = v37;
      v12 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8CD74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9B90C();
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1AAF90684();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8CFF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9B6DC();
  v33 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1AAF90694();
      sub_1AAF8F6C4();
      result = sub_1AAF906F4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AAD8D288(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ChartContentRenderContext.Bins(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1AACF5940(0, &qword_1ED9B0C58, type metadata accessor for ChartContentRenderContext.Bins, sub_1AACFDD38);
  v36 = a2;
  result = sub_1AAF90394();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1AAD9BBD8(v24, v37, type metadata accessor for ChartContentRenderContext.Bins);
      }

      else
      {
        sub_1AAD9BB70(v24, v37, type metadata accessor for ChartContentRenderContext.Bins);
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v22);
      result = sub_1AAF906F4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1AAD9BBD8(v37, *(v9 + 56) + v23 * v17, type metadata accessor for ChartContentRenderContext.Bins);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}