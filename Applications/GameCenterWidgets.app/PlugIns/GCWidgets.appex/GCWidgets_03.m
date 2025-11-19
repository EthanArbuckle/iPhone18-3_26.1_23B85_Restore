uint64_t sub_10004E1BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000388C(&qword_100096798, &qword_100075C98);
  v41 = a2;
  result = sub_100072F0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v42 = *(v27 + 8);
      if ((v41 & 1) == 0)
      {

        v29 = v28;
      }

      v30 = *(v8 + 40);
      sub_10007303C();
      sub_100072B6C();
      result = sub_10007305C();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v42;
      ++*(v8 + 16);
      v5 = v40;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10004E478(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000388C(&qword_100094D18, &unk_100073E60);
  v39 = a2;
  result = sub_100072F0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_10007303C();
      sub_100072B6C();
      result = sub_10007305C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10004E71C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100072DCC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10007303C();

      sub_100072B6C();
      v13 = sub_10007305C();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004E8CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100072DCC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10007303C();

      sub_100072B6C();
      v13 = sub_10007305C();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004EA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10004DCC0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10004DEFC(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10004DCC0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_10007302C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10004EF04();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void sub_10004EC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10004DCC0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10004E1BC(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10004DCC0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_10007302C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10004F07C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * v13;
    v26 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;

    return;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v24[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v24[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

uint64_t sub_10004ED8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004DCC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10004E478(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10004DCC0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_10007302C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10004F1F0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void *sub_10004EF04()
{
  v1 = v0;
  sub_10000388C(&qword_100096780, &qword_100075C80);
  v2 = *v0;
  v3 = sub_100072EFC();
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

id sub_10004F07C()
{
  v1 = v0;
  sub_10000388C(&qword_100096798, &qword_100075C98);
  v2 = *v0;
  v3 = sub_100072EFC();
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
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;

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

id sub_10004F1F0()
{
  v1 = v0;
  sub_10000388C(&qword_100094D18, &unk_100073E60);
  v2 = *v0;
  v3 = sub_100072EFC();
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

unint64_t sub_10004F35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_100096780, &qword_100075C80);
    v3 = sub_100072F1C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10004DCC0(v5, v6);
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

unint64_t sub_10004F470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_100094D18, &unk_100073E60);
    v3 = sub_100072F1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10004DCC0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10004F574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_100096798, &qword_100075C98);
    v3 = sub_100072F1C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v7;
      result = sub_10004DCC0(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_10004F688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_100096788, &qword_100075C88);
    v3 = sub_100072F1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004C94(v4, &v13, &qword_100096790, &qword_100075C90);
      v5 = v13;
      v6 = v14;
      result = sub_10004DCC0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10003B36C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10004F7B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000388C(&qword_1000967A0, &qword_100075CA0);
    v3 = sub_100072F1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004C94(v4, v13, &qword_1000967A8, qword_100075CA8);
      result = sub_10004DD38(v13);
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
      result = sub_10003B36C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10004F908(uint64_t a1, uint64_t a2)
{
  v4 = sub_100071F9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004F988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100071F9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ViewGeometryAnalyzer()
{
  result = qword_100096808;
  if (!qword_100096808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004FA44()
{
  result = sub_100071F9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_10004FACC()
{
  result = 0.0;
  xmmword_100099A20 = 0u;
  *algn_100099A30 = 0u;
  return result;
}

double sub_10004FAE0@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100094730 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_100099A20;
  v2 = *algn_100099A30;
  *a1 = xmmword_100099A20;
  a1[1] = v2;
  return result;
}

double sub_10004FB48(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_10004FB90@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10004FC7C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10004FDAC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10004FE10;
  a2[1] = v7;
  return result;
}

uint64_t sub_10004FC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewGeometryAnalyzer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FCE0()
{
  v1 = *(type metadata accessor for ViewGeometryAnalyzer() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100071F9C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004FDAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewGeometryAnalyzer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FE10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for ViewGeometryAnalyzer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_1000726DC();
  result = sub_100071F4C();
  *a1 = v4;
  *(a1 + 8) = 256;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

unint64_t sub_10004FEB8()
{
  result = qword_100096840;
  if (!qword_100096840)
  {
    sub_1000038D4(&qword_100096848, qword_100075D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096840);
  }

  return result;
}

uint64_t sub_10004FF1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6E6F697461657263;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0xD000000000000011;
    v12 = 0x80000001000775D0;
    if (a1 != 6)
    {
      v11 = 0xD00000000000001ALL;
      v12 = 0x80000001000775F0;
    }

    v13 = 0xE800000000000000;
    v14 = 0x656C746974627573;
    if (a1 != 4)
    {
      v14 = 0x7374726F70707573;
      v13 = 0xEE00656461637241;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x4449656C646E7562;
    if (a1 != 2)
    {
      v6 = 0x656C746974;
      v5 = 0xE500000000000000;
    }

    v7 = 0xE600000000000000;
    v8 = 0x44496D616461;
    if (!a1)
    {
      v8 = 0x6E6F697461657263;
      v7 = 0xEC00000065746144;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001000775D0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x80000001000775F0;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x656C746974627573)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0xEE00656461637241;
      if (v9 != 0x7374726F70707573)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v9 != 0x4449656C646E7562)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xE500000000000000;
      v3 = 0x656C746974;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v9 != 0x44496D616461)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v9 != v3)
    {
LABEL_44:
      v15 = sub_100072FFC();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_1000501A0(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v105 = a2;
  v2 = type metadata accessor for AppMetadata();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v103 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100071C9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v104 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v98 = &v96 - v10;
  __chkstk_darwin(v11);
  v13 = &v96 - v12;
  __chkstk_darwin(v14);
  v16 = &v96 - v15;
  __chkstk_darwin(v17);
  v19 = &v96 - v18;
  __chkstk_darwin(v20);
  v109 = &v96 - v21;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = [v23 URLsForDirectory:13 inDomains:1];

  v25 = sub_100072C4C();
  if (!*(v25 + 16))
  {

    return 0;
  }

  v107 = v6;
  v27 = *(v6 + 16);
  v26 = v6 + 16;
  v28 = v25 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v100 = v27;
  v101 = v5;
  v99 = v26;
  v27(v109, v28, v5);

  sub_100071C4C();
  v29 = v2;
  v30 = v108;
  v31 = (v108 + *(v2 + 20));
  v32 = *v31;
  v33 = v31[1];

  sub_100071C4C();

  v106 = v13;
  sub_100071C5C();
  v34 = [v22 defaultManager];
  sub_100071C7C();
  v35 = sub_100072B2C();

  LOBYTE(v32) = [v34 fileExistsAtPath:v35];

  v36 = v30;
  v102 = v19;
  v97 = v16;
  if ((v32 & 1) == 0)
  {
    v37 = v22;
    if (qword_1000946F8 != -1)
    {
      swift_once();
    }

    v38 = sub_100071E7C();
    v39 = sub_100007DE8(v38, qword_100099998);
    v40 = v98;
    v41 = v101;
    v100(v98, v16, v101);
    v96 = v39;
    v42 = sub_100071E5C();
    v43 = sub_100072CFC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v29;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v111 = v46;
      *v45 = 136315138;
      sub_1000546C0(&qword_100094C00, &type metadata accessor for URL);
      v47 = sub_100072FEC();
      v49 = v48;
      v105 = *(v107 + 8);
      v105(v40, v41);
      v50 = sub_100034D20(v47, v49, &v111);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Creating directory for app metadata at %s", v45, 0xCu);
      sub_100007F50(v46);

      v29 = v44;
      v16 = v97;
    }

    else
    {

      v105 = *(v107 + 8);
      v105(v40, v41);
    }

    v51 = [v37 defaultManager];
    sub_100071C3C(v52);
    v54 = v53;
    v111 = 0;
    v55 = [v51 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:&v111];

    v56 = v102;
    if (v55)
    {
      v57 = v111;
      v36 = v108;
      goto LABEL_11;
    }

    v85 = v111;
    v86 = sub_100071C1C();

    swift_willThrow();
    swift_errorRetain();
    v87 = sub_100071E5C();
    v88 = sub_100072CFC();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v111 = v90;
      *v89 = 136315138;
      v110 = v86;
      swift_errorRetain();
      sub_10000388C(&qword_100094BF8, qword_100073CB0);
      v91 = sub_100072B4C();
      v93 = sub_100034D20(v91, v92, &v111);

      *(v89 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v87, v88, "Unable to create metadata directory %s.", v89, 0xCu);
      sub_100007F50(v90);
    }

    v94 = v105;
    v105(v106, v41);
    v94(v16, v41);
    v94(v56, v41);
    v94(v109, v41);
    return 0;
  }

LABEL_11:
  v59 = v103;
  v58 = v104;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v60 = sub_100071E7C();
  v61 = sub_100007DE8(v60, qword_100099998);
  sub_10005402C(v36, v59);
  v62 = v106;
  v63 = v101;
  v100(v58, v106, v101);
  v105 = v61;
  v64 = sub_100071E5C();
  v65 = sub_100072CFC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = v59;
    v67 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v67 = 136315394;
    v68 = (v66 + *(v29 + 20));
    v69 = *v68;
    v70 = v68[1];

    sub_100054090(v66);
    v71 = sub_100034D20(v69, v70, &v111);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2080;
    sub_1000546C0(&qword_100094C00, &type metadata accessor for URL);
    v72 = sub_100072FEC();
    v74 = v73;
    v75 = *(v107 + 8);
    v75(v58, v63);
    v76 = sub_100034D20(v72, v74, &v111);
    v62 = v106;

    *(v67 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v64, v65, "Encoding %s's metadata and writing to %s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v75 = *(v107 + 8);
    v75(v58, v63);
    sub_100054090(v59);
  }

  v77 = sub_100071BEC();
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  sub_100071BDC();
  sub_1000546C0(&qword_100096850, type metadata accessor for AppMetadata);
  v80 = sub_100071BCC();
  v81 = v97;
  v82 = v80;
  v84 = v83;

  sub_100071CDC();
  sub_1000086B8(v82, v84);
  v75(v62, v63);
  v75(v81, v63);
  v75(v102, v63);
  v75(v109, v63);
  return 1;
}

uint64_t sub_100050D68(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t), int a5, void (*a6)(void), uint64_t a7)
{
  v208 = a2;
  v213 = a5;
  v211 = a3;
  v212 = a4;
  v207 = a1;
  v9 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v188 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v190 = &v187 - v13;
  __chkstk_darwin(v14);
  v194 = &v187 - v15;
  __chkstk_darwin(v16);
  v193 = &v187 - v17;
  __chkstk_darwin(v18);
  v196 = &v187 - v19;
  v20 = sub_100071C9C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v191 = &v187 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v187 = &v187 - v25;
  __chkstk_darwin(v26);
  v189 = &v187 - v27;
  __chkstk_darwin(v28);
  v198 = &v187 - v29;
  __chkstk_darwin(v30);
  v195 = &v187 - v31;
  __chkstk_darwin(v32);
  v192 = &v187 - v33;
  __chkstk_darwin(v34);
  v201 = &v187 - v35;
  __chkstk_darwin(v36);
  v214 = &v187 - v37;
  __chkstk_darwin(v38);
  v40 = &v187 - v39;
  __chkstk_darwin(v41);
  v43 = &v187 - v42;
  __chkstk_darwin(v44);
  v46 = &v187 - v45;
  __chkstk_darwin(v47);
  v49 = &v187 - v48;
  v210 = objc_opt_self();
  v50 = [v210 defaultManager];
  v51 = [v50 URLsForDirectory:13 inDomains:1];

  v52 = sub_100072C4C();
  if (!*(v52 + 16))
  {

    return (a6)(0, 0);
  }

  v202 = a7;
  v203 = a6;
  v206 = v21;
  v54 = *(v21 + 16);
  v53 = v21 + 16;
  v55 = v52 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
  v197 = v20;
  v200 = v53;
  v199 = v54;
  v54(v49, v55, v20);

  v205 = v49;
  sub_100071C4C();
  v56 = type metadata accessor for AppMetadata();
  v57 = v209;
  v58 = &v209[v56[5]];
  v59 = *v58;
  v60 = *(v58 + 1);

  v208 = v46;
  sub_100071C4C();

  sub_100071C4C();
  LOBYTE(v220) = v213;
  v220 = sub_100072B4C();
  v221 = v61;
  v223._countAndFlagsBits = 95;
  v223._object = 0xE100000000000000;
  sub_100072B7C(v223);
  v217 = v211;
  v224._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v224);

  v225._countAndFlagsBits = 120;
  v225._object = 0xE100000000000000;
  sub_100072B7C(v225);
  v217 = v212;
  v226._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v226);

  v227._countAndFlagsBits = 0x636965682ELL;
  v227._object = 0xE500000000000000;
  sub_100072B7C(v227);
  v62 = v214;
  sub_100071C4C();

  v63 = v210;
  v64 = [v210 defaultManager];
  sub_100071C7C();
  v65 = sub_100072B2C();

  LODWORD(v59) = [v64 fileExistsAtPath:v65];

  v204 = v40;
  if (v59)
  {
    if (qword_1000946F8 != -1)
    {
      swift_once();
    }

    v210 = v43;
    v66 = sub_100071E7C();
    sub_100007DE8(v66, qword_100099998);
    v67 = v201;
    v68 = v62;
    v69 = v62;
    v70 = v197;
    v199(v201, v69, v197);
    v71 = sub_100071E5C();
    v72 = sub_100072CFC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v220 = v74;
      *v73 = 136315138;
      sub_1000546C0(&qword_100094C00, &type metadata accessor for URL);
      v75 = sub_100072FEC();
      v76 = v67;
      v78 = v77;
      v79 = *(v206 + 8);
      v79(v76, v70);
      v80 = sub_100034D20(v75, v78, &v220);

      *(v73 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v71, v72, "Fetching cached image from %s", v73, 0xCu);
      sub_100007F50(v74);
    }

    else
    {

      v79 = *(v206 + 8);
      v79(v67, v70);
    }

    v101 = sub_100071C7C();
    v203(v101);

    v79(v68, v70);
    v79(v204, v70);
    v79(v210, v70);
    v79(v208, v70);
    return (v79)(v205, v70);
  }

  v82 = [v63 defaultManager];
  sub_100071C7C();
  v83 = sub_100072B2C();

  v84 = [v82 fileExistsAtPath:v83];

  v85 = v197;
  if (v84)
  {
    goto LABEL_18;
  }

  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v86 = sub_100071E7C();
  v87 = sub_100007DE8(v86, qword_100099998);
  v88 = v192;
  v199(v192, v40, v85);
  v89 = sub_100071E5C();
  v90 = sub_100072CFC();
  v91 = os_log_type_enabled(v89, v90);
  v92 = v206;
  if (v91)
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v201 = v87;
    v95 = v94;
    v220 = v94;
    *v93 = 136315138;
    sub_1000546C0(&qword_100094C00, &type metadata accessor for URL);
    v96 = sub_100072FEC();
    v97 = v88;
    v99 = v98;
    v207 = *(v92 + 8);
    v207(v97, v85);
    v100 = sub_100034D20(v96, v99, &v220);

    *(v93 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v89, v90, "Creating directory for cached images at %s", v93, 0xCu);
    sub_100007F50(v95);
  }

  else
  {

    v207 = *(v92 + 8);
    v207(v88, v85);
  }

  v102 = v205;
  v103 = v203;
  v104 = [v210 defaultManager];
  v105 = v204;
  sub_100071C3C(&var18);
  v107 = v106;
  v220 = 0;
  v108 = [v104 createDirectoryAtURL:v106 withIntermediateDirectories:1 attributes:0 error:&v220];

  if (v108)
  {
    v109 = v220;
    v57 = v209;
LABEL_18:
    v210 = v43;
    v110 = [objc_opt_self() mainScreen];
    [v110 scale];

    v111 = v57;
    v112 = *&v57[v56[10]];
    v113 = objc_allocWithZone(AMSMediaArtwork);
    isa = sub_100072ACC().super.isa;
    v115 = [v113 initWithDictionary:isa];

    v116 = v213;
    if (v213 && v213 == 1)
    {
      goto LABEL_30;
    }

    v128 = sub_100072FFC();

    if (v128)
    {
      goto LABEL_31;
    }

    if (v116 > 1u)
    {
LABEL_30:
    }

    else
    {
      v129 = sub_100072FFC();

      if ((v129 & 1) == 0)
      {
        if (!*&v111[v56[11]])
        {
          v130 = 1;
LABEL_40:
          v138 = v208;
          v139 = v210;
          goto LABEL_41;
        }

LABEL_32:
        v131 = v115;
        if (v116 != 1)
        {
          v134 = sub_100072FFC();

          if (v134)
          {
LABEL_39:
            v136 = objc_allocWithZone(AMSMediaArtwork);
            v137 = sub_100072ACC().super.isa;
            v115 = [v136 initWithDictionary:v137];

            v130 = 0;
            goto LABEL_40;
          }

          if (v116 < 2u)
          {
            v135 = sub_100072FFC();

            if ((v135 & 1) == 0)
            {
              v130 = 0;
              v138 = v208;
              v139 = v210;
              v115 = v131;
LABEL_41:
              v140 = v194;
              sub_100071DBC();
              v142 = v141;
              sub_100071DBC();
              v144 = [v115 URLWithSize:AMSMediaArtworkCropStyleBoundedBox cropStyle:AMSMediaArtworkFormatHEIC format:{v142, v143}];
              v145 = v196;
              v209 = v115;
              if (v144)
              {
                v146 = v193;
                v147 = v144;
                sub_100071C6C();

                v148 = 0;
              }

              else
              {
                v148 = 1;
                v146 = v193;
              }

              v149 = v206;
              (*(v206 + 56))(v146, v148, 1, v85);
              sub_100053F4C(v146, v145);
              sub_100053FBC(v145, v140);
              v212 = v149[6];
              if (v212(v140, 1, v85) == 1)
              {
                sub_100012BA4(v140);
                (v203)(0, 0);

                sub_100012BA4(v145);
                v132 = v149[1];
                v132(v214, v85);
                v132(v204, v85);
                v132(v139, v85);
                v133 = v138;
                goto LABEL_46;
              }

              v150 = v149[4];
              v151 = v195;
              v150(v195, v140, v85);
              v199(v198, v151, v85);
              if (v130)
              {
                goto LABEL_66;
              }

              v152 = v213;
              if (v213 && v213 == 1)
              {
              }

              else
              {
                v153 = sub_100072FFC();

                if ((v153 & 1) == 0)
                {
                  if (v152 < 2u)
                  {
                    v163 = sub_100072FFC();

                    if ((v163 & 1) == 0)
                    {
LABEL_66:
                      if (qword_1000946F8 != -1)
                      {
                        swift_once();
                      }

                      v169 = sub_100071E7C();
                      sub_100007DE8(v169, qword_100099998);
                      v170 = sub_100071E5C();
                      v171 = sub_100072CFC();
                      v172 = os_log_type_enabled(v170, v171);
                      v173 = v196;
                      v174 = v198;
                      if (v172)
                      {
                        v175 = swift_slowAlloc();
                        v176 = swift_slowAlloc();
                        v220 = v176;
                        *v175 = 136315138;
                        swift_beginAccess();
                        v177 = sub_100071C2C();
                        v179 = sub_100034D20(v177, v178, &v220);

                        *(v175 + 4) = v179;
                        v174 = v198;
                        _os_log_impl(&_mh_execute_header, v170, v171, "attempting download of image from %s", v175, 0xCu);
                        sub_100007F50(v176);
                      }

                      v180 = v210;
                      v181 = v191;
                      swift_beginAccess();
                      v199(v181, v174, v85);
                      v182 = sub_100071CAC();
                      v184 = v183;
                      v185 = *(v206 + 8);
                      v185(v181, v85);
                      sub_100071CDC();
                      v186 = sub_100071C7C();
                      v203(v186);

                      sub_1000086B8(v182, v184);

                      v185(v195, v85);
                      sub_100012BA4(v173);
                      v185(v214, v85);
                      v185(v204, v85);
                      v185(v180, v85);
                      v185(v208, v85);
                      v185(v205, v85);
                      return (v185)(v174, v85);
                    }
                  }

                  else
                  {
                  }

                  v164 = v195;
                  v220 = sub_100071C2C();
                  v221 = v165;
                  v217 = 0x636965682E6262;
                  v218 = 0xE700000000000000;
                  v215 = 0xD000000000000013;
                  v216 = 0x8000000100077DD0;
                  sub_100004A78();
                  sub_100072D8C();

                  v156 = v188;
                  sub_100071C8C();

                  v166 = v212;
                  v167 = v212(v156, 1, v85);
                  v159 = &v217;
                  if (v167 == 1)
                  {
                    v168 = v187;
                    v199(v187, v164, v85);
                    if (v166(v156, 1, v85) != 1)
                    {
                      sub_100012BA4(v156);
                    }

                    v160 = v168;
                    goto LABEL_64;
                  }

LABEL_63:
                  v160 = *(v159 - 32);
                  v150(v160, v156, v85);
LABEL_64:
                  v162 = v206;
LABEL_65:
                  (*(v162 + 40))(v198, v160, v85);
                  goto LABEL_66;
                }
              }

              v154 = v195;
              v220 = sub_100071C2C();
              v221 = v155;
              v217 = 0x636965682E6262;
              v218 = 0xE700000000000000;
              v215 = 0xD000000000000012;
              v216 = 0x8000000100077DF0;
              sub_100004A78();
              sub_100072D8C();

              v156 = v190;
              sub_100071C8C();

              v157 = v212;
              v158 = v212(v156, 1, v85);
              v159 = &v219;
              if (v158 == 1)
              {
                v160 = v189;
                v199(v189, v154, v85);
                v161 = v157(v156, 1, v85);
                v162 = v206;
                if (v161 != 1)
                {
                  sub_100012BA4(v156);
                }

                goto LABEL_65;
              }

              goto LABEL_63;
            }

            goto LABEL_39;
          }
        }

        goto LABEL_39;
      }
    }

LABEL_31:
    if (!*&v111[v56[11]])
    {
      (v203)(0, 0);

      v132 = *(v206 + 8);
      v132(v214, v85);
      v132(v204, v85);
      v132(v210, v85);
      v133 = v208;
LABEL_46:
      v132(v133, v85);
      return (v132)(v205, v85);
    }

    goto LABEL_32;
  }

  v117 = v220;
  v118 = sub_100071C1C();

  swift_willThrow();
  swift_errorRetain();
  v119 = sub_100071E5C();
  v120 = sub_100072CFC();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v220 = v122;
    *v121 = 136315138;
    v217 = v118;
    swift_errorRetain();
    sub_10000388C(&qword_100094BF8, qword_100073CB0);
    v123 = sub_100072B4C();
    v125 = v43;
    v126 = sub_100034D20(v123, v124, &v220);

    *(v121 + 4) = v126;
    v43 = v125;
    v105 = v204;
    _os_log_impl(&_mh_execute_header, v119, v120, "Unable to create artwork directory %s.", v121, 0xCu);
    sub_100007F50(v122);

    v102 = v205;
  }

  (v103)(0, 0);

  v127 = v207;
  v207(v214, v85);
  v127(v105, v85);
  v127(v43, v85);
  v127(v208, v85);
  return (v127)(v102, v85);
}

uint64_t sub_10005288C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000015;
  v3 = *a1;
  v4 = 0x8000000100077550;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000100077550;
  }

  else
  {
    v6 = 0x8000000100077570;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B726F77747261;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x8000000100077570;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6B726F77747261;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100072FFC();
  }

  return v11 & 1;
}

