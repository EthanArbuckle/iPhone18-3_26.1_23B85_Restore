uint64_t sub_1006710D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_100936D40);
  v36 = a2;
  result = sub_100754694();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      sub_100754834();
      sub_100754844(v22);
      sub_100754844(v23);
      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      sub_100754864(*&v26);
      result = sub_100754884();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1006713AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_100934898);
  v37 = a2;
  result = sub_100754694();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_100754834();
      sub_100753174();
      result = sub_100754884();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_10067166C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_100936D00);
  v34 = a2;
  result = sub_100754694();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100754834();
      sub_100753174();
      result = sub_100754884();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_10067190C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_100936E00);
  result = sub_100754694();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      result = sub_100754824();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100671B70(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10000C518(a3);
  result = sub_100754694();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v4;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = sub_100754824();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v6 + 32);
      if (v31 >= 64)
      {
        bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_100671DD0(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_100752914();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000C518(&qword_100936DA0);
  v37 = a2;
  result = sub_100754694();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_100754824();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_10067211C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_100936D78);
  result = sub_100754694();
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
        sub_100066198(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_1007544B4(*(v7 + 40));
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

uint64_t sub_1006723CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_100944150);
  v33 = a2;
  result = sub_100754694();
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

      sub_100754834();
      sub_100753174();
      result = sub_100754884();
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

uint64_t sub_100672670(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10074F7D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000C518(&qword_100936D10);
  v39 = a2;
  result = sub_100754694();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1006773AC(&qword_100936108, &type metadata accessor for BadgeType);
      result = sub_100752FA4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100672A4C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10000C518(a3);
  result = sub_100754694();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_100754824();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_100672CB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_100934890);
  v33 = a2;
  result = sub_100754694();
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000C610(v24, v34);
      }

      else
      {
        sub_10000C5B4(v24, v34);
      }

      sub_100754834();
      sub_100753174();
      result = sub_100754884();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000C610(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100672F6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_1009440A8);
  v34 = a2;
  result = sub_100754694();
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

      sub_100754834();
      sub_100753174();
      result = sub_100754884();
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