Swift::Int sub_10005296C()
{
  v1 = *v0;
  sub_10007303C();
  sub_100072B6C();

  return sub_10007305C();
}

uint64_t sub_100052A14()
{
  *v0;
  *v0;
  sub_100072B6C();
}

uint64_t sub_100052AA8()
{
  sub_100072B6C();
}

Swift::Int sub_100052BE8()
{
  v1 = *v0;
  sub_10007303C();
  sub_100072B6C();

  return sub_10007305C();
}

Swift::Int sub_100052C8C()
{
  sub_10007303C();
  sub_100072B6C();

  return sub_10007305C();
}

uint64_t sub_100052DE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054770(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100052E10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000015;
  v5 = 0x8000000100077550;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x8000000100077570;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6B726F77747261;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t type metadata accessor for AppMetadata()
{
  result = qword_1000968B0;
  if (!qword_1000968B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100052EE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054A14(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100052F18(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0x6E6F697461657263;
  v5 = 0xD000000000000011;
  v6 = 0x80000001000775D0;
  if (v2 != 6)
  {
    v5 = 0xD00000000000001ALL;
    v6 = 0x80000001000775F0;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C746974627573;
  if (v2 != 4)
  {
    v8 = 0x7374726F70707573;
    v7 = 0xEE00656461637241;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x4449656C646E7562;
  if (v2 != 2)
  {
    v10 = 0x656C746974;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x44496D616461;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_100053028()
{
  v1 = *v0;
  v2 = 0x6E6F697461657263;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0xD00000000000001ALL;
  }

  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x7374726F70707573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4449656C646E7562;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x44496D616461;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100053134@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100053168(uint64_t a1)
{
  v2 = sub_100054618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000531A4(uint64_t a1)
{
  v2 = sub_100054618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000531E0(void *a1)
{
  v3 = v1;
  v5 = sub_10000388C(&qword_100096918, &qword_100075EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  sub_10003C138(a1, a1[3]);
  sub_100054618();
  sub_10007307C();
  LOBYTE(v43) = 0;
  sub_100071D4C();
  sub_1000546C0(&qword_100095C18, &type metadata accessor for Date);
  sub_100072FDC();
  if (!v2)
  {
    v11 = type metadata accessor for AppMetadata();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v43) = 1;
    sub_100072FAC();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v43) = 2;
    sub_100072FAC();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v43) = 3;
    sub_100072FAC();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v43) = 4;
    sub_100072F9C();
    v24 = *(v3 + v11[9]);
    LOBYTE(v43) = 5;
    sub_100072FBC();
    v25 = objc_opt_self();
    v26 = *(v3 + v11[10]);
    isa = sub_100072ACC().super.isa;
    v43 = 0;
    v28 = [v25 dataWithJSONObject:isa options:0 error:&v43];

    v29 = v43;
    if (!v28)
    {
      goto LABEL_8;
    }

    v41 = v25;
    v30 = sub_100071CCC();
    v32 = v31;

    v43 = v30;
    v44 = v32;
    v42 = 6;
    sub_10005466C();
    sub_100072FDC();
    sub_1000086B8(v43, v44);
    if (*(v3 + v11[11]))
    {
      v33 = sub_100072ACC().super.isa;
      v43 = 0;
      v34 = [v41 dataWithJSONObject:v33 options:0 error:&v43];

      v29 = v43;
      if (v34)
      {
        v35 = sub_100071CCC();
        v37 = v36;

        v43 = v35;
        v44 = v37;
        v42 = 7;
        sub_100072FDC();
        sub_1000086B8(v43, v44);
        return (*(v6 + 8))(v9, v5);
      }

LABEL_8:
      v38 = v29;
      sub_100071C1C();

      swift_willThrow();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100053644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_100071D4C();
  v72 = *(v3 - 8);
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100096930, &qword_100075EB8);
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  __chkstk_darwin(v6);
  v9 = &v62 - v8;
  v10 = type metadata accessor for AppMetadata();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_10003C138(a1, a1[3]);
  sub_100054618();
  v15 = v75;
  sub_10007306C();
  if (v15)
  {
    return sub_100007F50(a1);
  }

  v16 = v73;
  v75 = a1;
  v69 = v10;
  v70 = v13;
  LOBYTE(v77) = 0;
  sub_1000546C0(&qword_100095C20, &type metadata accessor for Date);
  v17 = v74;
  v18 = v9;
  sub_100072F8C();
  v19 = v6;
  v21 = v70;
  (*(v72 + 32))(v70, v17, v3);
  LOBYTE(v77) = 1;
  v22 = sub_100072F5C();
  v23 = 0;
  v68 = v3;
  v24 = v69;
  v25 = &v21[v69[5]];
  *v25 = v22;
  v25[1] = v26;
  LOBYTE(v77) = 2;
  v27 = sub_100072F5C();
  v28 = &v21[v24[6]];
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v77) = 3;
  v30 = sub_100072F5C();
  v31 = &v21[v24[7]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v77) = 4;
  v33 = sub_100072F3C();
  v34 = &v21[v24[8]];
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v77) = 5;
  v21[v24[9]] = sub_100072F6C() & 1;
  LOBYTE(v76) = 6;
  v36 = sub_100054708();
  sub_100072F8C();
  v65 = v36;
  v67 = v18;
  v74 = v19;
  v42 = v77;
  v43 = v78;
  v44 = objc_opt_self();
  v66 = v42;
  isa = sub_100071CBC().super.isa;
  v77 = 0;
  v64 = v44;
  v46 = [v44 JSONObjectWithData:isa options:0 error:&v77];

  v47 = v75;
  if (v46)
  {
    v63 = 0;
    v48 = v77;
    sub_100072D9C();
    swift_unknownObjectRelease();
    v62 = sub_10000388C(&qword_100095C58, &qword_1000750D8);
    if (swift_dynamicCast())
    {
      v49 = v76;
    }

    else
    {
      v49 = sub_10004F7B8(&_swiftEmptyArrayStorage);
    }

    *&v70[v24[10]] = v49;
    LOBYTE(v76) = 7;
    sub_100072F4C();
    if (v78 >> 60 == 15)
    {
      (*(v16 + 8))(v67, v74);
      sub_1000086B8(v66, v43);
      v54 = v70;
      *&v70[v24[11]] = 0;
LABEL_20:
      sub_10005402C(v54, v71);
      sub_100007F50(v75);
      return sub_100054090(v54);
    }

    v55 = v77;
    v65 = v78;
    v56 = sub_100071CBC().super.isa;
    v77 = 0;
    v57 = [v64 JSONObjectWithData:v56 options:0 error:&v77];

    if (v57)
    {
      v58 = v77;
      sub_100072D9C();
      sub_1000086B8(v66, v43);
      sub_10005475C(v55, v65);
      swift_unknownObjectRelease();
      (*(v16 + 8))(v67, v74);
      v59 = swift_dynamicCast();
      v60 = v76;
      if (!v59)
      {
        v60 = 0;
      }

      v54 = v70;
      *&v70[v69[11]] = v60;
      goto LABEL_20;
    }

    v61 = v77;
    sub_100071C1C();

    swift_willThrow();
    sub_1000086B8(v66, v43);
    sub_10005475C(v55, v65);
    (*(v16 + 8))(v67, v74);
    v51 = 1;
    v24 = v69;
    v52 = v70;
    v53 = v75;
    v23 = v63;
  }

  else
  {
    v50 = v77;
    sub_100071C1C();

    swift_willThrow();
    sub_1000086B8(v66, v43);
    (*(v16 + 8))(v67, v74);
    v51 = 0;
    v52 = v70;
    v53 = v47;
  }

  sub_100007F50(v53);
  (*(v72 + 8))(v52, v68);
  if (!v23)
  {
    v39 = *&v52[v24[5] + 8];
  }

  v37 = *&v52[v24[6] + 8];

  v40 = *&v52[v24[7] + 8];

  v38 = *&v52[v24[8] + 8];

  if (v51)
  {
    v41 = *&v52[v24[10]];
  }

  return result;
}

uint64_t sub_100053F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100094E50, &qword_100074180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100094E50, &qword_100074180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005402C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100054090(uint64_t a1)
{
  v2 = type metadata accessor for AppMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppMetadata.AppArtworkType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppMetadata.AppArtworkType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100054250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100071D4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100054324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100071D4C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000543E0()
{
  sub_100071D4C();
  if (v0 <= 0x3F)
  {
    sub_1000544A8();
    if (v1 <= 0x3F)
    {
      sub_1000544F8();
      if (v2 <= 0x3F)
      {
        sub_10005455C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000544A8()
{
  if (!qword_100096168)
  {
    v0 = sub_100072D6C();
    if (!v1)
    {
      atomic_store(v0, &qword_100096168);
    }
  }
}

void sub_1000544F8()
{
  if (!qword_1000968C0)
  {
    v0 = sub_100072AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000968C0);
    }
  }
}

void sub_10005455C()
{
  if (!qword_1000968C8)
  {
    sub_1000038D4(&qword_100095C58, &qword_1000750D8);
    v0 = sub_100072D6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000968C8);
    }
  }
}

unint64_t sub_1000545C4()
{
  result = qword_100096910;
  if (!qword_100096910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096910);
  }

  return result;
}

unint64_t sub_100054618()
{
  result = qword_100096920;
  if (!qword_100096920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096920);
  }

  return result;
}

unint64_t sub_10005466C()
{
  result = qword_100096928;
  if (!qword_100096928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096928);
  }

  return result;
}

uint64_t sub_1000546C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100054708()
{
  result = qword_100096938;
  if (!qword_100096938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096938);
  }

  return result;
}

uint64_t sub_10005475C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000086B8(a1, a2);
  }

  return a1;
}

uint64_t sub_100054770(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100091E98;
  v6._object = a2;
  v4 = sub_100072F2C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for AppMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100054910()
{
  result = qword_100096940;
  if (!qword_100096940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096940);
  }

  return result;
}

unint64_t sub_100054968()
{
  result = qword_100096948;
  if (!qword_100096948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096948);
  }

  return result;
}

unint64_t sub_1000549C0()
{
  result = qword_100096950;
  if (!qword_100096950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096950);
  }

  return result;
}