uint64_t sub_100673214(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10000C518(&qword_100936D28);
  v33 = a2;
  result = sub_100754694();
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
      v16 = __clz(__rbit64(v12));
      v34 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v33 & 1) == 0)
      {

        v23 = v22;
      }

      sub_10074F3D4();
      sub_1006773AC(&qword_100936D20, &type metadata accessor for Artwork);
      result = sub_100752FA4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v32;
      v12 = v34;
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
        v34 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_1006734F4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100415ADC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100674F6C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1006703EC(v13, a3 & 1);
    v8 = sub_100415ADC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1007547B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000C620(v19);

    return sub_10000C610(a1, v19);
  }

  else
  {
    sub_100674814(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_10067365C(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1004125A4(a2, a3, a5);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1006710D4(v18, a4 & 1);
      result = sub_1004125A4(a2, a3, a5);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1007547B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_100675748();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    v24 = v23[6] + 24 * result;
    *v24 = a2;
    *(v24 + 8) = a3;
    *(v24 + 16) = a5;
    *(v23[7] + 8 * result) = a1;
    v25 = v23[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v17)
    {
      v23[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

uint64_t sub_1006737E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1003861D0(a3, a4);
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
      sub_1006713AC(v18, a5 & 1);
      v13 = sub_1003861D0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1007547B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1006758BC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_100673968(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100412104(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_100675B9C();
    result = v19;
    goto LABEL_8;
  }

  sub_10067190C(v16, a2 & 1);
  result = sub_100412104(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a1;
    v23 = (v21[7] + 16 * result);
    *v23 = a3;
    v23[1] = a4;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1007547B4();
  __break(1u);
  return result;
}

unint64_t sub_100673AB0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_100412104(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_8:
    v21 = *v6;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_100675D00(a4);
    result = v19;
    goto LABEL_8;
  }

  sub_100671B70(v16, a3 & 1, a4);
  result = sub_100412104(a2);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1007547B4();
  __break(1u);
  return _objc_release_x1();
}

uint64_t sub_100673C1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100412104(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100675E4C();
      goto LABEL_7;
    }

    sub_100671DD0(v13, a3 & 1);
    v24 = sub_100412104(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007547B4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_100752914();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_100674910(v10, a2, a1, v16);
}

uint64_t sub_100673D84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100412148(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10067211C(v13, a3 & 1);
      v18 = sub_100412148(a2);
      if ((v14 & 1) != (v19 & 1))
      {
LABEL_17:
        result = sub_1007547B4();
        __break(1u);
        return result;
      }

      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1006760B4();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_100066198(a2, v26);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v16[6] + 40 * v10;
    v21 = v27;
    v22 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v22;
    *(v20 + 32) = v21;
    *(v16[7] + 8 * v10) = a1;
    v23 = v16[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v16[2] = v25;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

unint64_t sub_100673F08(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1003861D0(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1006723CC(v16, a3 & 1);
      result = sub_1003861D0(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1007547B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100676248();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_100674064(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10074F7D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10041276C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1006763B0();
      goto LABEL_7;
    }

    sub_100672670(v17, a3 & 1);
    v22 = sub_10041276C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1006749BC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1007547B4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_100674244(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_100412104(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_100672A4C(v16, a3 & 1, a4);
      result = sub_100412104(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1007547B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100676630(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

_OWORD *sub_1006743B4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1003861D0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1006768E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100672CB4(v16, a4 & 1);
    v11 = sub_1003861D0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1007547B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000C620(v22);

    return sub_10000C610(a1, v22);
  }

  else
  {
    sub_100674A74(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100674504(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1004126C0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100673214(v14, a3 & 1);
      v9 = sub_1004126C0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_10074F3D4();
        sub_1007547B4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v17 = v9;
      sub_100676BFC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return _objc_release_x1();
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;
}

uint64_t sub_100674674(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10074ED34();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100412328(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1006750EC();
    goto LABEL_7;
  }

  sub_1006706BC(result, a3 & 1);
  result = sub_100412328(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1007547B4();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_100674B28(v14, v11, a1 & 1, v20);
}

_OWORD *sub_100674814(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000C610(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_10067487C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1006748C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_100674910(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_100752914();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1006749BC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10074F7D4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_100674A74(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000C610(a4, (a5[7] + 32 * a1));
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

unint64_t sub_100674AE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_100674B28(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10074ED34();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_100674BE0()
{
  v1 = v0;
  sub_10000C518(&qword_100936DB0);
  v2 = *v0;
  v3 = sub_100754684();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 32);
      v19 = *v17;
      v20 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 40 * v14;
      *v21 = v19;
      *(v21 + 16) = v20;
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

id sub_100674D44()
{
  v1 = v0;
  v2 = type metadata accessor for Accessory();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100936E30);
  v5 = *v0;
  v6 = sub_100754684();
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
        sub_100415A30(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_100677FA0(v4, *(v7 + 48) + v21, type metadata accessor for Accessory);
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

id sub_100674F6C()
{
  v1 = v0;
  sub_10000C518(&unk_10092AF20);
  v2 = *v0;
  v3 = sub_100754684();
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
        sub_10000C5B4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000C610(v19, (*(v4 + 56) + 32 * v17));
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

char *sub_1006750EC()
{
  v1 = v0;
  v31 = sub_10074ED34();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100944088);
  v3 = *v0;
  v4 = sub_100754684();
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

void *sub_10067535C()
{
  v1 = v0;
  sub_10000C518(&qword_100936E50);
  v2 = *v0;
  v3 = sub_100754684();
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

void *sub_1006754A8()
{
  v1 = v0;
  v30 = sub_1007417F4();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100936E48);
  v3 = *v0;
  v4 = sub_100754684();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; *(*(v22 + 56) + v17) = v33)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      result = v24(v23 + v19, v20, v21);
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
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_100675748()
{
  v1 = v0;
  sub_10000C518(&qword_100936D40);
  v2 = *v0;
  v3 = sub_100754684();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
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

void *sub_1006758BC()
{
  v1 = v0;
  sub_10000C518(&qword_100934898);
  v2 = *v0;
  v3 = sub_100754684();
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

void *sub_100675A34()
{
  v1 = v0;
  sub_10000C518(&qword_100936D00);
  v2 = *v0;
  v3 = sub_100754684();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_100675B9C()
{
  v1 = v0;
  sub_10000C518(&qword_100936E00);
  v2 = *v0;
  v3 = sub_100754684();
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

id sub_100675D00(uint64_t *a1)
{
  v2 = v1;
  sub_10000C518(a1);
  v3 = *v1;
  v4 = sub_100754684();
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

void *sub_100675E4C()
{
  v1 = v0;
  v29 = sub_100752914();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100936DA0);
  v3 = *v0;
  v4 = sub_100754684();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_1006760B4()
{
  v1 = v0;
  sub_10000C518(&qword_100936D78);
  v2 = *v0;
  v3 = sub_100754684();
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
        sub_100066198(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

void *sub_100676248()
{
  v1 = v0;
  sub_10000C518(&qword_100944150);
  v2 = *v0;
  v3 = sub_100754684();
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

char *sub_1006763B0()
{
  v1 = v0;
  v33 = sub_10074F7D4();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100936D10);
  v3 = *v0;
  v4 = sub_100754684();
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

void *sub_100676630(uint64_t *a1)
{
  v2 = v1;
  sub_10000C518(a1);
  v3 = *v1;
  v4 = sub_100754684();
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

id sub_10067677C()
{
  v1 = v0;
  sub_10000C518(&qword_100936D88);
  v2 = *v0;
  v3 = sub_100754684();
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

void *sub_1006768E8()
{
  v1 = v0;
  sub_10000C518(&qword_100934890);
  v2 = *v0;
  v3 = sub_100754684();
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
        sub_10000C5B4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000C610(v25, (*(v4 + 56) + v22));
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

void *sub_100676A8C()
{
  v1 = v0;
  sub_10000C518(&qword_1009440A8);
  v2 = *v0;
  v3 = sub_100754684();
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

id sub_100676BFC()
{
  v1 = v0;
  sub_10000C518(&qword_100936D28);
  v2 = *v0;
  v3 = sub_100754684();
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

uint64_t sub_100676D5C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_10074ED34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_1009232D0);
  __chkstk_darwin(v11);
  v15 = v54 - v14;
  v59 = *(a1 + 16);
  if (!v59)
  {
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  sub_100016B4C(a1 + v17, v54 - v14, &qword_1009232D0);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = v15[v16];
  v19 = *a3;
  v20 = sub_100412328(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1006706BC(v25, a2 & 1);
    v20 = sub_100412328(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1007547B4();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_1006750EC();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    swift_errorRetain();
    sub_10000C518(&unk_100940300);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v55 + 8))(v10, v62);
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
    }

    v39 = v60 + v58 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_100016B4C(v39, v15, &qword_1009232D0);
      v61(v10, v15, v62);
      v41 = v15[v57];
      v42 = *a3;
      v43 = sub_100412328(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_1006706BC(v47, 1);
        v43 = sub_100412328(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_100754534(30);
  v66._object = 0x8000000100789C70;
  v66._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1007531B4(v66);
  sub_1007545F4();
  v67._countAndFlagsBits = 39;
  v67._object = 0xE100000000000000;
  sub_1007531B4(v67);
  result = sub_100754644();
  __break(1u);
  return result;
}

uint64_t sub_1006772A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006772E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100677318()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100677360()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1006773AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100677414(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100677470()
{
  v1 = (type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_10074E6A4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100677560()
{
  v1 = *(type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_10066EDF8(v2, v3);
}

uint64_t sub_1006775C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006775DC()
{
  v1 = sub_10074E6A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100677670(void *a1)
{
  v3 = *(sub_10074E6A4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10066C968(a1, v4);
}

uint64_t sub_10067770C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100677754()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100677794(uint64_t a1, void *a2)
{
  v4 = sub_1007479B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v23[-v9 - 8];
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  if (qword_100920858 != -1)
  {
    swift_once();
  }

  if (sub_100753804())
  {
    v11 = &xmmword_10097F540;
  }

  else
  {
    v11 = &xmmword_10097F3D0;
  }

  sub_100055CF8(v11, v23);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v12 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v12 = qword_10093FF58;
  }

  bottom = UIEdgeInsetsZero.bottom;
  v14 = sub_10000D0FC(v4, v12);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    sub_100747964();
    v16 = v15;
    sub_100747964();
    v24 = v16;
    v25 = v17;
    v26 = 0;
  }

  v18 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, 0.0);
  v20 = v19;
  (*(v5 + 8))(v10, v4, v18);
  sub_100055D54(v23);
  return (ceil(bottom + UIEdgeInsetsZero.top + v20) + 8.0 + 8.0) * a1 + 12.0 + 12.0;
}

uint64_t sub_100677A8C(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_100943FF8;
  swift_beginAccess();
  v32 = a1;
  v11 = *(a1 + v10);
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v13 = qword_100943FE0;

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v14 = 0;
    v30 = v11 & 0xFFFFFFFFFFFFFF8;
    v31 = v11 & 0xC000000000000001;
    v29 = (v8 + 48);
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    v15 = 32;
    v25 = v13;
    while (1)
    {
      if (v31)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v11 + 8 * v14 + 32);
      }

      v16 = *(v32 + v13);
      if (v14 >= *(v16 + 16))
      {
        break;
      }

      v17 = *(v16 + v15);
      sub_10074EE94();
      if ((*v29)(v6, 1, v7) == 1)
      {

        sub_10000C8CC(v6, &unk_100925380);
      }

      else
      {
        v18 = v7;
        v19 = v26;
        (*v24)(v26, v6, v18);
        v20 = v17;
        [v20 bounds];
        [v28 convertRect:v20 fromCoordinateSpace:?];
        sub_100749544();

        v21 = v19;
        v7 = v18;
        v13 = v25;
        (*v23)(v21, v7);
      }

      ++v14;

      v15 += 16;
      if (i == v14)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_100677DA8()
{
  v1 = qword_100943FC8;
  v2 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  v3 = sub_10074E6A4();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = v0 + qword_100982CA0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = qword_100943FD0;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v6 = qword_100943FD8;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  *(v0 + qword_100943FE0) = _swiftEmptyArrayStorage;
  v7 = qword_100943FE8;
  *(v0 + v7) = [objc_opt_self() buttonWithType:0];
  v8 = (v0 + qword_100943FF0);
  *v8 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v8[1] = 0;
  *(v0 + qword_100943FF8) = _swiftEmptyArrayStorage;
  swift_weakInit();
  *(v0 + qword_100944008) = _swiftEmptyArrayStorage;
  *(v0 + qword_100944010) = 0;
  *(v0 + qword_100944018) = 0;
  *(v0 + qword_100982CA8) = 0;
  v9 = v0 + qword_100944020;
  *v9 = 0;
  *(v9 + 8) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100677FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10067801C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10074E6A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1006780DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10074E6A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100678180()
{
  result = sub_10074ECD4();
  if (v1 <= 0x3F)
  {
    result = sub_10074E6A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100678218()
{
  result = qword_100941110;
  if (!qword_100941110)
  {
    type metadata accessor for BadgeCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941110);
  }

  return result;
}

double sub_100678270()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v4 = sub_100749104();
  sub_10000D0FC(v4, qword_10097FD50);
  v5 = sub_100747B94();
  sub_100749044();
  v7 = v6;

  return v7;
}

uint64_t type metadata accessor for TodayCardLabelsView()
{
  result = qword_100944208;
  if (!qword_100944208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006784A0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  v2 = *(*(v0 + qword_1009441C8) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  if (v2)
  {

    v2(v3);
    sub_1000164A8(v2);
    v1 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v4 = *(*(v0 + qword_1009441D0) + v1);
  if (v4)
  {

    v4(v5);
    sub_1000164A8(v4);
    v1 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v6 = *(*(v0 + qword_1009441E0) + v1);
  if (v6)
  {

    v6(v7);

    sub_1000164A8(v6);
  }
}

void sub_10067859C(uint64_t a1, char a2)
{
  v4 = sub_10074FB54();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 104))(v8, enum case for TodayCard.Style.white(_:), v4, v6);
    sub_10067BC9C(&qword_1009239F0, &type metadata accessor for TodayCard.Style);
    sub_100753274();
    sub_100753274();
    if (v10[2] == v10[0] && v10[3] == v10[1])
    {
      v9 = 1;
    }

    else if (sub_100754754())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    (*(v5 + 8))(v8, v4);

    [v2 setOverrideUserInterfaceStyle:v9];
    sub_10067A04C();
  }

  else
  {
    [v2 setOverrideUserInterfaceStyle:{0, v6.n128_f64[0]}];

    sub_10067A04C();
  }
}

uint64_t sub_1006787A8()
{
  v0 = sub_10067A7C4();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_21:
    v3 = sub_100754664();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 text];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = sub_100753094();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1002554F8(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_1002554F8((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_22:

  sub_10000C518(&unk_100928A70);
  sub_10010ABC4();
  v16 = sub_100752FF4();

  return v16;
}

double sub_100678990()
{
  [v0 layoutIfNeeded];
  v1 = v0[qword_1009441B8];
  v2 = *&v0[qword_1009441C8];
  if ([*&v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v3 = *&v0[qword_1009441D0], (objc_msgSend(*&v3[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label], "isHidden")))
  {
    v4 = *&v0[qword_1009441D0];
    v5 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
    if ([*&v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v0[qword_1009441E8])
    {
      if (([*&v4[v5] isHidden] & 1) != 0 || v0[qword_1009441E8] != 1)
      {
        v10 = *&v0[qword_1009441D8];
        if (([v10 isHidden] & 1) == 0)
        {
          [v10 frame];
LABEL_19:
          MaxY = CGRectGetMaxY(*&v6);
          return MaxY + 20.0;
        }

        [v0 bounds];
      }

      else
      {
        [v4 frame];
        if (v1 != 4)
        {
          goto LABEL_19;
        }
      }

      return CGRectGetMinY(*&v6);
    }

    else
    {
      [v4 frame];
      result = CGRectGetMinY(v18);
      if (v1 != 4)
      {
        return result + 20.0;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      [v3 frame];
      MaxY = CGRectGetMinY(v19);
      return MaxY + 20.0;
    }

    [v2 frame];

    return CGRectGetMaxY(*&v12);
  }

  return result;
}

void sub_100678B98()
{
  if (qword_100921C20 != -1)
  {
    swift_once();
  }

  v0 = qword_100944158;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 fontWithDescriptor:v4 size:0.0];

    v3 = v4;
  }

  else
  {
    v6 = [v5 fontWithDescriptor:v3 size:0.0];
  }

  qword_100944160 = v6;
}

id sub_100678CEC()
{
  result = [objc_opt_self() systemFontOfSize:43.0 weight:UIFontWeightHeavy];
  qword_100944178 = result;
  return result;
}

void sub_100678D58()
{
  if (qword_100921C48 != -1)
  {
    swift_once();
  }

  v0 = qword_100944180;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_100944188 = v4;
}

void sub_100678E6C(uint64_t a1, void *a2, void **a3, void *a4)
{
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v5 = *a3;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 preferredFontDescriptorWithTextStyle:v7];
  v9 = [v8 fontDescriptorWithSymbolicTraits:32770];
  v10 = objc_opt_self();
  if (v9)
  {
    v11 = [v10 fontWithDescriptor:v9 size:0.0];

    v8 = v9;
  }

  else
  {
    v11 = [v10 fontWithDescriptor:v8 size:0.0];
  }

  *a4 = v11;
}

char *sub_100678FB8(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v76 = sub_100752AC4();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_1009441B8] = 7;
  v3[qword_1009441C0] = 7;
  v7 = qword_1009441D8;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v3[qword_1009441E8] = 0;
  v3[qword_1009441F8] = 0;
  v3[qword_100944200] = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = &v3[qword_1009441F0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v15;
  v16 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = &v3[qword_1009441B0];
  v19 = a2[1];
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  sub_10000C518(&qword_100944260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A79C0;
  *(inited + 32) = 5;
  v21 = qword_100921C38;
  v82 = v8;

  v81 = v9;

  v80 = v10;

  v79 = v11;

  v78 = v12;

  v77 = v13;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_100944170;
  *(inited + 40) = qword_100944170;
  *(inited + 48) = 2;
  *(inited + 56) = v22;
  *(inited + 64) = 3;
  *(inited + 72) = v22;
  *(inited + 80) = 0;
  *(inited + 88) = v22;
  *(inited + 96) = 1;
  *(inited + 104) = v22;
  *(inited + 112) = 6;
  v23 = qword_100921C70;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1009441A8;
  *(inited + 120) = qword_1009441A8;
  *(inited + 128) = 4;
  v26 = qword_100921C60;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_100944198;
  *(inited + 136) = qword_100944198;
  v29 = sub_100413644(inited);
  swift_setDeallocating();
  v30 = v28;
  sub_10000C518(&qword_100944268);
  swift_arrayDestroy();
  v31 = type metadata accessor for TodayTransitioningLabelView();
  v32 = objc_allocWithZone(v31);
  *&v3[qword_1009441D0] = sub_10020BC38(v29, v24);
  v33 = sub_100413644(_swiftEmptyArrayStorage);
  if (qword_100921C50 != -1)
  {
    swift_once();
  }

  v34 = qword_100944188;
  objc_allocWithZone(v31);
  *&v3[qword_1009441E0] = sub_10020BC38(v33, v34);
  v35 = sub_100413644(_swiftEmptyArrayStorage);
  if (qword_100921C28 != -1)
  {
    swift_once();
  }

  v36 = qword_100944160;
  v37 = objc_allocWithZone(v31);
  *&v3[qword_1009441C8] = sub_10020BC38(v35, v36);
  v88.receiver = v3;
  v88.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = [v38 layer];
  [v39 setAllowsGroupBlending:0];

  v40 = qword_1009441D0;
  *(*&v38[qword_1009441D0] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v41 = *&v38[qword_1009441C8];
  v42 = qword_1009441C8;
  v73 = qword_1009441C8;
  *(v41 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v43 = *&v38[qword_1009441E0];
  v44 = qword_1009441E0;
  v72 = qword_1009441E0;
  *(v43 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  sub_100016C60(0, &qword_100923500);
  v46 = v45;
  v47 = sub_100753DF4();
  [v46 setTextColor:v47];

  v48 = *&v38[v40];
  v71 = v40;
  v49 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v50 = sub_100753DD4();
  [v49 setTextColor:v50];

  v51 = *(*&v38[v44] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v52 = sub_100753DF4();
  [v51 setTextColor:v52];

  v53 = qword_1009441D8;
  [*&v38[qword_1009441D8] setContentMode:1];
  v54 = *(*&v38[v42] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v55 = v54;
  v56 = v74;
  sub_100752A74();
  sub_10000C8CC(&v84, &unk_100923520);
  sub_10000C8CC(&v86, &unk_100923520);
  sub_100753C74();

  v57 = *(v75 + 8);
  v58 = v76;
  v57(v56, v76);
  v59 = *(*&v38[v40] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v60 = v59;
  sub_100752A74();
  sub_10000C8CC(&v84, &unk_100923520);
  sub_10000C8CC(&v86, &unk_100923520);
  sub_100753C74();

  v57(v56, v58);
  v61 = *&v38[v53];
  v62 = v53;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v63 = v61;
  sub_100752A74();
  sub_10000C8CC(&v84, &unk_100923520);
  sub_10000C8CC(&v86, &unk_100923520);
  sub_100753C74();

  v57(v56, v58);
  v64 = v72;
  v65 = *(*&v38[v72] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v66 = v65;
  sub_100752A74();
  sub_10000C8CC(&v84, &unk_100923520);
  sub_10000C8CC(&v86, &unk_100923520);
  sub_100753C74();

  v57(v56, v58);
  [v38 addSubview:*&v38[v73]];
  [v38 addSubview:*&v38[v71]];
  [v38 addSubview:*&v38[v62]];
  [v38 addSubview:*&v38[v64]];
  sub_10000C518(&unk_1009249D0);
  v67 = swift_allocObject();
  v76 = xmmword_1007A5A00;
  *(v67 + 16) = xmmword_1007A5A00;
  *(v67 + 32) = sub_1007519E4();
  *(v67 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(&v87 + 1) = ObjectType;
  *&v86 = v38;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(&v86);
  v68 = swift_allocObject();
  *(v68 + 16) = v76;
  *(v68 + 32) = sub_100751554();
  *(v68 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v38;
}

id sub_100679A78()
{
  v1 = v0;
  v2 = *&v0[qword_1009441C8];
  v3 = qword_1009441B8;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory);
  v5 = v1[qword_1009441B8];
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory) = v5;
  sub_10020C5F8(v4, v5);
  v6 = *&v1[qword_1009441D0];
  v7 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory);
  v8 = v1[v3];
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory) = v8;
  sub_10020C5F8(v7, v8);
  v9 = *&v1[qword_1009441E0];
  v10 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory);
  v11 = v1[v3];
  *(v9 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_sizeCategory) = v11;
  sub_10020C5F8(v10, v11);

  return [v1 setNeedsLayout];
}

id sub_100679B2C()
{
  v1 = v0;
  v2 = *&v0[qword_1009441C8];
  v3 = &v0[qword_1009441F0];
  v4 = *&v0[qword_1009441F0];

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = v4(v6);

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_numberOfLines) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (!v8)
  {
    v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  }

  [v8 setNumberOfLines:v7];
  v9 = *&v1[qword_1009441D0];
  v10 = *(v3 + 10);

  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = v10(v12);

  *(v9 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_numberOfLines) = v13;
  v14 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (!v14)
  {
    v14 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  }

  [v14 setNumberOfLines:v13];
  v15 = *&v1[qword_1009441E0];
  v16 = *(v3 + 6);

  v17 = [v1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  v19 = v16(v18);

  *(v15 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_numberOfLines) = v19;
  v20 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (v20)
  {
    [v20 setNumberOfLines:v19];
  }

  else
  {
    [*(v15 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setNumberOfLines:v19];
  }

  v21 = *(v3 + 2);
  v22 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);

  v23 = [v1 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  v25 = v21(v24);

  [v22 setMaximumContentSizeCategory:v25];

  v26 = *(v3 + 4);
  v27 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);

  v28 = [v1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];

  v30 = v26(v29);

  [v27 setMaximumContentSizeCategory:v30];

  v31 = *(v3 + 8);
  v32 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);

  v33 = [v1 traitCollection];
  v34 = [v33 preferredContentSizeCategory];

  v35 = v31(v34);

  [v32 setMaximumContentSizeCategory:v35];

  return [v1 setNeedsLayout];
}

void sub_100679F5C()
{
  v1 = *(v0 + qword_1009441C8);
  v2 = *(v0 + qword_100944200);
  v3 = &OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
  if (v2 == 1)
  {
    *(*(v0 + qword_1009441D0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning) = 1;
    v4 = *(v0 + qword_1009441E0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v5 = *(v0 + qword_1009441D0);
    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v4 = *(v0 + qword_1009441E0);
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
    v3 = &OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout;
    LOBYTE(v2) = 0;
  }

  *(v4 + *v3) = v2;
}

void sub_10067A004(void *a1)
{
  v1 = a1;
  sub_100679B2C();
}

void sub_10067A04C()
{
  if ([v0 overrideUserInterfaceStyle])
  {
    [v0 overrideUserInterfaceStyle];
    sub_100753094();
    v1 = sub_100753064();

    v2 = [*&v0[qword_1009441C8] layer];
    [v2 setCompositingFilter:v1];

    v4 = [*&v0[qword_1009441E0] layer];
    [v4 setCompositingFilter:v1];
  }

  else
  {
    v3 = [*&v0[qword_1009441C8] layer];
    [v3 setCompositingFilter:0];

    v4 = [*&v0[qword_1009441E0] layer];
    [v4 setCompositingFilter:0];
  }
}

id sub_10067A1B8@<X0>(uint64_t *a1@<X8>)
{
  v20 = *(v1 + qword_1009441B0 + 16);
  v21 = *(v1 + qword_1009441B0);
  v3 = *(v1 + qword_1009441B0 + 32);
  v4 = *(v1 + qword_1009441C8);
  v5 = *(v1 + qword_1009441D0);
  v6 = *(v1 + qword_1009441B0 + 40);
  v7 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  v23 = sub_100745C84();
  v24 = &protocol witness table for UILabel;
  *&v22 = v7;
  v8 = *(v1 + qword_1009441D8);
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = [v8 image];
  if (v12)
  {

    v13 = sub_100016C60(0, &qword_10092BFC0);
    v14 = v8;
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v8 = 0;
  }

  v19 = *(v1 + qword_1009441E0);
  v16 = *(v1 + qword_1009441E8);
  a1[3] = &type metadata for TodayCardLabelsLayout;
  a1[4] = sub_10067BB78();
  v17 = swift_allocObject();
  *a1 = v17;
  *(v17 + 16) = v21;
  *(v17 + 32) = v20;
  *(v17 + 48) = v3;
  *(v17 + 56) = v6;
  *(v17 + 64) = v9;
  *(v17 + 72) = v10;
  sub_100032CCC(&v22, v17 + 80);
  *(v17 + 120) = v8;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = v13;
  *(v17 + 152) = v15;
  *(v17 + 160) = v19;
  *(v17 + 168) = v16;

  return v19;
}

void sub_10067A364(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_10000C888(a1, a1[3]);
  v4 = sub_1007514C4();
  v6 = v3();

  if (v6)
  {
    sub_10000C888(a1, a1[3]);
    v5 = sub_1007514C4();
    if (sub_100753944())
    {
      v6;
    }

    sub_10007271C(a1, a1[3]);
    sub_1007514D4();
  }
}

void sub_10067A480(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  sub_10000C888(a1, a1[3]);
  v4 = sub_1007514C4();
  v6 = v3();

  if (v6)
  {
    sub_10000C888(a1, a1[3]);
    v5 = sub_1007514C4();
    if (sub_100753944())
    {
      v6;
    }

    sub_10007271C(a1, a1[3]);
    sub_1007514D4();
  }
}

void sub_10067A59C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  sub_10000C888(a1, a1[3]);
  v4 = sub_1007514C4();
  v6 = v3();

  if (v6)
  {
    sub_10000C888(a1, a1[3]);
    v5 = sub_1007514C4();
    if (sub_100753944())
    {
      v6;
    }

    sub_10007271C(a1, a1[3]);
    sub_1007514D4();
  }
}

id sub_10067A6B8(void *a1)
{
  v1 = a1;
  sub_1006787A8();
  v3 = v2;

  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10067A730(void *a1, uint64_t a2, NSString a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_100753094();
    v6 = a1;
    a3 = sub_100753064();
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityLabel:", a3);
}

void *sub_10067A7C4()
{
  sub_10000C518(&unk_1009231A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007AC000;
  v2 = *(v0 + qword_1009441C8);
  *(inited + 32) = v2;
  v3 = *(v0 + qword_1009441D0);
  *(inited + 40) = v3;
  v4 = *(v0 + qword_1009441E0);
  *(inited + 48) = v4;
  v21 = _swiftEmptyArrayStorage;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  for (i = v6; ; i = sub_100754574())
  {
    v10 = i;
    if ([i isHidden] & 1) != 0 || (objc_msgSend(*&v10[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      if (v5)
      {
LABEL_18:
        v11 = sub_100754574();
        goto LABEL_9;
      }
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_32;
    }

    v11 = *(inited + 40);
LABEL_9:
    v12 = v11;
    if ([v11 isHidden] & 1) != 0 || (objc_msgSend(*&v12[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        break;
      }

      goto LABEL_12;
    }

    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
    if (v5)
    {
      break;
    }

LABEL_12:
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v13 = sub_100754574();
LABEL_14:
  v14 = v13;
  if ([v13 isHidden] & 1) != 0 || (objc_msgSend(*&v14[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label], "isHidden"))
  {
  }

  else
  {
    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v15 = sub_100754664();
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v15 = *(v21 + 16);
  if (!v15)
  {
LABEL_35:

    return _swiftEmptyArrayStorage;
  }

LABEL_25:
  result = sub_1007545C4();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v18 = sub_100754574();
      }

      else
      {
        v18 = *(v21 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
    }

    while (v15 != v17);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

Class sub_10067AB3C(void *a1)
{
  v1 = a1;
  v2 = sub_10067A7C4();
  sub_100158C58(v2);

  v3.super.isa = sub_100753294().super.isa;

  return v3.super.isa;
}

void sub_10067ABC4(void *a1, uint64_t a2, Class isa, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_1007532A4();
    v8 = a1;
    isa = sub_100753294().super.isa;
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, isa);
}

uint64_t sub_10067AC98()
{
}

uint64_t sub_10067AD60(uint64_t a1)
{
}

uint64_t sub_10067AE34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10067AE7C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10067AF08(uint64_t a1)
{
  v2 = sub_1007497C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_10093E780);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  sub_10067BC2C(a1, &v35 - v10);
  v12 = *(v3 + 48);
  v13 = v12(v11, 1, v2);
  v36 = v3;
  if (v13 == 1)
  {
    sub_10000C8CC(v11, &qword_10093E780);
    v14 = 0;
  }

  else
  {
    sub_1007497B4();
    sub_10067BC9C(&qword_1009354E8, &type metadata accessor for StringCharacteristics);
    v14 = sub_100754324();
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v11, v2);
  }

  sub_10067BC2C(a1, v8);
  if (v12(v8, 1, v2) != 1)
  {
    sub_100749794();
    sub_10067BC9C(&qword_1009354E8, &type metadata accessor for StringCharacteristics);
    v17 = sub_100754324();
    v18 = *(v36 + 8);
    v18(v5, v2);
    v18(v8, v2);
    if (v14)
    {
      v19 = 52.0;
    }

    else
    {
      v19 = 44.0;
    }

    if ((v14 | v17))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_10000C8CC(v8, &qword_10093E780);
  if ((v14 & 1) == 0)
  {
LABEL_11:
    v16 = 0x4042000000000000;
    goto LABEL_12;
  }

  v16 = 0x404A000000000000;
LABEL_12:
  v19 = *&v16;
LABEL_13:
  v20 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v20 setMaximumLineHeight:v19];
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5620;
  *(inited + 32) = NSFontAttributeName;
  v22 = qword_100921C40;
  v23 = NSFontAttributeName;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_100944178;
  v25 = sub_100016C60(0, &qword_100923AB0);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v26 = sub_100016C60(0, &qword_10093F2D0);
  *(inited + 80) = v20;
  *(inited + 104) = v26;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v27 = objc_allocWithZone(NSNumber);
  v28 = v24;
  v29 = NSParagraphStyleAttributeName;
  v30 = v20;
  v31 = kCTBaselineOffsetAttributeName;
  v32 = [v27 initWithDouble:{fmin(v19 + -43.0, 0.0)}];
  *(inited + 144) = sub_100016C60(0, &qword_10092BE20);
  *(inited + 120) = v32;
  v33 = sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();

  return v33;
}

unint64_t sub_10067B420(uint64_t *a1, void **a2)
{
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5620;
  *(inited + 32) = NSFontAttributeName;
  v5 = *a1;
  v6 = NSFontAttributeName;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *a2;
  v8 = sub_100016C60(0, &qword_100923AB0);
  *(inited + 40) = v7;
  *(inited + 64) = v8;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v9 = objc_allocWithZone(NSParagraphStyle);
  v10 = v7;
  v11 = NSParagraphStyleAttributeName;
  v12 = [v9 init];
  v13 = sub_100016C60(0, &qword_10092A248);
  *(inited + 80) = v12;
  *(inited + 104) = v13;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v14 = objc_allocWithZone(NSNumber);
  v15 = kCTBaselineOffsetAttributeName;
  v16 = [v14 initWithDouble:0.0];
  *(inited + 144) = sub_100016C60(0, &qword_10092BE20);
  *(inited + 120) = v16;
  v17 = sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  return v17;
}

id sub_10067B5D0(_BYTE *a1)
{
  v3 = *&a1[qword_1009441B0 + 32];
  v4 = a1[qword_1009441B0 + 40];
  v5 = &v1[qword_1009441B0];
  v6 = *&a1[qword_1009441B0 + 16];
  *v5 = *&a1[qword_1009441B0];
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  v5[40] = v4;
  [v1 setNeedsLayout];
  v1[qword_1009441E8] = a1[qword_1009441E8];
  v7 = *&v1[qword_1009441D0];
  *(v7 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v8 = v7;
  v51 = *&v1[qword_1009441C8];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v50 = *&a1[qword_1009441C8];
  v10 = *(v50 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v11 = *(v51 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v12 = [v10 text];
  [v11 setText:v12];

  v13 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v14 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v15 = v8;
  v16 = *&a1[qword_1009441D0];
  v17 = *(v16 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v18 = v14;
  v19 = [v17 attributedText];
  [v18 setAttributedText:v19];

  v49 = v15;
  v20 = *(v16 + v13);
  v21 = *(v15 + v13);
  [v21 setAdjustsFontSizeToFitWidth:{objc_msgSend(v20, "adjustsFontSizeToFitWidth")}];

  v22 = *(v16 + v13);
  v23 = *(v15 + v13);
  [v22 minimumScaleFactor];
  [v23 setMinimumScaleFactor:?];

  v24 = *&v1[qword_1009441D8];
  v46 = v24;
  v47 = *&a1[qword_1009441D8];
  v25 = [v47 image];
  [v24 setImage:v25];

  v26 = *&v1[qword_1009441E0];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v28 = *&a1[qword_1009441E0];
  v29 = *(v28 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v30 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v31 = [v29 text];
  [v30 setText:v31];

  v32 = *(v50 + v9);
  v33 = *(v51 + v9);
  [v33 setHidden:{objc_msgSend(v32, "isHidden")}];

  v34 = *(v16 + v13);
  v35 = *(v49 + v13);
  [v35 setHidden:{objc_msgSend(v34, "isHidden")}];

  [v46 setHidden:{objc_msgSend(v47, "isHidden")}];
  v36 = *(v26 + v27);
  v37 = *(v28 + v27);
  v38 = v36;
  [v38 setHidden:{objc_msgSend(v37, "isHidden")}];

  v39 = *&a1[qword_1009441F0 + 88];
  v40 = &v1[qword_1009441F0];
  v41 = *&a1[qword_1009441F0 + 8];
  v42 = *&a1[qword_1009441F0 + 24];
  v45 = *&a1[qword_1009441F0 + 40];
  v43 = *&a1[qword_1009441F0 + 56];
  *v48 = *&a1[qword_1009441F0 + 72];
  *v40 = *&a1[qword_1009441F0];
  *(v40 + 8) = v41;
  *(v40 + 24) = v42;
  *(v40 + 40) = v45;
  *(v40 + 56) = v43;
  *(v40 + 72) = *v48;
  *(v40 + 11) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_100679B2C();

  [v1 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  sub_10067A04C();

  return [v1 setNeedsLayout];
}

void sub_10067BAB4()
{
  *(v0 + qword_1009441B8) = 7;
  *(v0 + qword_1009441C0) = 7;
  v1 = qword_1009441D8;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + qword_1009441E8) = 0;
  *(v0 + qword_1009441F8) = 0;
  *(v0 + qword_100944200) = 0;
  sub_100754644();
  __break(1u);
}

unint64_t sub_10067BB78()
{
  result = qword_100944258;
  if (!qword_100944258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944258);
  }

  return result;
}

uint64_t sub_10067BBCC()
{
  sub_10000C620(v0 + 80);
  if (*(v0 + 144))
  {
    sub_10000C620(v0 + 120);
  }

  return _swift_deallocObject(v0, 169, 7);
}

uint64_t sub_10067BC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093E780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067BC9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10067BD30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    swift_unknownObjectRetain();

    [v2 frame];
    swift_unknownObjectRetain();
    if (JUScreenClassGetMain() == 1)
    {
      if (qword_100921C80 != -1)
      {
        swift_once();
      }

      v12 = qword_100944288;
    }

    else
    {
      if (qword_100921C78 != -1)
      {
        swift_once();
      }

      v12 = qword_100944270;
    }

    v13 = sub_10000D0FC(v4, v12);
    (*(v5 + 16))(v7, v13, v4);
    (*(v5 + 32))(v10, v7, v4);
    sub_1007504C4();
    (*(v5 + 8))(v10, v4);
    swift_unknownObjectRelease();
    sub_10074F364();
    sub_10074F1E4();
    sub_100743224();
    sub_1007433C4();
    sub_10067CF2C(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
    swift_unknownObjectRelease();
  }
}

double sub_10067BFF4(double a1)
{
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007504F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100921C80 != -1)
    {
      swift_once();
    }

    v13 = qword_100944288;
  }

  else
  {
    if (qword_100921C78 != -1)
    {
      swift_once();
    }

    v13 = qword_100944270;
  }

  v14 = sub_10000D0FC(v6, v13);
  (*(v7 + 16))(v9, v14, v6);
  (*(v7 + 32))(v12, v9, v6);
  sub_1007504C4();
  (*(v7 + 8))(v12, v6);
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v15 = sub_100750B04();
  sub_10000D0FC(v15, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  (*(v3 + 8))(v5, v2);
  return a1;
}

uint64_t sub_10067C2EC()
{
  result = sub_100747574();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_10067C32C()
{
  sub_1007433C4();
  sub_10067CF2C(&qword_100925570, &type metadata accessor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_10067C3C0(uint64_t a1)
{
  result = sub_10067CF2C(&qword_1009442A0, type metadata accessor for EditorialStoryCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void sub_10067C4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_1007457B4();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a5 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_pageTraits] = v13;
  swift_unknownObjectRelease();
  v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
  sub_1007475B4();
  if (v15)
  {
    v16 = sub_100753064();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
  sub_1007475A4();
  v18 = sub_100753064();

  v41 = v17;
  [v17 setText:v18];

  v19 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel];
  sub_100747584();
  v40 = v14;
  if (v20)
  {
    v21 = sub_100753064();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:{v21, v40}];

  sub_100747594();
  v22 = (*(v9 + 88))(v12, v8);
  if (v22 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v9 + 96))(v12, v8);
    v23 = *(sub_10000C518(&qword_100940630) + 48);
    v24 = sub_10074F1E4();

    v25 = sub_100748E34();
    v26 = *(*(v25 - 8) + 8);
    v27 = v24;
    v26(v12 + v23, v25);
    if (!v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v22 != enum case for ShelfBackground.color(_:))
    {
      (*(v9 + 8))(v12, v8);
LABEL_21:
      if (qword_100920910 != -1)
      {
        swift_once();
      }

      v33 = qword_10097F8D0;
      v24 = 0;
      goto LABEL_24;
    }

    (*(v9 + 96))(v12, v8);
    v24 = *v12;
    v28 = *(sub_10000C518(&unk_100930940) + 48);
    v29 = sub_100748E34();
    v30 = *(*(v29 - 8) + 8);
    v27 = v24;
    v30(v12 + v28, v29);
  }

  v31 = v27;
  if (sub_100753ED4())
  {
    if (qword_100920910 != -1)
    {
      swift_once();
    }

    v32 = qword_10097F8D0;
  }

  else
  {
    if (qword_100920900 != -1)
    {
      swift_once();
    }

    v32 = qword_10097F8C0;
  }

  v33 = v32;

LABEL_24:
  [v40 setTextColor:v33];

  if (v24)
  {
    v34 = v24;
    if (sub_100753ED4())
    {
      if (qword_100920918 != -1)
      {
        swift_once();
      }

      v35 = qword_10097F8D8;
    }

    else
    {
      if (qword_100920908 != -1)
      {
        swift_once();
      }

      v35 = qword_10097F8C8;
    }

    v36 = v35;
  }

  else
  {
    if (qword_100920918 != -1)
    {
      swift_once();
    }

    v36 = qword_10097F8D8;
  }

  [v41 setTextColor:v36];

  if (v24)
  {
    v37 = v24;
    if (sub_100753ED4())
    {
      if (qword_100920918 != -1)
      {
        swift_once();
      }

      v38 = qword_10097F8D8;
    }

    else
    {
      if (qword_100920908 != -1)
      {
        swift_once();
      }

      v38 = qword_10097F8C8;
    }

    v39 = v38;
  }

  else
  {
    if (qword_100920918 != -1)
    {
      swift_once();
    }

    v39 = qword_10097F8D8;
    v37 = 0;
  }

  [v19 setTextColor:v39];

  [v6 setNeedsLayout];
}

id sub_10067CAF4()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v12 = v11;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100921C80 != -1)
    {
      swift_once();
    }

    v13 = qword_100944288;
  }

  else
  {
    if (qword_100921C78 != -1)
    {
      swift_once();
    }

    v13 = qword_100944270;
  }

  v14 = sub_10000D0FC(v4, v13);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  sub_1007504C4();
  v16 = v15;
  (*(v5 + 8))(v10, v4);
  v17 = objc_opt_self();
  v18 = [v17 absoluteDimension:v12];
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v19 = sub_100750B04();
  sub_10000D0FC(v19, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v21 = v20;
  (*(v1 + 8))(v3, v0);
  v22 = [v17 absoluteDimension:round(v16) + v21];
  v23 = [objc_opt_self() sizeWithWidthDimension:v18 heightDimension:v22];

  v24 = [objc_opt_self() itemWithLayoutSize:v23];
  v25 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007A5CF0;
  *(v26 + 32) = v24;
  sub_1000B05B8();
  v27 = v24;
  isa = sub_100753294().super.isa;

  v29 = [v25 verticalGroupWithLayoutSize:v23 subitems:isa];

  return v29;
}

uint64_t sub_10067CF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10067CF74()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_100982CD0);
  sub_10000D0FC(v0, qword_100982CD0);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

uint64_t sub_10067D010()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100944300);
  sub_10000D0FC(v4, qword_100944300);
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009817D0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10067D1EC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100944318);
  sub_10000D0FC(v4, qword_100944318);
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981848);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10067D3C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100752AC4();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074AB44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v48 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_1009817B8);
  v21 = *(v19 - 8);
  v55 = *(v21 + 16);
  v55(v18, v20, v19);
  v54 = *(v21 + 56);
  v54(v18, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v13 + 104);
  v53 = v13 + 104;
  v23(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v24 = sub_100745C84();
  v25 = objc_allocWithZone(v24);
  v52 = v12;
  *&v5[v48] = sub_100745C74();
  v48 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v19, qword_1009817D0);
  v55(v18, v26, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v27 = objc_allocWithZone(v24);
  *&v5[v48] = sub_100745C74();
  v48 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v28 = sub_10000D0FC(v19, qword_100981848);
  v55(v18, v28, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v29 = objc_allocWithZone(v24);
  *&v5[v48] = sub_100745C74();
  v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_wantsCardConsistentMargins] = 1;
  v30 = &v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_clickActionHandler];
  v31 = type metadata accessor for TodayCardThreeLineOverlayView();
  *v30 = 0;
  v30[1] = 0;
  v60.receiver = v5;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  sub_100016C60(0, &qword_100923500);
  v33 = v32;
  v34 = sub_100753E64();
  [v33 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_headingLabel;
  v36 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_headingLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = v36;
  v38 = v49;
  sub_100752A74();
  sub_1000277BC(&v56);
  sub_1000277BC(&v58);
  sub_100753C74();

  v39 = v51;
  v40 = *(v50 + 8);
  v40(v38, v51);
  v41 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_titleLabel;
  v42 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_titleLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v43 = v42;
  sub_100752A74();
  sub_1000277BC(&v56);
  sub_1000277BC(&v58);
  sub_100753C74();

  v40(v38, v39);
  v44 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_descriptionLabel;
  v45 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_descriptionLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = v45;
  sub_100752A74();
  sub_1000277BC(&v56);
  sub_1000277BC(&v58);
  sub_100753C74();

  v40(v38, v39);
  [v33 addSubview:*&v33[v35]];
  [v33 addSubview:*&v33[v41]];
  [v33 addSubview:*&v33[v44]];

  return v33;
}

id sub_10067DB14()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v26, "layoutSubviews");
  sub_1007477B4();
  CGRectGetWidth(v27);
  v1 = 14.0;
  sub_100753BA4();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_headingLabel];
  v7 = [v6 text];
  if (v7)
  {

    [v6 measurementsWithFitting:v0 in:{v3, v5}];
    v9 = v8;
    v11 = v10;
    sub_1007477B4();
    sub_100753B24();
    [v6 setFrame:?];
    [v6 jet_languageAwareOutsets];
    v13 = v12;
    v28.origin.x = 20.0;
    v28.origin.y = 14.0;
    v28.size.width = v3;
    v28.size.height = v9;
    v1 = v13 + CGRectGetMaxY(v28) - v11;
  }

  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_titleLabel];
  v15 = [v14 text];
  if (v15)
  {

    [v14 measurementsWithFitting:v0 in:{v3, v5}];
    v18 = v17;
    if (qword_100921C90 != -1)
    {
      swift_once();
    }

    v19 = sub_100750B04();
    sub_10000D0FC(v19, qword_100944300);
    sub_100750584();
    v21 = v1 + v20;
    sub_1007477B4();
    sub_100753B24();
    [v14 setFrame:?];
    v29.origin.x = 20.0;
    v29.origin.y = v21;
    v29.size.width = v3;
    v29.size.height = v18;
    MaxY = CGRectGetMaxY(v29);
  }

  v22 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_descriptionLabel];
  v23 = [v22 text];
  if (v23)
  {

    if ((v0[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_isExpanded] & 1) == 0)
    {
      [v22 measurementsWithFitting:v0 in:{v3, v5}];
      sub_1007477B4();
      CGRectGetMaxY(v30);
      sub_1007477B4();
      sub_100753B24();
      [v22 setFrame:?];
    }
  }

  v24 = 1.0;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_isExpanded])
  {
    v24 = 0.0;
  }

  return [v22 setAlpha:v24];
}

double sub_10067DEA0(double a1)
{
  v3 = sub_10074CD14();
  v48 = *(v3 - 8);
  v49 = v3;
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_headingLabel] text];
  if (v7)
  {
    v8 = v7;
    sub_100753094();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_titleLabel] text];
  if (v11)
  {
    v12 = v11;
    sub_100753094();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_descriptionLabel] text];
  if (v15)
  {
    v16 = v15;
    v46 = sub_100753094();
    v18 = v17;
  }

  else
  {
    v46 = 0;
    v18 = 0;
  }

  v47 = v1[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_isExpanded];
  [v1 layoutMargins];
  v19 = [v1 traitCollection];
  sub_100753BA4();
  if (!v10)
  {
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_23:

    goto LABEL_24;
  }

  v20 = v18;
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  sub_10000D0FC(v21, qword_1009817B8);
  v22 = sub_100753C14();
  v23 = sub_10074F3F4();
  v51 = v23;
  v52 = sub_10067EE48(&qword_10092AC70, &type metadata accessor for Feature);
  v24 = sub_10000D134(v50);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v25 = v22;
  sub_10074FC74();
  sub_10000C620(v50);

  sub_10074CD04();
  sub_10074CCC4();

  (*(v48 + 8))(v6, v49);
  v18 = v20;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_14:
  v45 = v18;
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v26 = sub_100750534();
  sub_10000D0FC(v26, qword_1009817D0);
  v27 = sub_100753C14();
  v28 = sub_10074F3F4();
  v51 = v28;
  v52 = sub_10067EE48(&qword_10092AC70, &type metadata accessor for Feature);
  v29 = sub_10000D134(v50);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  sub_10074FC74();
  sub_10000C620(v50);

  sub_10074CD04();
  sub_10074CCC4();
  if (qword_100921C90 != -1)
  {
    swift_once();
  }

  v31 = sub_100750B04();
  sub_10000D0FC(v31, qword_100944300);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007A5CF0;
  *(v32 + 32) = v19;
  v33 = v19;
  v34 = sub_100751044();
  sub_100750544();

  (*(v48 + 8))(v6, v49);
  if (!v45)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v47)
  {

LABEL_24:

    return a1;
  }

  sub_100016C60(0, &qword_100923AB0);
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v35 = sub_100750534();
  sub_10000D0FC(v35, qword_100981848);
  v36 = sub_100753C14();
  v37 = sub_10074F3F4();
  v51 = v37;
  v52 = sub_10067EE48(&qword_10092AC70, &type metadata accessor for Feature);
  v38 = sub_10000D134(v50);
  (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);
  v39 = v36;
  sub_10074FC74();
  sub_10000C620(v50);
  sub_10074CD04();
  sub_10074CCC4();
  if (qword_100921C98 != -1)
  {
    swift_once();
  }

  v40 = sub_100750B04();
  sub_10000D0FC(v40, qword_100944318);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1007A5CF0;
  *(v41 + 32) = v19;
  v42 = v19;
  v43 = sub_100751044();
  sub_100750544();

  (*(v48 + 8))(v6, v49);
  return a1;
}

id sub_10067E7B0(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10091FE10 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_10097CA50);
    v7 = v1;
    sub_100743464();

    sub_100753F54();
    if (qword_10091FE20 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v6, qword_10097CA80);
    v8 = v7;
    sub_100743464();

    sub_100753F54();
    if (qword_100921C88 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v6, qword_100982CD0);
    v9 = v8;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

id sub_10067EA44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10067EB40(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000164A8(v4);
}

id sub_10067EB60()
{
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_headingLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_titleLabel) setText:0];
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_descriptionLabel);

  return [v1 setText:0];
}

id sub_10067EC1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v6 = v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v6 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v4 setNeedsLayout];
    goto LABEL_6;
  }

  if (v6 == 7)
  {
    goto LABEL_5;
  }

  switch(a4)
  {
    case 6u:
      if (v6 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v6 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v6 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v6 != a4 || (v6 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_headingLabel];
  sub_10074B954();
  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = sub_10074FB14();
  [v7 setTextColor:v10];

  v11 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_titleLabel];
  sub_10074B944();
  if (v12)
  {
    v13 = sub_100753064();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  v14 = sub_10074FB04();
  [v11 setTextColor:v14];

  v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_descriptionLabel];
  sub_10074B934();
  if (v16)
  {
    v17 = sub_100753064();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText:v17];

  v18 = sub_10074FB14();
  [v15 setTextColor:v18];

  return [v5 setNeedsLayout];
}

uint64_t sub_10067EE48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10067EE90()
{
  v1 = v0;
  v25 = sub_10074AB44();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_1009817B8);
  v10 = *(v8 - 8);
  v23 = *(v10 + 16);
  v23(v7, v9, v8);
  v22 = *(v10 + 56);
  v22(v7, 0, 1, v8);
  v11 = enum case for DirectionalTextAlignment.none(_:);
  v12 = *(v2 + 104);
  v24 = v2 + 104;
  v12(v4, enum case for DirectionalTextAlignment.none(_:), v25);
  v13 = sub_100745C84();
  v14 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_100745C74();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v8, qword_1009817D0);
  v23(v7, v15, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v16 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_100745C74();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v8, qword_100981848);
  v23(v7, v17, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v18 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_100745C74();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_wantsCardConsistentMargins) = 1;
  v19 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardThreeLineOverlayView_clickActionHandler);
  *v19 = 0;
  v19[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10067F360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941298, type metadata accessor for AchievementSummaryCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10067F3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009413E8, type metadata accessor for ActionCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10067F494()
{
  v0 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&qword_100933260);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  if (sub_100279E58())
  {
    sub_1007468F4();
    sub_100752994();
    sub_100349280();
    sub_100752954();
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5620;
    sub_10074DCA4();
    sub_10074DC94();
    sub_10074DC84();
    v9 = v5;
    sub_100685DD0(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000C518(&qword_10092A078);
    sub_100169778();
    sub_1007543A4();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007A5A00;
    sub_10074DC94();
    v9 = v7;
    sub_100685DD0(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000C518(&qword_10092A078);
    sub_100169778();
    return sub_1007543A4();
  }
}

uint64_t sub_10067F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009413C0, type metadata accessor for AnnotationCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10067F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009413B0, type metadata accessor for AppShowcaseCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10067FAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10067FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10067FBB0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_10067FC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10067FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941378, type metadata accessor for ArcadeShowcaseCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10067FDD4()
{
  sub_10000C518(&qword_10092A068);
  sub_10074DCB4();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_10074DC94();
  sub_100685DD0(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078);
  sub_100169778();
  return sub_1007543A4();
}

uint64_t sub_10067FF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10068000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100680090(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100680114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100680214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100680290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100680314(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100680398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

id sub_100680498()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
  *v1 = 0;
  *(v1 + 1) = 0;

  return sub_10032C34C();
}

uint64_t sub_1006804F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941348, type metadata accessor for BrickCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100680618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940FF0, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100680738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941328, type metadata accessor for EditorialCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100680858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941310, type metadata accessor for EditorialQuoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10068096C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1006809E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100680A6C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100680AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100680BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009412D8, type metadata accessor for FootnoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100680C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009412C8, type metadata accessor for FramedArtworkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100680D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009412B8, type metadata accessor for FramedVideoCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100680E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941288, type metadata accessor for GameCenterReengagementCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100680F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100680FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100681054(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_1006810D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006811DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941268, type metadata accessor for HorizontalRuleCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006812DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941250, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006813F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10068146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1006814F0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100681574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100681614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941228, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100681728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100928440, type metadata accessor for InformationRibbonCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10068183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1006818B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10068193C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_1006819C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100681AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941200, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100681BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009411F0, type metadata accessor for LargeLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100681CFC()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_1006D0150(0);
}

uint64_t sub_100681D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009411E0, type metadata accessor for LinkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100681DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009411D0, type metadata accessor for MediumLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100681EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100681F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100681FF4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100682078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006820FC()
{
  v0 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&unk_100933230);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_1007468F4();
  sub_100752994();
  sub_100168504();
  sub_100752964();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5A00;
    sub_10074DC94();
  }

  else
  {
    sub_100752954();
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5620;
    sub_10074DCA4();
    sub_10074DC94();
    sub_10074DC84();
  }

  v8 = v5;
  sub_100685DD0(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078);
  sub_100169778();
  sub_1007543A4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10068246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009411B0, type metadata accessor for ParagraphCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006825A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941190, type metadata accessor for PosterLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006826B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941170, type metadata accessor for PreorderDisclaimerCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006827D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941160, type metadata accessor for PrivacyCategoryCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_1006828E8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_10014A070(0, 0);
  return sub_10014A07C(0, 0);
}

uint64_t sub_10068293C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941150, type metadata accessor for PrivacyDefinitionCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941140, type metadata accessor for PrivacyFooterCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941130, type metadata accessor for PrivacyHeaderCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100682C84()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1002A01F4(0, 0);
  sub_1002A0200(0, 0);
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  sub_100743384(v3, v1);
  sub_1002A3850();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_1002A1184();
}

uint64_t sub_100682D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941120, type metadata accessor for PrivacyTypeCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941100, type metadata accessor for ProductCapabilityCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009410E0, type metadata accessor for ProductMediaCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682F78()
{
  v0 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&qword_100930638);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_1007468F4();
  sub_100752994();
  sub_1002B09B8();
  sub_100752964();
  if (v7 == 2 || (v7 & 1) == 0)
  {
    sub_100752954();
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5620;
    sub_10074DCA4();
    sub_10074DC94();
    sub_10074DC84();
  }

  else
  {
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5A00;
    sub_10074DC94();
  }

  v7 = v5;
  sub_100685DD0(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078);
  sub_100169778();
  sub_1007543A4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100683364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1006833E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100683464(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_1006834E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100683584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941038, type metadata accessor for LinkableTextCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_100683698()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage] = 0;

  return sub_1004E30AC();
}

uint64_t sub_1006836F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009410C0, type metadata accessor for ProductPageLinkCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100683804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100683880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100683904(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100683988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100683A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100683A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941080, type metadata accessor for ProductLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100683BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941070, type metadata accessor for QuoteCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100683CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100683D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100683DBC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100683E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100683F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100683FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100684040(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_1006840C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100684148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100684250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940FC8, type metadata accessor for SmallBreakoutCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100684364()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_10074FE24();
}

uint64_t sub_1006843BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940FB8, type metadata accessor for SmallContactCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006844D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10068454C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1006845D0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100684654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006846D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940F98, type metadata accessor for SmallLockupCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006847F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100684870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1006848F4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100684978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006849FC()
{
  v0 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&qword_1009349F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_1007468F4();
  sub_100752994();
  sub_10038931C();
  sub_100752964();
  if (v8 == 1)
  {
    sub_100752954();
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5620;
    sub_10074DCA4();
    sub_10074DC94();
    sub_10074DC84();
  }

  else
  {
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5A00;
    sub_10074DC94();
  }

  v8 = v5;
  sub_100685DD0(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078);
  sub_100169778();
  sub_1007543A4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100684DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100684E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100684EE4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100684F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100685004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940F58, type metadata accessor for UberCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10068509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10068519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100685218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10068529C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100685320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100685428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940F20, type metadata accessor for VideoCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10068556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006855F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100747524();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744FD4();
  sub_100685DD0(&unk_100928560, &type metadata accessor for SearchAdAction);
  if (sub_1007468D4())
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100747534();
    v6 = sub_100747564();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = sub_100747564();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

void (*sub_10068586C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1004352D8();
  return sub_100018728;
}

uint64_t sub_1006858E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, WitnessTable);
}

uint64_t sub_1006859F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940EF8, type metadata accessor for ArcadeDownloadPackCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100685A94@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100020514(v2 + v4, a2);
}

uint64_t sub_100685AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  sub_1000204A4(a1, v4 + v6);
  return swift_endAccess();
}

uint64_t sub_100685BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100685C70(uint64_t a1)
{
  result = sub_100685DD0(&qword_100944440, type metadata accessor for TitledParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100685CC8(uint64_t a1)
{
  result = sub_100685DD0(&qword_100944448, type metadata accessor for ProductDescriptionCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100685D20(uint64_t a1)
{
  result = sub_100685DD0(&qword_100944450, type metadata accessor for ParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100685D78(uint64_t a1)
{
  result = sub_100685DD0(&qword_100944458, type metadata accessor for AnnotationCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100685DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100685E3C@<X0>(uint64_t a1@<X8>)
{
  sub_100393210();
  v2 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  v3 = sub_100746A94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for AppTrailerLockupCollectionViewCell()
{
  result = qword_100944488;
  if (!qword_100944488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100685F7C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView]];

  return v18;
}

void sub_100686210()
{
  v0 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v0 - 8);
  v59 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v48 - v3;
  v5 = sub_100752914();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v12 = [v9 superview];
  if (!v12)
  {

LABEL_21:

    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  v15 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView];

  v16 = v13;
  v17 = v15;
  sub_100677A8C(v17, v11, v16);

  v18 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v15) = sub_1006FE690();

  if ((v15 & 1) == 0)
  {

    goto LABEL_21;
  }

  v19 = [v9 viewWithTag:58236912];
  [v19 removeFromSuperview];

  v20 = *&v9[v14];
  v21 = qword_100943FF8;
  swift_beginAccess();
  v58 = v20;
  v22 = *&v20[v21];
  v52 = v9;
  v51 = v11;
  v50 = v16;
  if (v22 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v24 = qword_100943FE0;
    v25 = v58;
    v49 = v58;

    v64 = v24;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v26 = 0;
    v62 = v22 & 0xFFFFFFFFFFFFFF8;
    v63 = v22 & 0xC000000000000001;
    v61 = (v6 + 48);
    v57 = (v6 + 32);
    v56 = (v6 + 16);
    v55 = (v6 + 56);
    v54 = (v6 + 8);
    v27 = 32;
    v53 = v4;
    while (1)
    {
      if (v63)
      {
        v6 = sub_100754574();
      }

      else
      {
        if (v26 >= *(v62 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v22 + 8 * v26 + 32);
      }

      v28 = *&v25[v64];
      if (v26 >= *(v28 + 16))
      {
        break;
      }

      v29 = *(v28 + v27);
      sub_10074EE94();
      if ((*v61)(v4, 1, v5) == 1)
      {

        sub_10000C8CC(v4, &unk_100925380);
      }

      else
      {
        v30 = v60;
        (*v57)(v60, v4, v5);
        v31 = v29;
        [v31 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v40 = [objc_opt_self() blueColor];
        v41 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
        v42 = sub_10020836C(v40, v33, v35, v37, v39);
        v43 = i;
        v44 = v22;
        v45 = v59;
        (*v56)(v59, v30, v5);
        (*v55)(v45, 0, 1, v5);
        sub_100207F4C(v45);
        sub_10000C8CC(v45, &unk_100925380);
        v46 = [v31 viewWithTag:58236912];
        [v46 removeFromSuperview];

        v22 = v44;
        i = v43;
        v4 = v53;
        [v31 addSubview:v42];

        v47 = v30;
        v25 = v58;
        (*v54)(v47, v5);
      }

      ++v26;

      v27 += 16;
      if (i == v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_22:
}

uint64_t type metadata accessor for ArcadeDownloadPackCollectionViewCell()
{
  result = qword_1009444C0;
  if (!qword_1009444C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10068691C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100686A14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100686ACC()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100686B28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_100686BE8())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_100686D38;
}

uint64_t sub_100686C88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100686CC0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100686CF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100686D40()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_100686E70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - v4;
  v5 = sub_10074C3E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925560);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_1007479B4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v30 - v18;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v17);
  v20 = [v1 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v21 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v21 = qword_10093FF58;
  }

  v22 = sub_10000D0FC(v12, v21);
  (*(v13 + 16))(v15, v22, v12);

  (*(v13 + 32))(v19, v15, v12);
  (*(v6 + 104))(v8, enum case for OfferButtonSubtitlePosition.below(_:), v5);
  (*(v6 + 56))(v33, 1, 1, v5);
  sub_1001F750C();
  sub_10074A9C4();
  sub_100747984();
  v24 = v23;
  v26 = v25;
  (*(v31 + 8))(v11, v32);
  (*(v13 + 8))(v19, v12);
  v27 = [v1 layer];
  v28 = v27;
  if (v24 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  [v27 setCornerRadius:v29 * 0.5];
}

char *sub_1006873C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_1007433C4();
  v12 = sub_1007431D4();
  sub_100746E74();

  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_100743794();
  v14 = sub_100743754();
  v16 = sub_10071B540(v14, v15, UIFontTextStyleFootnote);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v18 = sub_100743784();
  v20 = sub_10071B540(v18, v19, UIFontTextStyleBody);

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder]];

  return v26;
}

uint64_t sub_1006875F8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  sub_100055CF8(&xmmword_10097F3D0, v101);
  v71 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder);
  [v71 sizeThatFits:{0.0, 0.0}];
  v101[34] = v3;
  v101[35] = v4;
  v102 = 0;
  sub_100055CF8(v101, v100);
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder);
  v99 = &protocol witness table for UIView;
  v98 = sub_1007433C4();
  v97[0] = v5;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder);
  v94 = &protocol witness table for UILabel;
  v93 = sub_100016C60(0, &qword_1009236D0);
  v92[0] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder);
  v91[4] = &protocol witness table for UILabel;
  v91[3] = v93;
  v91[0] = v7;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v90 = &protocol witness table for UILabel;
  v89 = v93;
  v88[0] = [v8 init];
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v72 = sub_100016C60(0, &qword_100922300);
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_1002F45FC();
  v12 = swift_allocObject();
  *a1 = v12;
  sub_100055CF8(v100, v79);
  BYTE8(v79[47]) = 0;
  v13 = v98;
  v14 = v99;
  sub_10000C888(v97, v98);
  v15 = sub_100754284();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v71 = v71;
  sub_100750374();
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v13;
    v78 = v14;
    v20 = sub_10000D134(&v76);
    (*(v19 + 32))(v20, v18, v13);
  }

  *(&v79[22] + 8) = v76;
  *(&v79[23] + 8) = v77;
  *(&v79[24] + 1) = v78;
  sub_1003C5E4C(v95, v73);
  v21 = v74;
  if (v74)
  {
    v22 = v75;
    sub_10000C888(v73, v74);
    v23 = sub_100754284();
    v24 = *(v23 - 8);
    __chkstk_darwin(v23);
    v26 = &v70 - v25;
    sub_100750814();
    v27 = *(v21 - 8);
    if ((*(v27 + 48))(v26, 1, v21) == 1)
    {
      (*(v24 + 8))(v26, v23);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v21;
      v78 = v22;
      v28 = sub_10000D134(&v76);
      (*(v27 + 32))(v28, v26, v21);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[25] = v76;
  v79[26] = v77;
  *&v79[27] = v78;
  sub_1003C5E4C(v92, v73);
  v29 = v74;
  if (v74)
  {
    v30 = v75;
    sub_10000C888(v73, v74);
    v31 = sub_100754284();
    v32 = *(v31 - 8);
    __chkstk_darwin(v31);
    v34 = &v70 - v33;
    sub_100750814();
    v35 = *(v29 - 8);
    if ((*(v35 + 48))(v34, 1, v29) == 1)
    {
      (*(v32 + 8))(v34, v31);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v29;
      v78 = v30;
      v36 = sub_10000D134(&v76);
      (*(v35 + 32))(v36, v34, v29);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[27] + 8) = v76;
  *(&v79[28] + 8) = v77;
  *(&v79[29] + 1) = v78;
  sub_10000C824(v91, &v79[30]);
  v37 = v89;
  v38 = v90;
  sub_10000C888(v88, v89);
  v39 = sub_100754284();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v70 - v41;
  sub_100750814();
  v43 = *(v37 - 8);
  if ((*(v43 + 48))(v42, 1, v37) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v37;
    v78 = v38;
    v44 = sub_10000D134(&v76);
    (*(v43 + 32))(v44, v42, v37);
  }

  *(&v79[32] + 8) = v76;
  *(&v79[33] + 8) = v77;
  *(&v79[34] + 1) = v78;
  sub_1003C5E4C(v86, v73);
  v45 = v74;
  if (v74)
  {
    v46 = v75;
    sub_10000C888(v73, v74);
    v47 = sub_100754284();
    v48 = *(v47 - 8);
    __chkstk_darwin(v47);
    v50 = &v70 - v49;
    sub_100750814();
    v51 = *(v45 - 8);
    if ((*(v51 + 48))(v50, 1, v45) == 1)
    {
      (*(v48 + 8))(v50, v47);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v45;
      v78 = v46;
      v52 = sub_10000D134(&v76);
      (*(v51 + 32))(v52, v50, v45);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[35] = v76;
  v79[36] = v77;
  *&v79[37] = v78;
  sub_1003C5E4C(v84, &v79[37] + 8);
  sub_1003C5E4C(v82, v73);
  v53 = v74;
  if (v74)
  {
    v54 = v75;
    sub_10000C888(v73, v74);
    v55 = sub_100754284();
    v56 = *(v55 - 8);
    __chkstk_darwin(v55);
    v58 = &v70 - v57;
    sub_100750804();
    v59 = *(v53 - 8);
    if ((*(v59 + 48))(v58, 1, v53) == 1)
    {
      (*(v56 + 8))(v58, v55);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v53;
      v78 = v54;
      v60 = sub_10000D134(&v76);
      (*(v59 + 32))(v60, v58, v53);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[40] = v76;
  v79[41] = v77;
  *&v79[42] = v78;
  sub_1003C5E4C(v80, v73);
  v61 = v74;
  if (v74)
  {
    v62 = v75;
    sub_10000C888(v73, v74);
    v63 = sub_100754284();
    v64 = *(v63 - 8);
    __chkstk_darwin(v63);
    v66 = &v70 - v65;
    sub_100750814();
    v67 = *(v61 - 8);
    if ((*(v67 + 48))(v66, 1, v61) == 1)
    {
      sub_100688DCC(v80);
      sub_100688DCC(v82);
      sub_100688DCC(v86);
      sub_100688DCC(v95);
      sub_100055D54(v100);
      sub_10000C620(v91);
      sub_100688DCC(v92);
      sub_100688DCC(v84);
      (*(v64 + 8))(v66, v63);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v61;
      v78 = v62;
      v68 = sub_10000D134(&v76);
      (*(v67 + 32))(v68, v66, v61);
      sub_100688DCC(v80);
      sub_100688DCC(v82);
      sub_100688DCC(v86);
      sub_100688DCC(v95);
      sub_100055D54(v100);
      sub_10000C620(v91);
      sub_100688DCC(v92);
      sub_100688DCC(v84);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v80);
    sub_100688DCC(v82);
    sub_100688DCC(v86);
    sub_100688DCC(v95);
    sub_100055D54(v100);
    sub_10000C620(v91);
    sub_100688DCC(v92);
    sub_100688DCC(v84);
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[42] + 8) = v76;
  *(&v79[43] + 8) = v77;
  *(&v79[44] + 1) = v78;
  *&v79[45] = v71;
  *(&v79[45] + 8) = v76;
  *(&v79[46] + 1) = v72;
  *&v79[47] = &protocol witness table for UIView;
  memcpy((v12 + 16), v79, 0x2F9uLL);
  sub_100055D54(v101);
  sub_10000C620(v88);
  return sub_10000C620(v97);
}

double sub_1006885FC(double a1)
{
  v3 = sub_1007479B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v20[-v8 - 8];
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  if (qword_100920858 != -1)
  {
    swift_once();
  }

  v10 = [v1 traitCollection];
  [v1 layoutMargins];
  if (sub_100753804())
  {
    v11 = &xmmword_10097F540;
  }

  else
  {
    v11 = &xmmword_10097F3D0;
  }

  sub_100055CF8(v11, v20);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v12 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v12 = qword_10093FF58;
  }

  v13 = sub_10000D0FC(v3, v12);
  (*(v4 + 16))(v6, v13, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_100747964();
    v15 = v14;
    sub_100747964();
    v21 = v15;
    v22 = v16;
    v23 = 0;
  }

  v17 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, v10, a1);

  (*(v4 + 8))(v9, v3);
  sub_100055D54(v20);
  return v17;
}

double sub_1006888F4()
{
  v1 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_10074C3E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925560);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = sub_1007479B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF58;
  }

  v20 = sub_10000D0FC(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_1001F750C();
  sub_10074A9C4();
  sub_100747984();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

uint64_t sub_100688CC4()
{
  sub_10000C620((v0 + 4));

  sub_10000C620((v0 + 11));
  sub_10000C620((v0 + 16));
  sub_10000C620((v0 + 21));
  sub_10000C620((v0 + 26));
  sub_10000C620((v0 + 31));
  sub_10000C620((v0 + 39));
  if (v0[50])
  {
    sub_10000C620((v0 + 47));
  }

  if (v0[55])
  {
    sub_10000C620((v0 + 52));
  }

  if (v0[60])
  {
    sub_10000C620((v0 + 57));
  }

  sub_10000C620((v0 + 62));
  if (v0[70])
  {
    sub_10000C620((v0 + 67));
  }

  if (v0[75])
  {
    sub_10000C620((v0 + 72));
  }

  if (v0[80])
  {
    sub_10000C620((v0 + 77));
  }

  if (v0[85])
  {
    sub_10000C620((v0 + 82));
  }

  if (v0[90])
  {
    sub_10000C620((v0 + 87));
  }

  if (v0[95])
  {
    sub_10000C620((v0 + 92));
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_100688DCC(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10092BC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100688E34()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_1007433C4();
  v3 = sub_1007431D4();
  sub_100746E74();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_100743794();
  v5 = sub_100743754();
  v7 = sub_10071B540(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v9 = sub_100743784();
  v11 = sub_10071B540(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}