uint64_t sub_100054A14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100091F00;
  v6._object = a2;
  v4 = sub_100072F2C(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100054A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100054B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GameCenterLogo()
{
  result = qword_1000969B0;
  if (!qword_1000969B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100054BD0()
{
  sub_100019F3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100054C58@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = sub_10007277C();
  v1 = *(v37 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v37);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007297C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v36 = sub_10000388C(&qword_1000969E8, &qword_100076080);
  v34 = *(v36 - 8);
  v13 = *(v34 + 64);
  __chkstk_darwin(v36);
  v33 = &v31 - v14;
  v32 = sub_10000388C(&qword_1000969F0, &qword_100076088);
  v15 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v17 = &v31 - v16;
  v35 = sub_10000388C(&qword_1000969F8, &qword_100076090);
  v18 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v20 = &v31 - v19;
  sub_1000129F8(v12);
  sub_10007296C();
  sub_100055404(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v21 = sub_100072B1C();
  v22 = *(v6 + 8);
  v22(v9, v5);
  v22(v12, v5);
  if (v21)
  {
    sub_10007279C();
  }

  else
  {
    sub_1000727EC();
  }

  v23 = v37;
  (*(v1 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v37);
  v24 = sub_1000727DC();

  (*(v1 + 8))(v4, v23);
  *&v39 = v24;
  v25 = v33;
  sub_1000725FC();

  sub_1000726CC();
  v26 = sub_1000726FC();

  (*(v34 + 32))(v17, v25, v36);
  v27 = &v17[*(v32 + 36)];
  *v27 = v26;
  *(v27 + 8) = xmmword_1000756D0;
  *(v27 + 3) = 0x3FF0000000000000;
  sub_1000728AC();
  sub_100071F2C();
  sub_100055124(v17, v20);
  v28 = &v20[*(v35 + 36)];
  v29 = v40;
  *v28 = v39;
  *(v28 + 1) = v29;
  *(v28 + 2) = v41;
  sub_100055194();
  sub_10007261C();
  return sub_1000552DC(v20);
}

uint64_t sub_100055124(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000969F0, &qword_100076088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100055194()
{
  result = qword_100096A00;
  if (!qword_100096A00)
  {
    sub_1000038D4(&qword_1000969F8, &qword_100076090);
    sub_100055220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A00);
  }

  return result;
}

unint64_t sub_100055220()
{
  result = qword_100096A08;
  if (!qword_100096A08)
  {
    sub_1000038D4(&qword_1000969F0, &qword_100076088);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A08);
  }

  return result;
}

uint64_t sub_1000552DC(uint64_t a1)
{
  v2 = sub_10000388C(&qword_1000969F8, &qword_100076090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100055348()
{
  result = qword_100096A10;
  if (!qword_100096A10)
  {
    sub_1000038D4(&qword_100096A18, &qword_100076098);
    sub_100055194();
    sub_100055404(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096A10);
  }

  return result;
}

uint64_t sub_100055404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005544C@<X0>(char *a1@<X8>, double a2@<D0>)
{
  v33 = a1;
  v3 = sub_10000388C(&qword_100096A20, &qword_1000760A0);
  v4 = *(v3 - 8);
  v31 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_10000388C(&qword_1000956E0, &qword_100074AA0);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v30 - v12;
  v14 = sub_10000388C(&qword_1000956E8, &qword_100074AA8);
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  sub_10007299C();
  v22 = sub_1000729BC();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 0, 1, v22);
  sub_1000727CC();
  sub_100055764(v13);
  sub_1000729AC();
  v23(v13, 0, 1, v22);
  sub_1000727CC();
  sub_100055764(v13);
  *&v9[*(v31 + 44)] = a2;
  v24 = v15[2];
  v24(v19, v21, v14);
  v25 = v32;
  sub_1000557CC(v9, v32);
  v26 = v33;
  v24(v33, v19, v14);
  v27 = sub_10000388C(&qword_100096A28, qword_1000760A8);
  sub_1000557CC(v25, &v26[*(v27 + 48)]);
  sub_10005583C(v9);
  v28 = v15[1];
  v28(v21, v14);
  sub_10005583C(v25);
  return (v28)(v19, v14);
}

uint64_t sub_100055764(uint64_t a1)
{
  v2 = sub_10000388C(&qword_1000956E0, &qword_100074AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000557CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_100096A20, &qword_1000760A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005583C(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100096A20, &qword_1000760A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000558B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CPTimelineEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000559C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CPTimelineEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CPHeaderGradientView()
{
  result = qword_100096A88;
  if (!qword_100096A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055B38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000388C(&qword_1000951A0, &qword_100074538);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v47 - v5);
  v7 = sub_10000388C(&qword_1000951A8, &qword_100074540);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v50 = sub_10000388C(&qword_1000951B0, &qword_100074548);
  v11 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v52 = &v47 - v12;
  v13 = sub_10000388C(&qword_1000951B8, &qword_100074550);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = &v47 - v17;
  v18 = sub_10000388C(&qword_1000951C0, &qword_100074558);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v22 = type metadata accessor for CPHeaderGradientView();
  v23 = &v1[*(v22 + 24)];
  if (v23[*(type metadata accessor for CPTimelineEntry() + 32)] == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10001AFE4();
    return sub_10007230C();
  }

  else
  {
    v47 = v18;
    v48 = v13;
    v49 = a1;
    *v6 = sub_1000728AC();
    v6[1] = v25;
    v26 = sub_10000388C(&qword_1000951C8, &qword_100074560);
    sub_100056160(v1, v6 + *(v26 + 44));
    v27 = &v1[*(v22 + 20)];
    v29 = *v27;
    v28 = *(v27 + 1);
    sub_1000728AC();
    sub_100071FFC();
    sub_100014DEC(v6, v10, &qword_1000951A0, &qword_100074538);
    v30 = &v10[*(v7 + 36)];
    v31 = v66;
    *(v30 + 4) = v65;
    *(v30 + 5) = v31;
    *(v30 + 6) = v67;
    v32 = v62;
    *v30 = v61;
    *(v30 + 1) = v32;
    v33 = v64;
    *(v30 + 2) = v63;
    *(v30 + 3) = v33;
    sub_1000728AC();
    sub_100071FFC();
    v34 = v10;
    v35 = v52;
    sub_100014DEC(v34, v52, &qword_1000951A8, &qword_100074540);
    v36 = (v35 + *(v50 + 36));
    v37 = v59;
    v36[4] = v58;
    v36[5] = v37;
    v36[6] = v60;
    v38 = v55;
    *v36 = v54;
    v36[1] = v38;
    v39 = v57;
    v36[2] = v56;
    v36[3] = v39;
    KeyPath = swift_getKeyPath();
    v41 = v51;
    v42 = &v51[*(v48 + 36)];
    v43 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
    v44 = enum case for ColorScheme.light(_:);
    v45 = sub_100071EAC();
    (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
    *v42 = KeyPath;
    sub_100014DEC(v35, v41, &qword_1000951B0, &qword_100074548);
    v46 = v53;
    sub_100014DEC(v41, v53, &qword_1000951B8, &qword_100074550);
    sub_100004C94(v46, v21, &qword_1000951B8, &qword_100074550);
    swift_storeEnumTagMultiPayload();
    sub_10001AFE4();
    sub_10007230C();
    return sub_100004890(v46, &qword_1000951B8, &qword_100074550);
  }
}

uint64_t sub_100056160@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v110 = a1;
  v2 = sub_10000388C(&qword_100095200, &qword_1000745A8);
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = *(v107 + 64);
  __chkstk_darwin(v2);
  v102 = &v95 - v4;
  v99 = sub_10000388C(&qword_100095208, &qword_1000745B0);
  v5 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v101 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100 = &v95 - v8;
  v9 = sub_10007297C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v95 - v15;
  v17 = sub_10000388C(&qword_100095210, &qword_1000745B8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v106 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v105 = &v95 - v21;
  v22 = sub_10000388C(&qword_100095218, &unk_1000745C0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v104 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v95 - v27;
  sub_10007287C();
  v29 = sub_1000723AC();
  v28[*(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)] = v29;
  sub_1000726CC();
  v30 = sub_1000726FC();

  v31 = sub_1000723AC();
  v32 = &v28[*(sub_10000388C(&qword_100095228, &qword_1000745D0) + 36)];
  *v32 = v30;
  v32[8] = v31;
  v98 = sub_10000388C(&qword_100095230, &qword_1000745D8);
  v33 = swift_allocObject();
  v97 = xmmword_100074490;
  *(v33 + 16) = xmmword_100074490;
  *(v33 + 32) = sub_1000726CC();
  sub_1000726CC();
  v34 = sub_1000726FC();

  *(v33 + 40) = v34;
  v35 = v110;
  sub_10007286C();
  sub_1000728EC();
  sub_1000728FC();
  sub_100071F8C();
  sub_1000728DC();
  v37 = v36;
  v39 = v38;
  sub_10007291C();
  v40 = &v28[*(v23 + 44)];
  v41 = v133;
  *v40 = v132;
  *(v40 + 1) = v41;
  *(v40 + 4) = v134;
  *(v40 + 5) = 0xBFD1DF46A2529D39;
  *(v40 + 6) = v37;
  *(v40 + 7) = v39;
  v103 = xmmword_1000744A0;
  *(v40 + 4) = xmmword_1000744A0;
  *(v40 + 10) = v42;
  *(v40 + 11) = v43;
  sub_1000129F8(v16);
  sub_10007296C();
  sub_10001B20C();
  LOBYTE(v23) = sub_100072B1C();
  v44 = *(v10 + 8);
  v44(v13, v9);
  v44(v16, v9);
  if (v23)
  {
    goto LABEL_16;
  }

  v45 = &v35[*(type metadata accessor for CPHeaderGradientView() + 24)];
  v46 = *&v45[*(type metadata accessor for CPTimelineEntry() + 20)];
  if (!(v46 >> 62))
  {
    result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_16:
    v90 = v105;
    (*(v107 + 56))(v105, 1, 1, v108);
LABEL_17:
    v91 = v104;
    sub_100004C94(v28, v104, &qword_100095218, &unk_1000745C0);
    v92 = v106;
    sub_100004C94(v90, v106, &qword_100095210, &qword_1000745B8);
    v93 = v109;
    sub_100004C94(v91, v109, &qword_100095218, &unk_1000745C0);
    v94 = sub_10000388C(&qword_100095248, &qword_1000745F0);
    sub_100004C94(v92, v93 + *(v94 + 48), &qword_100095210, &qword_1000745B8);
    sub_100004890(v90, &qword_100095210, &qword_1000745B8);
    sub_100004890(v28, &qword_100095218, &unk_1000745C0);
    sub_100004890(v92, &qword_100095210, &qword_1000745B8);
    return sub_100004890(v91, &qword_100095218, &unk_1000745C0);
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v48 = sub_100072E6C();
LABEL_7:
    v49 = *(v48 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
    if (v49 || (v49 = *(v48 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor)) != 0)
    {
      v50 = v49;
    }

    else
    {
      v50 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
    }

    v51 = v50;

    v52 = v51;
    v53 = sub_1000726AC();
    v110 = v52;
    [v52 _luminance];
    if (v54 <= 0.8)
    {
      v55 = -0.2;
    }

    else
    {
      v55 = (v54 + -0.8) / -0.2 * 0.2 + -0.2;
    }

    v96 = v55;
    v56 = v99;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100074190;
    *(v57 + 32) = v53;
    *(v57 + 40) = v53;
    swift_retain_n();
    *(v57 + 48) = sub_1000726FC();
    *(v57 + 56) = sub_1000726DC();
    sub_10007286C();
    sub_1000728EC();
    sub_1000728FC();
    sub_100071F8C();
    sub_1000728DC();
    v59 = v58;
    v61 = v60;
    sub_10007291C();
    v63 = v62;
    v65 = v64;
    v66 = swift_allocObject();
    *(v66 + 16) = v97;
    *(v66 + 32) = v53;

    sub_1000726CC();
    v67 = sub_1000726FC();

    *(v66 + 40) = v67;
    sub_10007286C();
    sub_1000728EC();
    sub_1000728FC();
    sub_100071F8C();
    sub_1000728DC();
    v69 = v68;
    v71 = v70;
    sub_10007291C();
    v73 = v72;
    v75 = v74;
    v76 = *(v56 + 36);
    v77 = enum case for BlendMode.color(_:);
    v78 = sub_1000728BC();
    v79 = v100;
    (*(*(v78 - 8) + 104))(&v100[v76], v77, v78);
    v80 = v115;
    *v79 = v114;
    *(v79 + 16) = v80;
    *(v79 + 32) = v116;
    *(v79 + 40) = 0xBFD1DF46A2529D39;
    *(v79 + 48) = v69;
    *(v79 + 56) = v71;
    *(v79 + 64) = v103;
    *(v79 + 80) = v73;
    *(v79 + 88) = v75;
    v81 = v101;
    sub_100004C94(v79, v101, &qword_100095208, &qword_1000745B0);
    v83 = v111;
    v82 = v112;
    v117[0] = v111;
    v117[1] = v112;
    *&v118 = v113;
    *(&v118 + 1) = 0xBFD1DF46A2529D39;
    *&v119 = v59;
    *(&v119 + 1) = v61;
    v120 = v103;
    *&v121 = v63;
    *(&v121 + 1) = v65;
    v84 = v96;
    v122 = v96;
    v85 = v103;
    v86 = v121;
    v87 = v102;
    *(v102 + 12) = v96;
    v87[4] = v85;
    v87[5] = v86;
    v88 = v119;
    v87[2] = v118;
    v87[3] = v88;
    *v87 = v83;
    v87[1] = v82;
    v89 = sub_10000388C(&qword_100095238, &qword_1000745E0);
    sub_100004C94(v81, v87 + *(v89 + 48), &qword_100095208, &qword_1000745B0);
    sub_100004C94(v117, v123, &qword_100095240, &qword_1000745E8);

    sub_100004890(v79, &qword_100095208, &qword_1000745B0);
    sub_100004890(v81, &qword_100095208, &qword_1000745B0);
    v123[0] = v111;
    v123[1] = v112;
    v124 = v113;
    v125 = 0xBFD1DF46A2529D39;
    v126 = v59;
    v127 = v61;
    v128 = v103;
    v129 = v63;
    v130 = v65;
    v131 = v84;
    sub_100004890(v123, &qword_100095240, &qword_1000745E8);
    v90 = v105;
    sub_100014DEC(v87, v105, &qword_100095200, &qword_1000745A8);
    (*(v107 + 56))(v90, 0, 1, v108);
    goto LABEL_17;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v48 = *(v46 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_100056B94()
{
  sub_10000388C(&qword_100096AC8, &qword_100076168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100073B50;
  *(inited + 32) = sub_100072B3C();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x8000000100077E30;
  sub_10004F688(inited);
  swift_setDeallocating();
  sub_100056CD8(inited + 32);
  v2 = objc_allocWithZone(NSError);
  v3 = sub_100072B2C();
  isa = sub_100072ACC().super.isa;

  v5 = [v2 initWithDomain:v3 code:404 userInfo:isa];

  return v5;
}

uint64_t sub_100056CD8(uint64_t a1)
{
  v2 = sub_10000388C(&qword_100096790, &qword_100075C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056D54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100071F5C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CPTimelineEntry();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 32);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100056F2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100071F5C();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = type metadata accessor for CPTimelineEntry();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 32) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPLargeContentView()
{
  result = qword_100096B28;
  if (!qword_100096B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057148@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CPLargeContentView();
  sub_100004C94(v1 + *(v12 + 20), v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100057350()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CPLargeContentView() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_100072CEC();
    v8 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1000574A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000388C(&qword_100096B88, &qword_100076228);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_100057618(&v16);
  v11 = v16;
  *v10 = sub_10007223C();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v12 = sub_10000388C(&qword_100096B90, &qword_100076230);
  sub_1000578FC(a1, &v10[*(v12 + 44)]);
  sub_100004C94(v10, v7, &qword_100096B88, &qword_100076228);
  *a2 = v11;
  v13 = sub_10000388C(&qword_100096B98, &qword_100076238);
  sub_100004C94(v7, a2 + *(v13 + 48), &qword_100096B88, &qword_100076228);

  sub_100004890(v10, &qword_100096B88, &qword_100076228);
  sub_100004890(v7, &qword_100096B88, &qword_100076228);
}

uint64_t sub_100057618@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10007297C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_10007218C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(type metadata accessor for CPLargeContentView() + 24);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_100072CEC();
    v24 = v11;
    v25 = v1;
    v18 = v12;
    v19 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v17, 0);
    (*(v18 + 8))(v15, v24);
    if (v26 != 1)
    {
LABEL_6:
      result = 0;
      goto LABEL_10;
    }
  }

  sub_1000129F8(v10);
  sub_10007296C();
  sub_10001B20C();
  v20 = sub_100072B1C();
  v21 = *(v4 + 8);
  v21(v7, v3);
  v21(v10, v3);
  if (v20)
  {
    goto LABEL_6;
  }

  if (qword_1000946D8 != -1)
  {
    swift_once();
  }

LABEL_10:
  *a1 = result;
  return result;
}

uint64_t sub_1000578FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for CPAppGridView();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000388C(&qword_1000962C0, &qword_100076240);
  v8 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v60 = &v57 - v12;
  v57 = sub_10000388C(&qword_100096BA0, &qword_100076248);
  v13 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v63 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v57 - v16;
  __chkstk_darwin(v17);
  v62 = &v57 - v18;
  v19 = sub_10000388C(&qword_100096BA8, &qword_100076250);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v61 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v57 - v24;
  sub_100057FAC(&v57 - v24);
  v26 = &v25[*(v20 + 44)];
  sub_100058DA8(a1, v26);
  v27 = type metadata accessor for CPLargeContentView();
  v28 = *(v27 + 28);
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v29 = (v26 + *(sub_10000388C(&qword_100096BB0, &qword_100076258) + 36));
  v30 = v66;
  *v29 = v65;
  v29[1] = v30;
  v29[2] = v67;
  v31 = sub_1000728AC();
  v33 = v32;
  v34 = (v26 + *(sub_10000388C(&qword_100096BB8, &qword_100076260) + 36));
  *v34 = v31;
  v34[1] = v33;
  sub_10005AF24(a1 + *(v27 + 32), v7, type metadata accessor for CPTimelineEntry);
  v35 = v4[7];
  v36 = sub_100071F5C();
  (*(*(v36 - 8) + 16))(&v7[v35], a1 + v28, v36);
  *&v7[v4[13]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v7[v4[14]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v7[v4[8]] = 1;
  *&v7[v4[9]] = 3;
  v7[v4[10]] = 0;
  v37 = v4[11];
  *&v7[v37] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v38 = v4[12];
  *&v7[v38] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  LOBYTE(v4) = sub_1000723FC();
  *(inited + 32) = v4;
  v40 = sub_1000723DC();
  *(inited + 33) = v40;
  v41 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v4)
  {
    v41 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v40)
  {
    v41 = sub_1000723EC();
  }

  sub_100041AB4(v7, v10);
  v42 = &v10[*(v58 + 36)];
  *v42 = v41;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  v42[40] = 1;
  v43 = v60;
  sub_100014DEC(v10, v60, &qword_1000962C0, &qword_100076240);
  v44 = v59;
  v45 = &v59[*(v57 + 36)];
  sub_1000585A4(v45);
  v46 = sub_1000728AC();
  v48 = v47;
  v49 = (v45 + *(sub_10000388C(&qword_100096BC0, &qword_100076350) + 36));
  *v49 = v46;
  v49[1] = v48;
  sub_100014DEC(v43, v44, &qword_1000962C0, &qword_100076240);
  v50 = v44;
  v51 = v62;
  sub_100014DEC(v50, v62, &qword_100096BA0, &qword_100076248);
  v52 = v61;
  sub_100004C94(v25, v61, &qword_100096BA8, &qword_100076250);
  v53 = v63;
  sub_100004C94(v51, v63, &qword_100096BA0, &qword_100076248);
  v54 = v64;
  sub_100004C94(v52, v64, &qword_100096BA8, &qword_100076250);
  v55 = sub_10000388C(&qword_100096BC8, &qword_100076358);
  sub_100004C94(v53, v54 + *(v55 + 48), &qword_100096BA0, &qword_100076248);
  sub_100004890(v51, &qword_100096BA0, &qword_100076248);
  sub_100004890(v25, &qword_100096BA8, &qword_100076250);
  sub_100004890(v53, &qword_100096BA0, &qword_100076248);
  return sub_100004890(v52, &qword_100096BA8, &qword_100076250);
}

uint64_t sub_100057FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007234C();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  __chkstk_darwin(v3);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100096C70, &qword_100076488);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v49 = &v46 - v8;
  v9 = sub_10000388C(&qword_100096C78, &unk_100076490);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v48 = &v46 - v11;
  v12 = sub_1000729DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v46 - v19;
  v21 = sub_100071C9C();
  v55 = *(v21 - 8);
  v22 = *(v55 + 64);
  __chkstk_darwin(v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v47 = &v46 - v26;
  v27 = v1;
  v28 = v1 + *(type metadata accessor for CPLargeContentView() + 32);
  v29 = type metadata accessor for CPTimelineEntry();
  v30 = *(v28 + *(v29 + 20));
  if (!(v30 >> 62))
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v34 = 1;
    goto LABEL_13;
  }

  if (v30 < 0)
  {
    v45 = *(v28 + *(v29 + 20));
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v46 = a1;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v32 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v30 + 32);

LABEL_6:
    sub_100057148(v16);
    sub_100005294(v16, v20);
    (*(v13 + 8))(v16, v12);
    v33 = v55;
    if ((*(v55 + 48))(v20, 1, v21) != 1)
    {
      v35 = v47;
      (*(v33 + 32))(v47, v20, v21);
      v36 = v35;
      v37 = (*(v33 + 16))(v24, v35, v21);
      __chkstk_darwin(v37);
      *(&v46 - 2) = v27;
      *(&v46 - 1) = v32;
      sub_10000388C(&qword_100096C80, &unk_1000764A0);
      sub_10005AE6C();
      v38 = v49;
      sub_10007254C();
      v39 = v52;
      sub_10007233C();
      sub_100004C3C(&qword_100096C90, &qword_100096C70, &qword_100076488);
      v40 = v48;
      v41 = v51;
      sub_10007266C();

      (*(v53 + 8))(v39, v54);
      (*(v50 + 8))(v38, v41);
      (*(v33 + 8))(v36, v21);
      v43 = v56;
      v42 = v57;
      a1 = v46;
      (*(v56 + 32))(v46, v40, v57);
      v44 = v42;
      v34 = 0;
      return (*(v43 + 56))(a1, v34, 1, v44);
    }

    sub_100004890(v20, &qword_100094E50, &qword_100074180);
    v34 = 1;
    a1 = v46;
LABEL_13:
    v43 = v56;
    v44 = v57;
    return (*(v43 + 56))(a1, v34, 1, v44);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000585A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_10000388C(&qword_100096BD0, &qword_100076360);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - v5;
  v40 = sub_10000388C(&qword_100096BD8, &qword_100076368);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v40);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v39 = &v39 - v12;
  v13 = sub_10007297C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  sub_1000129F8(&v39 - v19);
  sub_10007296C();
  sub_10001B20C();
  v21 = sub_100072B1C();
  v22 = *(v14 + 8);
  v22(v17, v13);
  v22(v20, v13);
  if (v21)
  {
    v23 = 1;
    v25 = v40;
    v24 = v41;
  }

  else
  {
    sub_10005A018(v2, v6);
    v26 = *(type metadata accessor for CPLargeContentView() + 28);
    sub_100071F3C();
    v28 = v27;
    sub_100071F3C();
    v30 = v29;
    sub_100071F3C();
    sub_100071F3C();
    sub_1000728AC();
    if (v28 > v30)
    {
      sub_100072CEC();
      v31 = sub_10007239C();
      sub_100071E4C();
    }

    sub_100071FFC();
    sub_100014DEC(v6, v10, &qword_100096BD0, &qword_100076360);
    v25 = v40;
    v32 = &v10[*(v40 + 36)];
    v33 = v47;
    *(v32 + 4) = v46;
    *(v32 + 5) = v33;
    *(v32 + 6) = v48;
    v34 = v43;
    *v32 = v42;
    *(v32 + 1) = v34;
    v35 = v45;
    *(v32 + 2) = v44;
    *(v32 + 3) = v35;
    v36 = v39;
    sub_100014DEC(v10, v39, &qword_100096BD8, &qword_100076368);
    v37 = v36;
    v24 = v41;
    sub_100014DEC(v37, v41, &qword_100096BD8, &qword_100076368);
    v23 = 0;
  }

  return (*(v7 + 56))(v24, v23, 1, v25);
}

double sub_1000589B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10007223C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10000388C(&qword_100095A20, &unk_100074F00);
  sub_100058AB4(a1, a2, a3 + *(v6 + 44));
  v7 = *(type metadata accessor for CPLargeContentView() + 28);
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v8 = (a3 + *(sub_10000388C(&qword_100096C80, &unk_1000764A0) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_100058AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CPTitleView();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v28 - v12);
  v14 = type metadata accessor for CPLargeContentView();
  v15 = v14[7];
  v16 = v7[10];
  v17 = sub_100071F5C();
  (*(*(v17 - 8) + 16))(v13 + v16, a1 + v15, v17);
  sub_10005AF24(a1 + v14[8], v13 + v7[11], type metadata accessor for CPTimelineEntry);
  v18 = (a1 + v14[9]);
  v19 = *(v18 + 4);
  v20 = v18[1];
  v34 = *v18;
  v35 = v20;
  v36 = v19;
  sub_10000388C(&qword_1000948F0, qword_100077520);
  sub_10007280C();
  v21 = v30;
  v22 = v31;
  v28 = v33;
  v29 = v32;
  *(v13 + v7[8]) = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(v13 + v7[9]) = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *v13 = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v23 = v7[7];
  *(v13 + v23) = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  *(v13 + v7[12]) = a2;
  v24 = v13 + v7[13];
  *v24 = v21;
  *(v24 + 1) = v22;
  v25 = v28;
  *(v24 + 1) = v29;
  *(v24 + 2) = v25;
  sub_10005AF24(v13, v10, type metadata accessor for CPTitleView);
  *a3 = 0;
  *(a3 + 8) = 0;
  v26 = sub_10000388C(&qword_100095A28, &qword_100074F10);
  sub_10005AF24(v10, a3 + *(v26 + 48), type metadata accessor for CPTitleView);

  sub_10005AF8C(v13, type metadata accessor for CPTitleView);
  return sub_10005AF8C(v10, type metadata accessor for CPTitleView);
}

uint64_t sub_100058DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_10000388C(&qword_100096BE0, &qword_1000763E0);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v5 = (&v28 - v4);
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_100096BE8, &qword_1000763E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = a1 + *(type metadata accessor for CPLargeContentView() + 32);
  v16 = type metadata accessor for CPTimelineEntry();
  if (*(v15 + *(v16 + 32)) == 1 && (sub_100057350() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100096C00, &qword_100096BE0, &qword_1000763E0);
    v22 = v29;
    sub_10007230C();
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v17 = *(v15 + *(v16 + 20));
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v23 = *(v15 + *(v16 + 20));
    }

    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_10:
      v21 = 1;
      v22 = v29;
LABEL_21:
      v27 = sub_10000388C(&qword_100096BF0, &qword_1000763F0);
      return (*(*(v27 - 8) + 56))(v22, v21, 1, v27);
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    if (*(sub_100072E6C() + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

    if (*(v19 + 32))
    {
      goto LABEL_8;
    }

LABEL_17:
    v24 = sub_10004D174(0xD000000000000019, 0x8000000100077CA0);
    if (v24)
    {
      v20 = v24;
LABEL_19:
      v22 = v29;
      *v5 = sub_1000728AC();
      v5[1] = v25;
      v26 = sub_10000388C(&qword_100096BF8, &qword_1000763F8);
      sub_1000591C4(v20, a1, v5 + *(v26 + 44));
      sub_100004C94(v5, v14, &qword_100096BE0, &qword_1000763E0);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100096C00, &qword_100096BE0, &qword_1000763E0);
      sub_10007230C();

      sub_100004890(v5, &qword_100096BE0, &qword_1000763E0);
      goto LABEL_20;
    }

LABEL_8:
    sub_100057148(v10);
    v20 = sub_10001D980(v10, 1);
    (*(v7 + 8))(v10, v6);
    if (!v20)
    {

      goto LABEL_10;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000591C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a2;
  v107 = a3;
  v4 = sub_10007297C();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  __chkstk_darwin(v4);
  v102 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v87 - v8;
  v104 = sub_1000728BC();
  v103 = *(v104 - 8);
  v9 = *(v103 + 64);
  __chkstk_darwin(v104);
  v100 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10000388C(&qword_100096C08, &qword_100076400);
  v11 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v13 = &v87 - v12;
  v98 = sub_10000388C(&qword_100096C10, &qword_100076408);
  v96 = *(v98 - 8);
  v14 = *(v96 + 64);
  __chkstk_darwin(v98);
  v95 = &v87 - v15;
  v93 = sub_10000388C(&qword_100096C18, &qword_100076410);
  v16 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v99 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = &v87 - v19;
  __chkstk_darwin(v20);
  v97 = &v87 - v21;
  v22 = sub_10007277C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000388C(&qword_100096C20, &qword_100076418);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v87 - v29;
  v31 = sub_10000388C(&qword_100096C28, &qword_100076420);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v87 - v33;
  v88 = sub_10000388C(&qword_100096C30, &qword_100076428);
  v35 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v91 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v87 - v38;
  __chkstk_darwin(v40);
  v90 = &v87 - v41;
  v42 = a1;
  sub_10007275C();
  (*(v23 + 104))(v26, enum case for Image.ResizingMode.stretch(_:), v22);
  sub_1000727DC();

  (*(v23 + 8))(v26, v22);
  *v30 = sub_1000728AC();
  *(v30 + 1) = v43;
  v44 = sub_10000388C(&qword_100094978, &qword_100074E80);
  sub_10005544C(&v30[*(v44 + 44)], 0.3);

  v45 = &v30[*(sub_10000388C(&qword_100094980, &unk_100073AC0) + 36)];
  *v45 = 0;
  *(v45 + 4) = 257;
  v46 = &v30[*(sub_10000388C(&qword_100094930, &qword_100076430) + 36)];
  v47 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
  v48 = enum case for ColorScheme.light(_:);
  v49 = sub_100071EAC();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = swift_getKeyPath();
  v50 = &v30[*(v27 + 36)];
  v51 = enum case for CoordinateSpace.global(_:);
  v52 = sub_100071F9C();
  (*(*(v52 - 8) + 104))(v50, v51, v52);
  v53 = sub_1000728AC();
  v55 = v54;
  v56 = &v50[*(sub_10000388C(&qword_1000956A8, &qword_100077150) + 36)];
  *v56 = v53;
  v56[1] = v55;
  v57 = v89;
  sub_10005ADAC();
  sub_10007261C();
  sub_100004890(v30, &qword_100096C20, &qword_100076418);
  LODWORD(v27) = *(type metadata accessor for CPLargeContentView() + 28);
  sub_100071F3C();
  v59 = v58;
  sub_100071F3C();
  v61 = v60;
  sub_100071F3C();
  sub_1000728AC();
  if (v59 > v61)
  {
    sub_100072CEC();
    v62 = sub_10007239C();
    sub_100071E4C();
  }

  sub_100071FFC();
  sub_100014DEC(v34, v39, &qword_100096C28, &qword_100076420);
  v63 = &v39[*(v88 + 36)];
  v64 = v113;
  *(v63 + 4) = v112;
  *(v63 + 5) = v64;
  *(v63 + 6) = v114;
  v65 = v109;
  *v63 = v108;
  *(v63 + 1) = v65;
  v66 = v111;
  *(v63 + 2) = v110;
  *(v63 + 3) = v66;
  v67 = v90;
  sub_100014DEC(v39, v90, &qword_100096C30, &qword_100076428);
  *v13 = sub_10007223C();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v68 = sub_10000388C(&qword_100096C48, &qword_100076468);
  sub_100059CD4(v57, &v13[*(v68 + 44)]);
  sub_100004C3C(&qword_100096C50, &qword_100096C08, &qword_100076400);
  v69 = v95;
  sub_1000725AC();
  sub_100004890(v13, &qword_100096C08, &qword_100076400);
  v70 = v101;
  sub_1000129F8(v101);
  v71 = v102;
  sub_10007296C();
  v72 = sub_10007295C();
  v73 = *(v105 + 8);
  v74 = v71;
  v75 = v106;
  v73(v74, v106);
  v73(v70, v75);
  v76 = v103;
  v77 = &enum case for BlendMode.destinationOut(_:);
  if ((v72 & 1) == 0)
  {
    v77 = &enum case for BlendMode.normal(_:);
  }

  v78 = v100;
  v79 = v104;
  (*(v103 + 104))(v100, *v77, v104);
  v80 = v92;
  (*(v76 + 32))(&v92[*(v93 + 36)], v78, v79);
  (*(v96 + 32))(v80, v69, v98);
  v81 = v97;
  sub_100014DEC(v80, v97, &qword_100096C18, &qword_100076410);
  v82 = v91;
  sub_100004C94(v67, v91, &qword_100096C30, &qword_100076428);
  v83 = v99;
  sub_100004C94(v81, v99, &qword_100096C18, &qword_100076410);
  v84 = v107;
  sub_100004C94(v82, v107, &qword_100096C30, &qword_100076428);
  v85 = sub_10000388C(&qword_100096C58, &qword_100076470);
  sub_100004C94(v83, v84 + *(v85 + 48), &qword_100096C18, &qword_100076410);
  sub_100004890(v81, &qword_100096C18, &qword_100076410);
  sub_100004890(v67, &qword_100096C30, &qword_100076428);
  sub_100004890(v83, &qword_100096C18, &qword_100076410);
  return sub_100004890(v82, &qword_100096C30, &qword_100076428);
}

uint64_t sub_100059CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_10000388C(&qword_100096C60, &qword_100076478);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v37 - v8);
  v10 = type metadata accessor for CPHeaderGradientView();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v37 - v15);
  v17 = type metadata accessor for CPLargeContentView();
  v18 = *(v17 + 28);
  sub_100071F3C();
  v20 = v19;
  sub_100071F3C();
  v22 = v21 * 0.20625;
  v23 = *(v17 + 32);
  sub_10005AF24(a1 + v23, v16 + *(v11 + 32), type metadata accessor for CPTimelineEntry);
  *v16 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v24 = (v16 + *(v11 + 28));
  *v24 = v20;
  v24[1] = v22;
  sub_100071F3C();
  v26 = v25;
  sub_100071F3C();
  v28 = v27 * 0.2975;
  v29 = type metadata accessor for CPTitleGradientView();
  sub_10005AF24(a1 + v23, v9 + *(v29 + 24), type metadata accessor for CPTimelineEntry);
  *v9 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v30 = (v9 + *(v29 + 20));
  *v30 = v26;
  v30[1] = v28;
  *(v9 + *(v4 + 44)) = xmmword_100076170;
  v31 = v38;
  sub_10005AF24(v16, v38, type metadata accessor for CPHeaderGradientView);
  v32 = v39;
  sub_100004C94(v9, v39, &qword_100096C60, &qword_100076478);
  v33 = v40;
  sub_10005AF24(v31, v40, type metadata accessor for CPHeaderGradientView);
  v34 = sub_10000388C(&qword_100096C68, &qword_100076480);
  v35 = v33 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 0;
  sub_100004C94(v32, v33 + *(v34 + 64), &qword_100096C60, &qword_100076478);
  sub_100004890(v9, &qword_100096C60, &qword_100076478);
  sub_10005AF8C(v16, type metadata accessor for CPHeaderGradientView);
  sub_100004890(v32, &qword_100096C60, &qword_100076478);
  return sub_10005AF8C(v31, type metadata accessor for CPHeaderGradientView);
}

uint64_t sub_10005A018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_10000388C(&qword_1000958C8, &unk_100076370);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v5 = (&v28 - v4);
  v6 = sub_1000729DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000388C(&qword_1000958D0, &unk_100074DD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = a1 + *(type metadata accessor for CPLargeContentView() + 32);
  v16 = type metadata accessor for CPTimelineEntry();
  if (*(v15 + *(v16 + 32)) == 1 && (sub_100057350() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_1000958E8, &qword_1000958C8, &unk_100076370);
    v22 = v29;
    sub_10007230C();
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v17 = *(v15 + *(v16 + 20));
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v23 = *(v15 + *(v16 + 20));
    }

    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_10:
      v21 = 1;
      v22 = v29;
LABEL_21:
      v27 = sub_10000388C(&qword_1000958D8, &unk_100076380);
      return (*(*(v27 - 8) + 56))(v22, v21, 1, v27);
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_100072E6C();
    if (*(v19 + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

    if (*(v19 + 32))
    {
      goto LABEL_8;
    }

LABEL_17:
    v24 = sub_10004D174(0xD000000000000019, 0x8000000100077CA0);
    if (v24)
    {
      v20 = v24;
LABEL_19:
      v22 = v29;
      *v5 = sub_1000728AC();
      v5[1] = v25;
      v26 = sub_10000388C(&qword_1000958E0, &unk_100074DE0);
      sub_10005A438(v20, a1, v19, v5 + *(v26 + 44));
      sub_100004C94(v5, v14, &qword_1000958C8, &unk_100076370);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_1000958E8, &qword_1000958C8, &unk_100076370);
      sub_10007230C();

      sub_100004890(v5, &qword_1000958C8, &unk_100076370);
      goto LABEL_20;
    }

LABEL_8:
    sub_100057148(v10);
    v20 = sub_10001D980(v10, 1);
    (*(v7 + 8))(v10, v6);
    if (!v20)
    {

      goto LABEL_10;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A438@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v71 = sub_10000388C(&qword_1000958F0, &unk_100076390);
  v7 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v9 = (&v63 - v8);
  v64 = sub_10000388C(&qword_100095228, &qword_1000745D0);
  v10 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  KeyPath = &v63 - v11;
  v66 = sub_10000388C(&qword_1000958F8, &unk_1000763A0);
  v12 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v69 = &v63 - v13;
  v72 = sub_10000388C(&qword_100095900, &unk_100074DF0);
  v14 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v68 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v70 = &v63 - v17;
  v18 = sub_10000388C(&qword_100095908, &unk_1000763B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  v25 = sub_10007277C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_10007275C();
  (*(v26 + 104))(v29, enum case for Image.ResizingMode.stretch(_:), v25);
  v31 = sub_1000727DC();

  (*(v26 + 8))(v29, v25);
  sub_10007290C();
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(type metadata accessor for CPLargeContentView() + 32);
  v37 = type metadata accessor for CPTimelineEntry();
  if (*(v36 + v37[6]) == 1 && (*(v36 + v37[7]) & 1) == 0 && (*(v36 + v37[8]) & 1) == 0 && *(v36 + v37[9]) == 1)
  {
    v38 = *(v36 + v37[5]);
    if (v38 >> 62)
    {
      if (v38 < 0)
      {
        v60 = *(v36 + v37[5]);
      }

      if (sub_100072EDC() >= 1)
      {
        goto LABEL_7;
      }
    }

    else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_7:
      v39 = KeyPath;
      sub_10007287C();
      v40 = sub_1000723AC();
      *(v39 + *(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)) = v40;
      sub_1000726CC();
      v41 = sub_1000726FC();

      v42 = sub_1000723AC();
      v43 = v65;
      v44 = v39 + *(v64 + 36);
      *v44 = v41;
      *(v44 + 8) = v42;
      v45 = *(v43 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
      if (v45)
      {
        v46 = *(v43 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
      }

      else
      {
        v47 = *(v43 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
        if (v47)
        {
          v48 = v47;
        }

        else
        {
          [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
        }
      }

      v49 = v45;
      sub_1000726AC();
      v50 = sub_1000726FC();

      v51 = sub_1000723AC();
      v52 = v69;
      sub_100014DEC(v39, v69, &qword_100095228, &qword_1000745D0);
      v53 = v52 + *(v66 + 36);
      *v53 = v50;
      *(v53 + 8) = v51;
      KeyPath = swift_getKeyPath();
      v54 = v68;
      v55 = &v68[*(v72 + 36)];
      v56 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
      v57 = enum case for ColorScheme.light(_:);
      v58 = sub_100071EAC();
      (*(*(v58 - 8) + 104))(&v55[v56], v57, v58);
      *v55 = KeyPath;
      sub_100014DEC(v52, v54, &qword_1000958F8, &unk_1000763A0);
      v59 = v70;
      sub_100014DEC(v54, v70, &qword_100095900, &unk_100074DF0);
      sub_100004C94(v59, v9, &qword_100095900, &unk_100074DF0);
      swift_storeEnumTagMultiPayload();
      sub_100028240();
      sub_10007230C();
      sub_100004890(v59, &qword_100095900, &unk_100074DF0);
      goto LABEL_19;
    }
  }

  if (qword_1000946E0 != -1)
  {
    swift_once();
  }

  *v9 = qword_100099978;
  swift_storeEnumTagMultiPayload();
  sub_100028240();

  sub_10007230C();
LABEL_19:
  sub_100004C94(v24, v21, &qword_100095908, &unk_1000763B0);
  *a4 = v31;
  *(a4 + 8) = xmmword_100076180;
  *(a4 + 24) = 0xBFF0000000000000;
  *(a4 + 32) = v33;
  *(a4 + 40) = v35;
  v61 = sub_10000388C(&qword_100095958, &qword_100074E20);
  sub_100004C94(v21, a4 + *(v61 + 48), &qword_100095908, &unk_1000763B0);

  sub_100004890(v24, &qword_100095908, &unk_1000763B0);
  sub_100004890(v21, &qword_100095908, &unk_1000763B0);
}

uint64_t sub_10005AB8C()
{
  v1 = sub_10007236C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100096B70, &qword_100076218);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v13 - v8);
  *v9 = sub_1000728AC();
  v9[1] = v10;
  v11 = sub_10000388C(&qword_100096B78, &qword_100076220);
  sub_1000574A8(v0, (v9 + *(v11 + 44)));
  sub_10007235C();
  sub_1000728AC();
  sub_100004C3C(&qword_100096B80, &qword_100096B70, &qword_100076218);
  sub_10007265C();
  (*(v2 + 8))(v5, v1);
  return sub_100004890(v9, &qword_100096B70, &qword_100076218);
}

unint64_t sub_10005ADAC()
{
  result = qword_100096C38;
  if (!qword_100096C38)
  {
    sub_1000038D4(&qword_100096C20, &qword_100076418);
    sub_100004ACC();
    sub_100004C3C(&qword_100096C40, &qword_1000956A8, &qword_100077150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C38);
  }

  return result;
}

unint64_t sub_10005AE6C()
{
  result = qword_100096C88;
  if (!qword_100096C88)
  {
    sub_1000038D4(&qword_100096C80, &unk_1000764A0);
    sub_100004C3C(&qword_100095A00, &qword_1000959F8, &unk_100074EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096C88);
  }

  return result;
}

uint64_t sub_10005AF24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005AF8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005AFEC()
{
  sub_1000038D4(&qword_100096B70, &qword_100076218);
  sub_100004C3C(&qword_100096B80, &qword_100096B70, &qword_100076218);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10005B0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CPTimelineEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10005B1BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CPTimelineEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CPEntryView()
{
  result = qword_100096CF0;
  if (!qword_100096CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005B310()
{
  sub_10000FADC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CPTimelineEntry();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10005B3B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100004C94(v2, &v17 - v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10005B5B0()
{
  v0 = sub_100071DAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, enum case for GKFeatureFlags.GameOverlayUI(_:), v0, v3);
  v6 = sub_100071D9C();
  (*(v1 + 8))(v5, v0);
  if ((v6 & 1) != 0 && (v7 = [objc_opt_self() currentDevice], v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, !v8))
  {
    return sub_100071DEC();
  }

  else
  {
    return sub_100071C8C();
  }
}

uint64_t sub_10005B710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100071F5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CPTimelineEntry();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CPEntryView();
  sub_10005EFD8(v2 + *(v14 + 20), v13, type metadata accessor for CPTimelineEntry);
  (*(v6 + 16))(v9, a1, v5);
  sub_100071E3C();
  v15 = sub_100071E1C();
  v16 = sub_100071E2C();

  v17 = 0x8000000100077950;
  if (v16)
  {
    v18 = 0xD000000000000015;
  }

  else
  {
    v18 = 0x5F4E495F4E474953;
  }

  if ((v16 & 1) == 0)
  {
    v17 = 0xEF4547415353454DLL;
  }

  v31 = v17;
  v32 = v18;
  v19 = sub_100071E1C();
  v20 = sub_100071E2C();

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0xD000000000000016;
  }

  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x8000000100077930;
  }

  KeyPath = swift_getKeyPath();
  v24 = type metadata accessor for CPMessageView();
  *(a2 + v24[5]) = KeyPath;
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v24[6]) = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  v25 = swift_getKeyPath();
  *a2 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v26 = a2 + v24[7];
  *v26 = v25;
  v26[8] = 0;
  sub_10005EB38(v13, a2 + v24[8], type metadata accessor for CPTimelineEntry);
  result = (*(v6 + 32))(a2 + v24[9], v9, v5);
  v28 = (a2 + v24[10]);
  v29 = v31;
  *v28 = v32;
  v28[1] = v29;
  v30 = (a2 + v24[11]);
  *v30 = v21;
  v30[1] = v22;
  return result;
}

uint64_t sub_10005BA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v88 = a2;
  v95 = a3;
  v83 = type metadata accessor for CPExtraLargeContentView();
  v3 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v78 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_10000388C(&qword_100096E10, &qword_100076650);
  v5 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v82 = &v77 - v6;
  v91 = sub_10000388C(&qword_100096DF8, &qword_100076648);
  v7 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v84 = &v77 - v8;
  v81 = type metadata accessor for CPLargeContentView();
  v9 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v79 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = type metadata accessor for CPMediumContentView();
  v11 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v85 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_10000388C(&qword_100096E18, &qword_100076658);
  v13 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v93 = &v77 - v14;
  v89 = sub_10000388C(&qword_100096E20, &qword_100076660);
  v15 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v17 = &v77 - v16;
  v86 = sub_10000388C(&qword_100096E28, &qword_100076668);
  v18 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v20 = &v77 - v19;
  v90 = sub_10000388C(&qword_100096DD8, &qword_100076640);
  v21 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v23 = &v77 - v22;
  v96 = sub_10000388C(&qword_100096DC8, &qword_100076638);
  v24 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v26 = &v77 - v25;
  v27 = type metadata accessor for CPSmallContentView();
  v28 = *(*(v27 - 1) + 64);
  __chkstk_darwin(v27);
  v30 = (&v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_1000729DC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005B3B0(v35);
  v36 = (*(v32 + 88))(v35, v31);
  if (v36 == enum case for WidgetFamily.systemSmall(_:))
  {
    v37 = v27[7];
    v38 = sub_100071F5C();
    (*(*(v38 - 8) + 16))(v30 + v37, v87, v38);
    sub_10005EFD8(v88, v30 + v27[8], type metadata accessor for CPTimelineEntry);
    *(v30 + v27[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *v30 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v40 = v30 + v27[6];
    *v40 = KeyPath;
    v40[8] = 0;
    v41 = v30 + v27[9];
    type metadata accessor for CGRect(0);
    v97 = 0u;
    v98 = 0u;
    sub_1000727FC();
    v42 = v101;
    v43 = v100;
    *v41 = v99;
    *(v41 + 1) = v43;
    *(v41 + 4) = v42;
    sub_10005EFD8(v30, v20, type metadata accessor for CPSmallContentView);
    swift_storeEnumTagMultiPayload();
    sub_10005EF90(&qword_100096DE0, type metadata accessor for CPSmallContentView);
    sub_10005EF90(&qword_100096DE8, type metadata accessor for CPMediumContentView);
    sub_10007230C();
    sub_100004C94(v23, v17, &qword_100096DD8, &qword_100076640);
    swift_storeEnumTagMultiPayload();
    sub_10005EDB8();
    sub_10005EEA4();
    sub_10007230C();
    sub_100004890(v23, &qword_100096DD8, &qword_100076640);
    sub_100004C94(v26, v93, &qword_100096DC8, &qword_100076638);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(v26, &qword_100096DC8, &qword_100076638);
    v44 = type metadata accessor for CPSmallContentView;
LABEL_5:
    v53 = v44;
    v54 = v30;
    return sub_10005F040(v54, v53);
  }

  if (v36 == enum case for WidgetFamily.systemMedium(_:))
  {
    v45 = v92;
    v46 = *(v92 + 28);
    v47 = sub_100071F5C();
    v30 = v85;
    (*(*(v47 - 8) + 16))(v85 + v46, v87, v47);
    sub_10005EFD8(v88, v30 + v45[8], type metadata accessor for CPTimelineEntry);
    *(v30 + v45[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v48 = swift_getKeyPath();
    *v30 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v49 = v30 + v45[6];
    *v49 = v48;
    v49[8] = 0;
    v50 = v30 + v45[9];
    type metadata accessor for CGRect(0);
    v97 = 0u;
    v98 = 0u;
    sub_1000727FC();
    v51 = v101;
    v52 = v100;
    *v50 = v99;
    *(v50 + 1) = v52;
    *(v50 + 4) = v51;
    sub_10005EFD8(v30, v20, type metadata accessor for CPMediumContentView);
    swift_storeEnumTagMultiPayload();
    sub_10005EF90(&qword_100096DE0, type metadata accessor for CPSmallContentView);
    sub_10005EF90(&qword_100096DE8, type metadata accessor for CPMediumContentView);
    sub_10007230C();
    sub_100004C94(v23, v17, &qword_100096DD8, &qword_100076640);
    swift_storeEnumTagMultiPayload();
    sub_10005EDB8();
    sub_10005EEA4();
    sub_10007230C();
    sub_100004890(v23, &qword_100096DD8, &qword_100076640);
    sub_100004C94(v26, v93, &qword_100096DC8, &qword_100076638);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(v26, &qword_100096DC8, &qword_100076638);
    v44 = type metadata accessor for CPMediumContentView;
    goto LABEL_5;
  }

  if (v36 == enum case for WidgetFamily.systemLarge(_:))
  {
    v56 = v81;
    v57 = *(v81 + 28);
    v58 = sub_100071F5C();
    v59 = v79;
    (*(*(v58 - 8) + 16))(v79 + v57, v87, v58);
    sub_10005EFD8(v88, v59 + v56[8], type metadata accessor for CPTimelineEntry);
    *(v59 + v56[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v60 = swift_getKeyPath();
    *v59 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v61 = v59 + v56[6];
    *v61 = v60;
    v61[8] = 0;
    v62 = v59 + v56[9];
    type metadata accessor for CGRect(0);
    v97 = 0u;
    v98 = 0u;
    sub_1000727FC();
    v63 = v101;
    v64 = v100;
    *v62 = v99;
    *(v62 + 1) = v64;
    *(v62 + 4) = v63;
    sub_10005EFD8(v59, v82, type metadata accessor for CPLargeContentView);
    swift_storeEnumTagMultiPayload();
    sub_10005EF90(&qword_100096E00, type metadata accessor for CPLargeContentView);
    sub_10005EF90(&qword_100096E08, type metadata accessor for CPExtraLargeContentView);
    v65 = v84;
    sub_10007230C();
    sub_100004C94(v65, v17, &qword_100096DF8, &qword_100076648);
    swift_storeEnumTagMultiPayload();
    sub_10005EDB8();
    sub_10005EEA4();
    sub_10007230C();
    sub_100004890(v65, &qword_100096DF8, &qword_100076648);
    sub_100004C94(v26, v93, &qword_100096DC8, &qword_100076638);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(v26, &qword_100096DC8, &qword_100076638);
    v66 = type metadata accessor for CPLargeContentView;
LABEL_12:
    v53 = v66;
    v54 = v59;
    return sub_10005F040(v54, v53);
  }

  v67 = v93;
  if (v36 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v68 = v83;
    v69 = *(v83 + 28);
    v70 = sub_100071F5C();
    v59 = v78;
    (*(*(v70 - 8) + 16))(v78 + v69, v87, v70);
    sub_10005EFD8(v88, v59 + v68[8], type metadata accessor for CPTimelineEntry);
    *(v59 + v68[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v71 = swift_getKeyPath();
    *v59 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v72 = v59 + v68[6];
    *v72 = v71;
    v72[8] = 0;
    v73 = v59 + v68[9];
    type metadata accessor for CGRect(0);
    v97 = 0u;
    v98 = 0u;
    sub_1000727FC();
    v74 = v101;
    v75 = v100;
    *v73 = v99;
    *(v73 + 1) = v75;
    *(v73 + 4) = v74;
    sub_10005EFD8(v59, v82, type metadata accessor for CPExtraLargeContentView);
    swift_storeEnumTagMultiPayload();
    sub_10005EF90(&qword_100096E00, type metadata accessor for CPLargeContentView);
    sub_10005EF90(&qword_100096E08, type metadata accessor for CPExtraLargeContentView);
    v76 = v84;
    sub_10007230C();
    sub_100004C94(v76, v17, &qword_100096DF8, &qword_100076648);
    swift_storeEnumTagMultiPayload();
    sub_10005EDB8();
    sub_10005EEA4();
    sub_10007230C();
    sub_100004890(v76, &qword_100096DF8, &qword_100076648);
    sub_100004C94(v26, v67, &qword_100096DC8, &qword_100076638);
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    sub_100004890(v26, &qword_100096DC8, &qword_100076638);
    v66 = type metadata accessor for CPExtraLargeContentView;
    goto LABEL_12;
  }

  if (v36 == enum case for WidgetFamily.accessoryCircular(_:) || v36 == enum case for WidgetFamily.accessoryRectangular(_:) || v36 == enum case for WidgetFamily.accessoryInline(_:))
  {
    LOBYTE(v97) = 0;
    sub_10007230C();
    *v67 = v99;
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    return sub_10007230C();
  }

  else
  {
    LOBYTE(v97) = 1;
    sub_10007230C();
    *v67 = v99;
    swift_storeEnumTagMultiPayload();
    sub_10000388C(&qword_100096268, &qword_1000757F0);
    sub_10005ED2C();
    sub_10004B940();
    sub_10007230C();
    return (*(v32 + 8))(v35, v31);
  }
}

uint64_t sub_10005CC80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a2;
  v96 = a1;
  v80 = sub_10000388C(&qword_100096D88, &qword_100076588);
  v3 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v79[1] = v79 - v4;
  v5 = sub_1000729DC();
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  __chkstk_darwin(v5);
  v83 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CPMessageView();
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = (v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_10000388C(&qword_100096D90, &qword_100076590);
  v12 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v14 = v79 - v13;
  v15 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v82 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v79 - v19;
  v21 = sub_100071FCC();
  v91 = *(v21 - 8);
  v92 = v21;
  v22 = *(v91 + 64);
  __chkstk_darwin(v21);
  v90 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CPTimelineEntry();
  v25 = *(*(v24 - 1) + 64);
  __chkstk_darwin(v24);
  v27 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10000388C(&qword_100096D98, &qword_100076598);
  v28 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v81 = v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v79 - v31;
  v33 = sub_10000388C(&qword_100096DA0, &qword_1000765A0);
  v88 = *(v33 - 8);
  v89 = v33;
  v34 = *(v88 + 64);
  __chkstk_darwin(v33);
  v36 = v79 - v35;
  v87 = sub_10000388C(&qword_100096DA8, &qword_1000765A8);
  v37 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v86 = v79 - v38;
  v39 = v2 + *(type metadata accessor for CPEntryView() + 20);
  if (*(v39 + v24[6]) != 1)
  {
    sub_10005B710(v96, v11);
    sub_100071C8C();
    v45 = sub_10005EF90(&qword_100096DB0, type metadata accessor for CPMessageView);
    sub_1000725BC();
    sub_100004890(v20, &qword_100094E50, &qword_100074180);
    sub_10005F040(v11, type metadata accessor for CPMessageView);
    v97 = v8;
    v98 = v45;
    swift_getOpaqueTypeConformance2();
LABEL_7:
    result = sub_10007281C();
    *v95 = result;
    return result;
  }

  v79[0] = v14;
  if (*(v39 + v24[7]) == 1)
  {
    sub_100071D3C();
    if (qword_100094728 != -1)
    {
      swift_once();
    }

    *&v27[v24[5]] = qword_1000999E8;
    v27[v24[6]] = 1;
    v27[v24[7]] = 0;
    v27[v24[8]] = 1;
    v27[v24[9]] = 0;

    sub_10005BA38(v96, v27, v32);
    sub_10005F040(v27, type metadata accessor for CPTimelineEntry);
    v40 = v90;
    sub_100071FBC();
    v41 = sub_10005ECA0();
    v42 = v93;
    sub_10007268C();
    (*(v91 + 8))(v40, v92);
    sub_100004890(v32, &qword_100096D98, &qword_100076598);
    sub_10005B5B0();
    v97 = v42;
    v98 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v89;
    sub_1000725BC();
    sub_100004890(v20, &qword_100094E50, &qword_100074180);
    (*(v88 + 8))(v36, v44);
    v97 = v44;
    v98 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    goto LABEL_7;
  }

  if ((*(v39 + v24[9]) & 1) == 0)
  {
    v55 = v11;
    sub_10005EFD8(v39, v11 + v8[8], type metadata accessor for CPTimelineEntry);
    v56 = v8[9];
    v57 = sub_100071F5C();
    (*(*(v57 - 8) + 16))(v11 + v56, v96, v57);
    *(v11 + v8[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    *(v11 + v8[6]) = swift_getKeyPath();
    sub_10000388C(&qword_100094900, &qword_1000762D0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *v11 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v59 = v11 + v8[7];
    *v59 = KeyPath;
    v59[8] = 0;
    v60 = (v11 + v8[10]);
    *v60 = 0xD000000000000019;
    v60[1] = 0x80000001000778F0;
    v61 = (v11 + v8[11]);
    *v61 = 0;
    v61[1] = 0;
    v62 = v83;
    sub_10005B3B0(v83);
    sub_10005EF90(&qword_100094E70, &type metadata accessor for WidgetFamily);
    v63 = v85;
    sub_100072FEC();
    (*(v84 + 8))(v62, v63);
    sub_100071DFC();

    v64 = sub_10005EF90(&qword_100096DB0, type metadata accessor for CPMessageView);
    sub_1000725BC();
    sub_100004890(v20, &qword_100094E50, &qword_100074180);
    sub_10005F040(v55, type metadata accessor for CPMessageView);
    v97 = v8;
    v98 = v64;
    swift_getOpaqueTypeConformance2();
    goto LABEL_7;
  }

  v47 = *(v39 + v24[5]);
  v48 = v20;
  if (v47 >> 62)
  {
    if (v47 < 0)
    {
      v78 = *(v39 + v24[5]);
    }

    v49 = sub_100072EDC();
  }

  else
  {
    v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v8;
  v51 = v11;
  v52 = v96;
  if (!v49)
  {
    sub_10005EFD8(v39, v51 + v50[8], type metadata accessor for CPTimelineEntry);
    v65 = v50[9];
    v66 = sub_100071F5C();
    (*(*(v66 - 8) + 16))(v51 + v65, v52, v66);
    *(v51 + v50[5]) = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    *(v51 + v50[6]) = swift_getKeyPath();
    sub_10000388C(&qword_100094900, &qword_1000762D0);
    swift_storeEnumTagMultiPayload();
    v67 = swift_getKeyPath();
    *v51 = swift_getKeyPath();
    sub_10000388C(&qword_100094910, &unk_100076340);
    swift_storeEnumTagMultiPayload();
    v68 = v51 + v50[7];
    *v68 = v67;
    v68[8] = 0;
    v69 = (v51 + v50[10]);
    *v69 = 0xD000000000000017;
    v69[1] = 0x8000000100077E50;
    v70 = (v51 + v50[11]);
    *v70 = 0xD00000000000001ELL;
    v70[1] = 0x8000000100077E70;
    sub_10005B5B0();
    v71 = sub_10005EF90(&qword_100096DB0, type metadata accessor for CPMessageView);
    sub_1000725BC();
    sub_100004890(v48, &qword_100094E50, &qword_100074180);
    sub_10005F040(v51, type metadata accessor for CPMessageView);
    v97 = v50;
    v98 = v71;
    swift_getOpaqueTypeConformance2();
    goto LABEL_7;
  }

  v53 = v81;
  sub_10005BA38(v96, v39, v81);
  if (*(v39 + v24[8]) == 1)
  {
    v54 = v82;
    sub_10005B5B0();
LABEL_25:
    v76 = sub_10005ECA0();
    v77 = v93;
    sub_1000725BC();
    sub_100004890(v54, &qword_100094E50, &qword_100074180);
    sub_100004890(v53, &qword_100096D98, &qword_100076598);
    v97 = v77;
    v98 = v76;
    swift_getOpaqueTypeConformance2();
    goto LABEL_7;
  }

  if (v47 >> 62)
  {
    result = sub_100072EDC();
  }

  else
  {
    result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v82;
  if (!result)
  {
    v75 = sub_100071C9C();
    (*(*(v75 - 8) + 56))(v54, 1, 1, v75);
    goto LABEL_25;
  }

  if ((v47 & 0xC000000000000001) != 0)
  {
    sub_100072E6C();
    goto LABEL_23;
  }

  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v72 = *(v47 + 32);

LABEL_23:
    v73 = v83;
    sub_10005B3B0(v83);
    sub_10004CE40(0xD000000000000015, 0x80000001000776C0, v73, v54);

    (*(v84 + 8))(v73, v85);
    v74 = sub_100071C9C();
    (*(*(v74 - 8) + 56))(v54, 0, 1, v74);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005DAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v29 = sub_10000388C(&qword_100096D28, &qword_100076510);
  v5 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v7 = &v27 - v6;
  v28 = sub_100071FCC();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000388C(&qword_100096D30, &qword_100076518);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = sub_10000388C(&qword_100096D38, &qword_100076520);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v27 - v19);
  *v20 = sub_1000728AC();
  v20[1] = v21;
  v22 = sub_10000388C(&qword_100096D40, &qword_100076528);
  sub_10005DECC(a2, a1, (v20 + *(v22 + 44)));
  v23 = a2 + *(type metadata accessor for CPEntryView() + 20);
  if (*(v23 + *(type metadata accessor for CPTimelineEntry() + 32)) == 1)
  {
    sub_100071FBC();
    v24 = sub_100004C3C(&qword_100096D48, &qword_100096D38, &qword_100076520);
    sub_10007268C();
    (*(v8 + 8))(v11, v28);
    (*(v13 + 16))(v7, v16, v12);
    swift_storeEnumTagMultiPayload();
    v31 = v17;
    v32 = v24;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    sub_100004C94(v20, v7, &qword_100096D38, &qword_100076520);
    swift_storeEnumTagMultiPayload();
    v25 = sub_100004C3C(&qword_100096D48, &qword_100096D38, &qword_100076520);
    v31 = v17;
    v32 = v25;
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
  }

  return sub_100004890(v20, &qword_100096D38, &qword_100076520);
}

uint64_t sub_10005DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a3;
  v5 = type metadata accessor for CPTimelineEntry();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100071F5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10000388C(&qword_100096D50, &qword_100076530);
  v14 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v59 = &v51 - v15;
  v63 = sub_10000388C(&qword_100096D58, &qword_100076538);
  v16 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v65 = &v51 - v17;
  v58 = sub_100071FCC();
  v56 = *(v58 - 8);
  v18 = *(v56 + 64);
  __chkstk_darwin(v58);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CPBackgroundView();
  v21 = *(*(v20 - 1) + 64);
  __chkstk_darwin(v20);
  v23 = (&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = (&v51 - v25);
  v60 = sub_10000388C(&qword_100096D60, &qword_100076540);
  v57 = *(v60 - 8);
  v27 = *(v57 + 64);
  __chkstk_darwin(v60);
  v55 = &v51 - v28;
  v29 = sub_10000388C(&qword_100096D68, &qword_100076548);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v64 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v61 = &v51 - v33;
  sub_10005CC80(a2, &v68);
  v62 = v68;
  v34 = a1 + *(type metadata accessor for CPEntryView() + 20);
  if (*(v34 + v5[6]) != 1)
  {
    (*(v10 + 16))(v13, a2, v9);
    sub_10005EFD8(v34, v8, type metadata accessor for CPTimelineEntry);
    goto LABEL_7;
  }

  v51 = v13;
  v52 = v8;
  v53 = v9;
  if (*(v34 + v5[7]) != 1)
  {
    v13 = v51;
    v9 = v53;
    (*(v10 + 16))(v51, a2, v53);
    v8 = v52;
    sub_10005EFD8(v34, v52, type metadata accessor for CPTimelineEntry);
    if ((*(v34 + v5[7]) & 1) == 0 && (*(v34 + v5[8]) & 1) == 0 && *(v34 + v5[9]) == 1)
    {
      v49 = *(v34 + v5[5]);
      if (v49 >> 62)
      {
        if (sub_100072EDC() < 1)
        {
          goto LABEL_23;
        }

        v50 = sub_100072EDC();
        v8 = v52;
        v9 = v53;
        v13 = v51;
        if (v50)
        {
LABEL_15:
          if ((v49 & 0xC000000000000001) != 0)
          {
            v42 = sub_100072E6C();
            goto LABEL_8;
          }

          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v42 = *(v49 + 32);

            goto LABEL_8;
          }

          __break(1u);
LABEL_23:
          v42 = 0;
          v8 = v52;
          v9 = v53;
          v13 = v51;
          goto LABEL_8;
        }
      }

      else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

LABEL_7:
    v42 = 0;
LABEL_8:
    *v23 = swift_getKeyPath();
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 32))(v23 + v20[5], v13, v9);
    sub_10005EB38(v8, v23 + v20[6], type metadata accessor for CPTimelineEntry);
    *(v23 + v20[7]) = v42;
    v43 = sub_10005EF90(&qword_100096D70, type metadata accessor for CPBackgroundView);
    v44 = v59;
    sub_10007264C();
    sub_10005F040(v23, type metadata accessor for CPBackgroundView);
    sub_100004C94(v44, v65, &qword_100096D50, &qword_100076530);
    swift_storeEnumTagMultiPayload();
    v68 = v20;
    v69 = v43;
    swift_getOpaqueTypeConformance2();
    sub_10005EBA0();
    v41 = v61;
    sub_10007230C();
    sub_100004890(v44, &qword_100096D50, &qword_100076530);
    goto LABEL_9;
  }

  (*(v10 + 16))(v26 + v20[5], a2, v53);
  v35 = v26 + v20[6];
  sub_100071D3C();
  if (qword_100094728 != -1)
  {
    swift_once();
  }

  *&v35[v5[5]] = qword_1000999E8;
  v35[v5[6]] = 1;
  v35[v5[7]] = 0;
  v35[v5[8]] = 1;
  v35[v5[9]] = 0;
  *v26 = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(v26 + v20[7]) = 0;

  v36 = v54;
  sub_100071FBC();
  v37 = sub_10005EF90(&qword_100096D70, type metadata accessor for CPBackgroundView);
  v38 = v55;
  sub_10007268C();
  (*(v56 + 8))(v36, v58);
  sub_10005F040(v26, type metadata accessor for CPBackgroundView);
  v39 = v57;
  v40 = v60;
  (*(v57 + 16))(v65, v38, v60);
  swift_storeEnumTagMultiPayload();
  v68 = v20;
  v69 = v37;
  swift_getOpaqueTypeConformance2();
  sub_10005EBA0();
  v41 = v61;
  sub_10007230C();
  (*(v39 + 8))(v38, v40);
LABEL_9:
  v45 = v64;
  sub_100004C94(v41, v64, &qword_100096D68, &qword_100076548);
  v46 = v67;
  *v67 = v62;
  v47 = sub_10000388C(&qword_100096D80, &qword_100076580);
  sub_100004C94(v45, v46 + *(v47 + 48), &qword_100096D68, &qword_100076548);

  sub_100004890(v41, &qword_100096D68, &qword_100076548);
  sub_100004890(v45, &qword_100096D68, &qword_100076548);
}

uint64_t sub_10005E838@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10005EFD8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CPEntryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10005EB38(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CPEntryView);
  *a2 = sub_10005EAB4;
  a2[1] = v7;
  return result;
}

uint64_t sub_10005E94C()
{
  v1 = type metadata accessor for CPEntryView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000729DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = sub_100071D4C();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *&v8[*(type metadata accessor for CPTimelineEntry() + 20)];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005EAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CPEntryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10005DAD8(a1, v6, a2);
}

uint64_t sub_10005EB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005EBA0()
{
  result = qword_100096D78;
  if (!qword_100096D78)
  {
    sub_1000038D4(&qword_100096D50, &qword_100076530);
    sub_10005EF90(&qword_100096D70, type metadata accessor for CPBackgroundView);
    sub_10005EF90(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096D78);
  }

  return result;
}

unint64_t sub_10005ECA0()
{
  result = qword_100096DB8;
  if (!qword_100096DB8)
  {
    sub_1000038D4(&qword_100096D98, &qword_100076598);
    sub_10005ED2C();
    sub_10004B940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096DB8);
  }

  return result;
}

unint64_t sub_10005ED2C()
{
  result = qword_100096DC0;
  if (!qword_100096DC0)
  {
    sub_1000038D4(&qword_100096DC8, &qword_100076638);
    sub_10005EDB8();
    sub_10005EEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096DC0);
  }

  return result;
}

unint64_t sub_10005EDB8()
{
  result = qword_100096DD0;
  if (!qword_100096DD0)
  {
    sub_1000038D4(&qword_100096DD8, &qword_100076640);
    sub_10005EF90(&qword_100096DE0, type metadata accessor for CPSmallContentView);
    sub_10005EF90(&qword_100096DE8, type metadata accessor for CPMediumContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096DD0);
  }

  return result;
}

unint64_t sub_10005EEA4()
{
  result = qword_100096DF0;
  if (!qword_100096DF0)
  {
    sub_1000038D4(&qword_100096DF8, &qword_100076648);
    sub_10005EF90(&qword_100096E00, type metadata accessor for CPLargeContentView);
    sub_10005EF90(&qword_100096E08, type metadata accessor for CPExtraLargeContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096DF0);
  }

  return result;
}

uint64_t sub_10005EF90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005EFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005F040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005F0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for AFTimelineEntry();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10005F258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100071F5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for AFTimelineEntry();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AFSmallContentView()
{
  result = qword_100096E98;
  if (!qword_100096E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005F418@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000155F4(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10005F600@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_10000388C(&qword_100096ED8, &qword_1000766F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v58 - v4);
  v6 = sub_10000388C(&qword_100096EE0, &qword_100076700);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v58 - v8;
  v10 = sub_10000388C(&qword_100096EE8, &qword_100076708);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v58 - v12;
  v14 = sub_1000729DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for AFSmallContentView() + 20);
  sub_10005F418(v18);
  sub_1000084E0();
  (*(v15 + 8))(v18, v14);
  *v5 = sub_1000728AC();
  v5[1] = v20;
  v21 = sub_10000388C(&qword_100096EF0, &unk_100076710);
  sub_10005FA48(v1, v5 + *(v21 + 44));
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  LOBYTE(v15) = sub_1000723DC();
  *(inited + 32) = v15;
  v23 = sub_1000723FC();
  *(inited + 33) = v23;
  v24 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v15)
  {
    v24 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v23)
  {
    v24 = sub_1000723EC();
  }

  sub_100071E8C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100014DEC(v5, v9, &qword_100096ED8, &qword_1000766F8);
  v33 = &v9[*(v6 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_1000723CC();
  v35 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v34)
  {
    v35 = sub_1000723EC();
  }

  sub_100071E8C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_100014DEC(v9, v13, &qword_100096EE0, &qword_100076700);
  v44 = &v13[*(v10 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = sub_1000723BC();
  v46 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v45)
  {
    v46 = sub_1000723EC();
  }

  sub_100071E8C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v58;
  sub_100014DEC(v13, v58, &qword_100096EE8, &qword_100076708);
  result = sub_10000388C(&qword_100096EF8, &qword_100076720);
  v57 = v55 + *(result + 36);
  *v57 = v46;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  return result;
}

uint64_t sub_10005FA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_10000388C(&qword_100094E50, &qword_100074180);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v36 - v5;
  v41 = sub_10000388C(&qword_100095548, &qword_100074950);
  v37 = *(v41 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v41);
  v8 = &v36 - v7;
  v42 = sub_10000388C(&qword_100096F00, &qword_100076728);
  v38 = *(v42 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v42);
  v11 = &v36 - v10;
  v39 = sub_10000388C(&qword_100096F08, qword_100076730);
  v12 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v14 = &v36 - v13;
  v15 = sub_1000729DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000388C(&qword_100095538, &qword_100074938);
  v20 = *(v40 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v40);
  v23 = &v36 - v22;
  v24 = a1 + *(type metadata accessor for AFSmallContentView() + 24);
  v25 = *(v24 + *(type metadata accessor for AFTimelineEntry() + 36));
  if (*(v25 + 16))
  {
    v26 = *(v25 + 40);
    v27 = *(v25 + 32);

    sub_10005F418(v19);
    v28 = v36;
    sub_100071DCC();
    (*(v16 + 8))(v19, v15);
    sub_100012BA4(v28);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v41;
    sub_1000725FC();
    (*(v37 + 8))(v8, v30);
    v31 = v38;
    v32 = v42;
    (*(v38 + 16))(v14, v11, v42);
    swift_storeEnumTagMultiPayload();
    v44 = v30;
    v45 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10007230C();

    return (*(v31 + 8))(v11, v32);
  }

  else
  {
    sub_10005F418(v19);
    sub_100071DDC();
    (*(v16 + 8))(v19, v15);
    v34 = v40;
    (*(v20 + 16))(v14, v23, v40);
    swift_storeEnumTagMultiPayload();
    v35 = swift_getOpaqueTypeConformance2();
    v44 = v41;
    v45 = v35;
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10007230C();
    return (*(v20 + 8))(v23, v34);
  }
}

uint64_t sub_100060058(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006010C()
{
  result = qword_100096F28;
  if (!qword_100096F28)
  {
    sub_1000038D4(&qword_100096ED8, &qword_1000766F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096F28);
  }

  return result;
}

uint64_t sub_100060184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100060260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_100060348()
{
  sub_100063E78(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_100024710();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100060404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100004C94(v2, &v17 - v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100060604@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v55 = sub_10000388C(&qword_100097180, &qword_100076AB8);
  v1 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v56 = (&v54 - v2);
  v63 = sub_10000388C(&qword_100097188, &qword_100076AC0);
  v3 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v57 = &v54 - v4;
  v68 = sub_10000388C(&qword_100097190, &qword_100076AC8);
  v5 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v69 = (&v54 - v6);
  v60 = sub_10000388C(&qword_100097198, &qword_100076AD0);
  v7 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v62 = &v54 - v8;
  v58 = sub_10000388C(&qword_1000971A0, &qword_100076AD8);
  v9 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v54 - v10;
  v61 = sub_10000388C(&qword_1000971A8, &qword_100076AE0);
  v11 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v66 = &v54 - v12;
  v67 = sub_10000388C(&qword_1000971B0, &qword_100076AE8);
  v13 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v64 = &v54 - v14;
  v15 = sub_10007277C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000388C(&qword_1000971B8, &qword_100076AF0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v24 = sub_10000388C(&qword_1000971C0, &qword_100076AF8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v65 = &v54 - v26;
  v27 = sub_1000729DC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100060404(v31);
  v32 = (*(v28 + 88))(v31, v27);
  if (v32 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_1000727EC();
    (*(v16 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v15);
    v33 = sub_1000727DC();

    (*(v16 + 8))(v19, v15);
    v71 = v33;
    sub_1000725FC();

    *&v23[*(v20 + 36)] = 0x3FE999999999999ALL;
    sub_10006418C();
    v34 = v65;
    sub_10007261C();
    sub_100004890(v23, &qword_1000971B8, &qword_100076AF0);
    sub_100004C94(v34, v59, &qword_1000971C0, &qword_100076AF8);
    swift_storeEnumTagMultiPayload();
    sub_1000640D0();
    v35 = v66;
    sub_10007230C();
    sub_100004C94(v35, v62, &qword_1000971A8, &qword_100076AE0);
    swift_storeEnumTagMultiPayload();
    sub_10006404C();
    sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
    v36 = v64;
    sub_10007230C();
    sub_100004890(v35, &qword_1000971A8, &qword_100076AE0);
    sub_100004C94(v36, v69, &qword_1000971B0, &qword_100076AE8);
    swift_storeEnumTagMultiPayload();
    sub_100063F94();
    sub_10007230C();
    sub_100004890(v36, &qword_1000971B0, &qword_100076AE8);
    v37 = v34;
LABEL_5:
    v43 = &qword_1000971C0;
LABEL_6:
    v44 = &qword_100076AF8;
    return sub_100004890(v37, v43, v44);
  }

  v38 = v15;
  v54 = v24;
  v40 = v65;
  v39 = v66;
  if (v32 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_1000727EC();
    (*(v16 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v38);
    v41 = sub_1000727DC();

    (*(v16 + 8))(v19, v38);
    v71 = v41;
    sub_1000725FC();

    *&v23[*(v20 + 36)] = 0x3FE999999999999ALL;
    sub_10006418C();
    sub_10007261C();
    sub_100004890(v23, &qword_1000971B8, &qword_100076AF0);
    sub_100004C94(v40, v59, &qword_1000971C0, &qword_100076AF8);
    swift_storeEnumTagMultiPayload();
    sub_1000640D0();
    sub_10007230C();
    sub_100004C94(v39, v62, &qword_1000971A8, &qword_100076AE0);
    swift_storeEnumTagMultiPayload();
    sub_10006404C();
    sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
    v42 = v64;
    sub_10007230C();
    sub_100004890(v39, &qword_1000971A8, &qword_100076AE0);
    sub_100004C94(v42, v69, &qword_1000971B0, &qword_100076AE8);
    swift_storeEnumTagMultiPayload();
    sub_100063F94();
    sub_10007230C();
    sub_100004890(v42, &qword_1000971B0, &qword_100076AE8);
    v37 = v40;
    goto LABEL_5;
  }

  if (v32 == enum case for WidgetFamily.systemLarge(_:) || v32 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_1000727EC();
    (*(v16 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v38);
    v49 = sub_1000727DC();

    (*(v16 + 8))(v19, v38);
    v71 = v49;
    sub_1000725FC();

    *&v23[*(v20 + 36)] = 0x3FE999999999999ALL;
    sub_10006418C();
    sub_10007261C();
    sub_100004890(v23, &qword_1000971B8, &qword_100076AF0);
    sub_100004C94(v40, v56, &qword_1000971C0, &qword_100076AF8);
    swift_storeEnumTagMultiPayload();
    sub_1000640D0();
    v50 = v57;
    sub_10007230C();
    sub_100004C94(v50, v62, &qword_100097188, &qword_100076AC0);
    swift_storeEnumTagMultiPayload();
    sub_10006404C();
    sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
    v51 = v64;
    sub_10007230C();
    sub_100004890(v50, &qword_100097188, &qword_100076AC0);
    sub_100004C94(v51, v69, &qword_1000971B0, &qword_100076AE8);
    swift_storeEnumTagMultiPayload();
    sub_100063F94();
    sub_10007230C();
    sub_100004890(v51, &qword_1000971B0, &qword_100076AE8);
    v37 = v40;
    v43 = &qword_1000971C0;
    goto LABEL_6;
  }

  v46 = enum case for WidgetFamily.accessoryCircular(_:);
  v47 = v32;
  v48 = sub_1000727EC();
  if (v47 != v46 && v47 != enum case for WidgetFamily.accessoryRectangular(_:) && v47 != enum case for WidgetFamily.accessoryInline(_:))
  {
    *v69 = v48;
    swift_storeEnumTagMultiPayload();
    sub_100063F94();
    sub_10007230C();
    return (*(v28 + 8))(v31, v27);
  }

  *v56 = v48;
  swift_storeEnumTagMultiPayload();
  sub_1000640D0();

  v52 = v57;
  sub_10007230C();
  sub_100004C94(v52, v62, &qword_100097188, &qword_100076AC0);
  swift_storeEnumTagMultiPayload();
  sub_10006404C();
  sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
  v53 = v64;
  sub_10007230C();
  sub_100004890(v52, &qword_100097188, &qword_100076AC0);
  sub_100004C94(v53, v69, &qword_1000971B0, &qword_100076AE8);
  swift_storeEnumTagMultiPayload();
  sub_100063F94();
  sub_10007230C();

  v37 = v53;
  v43 = &qword_1000971B0;
  v44 = &qword_100076AE8;
  return sub_100004890(v37, v43, v44);
}

uint64_t sub_100061434()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for AFBackgroundView(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_100072CEC();
    v8 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_100061590@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_10000388C(&qword_100096FD8, &qword_1000767C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v33 = sub_10000388C(&qword_100096FE0, &qword_1000767D0);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10000388C(&qword_100096FE8, &qword_1000767D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  sub_1000618D0(&v31 - v16);
  *v4 = sub_10007223C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v18 = sub_10000388C(&qword_100096FF0, &qword_1000767E0);
  sub_100061EE4(&v4[*(v18 + 44)]);
  sub_100004C3C(&qword_100096FF8, &qword_100096FD8, &qword_1000767C8);
  sub_1000725AC();
  sub_100004890(v4, &qword_100096FD8, &qword_1000767C8);
  v19 = v14;
  v31 = v14;
  sub_100004C94(v17, v14, &qword_100096FE8, &qword_1000767D8);
  v20 = v5;
  v21 = *(v5 + 16);
  v22 = v32;
  v23 = v10;
  v24 = v10;
  v25 = v33;
  v21(v32, v23, v33);
  v26 = v19;
  v27 = v34;
  sub_100004C94(v26, v34, &qword_100096FE8, &qword_1000767D8);
  v28 = sub_10000388C(&qword_100097000, &qword_1000767E8);
  v21((v27 + *(v28 + 48)), v22, v25);
  v29 = *(v20 + 8);
  v29(v24, v25);
  sub_100004890(v17, &qword_100096FE8, &qword_1000767D8);
  v29(v22, v25);
  return sub_100004890(v31, &qword_100096FE8, &qword_1000767D8);
}

uint64_t sub_1000618D0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_10000388C(&qword_1000970C8, &qword_1000769E8);
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  __chkstk_darwin(v1);
  v52 = (&v48 - v3);
  v4 = type metadata accessor for AFBackgroundImage(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = (&v48 - v8);
  v9 = sub_10000388C(&qword_1000970D0, &qword_1000769F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_10007297C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v48 - v21;
  v23 = sub_100071DAC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v28, enum case for GKFeatureFlags.GameOverlayUI(_:), v23, v26);
  v29 = sub_100071D9C();
  (*(v24 + 8))(v28, v23);
  if (v29)
  {
    v30 = [objc_opt_self() currentDevice];
    v31 = [v30 userInterfaceIdiom];

    if (!v31)
    {
      goto LABEL_5;
    }
  }

  if ((sub_100061434() & 1) != 0 && (sub_1000129F8(v22), sub_10007296C(), sub_100055404(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode), v32 = sub_100072B1C(), v33 = *(v16 + 8), v33(v19, v15), v33(v22, v15), (v32 & 1) == 0))
  {
    if (qword_1000946C8 != -1)
    {
      swift_once();
    }

    v36 = qword_100099960;
    *v14 = sub_10007223C();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v37 = &v14[*(sub_10000388C(&qword_1000970D8, &qword_1000769F8) + 44)];
    KeyPath = swift_getKeyPath();
    v39 = v49;
    *v49 = KeyPath;
    sub_10000388C(&qword_1000948F8, &qword_1000739B0);
    swift_storeEnumTagMultiPayload();
    v40 = v50;
    sub_100063B9C(v39, v50, type metadata accessor for AFBackgroundImage);
    *v37 = 0;
    v37[8] = 0;
    v41 = sub_10000388C(&qword_1000970E0, &qword_100076A38);
    sub_100063B9C(v40, &v37[*(v41 + 48)], type metadata accessor for AFBackgroundImage);
    sub_100063C04(v39, type metadata accessor for AFBackgroundImage);
    sub_100063C04(v40, type metadata accessor for AFBackgroundImage);
    if (qword_1000946D0 != -1)
    {
      swift_once();
    }

    v42 = qword_100099968;
    v43 = v51;
    sub_100004C94(v14, v51, &qword_1000970D0, &qword_1000769F0);
    v44 = v52;
    *v52 = v36;
    v45 = sub_10000388C(&qword_1000970E8, &unk_100076A40);
    sub_100004C94(v43, v44 + *(v45 + 48), &qword_1000970D0, &qword_1000769F0);
    *(v44 + *(v45 + 64)) = v42;
    swift_retain_n();
    swift_retain_n();
    sub_100004890(v14, &qword_1000970D0, &qword_1000769F0);

    sub_100004890(v43, &qword_1000970D0, &qword_1000769F0);

    v46 = v55;
    sub_100063C64(v44, v55);
    v35 = v46;
    v34 = 0;
  }

  else
  {
LABEL_5:
    v34 = 1;
    v35 = v55;
  }

  return (*(v53 + 56))(v35, v34, 1, v54);
}

uint64_t sub_100061EE4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10000388C(&qword_100097008, &qword_1000767F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_10000388C(&qword_100097010, &qword_1000767F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  *v4 = sub_1000721CC();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v15 = sub_10000388C(&qword_100097018, &unk_100076800);
  sub_1000621F0(&v4[*(v15 + 44)]);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  v17 = sub_1000723BC();
  *(inited + 32) = v17;
  v18 = sub_1000723FC();
  *(inited + 33) = v18;
  v19 = sub_1000723DC();
  *(inited + 34) = v19;
  v20 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v17)
  {
    v20 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v18)
  {
    v20 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v19)
  {
    v20 = sub_1000723EC();
  }

  sub_100014DEC(v4, v11, &qword_100097008, &qword_1000767F0);
  v21 = &v11[*(v5 + 36)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  sub_100014DEC(v11, v14, &qword_100097010, &qword_1000767F8);
  sub_100004C94(v14, v8, &qword_100097010, &qword_1000767F8);
  v22 = v25;
  sub_100004C94(v8, v25, &qword_100097010, &qword_1000767F8);
  v23 = v22 + *(sub_10000388C(&qword_100097020, &qword_100076810) + 48);
  *v23 = 0;
  *(v23 + 8) = 0;
  sub_100004890(v14, &qword_100097010, &qword_1000767F8);
  return sub_100004890(v8, &qword_100097010, &qword_1000767F8);
}

uint64_t sub_1000621F0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for GameCenterLogo();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = (&v40 - v5);
  v40 = sub_10007234C();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v40);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000388C(&qword_100097028, &qword_100076818);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = sub_10000388C(&qword_100097030, &qword_100076820);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = sub_10000388C(&qword_100097038, &qword_100076828);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v40 - v24;
  *v13 = sub_1000721CC();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  v26 = sub_10000388C(&qword_100097040, &qword_100076830);
  sub_1000626F4(&v13[*(v26 + 44)]);
  sub_10007233C();
  v27 = sub_100004C3C(&qword_100097048, &qword_100097028, &qword_100076818);
  sub_10007266C();
  (*(v6 + 8))(v9, v40);
  sub_100004890(v13, &qword_100097028, &qword_100076818);
  sub_1000721DC();
  v28 = sub_10007258C();
  v30 = v29;
  LOBYTE(v6) = v31;
  v46 = v10;
  v47 = v27;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  sub_10007263C();
  sub_100004C84(v28, v30, v6 & 1);

  (*(v42 + 8))(v18, v32);
  KeyPath = swift_getKeyPath();
  v34 = v43;
  *v43 = KeyPath;
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  sub_100004C94(v25, v22, &qword_100097038, &qword_100076828);
  v35 = v44;
  sub_100063B9C(v34, v44, type metadata accessor for GameCenterLogo);
  v36 = v45;
  sub_100004C94(v22, v45, &qword_100097038, &qword_100076828);
  v37 = sub_10000388C(&qword_100097050, &unk_100076870);
  v38 = v36 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = 0;
  sub_100063B9C(v35, v36 + *(v37 + 64), type metadata accessor for GameCenterLogo);
  sub_100063C04(v34, type metadata accessor for GameCenterLogo);
  sub_100004890(v25, &qword_100097038, &qword_100076828);
  sub_100063C04(v35, type metadata accessor for GameCenterLogo);
  return sub_100004890(v22, &qword_100097038, &qword_100076828);
}

uint64_t sub_1000626F4@<X0>(char *a1@<X8>)
{
  v107 = a1;
  v89 = sub_10000388C(&qword_100097058, &qword_100077080);
  v1 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v88 = &v86 - v2;
  v91 = sub_10000388C(&qword_100097060, &qword_100076880);
  v3 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v90 = &v86 - v4;
  v106 = sub_10000388C(&qword_100097068, &qword_100076888);
  v105 = *(v106 - 8);
  v5 = *(v105 + 64);
  __chkstk_darwin(v106);
  v87 = &v86 - v6;
  v99 = sub_100071DAC();
  v98 = *(v99 - 8);
  v7 = *(v98 + 64);
  __chkstk_darwin(v99);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_100097070, &qword_100076890);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v104 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = &v86 - v13;
  v96 = sub_10007238C();
  v95 = *(v96 - 8);
  v14 = *(v95 + 64);
  __chkstk_darwin(v96);
  v94 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10000388C(&qword_100097078, &qword_100076898);
  v16 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v18 = &v86 - v17;
  v102 = sub_10000388C(&qword_100097080, &qword_1000768A0);
  v101 = *(v102 - 8);
  v19 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v92 = &v86 - v22;
  sub_1000721DC();
  v23 = sub_10007258C();
  v25 = v24;
  v27 = v26;
  sub_10007248C();
  v28 = sub_10007255C();
  v30 = v29;
  v32 = v31;
  sub_100004C84(v23, v25, v27 & 1);

  sub_10007241C();
  v33 = sub_10007257C();
  v35 = v34;
  v37 = v36;

  sub_100004C84(v28, v30, v32 & 1);

  sub_10007270C();
  v38 = sub_10007256C();
  v40 = v39;
  LOBYTE(v30) = v41;
  v43 = v42;

  sub_100004C84(v33, v35, v37 & 1);

  KeyPath = swift_getKeyPath();
  v45 = swift_getKeyPath();
  v114 = v30 & 1;
  v113 = 0;
  *&v108 = v38;
  *(&v108 + 1) = v40;
  LOBYTE(v109) = v30 & 1;
  *(&v109 + 1) = v43;
  *&v110 = KeyPath;
  *(&v110 + 1) = 1;
  LOBYTE(v111) = 0;
  *(&v111 + 1) = v45;
  v112 = 0x3F847AE147AE147BLL;
  sub_10000388C(&qword_100097088, &qword_100076908);
  sub_100063578();
  sub_1000725FC();
  v115[2] = v110;
  v115[3] = v111;
  v116 = v112;
  v115[0] = v108;
  v115[1] = v109;
  sub_100004890(v115, &qword_100097088, &qword_100076908);
  sub_1000728AC();
  sub_100071F2C();
  v46 = &v18[*(v93 + 36)];
  v47 = v109;
  *v46 = v108;
  *(v46 + 1) = v47;
  *(v46 + 2) = v110;
  v48 = v94;
  sub_10007237C();
  sub_100063630();
  v49 = v92;
  sub_10007267C();
  (*(v95 + 8))(v48, v96);
  sub_100004890(v18, &qword_100097078, &qword_100076898);
  v50 = v98;
  v51 = v97;
  v52 = v99;
  (*(v98 + 104))(v97, enum case for GKFeatureFlags.GameOverlayUI(_:), v99);
  LOBYTE(v48) = sub_100071D9C();
  (*(v50 + 8))(v51, v52);
  if ((v48 & 1) != 0 && (v53 = [objc_opt_self() currentDevice], v54 = objc_msgSend(v53, "userInterfaceIdiom"), v53, !v54))
  {
    v74 = 1;
    v73 = v106;
    v70 = v105;
    v71 = v103;
  }

  else
  {
    v55 = sub_10007276C();
    v56 = sub_10000388C(&qword_1000970A0, &qword_100076928);
    v57 = v88;
    v58 = &v88[*(v56 + 36)];
    v59 = *(sub_10000388C(&qword_100096498, &qword_100076930) + 28);
    v60 = enum case for Image.Scale.small(_:);
    v61 = sub_1000727BC();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    *v57 = v55;
    *(v57 + 8) = 1;
    v62 = sub_10007271C();
    v63 = swift_getKeyPath();
    v64 = (v57 + *(v89 + 36));
    *v64 = v63;
    v64[1] = v62;
    sub_10007248C();
    sub_1000638BC();
    v65 = v90;
    sub_1000725EC();
    sub_100004890(v57, &qword_100097058, &qword_100077080);
    v66 = sub_10007241C();
    v67 = swift_getKeyPath();
    v68 = (v65 + *(v91 + 36));
    *v68 = v67;
    v68[1] = v66;
    sub_100063A84();
    v69 = v87;
    sub_1000725FC();
    sub_100004890(v65, &qword_100097060, &qword_100076880);
    v70 = v105;
    v71 = v103;
    v72 = v69;
    v73 = v106;
    (*(v105 + 32))(v103, v72, v106);
    v74 = 0;
  }

  (*(v70 + 56))(v71, v74, 1, v73);
  v75 = v101;
  v76 = *(v101 + 16);
  v77 = v100;
  v78 = v49;
  v79 = v49;
  v80 = v102;
  v76(v100, v79, v102);
  v81 = v104;
  sub_100004C94(v71, v104, &qword_100097070, &qword_100076890);
  v82 = v107;
  v76(v107, v77, v80);
  v83 = sub_10000388C(&qword_1000970C0, &qword_1000769E0);
  sub_100004C94(v81, &v82[*(v83 + 48)], &qword_100097070, &qword_100076890);
  sub_100004890(v71, &qword_100097070, &qword_100076890);
  v84 = *(v75 + 8);
  v84(v78, v80);
  sub_100004890(v81, &qword_100097070, &qword_100076890);
  return (v84)(v77, v80);
}

uint64_t sub_1000631AC()
{
  v0 = sub_10007236C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100096FC0, &qword_1000767B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v12 - v7);
  *v8 = sub_1000728AC();
  v8[1] = v9;
  v10 = sub_10000388C(&qword_100096FC8, &qword_1000767C0);
  sub_100061590(v8 + *(v10 + 44));
  sub_10007235C();
  sub_1000728AC();
  sub_100004C3C(&qword_100096FD0, &qword_100096FC0, &qword_1000767B8);
  sub_10007265C();
  (*(v1 + 8))(v4, v0);
  return sub_100004890(v8, &qword_100096FC0, &qword_1000767B8);
}

uint64_t sub_1000633B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007206C();
  *a1 = result;
  return result;
}

uint64_t sub_1000633DC(uint64_t *a1)
{
  v1 = *a1;

  return sub_10007207C();
}

uint64_t sub_100063408@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007215C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10006343C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10007215C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100063470(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10007216C();
}

uint64_t sub_1000634A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10007216C();
}

uint64_t sub_1000634D0@<X0>(void *a1@<X8>)
{
  result = sub_1000720CC();
  *a1 = v3;
  return result;
}

uint64_t sub_1000634FC@<X0>(void *a1@<X8>)
{
  result = sub_1000720CC();
  *a1 = v3;
  return result;
}

unint64_t sub_100063578()
{
  result = qword_100097090;
  if (!qword_100097090)
  {
    sub_1000038D4(&qword_100097088, &qword_100076908);
    sub_10004BC0C();
    sub_100004C3C(&qword_1000963D0, &qword_1000963D8, &qword_100076920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097090);
  }

  return result;
}

unint64_t sub_100063630()
{
  result = qword_100097098;
  if (!qword_100097098)
  {
    sub_1000038D4(&qword_100097078, &qword_100076898);
    sub_1000038D4(&qword_100097088, &qword_100076908);
    sub_100063578();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097098);
  }

  return result;
}

uint64_t sub_1000636F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007210C();
  *a1 = result;
  return result;
}

uint64_t sub_100063724(uint64_t *a1)
{
  v1 = *a1;

  return sub_10007211C();
}

uint64_t sub_100063798(uint64_t a1)
{
  v2 = sub_1000727BC();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_10007201C();
}

uint64_t sub_100063864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007206C();
  *a1 = result;
  return result;
}

uint64_t sub_100063890(uint64_t *a1)
{
  v1 = *a1;

  return sub_10007207C();
}

unint64_t sub_1000638BC()
{
  result = qword_1000970A8;
  if (!qword_1000970A8)
  {
    sub_1000038D4(&qword_100097058, &qword_100077080);
    sub_100063974();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970A8);
  }

  return result;
}

unint64_t sub_100063974()
{
  result = qword_1000970B0;
  if (!qword_1000970B0)
  {
    sub_1000038D4(&qword_1000970A0, &qword_100076928);
    sub_10004C650();
    sub_100004C3C(&qword_1000964E0, &qword_100096498, &qword_100076930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970B0);
  }

  return result;
}

uint64_t sub_100063A2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007210C();
  *a1 = result;
  return result;
}

uint64_t sub_100063A58(uint64_t *a1)
{
  v1 = *a1;

  return sub_10007211C();
}

unint64_t sub_100063A84()
{
  result = qword_1000970B8;
  if (!qword_1000970B8)
  {
    sub_1000038D4(&qword_100097060, &qword_100076880);
    sub_1000038D4(&qword_100097058, &qword_100077080);
    sub_1000638BC();
    swift_getOpaqueTypeConformance2();
    sub_100004C3C(&qword_100095B28, &qword_100095B30, &unk_100074FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000970B8);
  }

  return result;
}

uint64_t sub_100063B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100063C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100063C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000970C8, &qword_1000769E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100063D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100063DF0()
{
  sub_100063E78(319, &qword_100094858, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100063E78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100071EBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100063ECC()
{
  sub_1000038D4(&qword_100096FC0, &qword_1000767B8);
  sub_100004C3C(&qword_100096FD0, &qword_100096FC0, &qword_1000767B8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100063F94()
{
  result = qword_1000971C8;
  if (!qword_1000971C8)
  {
    sub_1000038D4(&qword_1000971B0, &qword_100076AE8);
    sub_10006404C();
    sub_10006428C(&qword_1000971E8, &qword_100097188, &qword_100076AC0, sub_1000640D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971C8);
  }

  return result;
}

unint64_t sub_10006404C()
{
  result = qword_1000971D0;
  if (!qword_1000971D0)
  {
    sub_1000038D4(&qword_1000971A8, &qword_100076AE0);
    sub_1000640D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971D0);
  }

  return result;
}

unint64_t sub_1000640D0()
{
  result = qword_1000971D8;
  if (!qword_1000971D8)
  {
    sub_1000038D4(&qword_1000971C0, &qword_100076AF8);
    sub_10006418C();
    sub_100055404(&qword_1000949C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971D8);
  }

  return result;
}

unint64_t sub_10006418C()
{
  result = qword_1000971E0;
  if (!qword_1000971E0)
  {
    sub_1000038D4(&qword_1000971B8, &qword_100076AF0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000971E0);
  }

  return result;
}

uint64_t sub_10006428C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100064330(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_10000388C(&qword_100095260, qword_100074600);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100071F5C();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100064508(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_10000388C(&qword_100095260, qword_100074600);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_100071F5C();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for MessageView()
{
  result = qword_100097258;
  if (!qword_100097258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100064714()
{
  sub_100043980(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_100043980(319, &qword_100094858, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_100043980(319, &unk_1000952D0, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_100071F5C();
        if (v3 <= 0x3F)
        {
          sub_1000544A8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100064884(uint64_t a1)
{
  v2 = sub_10007222C();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_10007205C();
}

uint64_t sub_10006494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v29[2] = a1;
  v30 = a3;
  v29[1] = a2;
  v5 = sub_10007277C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000728AC();
  sub_100071F2C();
  v10 = v48;
  v35 = v47;
  v36 = v49;
  v11 = v50;
  v34 = v50;
  v32 = v51;
  v37 = v52;
  KeyPath = swift_getKeyPath();
  LOBYTE(v77) = v10;
  v33 = v10;
  LOBYTE(v61) = v11;

  sub_1000727EC();
  (*(v6 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v5);
  v12 = sub_1000727DC();

  (*(v6 + 8))(v9, v5);
  sub_1000728AC();
  sub_100071F2C();
  v13 = v53;
  v14 = v54;
  v15 = v55;
  v16 = v56;
  v17 = v57;
  v18 = v58;
  LOBYTE(v77) = v54;
  *&v61 = v35;
  BYTE8(v61) = v10;
  *(&v61 + 9) = *v60;
  HIDWORD(v61) = *&v60[3];
  *&v62 = v36;
  BYTE8(v62) = v34;
  HIDWORD(v62) = *&v59[3];
  *(&v62 + 9) = *v59;
  v19 = KeyPath;
  v20 = v32;
  *&v63 = v32;
  *(&v63 + 1) = v37;
  v21 = v30;
  *&v64 = KeyPath;
  *(&v64 + 1) = v30;
  v40 = v63;
  v41 = v64;
  v38 = v61;
  v39 = v62;
  *&v65 = v12;
  *(&v65 + 1) = v53;
  LOBYTE(v66) = v54;
  DWORD1(v66) = *&v46[3];
  *(&v66 + 1) = *v46;
  *(&v66 + 1) = v55;
  LOBYTE(v67[0]) = v56;
  DWORD1(v67[0]) = *&v45[3];
  *(v67 + 1) = *v45;
  *(&v67[0] + 1) = v57;
  *&v67[1] = v58;
  WORD4(v67[1]) = 256;
  *(v44 + 10) = *(v67 + 10);
  v43 = v66;
  v44[0] = v67[0];
  v42 = v65;
  v22 = v61;
  v23 = v62;
  v24 = v64;
  a4[2] = v63;
  a4[3] = v24;
  *a4 = v22;
  a4[1] = v23;
  v25 = v42;
  v26 = v43;
  v27 = v44[0];
  *(a4 + 106) = *(v44 + 10);
  a4[5] = v26;
  a4[6] = v27;
  a4[4] = v25;
  v68[0] = v12;
  v68[1] = v13;
  v69 = v14;
  *&v70[3] = *&v46[3];
  *v70 = *v46;
  v71 = v15;
  v72 = v16;
  *&v73[3] = *&v45[3];
  *v73 = *v45;
  v74 = v17;
  v75 = v18;
  v76 = 256;
  sub_100004C94(&v61, &v77, &qword_100097450, &qword_100076F28);
  sub_100004C94(&v65, &v77, &qword_100097458, &qword_100076F30);
  sub_100004890(v68, &qword_100097458, &qword_100076F30);
  v77 = v35;
  v78 = v33;
  *v79 = *v60;
  *&v79[3] = *&v60[3];
  v80 = v36;
  v81 = v34;
  *v82 = *v59;
  *&v82[3] = *&v59[3];
  v83 = v20;
  v84 = v37;
  v85 = v19;
  v86 = v21;
  return sub_100004890(&v77, &qword_100097450, &qword_100076F28);
}

uint64_t sub_100064D34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MessageView();
  sub_100004C94(v1 + *(v12 + 20), v11, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000729DC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100064F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_100094900, &qword_1000762D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MessageView();
  sub_100004C94(v1 + *(v12 + 24), v11, &qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100071EAC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_100065144@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_1000728AC();
  v9 = v8;
  sub_10006494C(v4, v5, v6, &v15);
  v26 = v19;
  v27 = v20;
  v28[0] = v21[0];
  *(v28 + 10) = *(v21 + 10);
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v29[0] = v15;
  v29[1] = v16;
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v29[5] = v20;
  v30[0] = v21[0];
  *(v30 + 10) = *(v21 + 10);
  sub_100004C94(&v22, &v14, &qword_100097448, &qword_100076F20);
  sub_100004890(v29, &qword_100097448, &qword_100076F20);
  *a1 = v7;
  *(a1 + 8) = v9;
  v10 = v27;
  *(a1 + 80) = v26;
  *(a1 + 96) = v10;
  *(a1 + 112) = v28[0];
  *(a1 + 122) = *(v28 + 10);
  v11 = v23;
  *(a1 + 16) = v22;
  *(a1 + 32) = v11;
  result = *&v24;
  v13 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v13;
  return result;
}

uint64_t sub_100065260@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_100071EAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_10007297C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v28 = v1;
  sub_1000129F8(&v28 - v16);
  sub_10007296C();
  sub_10004C730(&qword_1000949D0, &type metadata accessor for WidgetRenderingMode);
  v18 = sub_100072B1C();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v19(v17, v10);
  if (v18)
  {
    v20 = enum case for BlendMode.normal(_:);
    v21 = sub_1000728BC();
    return (*(*(v21 - 8) + 104))(v29, v20, v21);
  }

  else
  {
    v23 = v29;
    sub_100064F3C(v9);
    (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
    v24 = sub_100071E9C();
    v25 = *(v3 + 8);
    v25(v6, v2);
    v25(v9, v2);
    v26 = sub_1000728BC();
    if (v24)
    {
      v27 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v27 = &enum case for BlendMode.plusDarker(_:);
    }

    return (*(*(v26 - 8) + 104))(v23, *v27, v26);
  }
}

uint64_t sub_100065574()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  sub_100064D34(v10 - v6);
  (*(v1 + 104))(v4, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v7, v0);
  if (v10[1] == v10[0])
  {
    return sub_1000724EC();
  }

  else
  {
    return sub_10007252C();
  }
}

uint64_t sub_100065714()
{
  v1 = sub_1000729DC();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v14 = *(v0 + *(type metadata accessor for MessageView() + 36) + 8);
  sub_100064D34(v8);
  v9 = v2[13];
  v9(v5, enum case for WidgetFamily.systemSmall(_:), v1);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v10 = v2[1];
  v10(v5, v1);
  v10(v8, v1);
  if (v16 == v15)
  {
    if (v14)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    sub_100064D34(v8);
    v9(v5, enum case for WidgetFamily.systemExtraLarge(_:), v1);
    sub_100072C1C();
    sub_100072C1C();
    v10(v5, v1);
    v10(v8, v1);
    if (v14)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    if (v16 == v15)
    {
      return 3;
    }

    else
    {
      return v12;
    }
  }
}

double sub_100065980()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  sub_100064D34(v12 - v6);
  (*(v1 + 104))(v4, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v7, v0);
  v10 = v12[0];
  v9 = v12[1];
  sub_100071F3C();
  if (v9 == v10)
  {
    return result * 0.7;
  }

  return result;
}

double sub_100065B38()
{
  v20 = sub_10007218C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MessageView();
  sub_100004C94(v0 + *(v14 + 20), v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  if (v17 != enum case for WidgetFamily.systemSmall(_:) && v17 != enum case for WidgetFamily.systemMedium(_:) && v17 != enum case for WidgetFamily.systemLarge(_:) && v17 != enum case for WidgetFamily.systemExtraLarge(_:))
  {
    (*(v10 + 8))(v13, v9);
  }

  return 6.0;
}

double sub_100065E24()
{
  v20 = sub_10007218C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MessageView();
  sub_100004C94(v0 + *(v14 + 20), v8, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_100072CEC();
    v16 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = 2.0;
  if (v17 != enum case for WidgetFamily.systemSmall(_:) && v17 != enum case for WidgetFamily.systemMedium(_:) && v17 != enum case for WidgetFamily.systemLarge(_:))
  {
    result = 4.0;
    if (v17 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      (*(v10 + 8))(v13, v9, 4.0);
      return 2.0;
    }
  }

  return result;
}

double sub_100066118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1000728AC();
  a3[1] = v6;
  v7 = sub_10000388C(&qword_1000972A8, &qword_100076BB8);
  sub_1000661E0(a2, a1, a3 + *(v7 + 44));
  sub_100071F3C();
  sub_100071F3C();
  sub_1000728AC();
  sub_100071F2C();
  v8 = (a3 + *(sub_10000388C(&qword_1000972B0, &qword_100076BC0) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_1000661E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v119 = a3;
  v4 = sub_10000388C(&qword_1000972B8, &qword_100076BC8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v104 = (&v101 - v6);
  v103 = sub_10000388C(&qword_1000972C0, &qword_100076BD0);
  v7 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v106 = &v101 - v8;
  v105 = sub_10000388C(&qword_1000972C8, &qword_100076BD8);
  v9 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v108 = &v101 - v10;
  v118 = sub_10000388C(&qword_1000972D0, &qword_100076BE0);
  v11 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v109 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v101 - v14;
  v116 = sub_10000388C(&qword_1000972D8, &qword_100076BE8);
  v15 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v117 = &v101 - v16;
  v111 = sub_10000388C(&qword_1000972E0, &qword_100076BF0);
  v17 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v19 = &v101 - v18;
  v112 = sub_10000388C(&qword_1000972E8, &qword_100076BF8);
  v20 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v113 = &v101 - v21;
  v115 = sub_10000388C(&qword_1000972F0, &qword_100076C00);
  v22 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v114 = &v101 - v26;
  v27 = sub_1000729DC();
  v28 = *(v27 - 8);
  v29 = v28[8];
  __chkstk_darwin(v27);
  v31 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v101 - v33;
  v102 = type metadata accessor for MessageView();
  if (*(a1 + *(v102 + 40)) != 1)
  {
    goto LABEL_4;
  }

  v120 = a1;
  sub_100064D34(v34);
  v101 = v28[13];
  v101(v31, enum case for WidgetFamily.systemSmall(_:), v27);
  sub_10004C730(&qword_100094BF0, &type metadata accessor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  a1 = v120;
  v35 = v28[1];
  v35(v31, v27);
  v35(v34, v27);
  if (v122 == v121 || (sub_100064D34(v34), v101(v31, enum case for WidgetFamily.systemMedium(_:), v27), sub_100072C1C(), sub_100072C1C(), a1 = v120, v35(v31, v27), v35(v34, v27), v122 == v121))
  {
LABEL_4:
    v36 = sub_10007224C();
    sub_100065B38();
    *v19 = v36;
    *(v19 + 1) = 0x4018000000000000;
    v19[16] = 0;
    v37 = sub_10000388C(&qword_1000972F8, &unk_100076C08);
    sub_100067040(a1, &v19[*(v37 + 44)]);
    sub_10007288C();
    sub_100071FFC();
    v38 = &v19[*(v111 + 36)];
    v39 = v125;
    v40 = v127;
    v41 = v128;
    *(v38 + 4) = v126;
    *(v38 + 5) = v40;
    *(v38 + 6) = v41;
    v42 = v123;
    *v38 = v122;
    *(v38 + 1) = v42;
    *(v38 + 2) = v124;
    *(v38 + 3) = v39;
    sub_10000388C(&qword_100094F68, &qword_1000740E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100074030;
    v44 = sub_1000723DC();
    *(inited + 32) = v44;
    v45 = sub_1000723BC();
    *(inited + 33) = v45;
    v46 = sub_1000723FC();
    *(inited + 34) = v46;
    v47 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v44)
    {
      v47 = sub_1000723EC();
    }

    sub_1000723EC();
    if (sub_1000723EC() != v45)
    {
      v47 = sub_1000723EC();
    }

    v48 = v119;

    sub_1000723EC();
    if (sub_1000723EC() != v46)
    {
      v47 = sub_1000723EC();
    }

    v49 = v113;
    sub_100014DEC(v19, v113, &qword_1000972E0, &qword_100076BF0);
    v50 = v49 + *(v112 + 36);
    *v50 = v47;
    *(v50 + 8) = 0u;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 1;
    v51 = sub_1000723CC();
    v52 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v51)
    {
      v52 = sub_1000723EC();
    }

    sub_100071E8C();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_100014DEC(v49, v24, &qword_1000972E8, &qword_100076BF8);
    v61 = &v24[*(v115 + 36)];
    *v61 = v52;
    *(v61 + 1) = v54;
    *(v61 + 2) = v56;
    *(v61 + 3) = v58;
    *(v61 + 4) = v60;
    v61[40] = 0;
    v62 = &qword_1000972F0;
    v63 = &qword_100076C00;
    v64 = v114;
    sub_100014DEC(v24, v114, &qword_1000972F0, &qword_100076C00);
    sub_100004C94(v64, v117, &qword_1000972F0, &qword_100076C00);
    swift_storeEnumTagMultiPayload();
    sub_100069264();
    sub_100069434();
  }

  else
  {
    sub_100064D34(v34);
    v101(v31, enum case for WidgetFamily.systemLarge(_:), v27);
    sub_100072C1C();
    sub_100072C1C();
    v35(v31, v27);
    v35(v34, v27);
    if (v122 != v121)
    {
      sub_100064D34(v34);
      v101(v31, enum case for WidgetFamily.systemExtraLarge(_:), v27);
      sub_100072C1C();
      sub_100072C1C();
      v35(v31, v27);
      v35(v34, v27);
      if (v122 != v121)
      {
        v65 = 1;
        v48 = v119;
        goto LABEL_14;
      }
    }

    v68 = sub_10007223C();
    sub_100065B38();
    v69 = v104;
    *v104 = v68;
    *(v69 + 8) = 0x4018000000000000;
    *(v69 + 16) = 0;
    v70 = sub_10000388C(&qword_100097350, &qword_100076C28);
    sub_1000677B0(a1, v69 + *(v70 + 44));
    sub_10000388C(&qword_100094F68, &qword_1000740E0);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_100074030;
    v72 = sub_1000723DC();
    *(v71 + 32) = v72;
    v73 = sub_1000723FC();
    *(v71 + 33) = v73;
    v74 = sub_1000723CC();
    *(v71 + 34) = v74;
    v75 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v72)
    {
      v75 = sub_1000723EC();
    }

    sub_1000723EC();
    v76 = sub_1000723EC();
    v77 = v108;
    if (v76 != v73)
    {
      v75 = sub_1000723EC();
    }

    v48 = v119;
    v78 = v106;

    sub_1000723EC();
    if (sub_1000723EC() != v74)
    {
      v75 = sub_1000723EC();
    }

    sub_100014DEC(v69, v78, &qword_1000972B8, &qword_100076BC8);
    v79 = v78 + *(v103 + 36);
    *v79 = v75;
    *(v79 + 8) = 0u;
    *(v79 + 24) = 0u;
    *(v79 + 40) = 1;
    v80 = sub_1000723BC();
    v81 = sub_1000723EC();
    sub_1000723EC();
    if (sub_1000723EC() != v80)
    {
      v81 = sub_1000723EC();
    }

    v82 = v120 + *(v102 + 28);
    sub_100071F3C();
    sub_100071E8C();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    sub_100014DEC(v78, v77, &qword_1000972C0, &qword_100076BD0);
    v91 = v77 + *(v105 + 36);
    *v91 = v81;
    *(v91 + 8) = v84;
    *(v91 + 16) = v86;
    *(v91 + 24) = v88;
    *(v91 + 32) = v90;
    *(v91 + 40) = 0;
    v92 = sub_100065980();
    v93 = sub_100065980();
    sub_1000728AC();
    if (v92 > v93)
    {
      sub_100072CEC();
      v94 = sub_10007239C();
      sub_100071E4C();
    }

    sub_100071FFC();
    v95 = v109;
    sub_100014DEC(v77, v109, &qword_1000972C8, &qword_100076BD8);
    v96 = (v95 + *(v118 + 36));
    v97 = v125;
    v98 = v127;
    v99 = v128;
    v96[4] = v126;
    v96[5] = v98;
    v96[6] = v99;
    v100 = v123;
    *v96 = v122;
    v96[1] = v100;
    v96[2] = v124;
    v96[3] = v97;
    v62 = &qword_1000972D0;
    v63 = &qword_100076BE0;
    v64 = v110;
    sub_100014DEC(v95, v110, &qword_1000972D0, &qword_100076BE0);
    sub_100004C94(v64, v117, &qword_1000972D0, &qword_100076BE0);
    swift_storeEnumTagMultiPayload();
    sub_100069264();
    sub_100069434();
  }

  sub_10007230C();
  sub_100004890(v64, v62, v63);
  v65 = 0;
LABEL_14:
  v66 = sub_10000388C(&qword_100097348, &qword_100076C20);
  return (*(*(v66 - 8) + 56))(v48, v65, 1, v66);
}

uint64_t sub_100067040@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v83 = a2;
  v3 = sub_10000388C(&qword_100097358, &qword_100076C30);
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  __chkstk_darwin(v3);
  v69 = (&v68 - v5);
  v6 = sub_10000388C(&qword_100097360, &qword_100076C38);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v86 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v68 - v10;
  v75 = sub_10000388C(&qword_100096400, &qword_100076E60);
  v11 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v13 = &v68 - v12;
  v14 = sub_10000388C(&qword_100097420, &qword_100076E68);
  v15 = *(v14 - 8);
  v76 = v14 - 8;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v82 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  sub_1000728AC();
  sub_100071F2C();
  v79 = v89;
  v80 = v87;
  v78 = v91;
  v77 = v92;
  v95 = 1;
  v94 = v88;
  v93 = v90;
  v74 = type metadata accessor for MessageView();
  v21 = (a1 + *(v74 + 32));
  v22 = *v21;
  v23 = v21[1];

  sub_1000721EC();
  v72 = sub_10007258C();
  v71 = v24;
  v70 = v25;
  v73 = v26;
  v27 = sub_100065574();
  v28 = &v13[*(sub_10000388C(&qword_100095388, &qword_100074738) + 36)];
  v29 = type metadata accessor for DynamicTypeFont();
  v30 = v29[6];
  v31 = enum case for ContentSizeCategory.extraLarge(_:);
  v32 = sub_10007222C();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v28 + v30, v31, v32);
  (*(v33 + 56))(v28 + v30, 0, 1, v32);
  sub_10007248C();
  v35 = v34;
  *v28 = swift_getKeyPath();
  sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v28 + v29[5]) = v27;
  *(v28 + v29[7]) = v35;
  v36 = v71;
  *v13 = v72;
  *(v13 + 1) = v36;
  v13[16] = v70 & 1;
  *(v13 + 3) = v73;
  sub_10007270C();
  v37 = sub_1000726FC();

  KeyPath = swift_getKeyPath();
  v39 = &v13[*(sub_10000388C(&qword_100095398, &qword_100074778) + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v40 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  sub_100065260(&v13[*(v40 + 36)]);
  v41 = sub_100065714();
  v42 = swift_getKeyPath();
  v43 = &v13[*(sub_10000388C(&qword_1000963F8, &qword_100075A90) + 36)];
  *v43 = v42;
  *(v43 + 1) = v41;
  v43[16] = 0;
  *&v13[*(v75 + 36)] = 256;
  sub_10004C024();
  sub_1000725FC();
  sub_100004890(v13, &qword_100096400, &qword_100076E60);
  v44 = swift_getKeyPath();
  v45 = &v20[*(sub_10000388C(&qword_100097428, &qword_100076E70) + 36)];
  *v45 = v44;
  v46 = 1;
  v45[8] = 1;
  v47 = swift_getKeyPath();
  v48 = &v20[*(v76 + 44)];
  *v48 = v47;
  v48[1] = 0x3FE3333333333333;
  v49 = (a1 + *(v74 + 36));
  if (v49[1])
  {
    v50 = *v49;
    v51 = sub_100065E24();
    v52 = sub_1000721CC();
    v53 = v69;
    *v69 = v52;
    *(v53 + 8) = v51;
    *(v53 + 16) = 0;
    v54 = sub_10000388C(&qword_1000973E8, &unk_100076DD0);
    sub_100068614(v53 + *(v54 + 44));
    v55 = v81;
    sub_100014DEC(v53, v81, &qword_100097358, &qword_100076C30);
    v46 = 0;
  }

  else
  {
    v55 = v81;
  }

  (*(v84 + 56))(v55, v46, 1, v85);
  v56 = v95;
  v57 = v94;
  v58 = v93;
  v59 = v20;
  v60 = v82;
  sub_100004C94(v20, v82, &qword_100097420, &qword_100076E68);
  v61 = v86;
  sub_100004C94(v55, v86, &qword_100097360, &qword_100076C38);
  v62 = v83;
  *v83 = 0;
  *(v62 + 8) = v56;
  v63 = v79;
  v62[2] = v80;
  *(v62 + 24) = v57;
  v62[4] = v63;
  *(v62 + 40) = v58;
  v64 = v77;
  v62[6] = v78;
  v62[7] = v64;
  v65 = sub_10000388C(&qword_100097430, &qword_100076E78);
  sub_100004C94(v60, v62 + v65[12], &qword_100097420, &qword_100076E68);
  sub_100004C94(v61, v62 + v65[16], &qword_100097360, &qword_100076C38);
  v66 = v62 + v65[20];
  *v66 = 0;
  v66[8] = 0;
  sub_100004890(v55, &qword_100097360, &qword_100076C38);
  sub_100004890(v59, &qword_100097420, &qword_100076E68);
  sub_100004890(v61, &qword_100097360, &qword_100076C38);
  return sub_100004890(v60, &qword_100097420, &qword_100076E68);
}

uint64_t sub_1000677B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = sub_10000388C(&qword_100097358, &qword_100076C30);
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = *(v100 + 64);
  __chkstk_darwin(v3);
  v91 = (&v91 - v5);
  v6 = sub_10000388C(&qword_100097360, &qword_100076C38);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v104 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v103 = &v91 - v10;
  v96 = sub_10000388C(&qword_100097368, &qword_100076C40);
  v11 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v13 = &v91 - v12;
  v97 = sub_10000388C(&qword_100097370, &qword_100076C48);
  v14 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v102 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v106 = &v91 - v17;
  v18 = sub_10000388C(&qword_100097378, &qword_100076C50);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v91 - v20;
  v22 = sub_10000388C(&qword_100097380, &qword_100076C58);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v99 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v91 - v26;
  __chkstk_darwin(v28);
  v30 = &v91 - v29;
  *v21 = sub_1000721CC();
  *(v21 + 1) = 0x4024000000000000;
  v21[16] = 0;
  v31 = sub_10000388C(&qword_100097388, &unk_100076C60);
  sub_1000680BC(&v21[*(v31 + 44)]);
  v32 = sub_1000723CC();
  v33 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v32)
  {
    v33 = sub_1000723EC();
  }

  sub_100071E8C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_100014DEC(v21, v27, &qword_100097378, &qword_100076C50);
  v42 = &v27[*(v22 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v98 = v30;
  sub_100014DEC(v27, v30, &qword_100097380, &qword_100076C58);
  v95 = type metadata accessor for MessageView();
  v43 = (a1 + *(v95 + 32));
  v44 = *v43;
  v45 = v43[1];

  sub_1000721EC();
  v93 = sub_10007258C();
  v94 = v46;
  v48 = v47;
  v92 = v49;
  v50 = sub_100065574();
  v51 = &v13[*(sub_10000388C(&qword_100095388, &qword_100074738) + 36)];
  v52 = type metadata accessor for DynamicTypeFont();
  v53 = v52[6];
  v54 = enum case for ContentSizeCategory.extraLarge(_:);
  v55 = a1;
  v56 = sub_10007222C();
  v57 = *(v56 - 8);
  (*(v57 + 104))(v51 + v53, v54, v56);
  v58 = 1;
  (*(v57 + 56))(v51 + v53, 0, 1, v56);
  sub_10007248C();
  v60 = v59;
  *v51 = swift_getKeyPath();
  sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v51 + v52[5]) = v50;
  *(v51 + v52[7]) = v60;
  *v13 = v93;
  *(v13 + 1) = v48;
  v13[16] = v92 & 1;
  *(v13 + 3) = v94;
  KeyPath = swift_getKeyPath();
  v62 = &v13[*(sub_10000388C(&qword_100097390, &qword_100076CD8) + 36)];
  *v62 = KeyPath;
  v62[8] = 1;
  sub_10007270C();
  v63 = sub_1000726FC();

  v64 = swift_getKeyPath();
  v65 = &v13[*(sub_10000388C(&qword_100097398, &qword_100076D10) + 36)];
  *v65 = v64;
  v65[1] = v63;
  v66 = sub_10000388C(&qword_1000973A0, &qword_100076D18);
  sub_100065260(&v13[*(v66 + 36)]);
  v67 = sub_100065714();
  v68 = swift_getKeyPath();
  v69 = &v13[*(sub_10000388C(&qword_1000973A8, &unk_100076D50) + 36)];
  *v69 = v68;
  *(v69 + 1) = v67;
  v69[16] = 0;
  *&v13[*(v96 + 36)] = 256;
  sub_10006973C();
  v70 = v106;
  sub_1000725FC();
  sub_100004890(v13, &qword_100097368, &qword_100076C40);
  v71 = swift_getKeyPath();
  v72 = v70 + *(sub_10000388C(&qword_1000973D8, &qword_100076D90) + 36);
  *v72 = v71;
  *(v72 + 8) = 1;
  v73 = swift_getKeyPath();
  v74 = (v70 + *(v97 + 36));
  *v74 = v73;
  v74[1] = 0x3FE3333333333333;
  v75 = (v55 + *(v95 + 36));
  if (v75[1])
  {
    v76 = *v75;
    v77 = sub_100065E24();
    v78 = sub_1000721CC();
    v79 = v91;
    *v91 = v78;
    *(v79 + 8) = v77;
    *(v79 + 16) = 0;
    v80 = sub_10000388C(&qword_1000973E8, &unk_100076DD0);
    sub_100068614(v79 + *(v80 + 44));
    v81 = v103;
    sub_100014DEC(v79, v103, &qword_100097358, &qword_100076C30);
    v58 = 0;
  }

  else
  {
    v81 = v103;
  }

  (*(v100 + 56))(v81, v58, 1, v101);
  v83 = v98;
  v82 = v99;
  sub_100004C94(v98, v99, &qword_100097380, &qword_100076C58);
  v84 = v106;
  v85 = v102;
  sub_100004C94(v106, v102, &qword_100097370, &qword_100076C48);
  v86 = v104;
  sub_100004C94(v81, v104, &qword_100097360, &qword_100076C38);
  v87 = v105;
  sub_100004C94(v82, v105, &qword_100097380, &qword_100076C58);
  v88 = sub_10000388C(&qword_1000973E0, &qword_100076DC8);
  sub_100004C94(v85, v87 + v88[12], &qword_100097370, &qword_100076C48);
  sub_100004C94(v86, v87 + v88[16], &qword_100097360, &qword_100076C38);
  v89 = v87 + v88[20];
  *v89 = 0;
  *(v89 + 8) = 0;
  sub_100004890(v81, &qword_100097360, &qword_100076C38);
  sub_100004890(v84, &qword_100097370, &qword_100076C48);
  sub_100004890(v83, &qword_100097380, &qword_100076C58);
  sub_100004890(v86, &qword_100097360, &qword_100076C38);
  sub_100004890(v85, &qword_100097370, &qword_100076C48);
  return sub_100004890(v82, &qword_100097380, &qword_100076C58);
}

uint64_t sub_1000680BC@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v1 = sub_1000726BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100097408, &qword_100076E50);
  v48 = *(v6 - 8);
  v7 = v48[8];
  __chkstk_darwin(v6);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v42 - v10;
  __chkstk_darwin(v11);
  v44 = &v42 - v12;
  __chkstk_darwin(v13);
  v43 = &v42 - v14;
  __chkstk_darwin(v15);
  v49 = &v42 - v16;
  __chkstk_darwin(v17);
  v42 = &v42 - v18;
  v19 = *(type metadata accessor for MessageView() + 28);
  sub_100071F3C();
  v21 = v20 * 0.291746641;
  sub_100071F3C();
  v23 = v22 * 0.199616123;
  v24 = enum case for Color.RGBColorSpace.sRGB(_:);
  v25 = *(v2 + 104);
  v25(v5, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  v26 = sub_10007272C();
  v50 = v23;
  strcpy(v51, "Memoji-Left");
  v51[3] = -352321536;
  v52 = v26;
  sub_100069AE4();
  sub_1000725FC();

  v25(v5, v24, v1);
  v27 = sub_10007272C();
  v50 = v21;
  strcpy(v51, "Memoji-Center");
  HIWORD(v51[3]) = -4864;
  v52 = v27;
  v28 = v49;
  sub_1000725FC();

  v25(v5, v24, v1);
  v29 = sub_10007272C();
  v50 = v23;
  strcpy(v51, "Memoji-Right");
  BYTE1(v51[3]) = 0;
  HIWORD(v51[3]) = -5120;
  v52 = v29;
  v30 = v43;
  sub_1000725FC();

  v31 = v48[2];
  v32 = v44;
  v33 = v42;
  v31(v44, v42, v6);
  v34 = v45;
  v31(v45, v28, v6);
  v35 = v46;
  v36 = v30;
  v31(v46, v30, v6);
  v37 = v47;
  v38 = v32;
  v31(v47, v32, v6);
  v39 = sub_10000388C(&qword_100097418, &qword_100076E58);
  v31(&v37[*(v39 + 48)], v34, v6);
  v31(&v37[*(v39 + 64)], v35, v6);
  v40 = v48[1];
  v40(v36, v6);
  v40(v49, v6);
  v40(v33, v6);
  v40(v35, v6);
  v40(v34, v6);
  return (v40)(v38, v6);
}

uint64_t sub_100068614@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v85 = sub_10000388C(&qword_100096460, &qword_100075AC0);
  v1 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v80 = &v71[-v2];
  v3 = sub_10000388C(&qword_100096468, &unk_100076DE0);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  __chkstk_darwin(v3);
  v84 = &v71[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v90 = &v71[-v7];
  v82 = sub_10000388C(&qword_1000963F8, &qword_100075A90);
  v8 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v10 = &v71[-v9];
  v11 = sub_10000388C(&qword_1000973F0, &qword_100076DF0);
  v12 = *(v11 - 8);
  v81 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v83 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v89 = &v71[-v16];

  sub_1000721EC();
  v17 = sub_10007258C();
  v73 = v18;
  v74 = v17;
  v72 = v19;
  v75 = v20;
  v21 = sub_100065574();
  v22 = &v10[*(sub_10000388C(&qword_100095388, &qword_100074738) + 36)];
  v23 = type metadata accessor for DynamicTypeFont();
  v24 = v23[6];
  v25 = enum case for ContentSizeCategory.extraLarge(_:);
  v79 = enum case for ContentSizeCategory.extraLarge(_:);
  v26 = sub_10007222C();
  v27 = *(v26 - 8);
  v78 = *(v27 + 104);
  v78(v22 + v24, v25, v26);
  v77 = *(v27 + 56);
  v77(v22 + v24, 0, 1, v26);
  sub_10007247C();
  v29 = v28;
  *v22 = swift_getKeyPath();
  v76 = sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v22 + v23[5]) = v21;
  *(v22 + v23[7]) = v29;
  v30 = v73;
  *v10 = v74;
  *(v10 + 1) = v30;
  v10[16] = v72 & 1;
  *(v10 + 3) = v75;
  v31 = sub_10007271C();
  KeyPath = swift_getKeyPath();
  v33 = &v10[*(sub_10000388C(&qword_100095398, &qword_100074778) + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  sub_100065260(&v10[*(v34 + 36)]);
  v35 = swift_getKeyPath();
  v36 = &v10[*(v82 + 36)];
  *v36 = v35;
  *(v36 + 1) = 1;
  v36[16] = 0;
  sub_10004C0B0();
  v37 = v89;
  sub_1000725FC();
  sub_100004890(v10, &qword_1000963F8, &qword_100075A90);
  v38 = swift_getKeyPath();
  v39 = &v37[*(sub_10000388C(&qword_1000973F8, &qword_100076DF8) + 36)];
  *v39 = v38;
  v39[8] = 1;
  v40 = swift_getKeyPath();
  v41 = &v37[*(v81 + 44)];
  *v41 = v40;
  v41[1] = 0x3FE8000000000000;
  v42 = sub_10007276C();
  v43 = sub_100065574();
  v44 = sub_10000388C(&qword_100096440, &unk_100076E00);
  v45 = v80;
  v46 = &v80[*(v44 + 36)];
  v47 = v23[6];
  v78(v46 + v47, v79, v26);
  v77(v46 + v47, 0, 1, v26);
  sub_10007248C();
  v49 = v48;
  *v46 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v46 + v23[5]) = v43;
  *(v46 + v23[7]) = v49;
  *v45 = v42;
  *(v45 + 8) = 1;
  v50 = sub_10007271C();
  v51 = swift_getKeyPath();
  v52 = (v45 + *(sub_10000388C(&qword_100096448, &qword_100075AB0) + 36));
  *v52 = v51;
  v52[1] = v50;
  v53 = sub_10000388C(&qword_100096450, &qword_100076E10);
  sub_100065260(v45 + *(v53 + 36));
  v54 = (v45 + *(sub_10000388C(&qword_100096458, &qword_100075AB8) + 36));
  v55 = *(sub_10000388C(&qword_100096498, &qword_100076930) + 28);
  v56 = enum case for Image.Scale.small(_:);
  v57 = sub_1000727BC();
  (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
  *v54 = swift_getKeyPath();
  v58 = swift_getKeyPath();
  v59 = (v45 + *(v85 + 36));
  *v59 = v58;
  v59[1] = 0x3FE8000000000000;
  sub_10004C2E0();
  v60 = v90;
  sub_1000725FC();
  sub_100004890(v45, &qword_100096460, &qword_100075AC0);
  v61 = v89;
  v62 = v83;
  sub_100004C94(v89, v83, &qword_1000973F0, &qword_100076DF0);
  v64 = v86;
  v63 = v87;
  v65 = *(v86 + 16);
  v66 = v84;
  v65(v84, v60, v87);
  v67 = v88;
  sub_100004C94(v62, v88, &qword_1000973F0, &qword_100076DF0);
  v68 = sub_10000388C(&qword_100097400, &qword_100076E48);
  v65((v67 + *(v68 + 48)), v66, v63);
  v69 = *(v64 + 8);
  v69(v90, v63);
  sub_100004890(v61, &qword_1000973F0, &qword_100076DF0);
  v69(v66, v63);
  return sub_100004890(v62, &qword_1000973F0, &qword_100076DF0);
}

uint64_t sub_100068DD8@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100068EC4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100069180(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1000691E4;
  a2[1] = v7;
  return result;
}

uint64_t sub_100068EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068F28()
{
  v1 = type metadata accessor for MessageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10007297C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000729DC();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_100071EAC();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    v13 = *&v5[v11];
  }

  v14 = v1[7];
  v15 = sub_100071F5C();
  (*(*(v15 - 8) + 8))(&v5[v14], v15);
  v16 = *&v5[v1[8] + 8];

  v17 = *&v5[v1[9] + 8];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100069180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000691E4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MessageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100066118(a1, v6, a2);
}

unint64_t sub_100069264()
{
  result = qword_100097300;
  if (!qword_100097300)
  {
    sub_1000038D4(&qword_1000972F0, &qword_100076C00);
    sub_1000692F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097300);
  }

  return result;
}

unint64_t sub_1000692F0()
{
  result = qword_100097308;
  if (!qword_100097308)
  {
    sub_1000038D4(&qword_1000972E8, &qword_100076BF8);
    sub_10006937C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097308);
  }

  return result;
}

unint64_t sub_10006937C()
{
  result = qword_100097310;
  if (!qword_100097310)
  {
    sub_1000038D4(&qword_1000972E0, &qword_100076BF0);
    sub_100004C3C(&qword_100097318, &qword_100097320, &qword_100076C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097310);
  }

  return result;
}

unint64_t sub_100069434()
{
  result = qword_100097328;
  if (!qword_100097328)
  {
    sub_1000038D4(&qword_1000972D0, &qword_100076BE0);
    sub_1000694C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097328);
  }

  return result;
}

unint64_t sub_1000694C0()
{
  result = qword_100097330;
  if (!qword_100097330)
  {
    sub_1000038D4(&qword_1000972C8, &qword_100076BD8);
    sub_10006954C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097330);
  }

  return result;
}

unint64_t sub_10006954C()
{
  result = qword_100097338;
  if (!qword_100097338)
  {
    sub_1000038D4(&qword_1000972C0, &qword_100076BD0);
    sub_100004C3C(&qword_100097340, &qword_1000972B8, &qword_100076BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097338);
  }

  return result;
}